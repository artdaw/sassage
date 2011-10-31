# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sassage/version"

Gem::Specification.new do |s|
  s.name        = "sassage"
  s.version     = Sassage::VERSION
  s.authors     = ["Gleb Galkin"]
  s.email       = ["artdaw@gmail.com"]
  s.homepage    = "http://artdaw.info"
  s.summary     = %q{Sass-driven toolkit created to straightforward development of web apps}
  s.description = %q{Sassage includes base grid system(960.gs), typography, forms. etc.}

  s.rubyforge_project = "sassage"

  s.files         = `git ls-files`.split("\n")
  #s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  #s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib", "scss"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_runtime_dependency "sass"
end
