
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "shyness/version"

Gem::Specification.new do |spec|
  spec.name          = "shyness"
  spec.version       = Shyness::VERSION
  spec.authors       = ["Sal Espinosa"]
  spec.email         = ["sespinos@gmail.com"]

  spec.summary       = %q{CLI to post questions to an api.}
  spec.description   = %q{Post student questions from the command line to the API developed at s-espinosa/ask.}
  spec.homepage      = "https://github.com/s-espinosa/shyness"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"

  spec.add_dependency "thor"
  spec.add_dependency "faraday"
end
