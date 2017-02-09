# -*- ruby -*-

require 'rubygems'
require 'hoe'

gem 'rake-compiler', '>= 0.4.1'
require "rake/extensiontask"

HOE = Hoe.spec 'mmap' do
  developer('Guy Decoux', 'ts@moulon.inra.fr')
  self.readme_file   = 'README.rdoc'
  self.history_file  = 'Changes'
  self.extra_rdoc_files  = FileList['*.rdoc']

  %w{ rake-compiler }.each do |dep|
    self.extra_dev_deps << [dep, '>= 0']
  end

  self.spec_extras = { :extensions => ["ext/mmap/extconf.rb"] }
end

RET = Rake::ExtensionTask.new("mmap", HOE.spec) do |ext|
  ext.lib_dir = File.join('lib', 'mmap')
end
Rake::Task[:build].prerequisites << :compile

# vim: syntax=ruby

