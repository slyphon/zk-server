# -*- encoding: utf-8 -*-
require File.expand_path('../lib/zk-server/version', __FILE__)

Gem::Specification.new do |s|
  s.authors       = ["Jonathan D. Simms"]
  s.email         = ["slyphon@gmail.com"]
  s.description   = %q{runs a standalone zookeeper server}
  s.summary       = s.description + "\n"
  s.homepage      = "http://github.com/slyphon/zk-server"

  s.add_runtime_dependency 'bundler', '>= 1'
  s.add_runtime_dependency 'slyphon-log4j', '= 1.2.15'
  s.add_runtime_dependency 'slyphon-zookeeper_jar', '~> 3.3.5'
  s.add_runtime_dependency 'slop', '>= 3.2.0'

  s.files         = `git ls-files`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.name          = "zk-server"
  s.require_paths = ["lib"]
  s.version       = ZK::Server::VERSION
end
