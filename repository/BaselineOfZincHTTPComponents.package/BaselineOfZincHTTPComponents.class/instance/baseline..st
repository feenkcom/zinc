baseline
baseline: spec
	<baseline>
	spec for: #common do: [ 
		spec baseline: 'NeoJSON' with: [ spec repository: 'github://svenvc/NeoJSON:v17/repository' ].
		spec baseline: 'XMLParser' with: [ spec repository: 'github://feenkcom/XMLParser:v0.6.1/src' ].
		spec baseline: 'XMLWriter' with: [ spec repository: 'github://feenkcom/XMLWriter:v0.6.0/src' ].
		"spec project: 'XML Support' with: [ spec className: 'ConfigurationOfXMLSupport'; repository: 'http://www.squeaksource.com/MetacelloRepository' ]."
		spec
			package: 'Zinc-AWS';
			package: 'Zinc-REST' with: [ spec requires: #('NeoJSON') ];
			package: 'Zinc-WebSocket-Core';
			package: 'Zinc-WebSocket-Tests' with: [ spec requires: 'Zinc-WebSocket-Core' ];
			package: 'Zinc-SSO-OAuth1-Core' with: [ spec requires: #('NeoJSON') ];
			package: 'Zinc-SSO-OAuth2-Core' with: [ spec requires: #('NeoJSON') ];
			package: 'Zinc-SSO-OpenID-Core';
			package: 'Zinc-SSO-Demo' with: [ spec requires: #('Zinc-SSO-OAuth1-Core' 'Zinc-SSO-OAuth2-Core' 'Zinc-SSO-OpenID-Core') ];
			package: 'Zinc-SSO-OAuth1-Tests' with: [ spec requires: #('Zinc-SSO-OAuth1-Core') ];
			package: 'Zinc-SSO-OpenID-Tests' with: [ spec requires: #('Zinc-SSO-OpenID-Core') ];
			package: 'Zinc-WebDAV';
			package: 'Zinc-WWS-Server';
			package: 'Zinc-WWS-Client'.
		spec
			group: 'AWS' with: #('Zinc-AWS');
			group: 'WebDAV' with: #('Zinc-WebDAV');
			group: 'WebSocket' with: #('Zinc-WebSocket-Core' 'Zinc-WebSocket-Tests');
			group: 'SSO-OAuth1' with: #('Zinc-SSO-OAuth1-Core' 'Zinc-SSO-OAuth1-Tests');
			group: 'SSO-OAuth2' with: #('Zinc-SSO-OAuth2-Core');
			group: 'SSO-OpenID' with: #('Zinc-SSO-OpenID-Core' 'Zinc-SSO-OpenID-Tests');
			group: 'SSO-Demo' with: #('Zinc-SSO-OAuth1-Core' 'Zinc-SSO-OAuth2-Core' 'Zinc-SSO-OpenID-Core');
			group: 'SSO' with: #('SSO-OAuth1' 'SSO-OAuth2' 'SSO-OpenID' 'SSO-Demo' 'Zinc-SSO-Demo');
			group: 'WWS' with: #('Zinc-WWS-Server' 'Zinc-WWS-Client');
			group: 'REST' with: #('Zinc-REST') ]
