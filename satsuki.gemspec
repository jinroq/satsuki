
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "satsuki/version"

Gem::Specification.new do |spec|
  spec.name          = "satsuki"
  spec.version       = Satsuki::VERSION
  spec.authors       = ["jinroq"]
  spec.email         = ["2787780+jinroq@users.noreply.github.com"]

  spec.summary       = %q{satsuki}
  spec.description   = %q{satsuki}
  spec.homepage      = "https://github.com/jinroq/satsuki"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '>= 2.3.3'

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
