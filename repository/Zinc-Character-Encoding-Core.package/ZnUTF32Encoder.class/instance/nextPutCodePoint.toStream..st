encoding - decoding
nextPutCodePoint: codePoint toStream: stream
	"Write the encoding for integer code point to stream"

	(self isSurrogateCodePoint: codePoint)
		ifTrue: [ ^ self errorOutsideRange: codePoint to: stream ].
	codePoint <= self maximumUTFCode
		ifTrue: [
			self writeCodePoint: codePoint to: stream ]
		ifFalse: [
			^ self errorOutsideRange: codePoint to: stream ]