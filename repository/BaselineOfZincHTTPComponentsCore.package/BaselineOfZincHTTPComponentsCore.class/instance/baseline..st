baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec postLoadDoIt: #'postLoadCore:'.
		spec
			baseline: 'ZodiacCore' with: [
				spec repository: 'github://feenkcom/zodiac:v1.0.2/repository' ].

		spec package: 'Zinc-Character-Encoding-Core'.
		spec package: 'Zinc-Character-Encoding-Tests' with: [
			spec requires: #('Zinc-Character-Encoding-Core') ].
		spec package: 'Zinc-Resource-Meta-Core' with: [
			spec requires: #('Zinc-Character-Encoding-Core') ].
		spec package: 'Zinc-Resource-Meta-Tests' with: [
			spec requires: #('Zinc-Resource-Meta-Core') ].
		spec package: 'Zinc-HTTP' with: [
			spec requires: #('Zinc-Character-Encoding-Core' 'Zinc-Resource-Meta-Core') ].
		spec package: 'Zinc-HTTP-Examples' with: [
			spec requires: #('Zinc-HTTP') ].
		spec package: 'Zinc-Tests' with: [
			spec requires: #('Zinc-HTTP') ].
		spec package: 'Zinc-Zodiac-Core' with: [
			spec requires: #('Zinc-HTTP' 'ZodiacCore') ].
		spec package: 'Zinc-Zodiac-Tests' with: [
			spec requires: #('Zinc-Zodiac-Core') ].
	]