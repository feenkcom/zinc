tests
testNextPutUnderscore
	"Ensure that the line ends are replaced correctly"

	| expectedString stream znStream |

	expectedString := 'a_b'.
	{ String cr.
		String lf.
		String crlf. } do: [ :lineEnd |
			stream := String new writeStream.
			znStream := ZnIgnoreNewLineWriterStream on: stream.
			znStream replacement: '_'.
			znStream
				<< 'a';
				<< lineEnd;
				<< 'b'.
			self assert: stream contents equals: expectedString ]