baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'NeoJSON' with: [
				spec repository: 'github://svenvc/NeoJSON:17efabc2fdb0c2469bb348e79b363c3f91441ac7/repository' ].
		spec
			baseline: 'ZincHTTPComponentsCore' with: [
				spec repository: 'github://feenkcom/zinc:v3.0.50/repository' ].

		spec package: 'Zinc-REST' with: [
			spec requires: #('ZincHTTPComponentsCore' 'NeoJSON') ].
	]