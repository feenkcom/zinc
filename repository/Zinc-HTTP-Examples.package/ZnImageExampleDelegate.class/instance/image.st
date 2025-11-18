gt-patch
image
	<gtPharoPatch: #Pharo>
	"Return the current image entity.
	Use a default when not yet set."

	^ image ifNil: [ image := self downloadGtLogo ]