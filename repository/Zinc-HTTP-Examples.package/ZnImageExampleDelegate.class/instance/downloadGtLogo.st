accessing
downloadGtLogo
	^ ZnClient new beOneShot
		get: 'https://gtoolkit.com/assets/pictures/glamoroustoolkit-icon.png';
		entity