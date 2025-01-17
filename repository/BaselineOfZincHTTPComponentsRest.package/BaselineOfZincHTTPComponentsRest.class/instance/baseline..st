baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'NeoJSON' with: [
				spec repository: 'github://svenvc/NeoJSON:f54cfb4a931971ed356d1dfde0e135951e82daae/repository' ].
		spec
			baseline: 'ZincHTTPComponentsCore' with: [
				spec repository: 'github://feenkcom/zinc:v3.0.68/repository' ].

		spec package: 'Zinc-REST' with: [
			spec requires: #(#ZincHTTPComponentsCore #NeoJSON) ].
	]