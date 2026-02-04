tests
testNextPut
	"Ensure that the line ends are replaced correctly"

	| expectedString stream znStream |

	expectedString := 'a b'.
	{ String cr.
		String lf.
		String crlf. } do: [ :lineEnd |
			stream := String new writeStream.
			znStream := ZnIgnoreNewLineWriterStream on: stream.
			znStream
				<< 'a';
				<< lineEnd;
				<< 'b'.
			self assert: stream contents equals: expectedString ]