baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'NeoJSON' with: [
				spec repository: 'github://svenvc/NeoJSON:19bb4ca4c6f68defee93bea24efddee8a8122ab4/repository' ].
		spec
			baseline: 'ZincHTTPComponentsCore' with: [
				spec repository: 'github://feenkcom/zinc:v3.0.46/repository' ].

		spec package: 'Zinc-REST' with: [
			spec requires: #('ZincHTTPComponentsCore' 'NeoJSON') ].
	]