baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'NeoJSON' with: [
				spec repository: 'github://svenvc/NeoJSON:4e0d822bdadb8854f84a2ceb2b9f4e68c8bd6f56/repository' ].
		spec
			baseline: 'ZincHTTPComponentsCore' with: [
				spec repository: 'github://feenkcom/zinc:v3.0.36/repository' ].

		spec package: 'Zinc-REST' with: [
			spec requires: #('ZincHTTPComponentsCore' 'NeoJSON') ].
	]