baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'ZincHTTPComponentsCore' with: [
				spec repository: 'github://feenkcom/zinc:v3.1.0/repository' ].

		spec package: 'Zinc-WebSocket-Core' with: [
			spec requires: #(#ZincHTTPComponentsCore) ].
		spec package: 'Zinc-WebSocket-Tests' with: [
			spec requires: #(#'Zinc-WebSocket-Core') ].
	]