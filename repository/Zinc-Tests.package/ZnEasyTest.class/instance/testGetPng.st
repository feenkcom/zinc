gt-patch
testGetPng
	<gtPharoPatch: #Pharo>
	| url result |
	url := 'https://gtoolkit.com/assets/pictures/glamoroustoolkit-icon.png'.
	result := ZnEasy getPng: url.
	self assert: result isForm