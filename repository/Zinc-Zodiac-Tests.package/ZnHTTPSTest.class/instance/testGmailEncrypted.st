testing
testGmailEncrypted

	| client |
	self ensureSocketStreamFactory.
	self isNativeSSLPluginPresent ifFalse: [ ^ self ].
	(client := self httpClient)
		maxNumberOfRedirects: 10;
		get: 'https://www.gmail.com'.
	self assert: client isSuccess.
	self assert: (client contents includesSubstring: 'Google').
	self assert: (client contents includesSubstring: 'mail').
	client close