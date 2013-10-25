# -*- encoding: utf-8 -*-
#
require File.expand_path("../lib/delaycalc/version", __FILE__)

excluded_dirs = ['pkg'].freeze

Gem::Specification.new do |s|
  s.name        = "delaycalc"
  s.version     = Delaycalc::VERSION.dup
  s.summary     = "simple delay time calculator for calculating delay settings based on song BPM (beats per minute)."
  s.authors     = ["Doug Sparling"]
  s.email       = ["doug.sparling@gmail.com"]
  s.homepage    = "https://github.com/dsparling/delaycalc"
  s.description = "simple delay time calculator for calculating delay settings based on song BPM (beats per minute)."

  files = `git ls-files`.split "\n"
  excluded_dirs.each{ |d| files = files.find_all{ |f| !f.start_with? d } }

  s.files         = files
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency('rspec')
  s.add_development_dependency('simplecov')
end
