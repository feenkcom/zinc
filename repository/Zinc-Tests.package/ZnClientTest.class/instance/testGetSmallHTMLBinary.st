testing - external
testGetSmallHTMLBinary
	| client html bytes |
	(client := self httpClient)
		url: self smallHtmlUrl;
		get.
	self assert: client isSuccess.
	self assert: client response contentType equals: ZnMimeType textHtml.
	self assert: (client contents includesSubstring: 'Small').
	html := client contents.
	self assert: html isString.

	client
		beBinary;
		get.
	self assert: client isSuccess.
	self assert: client response contentType equals: ZnMimeType textHtml.
	bytes := client contents.
	self deny: bytes isString.
	self assert: bytes utf8Decoded equals: html.

	client close