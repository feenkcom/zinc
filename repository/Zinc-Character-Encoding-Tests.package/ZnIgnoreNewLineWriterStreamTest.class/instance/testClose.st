tests
testClose
	| string result znStream |
	string := 'abcčřž' , String cr.
	result := String streamContents: [ :out |
		znStream := ZnIgnoreNewLineWriterStream on: (ZnBufferedWriteStream on: out).
		znStream nextPutAll: string.
		znStream close ].
	string at: string size put: Character space.
	self assert: result equals: string.