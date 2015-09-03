# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'actionmailer/sandbox/version'

Gem::Specification.new do |spec|
  spec.name          = "actionmailer-sandbox"
  spec.version       = Actionmailer::Sandbox::VERSION
  spec.authors       = ["zaru"]
  spec.email         = ["zarutofu@gmail.com"]

  spec.summary       = %q{In a test environment , you are forced to change the destination of the ActionMailer.}
  spec.description   = %q{In a test environment , you are forced to change the destination of the ActionMailer.}
  spec.homepage      = "https://github.com/zaru/actionmailer-sandbox"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
