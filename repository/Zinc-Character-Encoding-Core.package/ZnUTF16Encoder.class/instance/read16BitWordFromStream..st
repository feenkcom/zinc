private
read16BitWordFromStream: stream
	| firstByte secondByte |
	firstByte := stream next.
	secondByte := stream next.
	(firstByte isNil or: [ secondByte isNil ])
		ifTrue: [ ^ self errorIncompleteFrom: stream ].
	^ self isBigEndian
		ifTrue: [ secondByte + (firstByte << 8) ]
		ifFalse: [ firstByte + (secondByte << 8) ]