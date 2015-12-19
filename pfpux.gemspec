Gem::Specification.new do |s|
  s.name = 'pfpux'
  s.version = '0.1.1'
  s.summary = 'Project File Publisher using XML (PFPuX) helps publish your project file directory to a static web location.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/pfpux.rb']
  s.add_runtime_dependency('dir-to-xml', '~> 0.7', '>=0.7.2')
  s.add_runtime_dependency('rsync', '~> 1.0', '>=1.0.9') 
  s.signing_key = '../privatekeys/pfpux.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/pfpux'
end
