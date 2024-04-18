baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'NeoJSON' with: [
				spec repository: 'github://svenvc/NeoJSON:c4561bac65ff63cf5471c03d0cd6b4f9e4e852f9/repository' ].
		spec
			baseline: 'ZincHTTPComponentsCore' with: [
				spec repository: 'github://feenkcom/zinc:v3.0.45/repository' ].

		spec package: 'Zinc-REST' with: [
			spec requires: #('ZincHTTPComponentsCore' 'NeoJSON') ].
	]