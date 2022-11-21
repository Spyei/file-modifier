require_relative 'lib/file_modifier/version'

Gem::Specification.new do |spec|
 spec.name          = "file_modifier"
 spec.version       = FileModifier::VERSION
 spec.authors       = ["Spyei"]
 spec.email         = ["ch051288@gmail.com"]

 spec.summary       = %q{A gem to modify your files easly}
 spec.description   = %q{A gem to modify your files easly, very easly}
 spec.homepage      = "https://github.com/Spyei/file-modifier"
 spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

 spec.metadata["allowed_push_host"] = "https://github.com/Spyei/file-modifier"

 spec.metadata["homepage_uri"] = spec.homepage
 spec.metadata["source_code_uri"] = "https://github.com/Spyei/file-modifier"
 spec.metadata["changelog_uri"] = "https://github.com/Spyei/file-modifier"

 spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
   `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
 end
 spec.bindir        = "exe"
 spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
 spec.require_paths = ["lib"]

 spec.add_development_dependency 'bundler', '~> 2.0'
 spec.add_development_dependency 'minitest', '~> 2.1.0' 
 spec.add_development_dependency 'mocha', '~> 1.11.2'

end
