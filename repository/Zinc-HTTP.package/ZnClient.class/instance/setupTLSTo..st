private
setupTLSTo: url
	(ZnNetworkingUtils shouldProxyUrl: url)
		ifTrue: [ | originalRequest |
			"http://www.ietf.org/rfc/rfc2817.txt (section 5)"
			"https://en.wikipedia.org/wiki/HTTP_tunnel#HTTP_CONNECT_tunneling"
			originalRequest := request copy.
			request entity: nil. "to prevent #resetEntity from being called, resulting in #close of the shared entity"
			self method: #CONNECT; writeRequest; readResponse.
			response isSuccess ifFalse: [ self error: 'Failed to CONNECT to proxy for TLS/SSL' ].
			connection := ZnNetworkingUtils secureSocketStreamOn: connection socket.
			request := originalRequest ].

	connection sslSession certificateName: self certificate.

	[ connection sslSession serverName: url host ]
		on: (ZnUtils exceptionSet: #( #SocketError #PrimitiveFailed ))
		do: [ :error | "log it?" ].

	connection connect.
	
	((ZnCurrentOptions at: #verifyCertificates) 
			and: [ connection sslSession certificateVerificationState ~= 0 ])
		ifTrue: [ 
			ZnCertificateVerificationFailed new 
				verificationState: connection sslSession certificateVerificationState;
				signal ]