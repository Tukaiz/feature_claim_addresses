# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'feature_claim_addresses/version'

Gem::Specification.new do |spec|
  spec.name          = "feature_claim_addresses"
  spec.version       = FeatureClaimAddresses::VERSION
  spec.authors       = ["Mirai"]
  spec.email         = ["r.miner@tukaiz.com"]
  spec.summary       = %q{ Claim addresses.}
  spec.description   = %q{ Ability to add addresses to specific claims.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
