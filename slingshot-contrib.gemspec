# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "slingshot-contrib/version"

Gem::Specification.new do |s|
  s.name        = "slingshot-contrib"
  s.version     = Slingshot::Contrib::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Karel Minarik"]
  s.email       = ["karmi@karmi.cz"]
  s.homepage    = ""
  s.summary     = %q{Contributions and additions to the Slingshot gem}

  s.rubyforge_project = "slingshot-contrib"

  s.add_dependency "bundler", "~> 1.0.0"
  s.add_dependency "slingshot-rb"

  s.add_development_dependency "turn"
  s.add_development_dependency "shoulda"
  s.add_development_dependency "mocha"
  s.add_development_dependency "sdoc"
  s.add_development_dependency "rcov"

  s.extra_rdoc_files  = [ "README.markdown", "MIT-LICENSE" ]
  s.rdoc_options      = [ "--charset=UTF-8" ]

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end