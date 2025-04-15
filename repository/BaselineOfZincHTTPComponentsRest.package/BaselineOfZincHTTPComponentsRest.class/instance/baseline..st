baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'NeoJSON' with: [
				spec repository: 'github://svenvc/NeoJSON:9af34bbc47823c740605967c46bfa376a1b81014/repository' ].
		spec
			baseline: 'ZincHTTPComponentsCore' with: [
				spec repository: 'github://feenkcom/zinc:v3.0.71/repository' ].

		spec package: 'Zinc-REST' with: [
			spec requires: #(#ZincHTTPComponentsCore #NeoJSON) ].
	]