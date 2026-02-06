I am a write stream wrapping a second stream. Whenever they ask me to write a cr, a lf, or a crlf I'll instead print another string, depending on a configuration. By default I use the space character. 

stream := '' writeStream.
converter := ZnIgnoreNewLineWriterStream on: stream.
converter cr; cr; lf; nextPut: $a.
stream contents

A ZnIgnoreNewLineWriterStream can be configured with the desired replacements using: 

converter replacement: '_'.