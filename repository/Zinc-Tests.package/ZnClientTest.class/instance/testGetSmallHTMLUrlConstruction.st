testing - external
testGetSmallHTMLUrlConstruction
	| client |
	(client := self httpClient)
		http;
		host: self smallHtmlUrl host;
		path: self smallHtmlUrl pathPrintString;
		get.
	self assert: client isSuccess.
	self assert: client response contentType equals: ZnMimeType textHtml.
	self assert: (client contents includesSubstring: 'Small').
	client close