# -*- encoding: utf-8 -*-
require File.expand_path('../lib/boost_lambda_style_proc/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["todesking"]
  gem.email         = ["discommunicative@gmail.com"]
  gem.summary       = %q{Boost::Lambda style proc}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "boost_lambda_style_proc"
  gem.require_paths = ["lib"]
  gem.version       = BoostLambdaStyleProc::VERSION

  gem.add_development_dependency 'rspec'
end
