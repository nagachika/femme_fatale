# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "femme_fatale/version"

Gem::Specification.new do |s|
  s.name        = "femme_fatale"
  s.version     = FemmeFatale::VERSION
  s.authors     = ["Chikanaga Tomoyuki"]
  s.email       = ["nagachika00@gmail.com"]
  s.homepage    = "https://github.com/nagachika/femme_fatale"
  s.summary     = %q{raise CRuby internal fatal error}
  s.description = %q{raise CRuby internal fatal error by calling rb_fatal()}

  s.rubyforge_project = "femme_fatale"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.extensions = ["ext/extconf.rb"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
