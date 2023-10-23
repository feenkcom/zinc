baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'NeoJSON' with: [
				spec repository: 'github://svenvc/NeoJSON:45e63045f5830caec6ac76fdb637b3500540af97/repository' ].
		spec
			baseline: 'ZincHTTPComponentsCore' with: [
				spec repository: 'github://feenkcom/zinc:v3.0.32/repository' ].

		spec package: 'Zinc-REST' with: [
			spec requires: #('ZincHTTPComponentsCore' 'NeoJSON') ].
	]