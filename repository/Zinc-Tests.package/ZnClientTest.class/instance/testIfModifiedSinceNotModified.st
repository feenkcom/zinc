testing - external
testIfModifiedSinceNotModified
	| client  response |
	(client := self httpClient) host: 'stfx.eu'.
	[
		response := client
			url: '/small.html';
			setIfModifiedSince: (Date year: 2012 month: 9 day: 1);
			get;
			response.
		self assert: response isNotModified.
		self assert: response hasEntity not ] ensure: [ client close ]