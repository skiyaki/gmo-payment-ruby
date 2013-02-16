# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gmo/version'

Gem::Specification.new do |gem|
  gem.name        = "gmo"
  gem.description   = %q{Ruby client library for the GMO Payment Platform.}
  gem.summary       = %q{GMO Payment API client: Ruby client library for the GMO Payment Platform.}
  gem.homepage      = ""
  gem.version     = GMO::VERSION

  gem.authors       = ["Tatsuo Kaniwa"]
  gem.email         = ["tatsuo@kaniwa.biz"]

  gem.require_paths  = ["lib"]
  gem.files          = `git ls-files`.split("\n")
  gem.test_files     = `git ls-files -- {spec}/*`.split("\n")
  gem.executables    = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  gem.extra_rdoc_files = ["README.md"]
  gem.rdoc_options     = ["--line-numbers", "--inline-source", "--title", "GMO"]

  gem.add_runtime_dependency "rack"
  gem.add_runtime_dependency "multi_json"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "vcr"
  gem.add_development_dependency "fakeweb"
  gem.add_development_dependency "webmock"
  gem.add_development_dependency "capybara-mechanize"
end