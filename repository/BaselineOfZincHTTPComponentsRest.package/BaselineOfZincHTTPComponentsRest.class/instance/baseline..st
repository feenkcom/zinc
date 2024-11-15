baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'NeoJSON' with: [
				spec repository: 'github://svenvc/NeoJSON:b1ca95dcce4c6dc1daff63acc4a14b10f89a7170/repository' ].
		spec
			baseline: 'ZincHTTPComponentsCore' with: [
				spec repository: 'github://feenkcom/zinc:v3.0.60/repository' ].

		spec package: 'Zinc-REST' with: [
			spec requires: #(#ZincHTTPComponentsCore #NeoJSON) ].
	]