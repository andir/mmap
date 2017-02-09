# coding: utf-8
require File.expand_path('../lib/mmap/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "mmap"
  spec.version       = MmapVersion::VERSION
  spec.authors       = ["Guy Decoux", "Aaron Patterson"]
  spec.email         = ["ts@moulon.inra.fr", "tenderlove@github.com"]
  spec.description   = %q{The Mmap class implement memory-mapped file objects}
  spec.summary       = %q{The Mmap class implement memory-mapped file objects}
  spec.homepage      = "https://github.com/tenderlove/mmap"
  spec.license       = "https://www.ruby-lang.org/en/about/license.txt"

  spec.files         = `git ls-files Changes README.rdoc ext lib mmap.rd`.split
  spec.executables   = [ ]
  spec.test_files    = `git ls-files b.rb test`.split
  spec.extensions    = [ "ext/mmap/extconf.rb" ]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "hoe"
end
