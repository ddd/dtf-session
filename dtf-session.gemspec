# -*- encoding: utf-8 -*-
require 'rake'
require File.expand_path('../lib/dtf-session/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Deryl R. Doucette"]
  gem.email         = ["me@deryldoucette.com"]
  gem.description   = %q{dtf-session adds Bash session support to DTF}
  gem.summary       = %q{dtf-session adds Session gem support for commandline based testing to DTF.}
  gem.homepage      = "https://github.com/dtf-gems/dtf-session"

  gem.files = FileList['lib/**/*.rb', 'bin/*', '[A-Z]*', 'test/**/*', 'spec/**/*', 'features/**/*'].to_a
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "dtf-session"
  gem.require_paths = ["lib"]
  gem.version       = Dtf::Session::VERSION
  gem.required_ruby_version = '>= 1.9.2'

  gem.add_dependency("dtf")
  gem.add_dependency("session")
  gem.add_dependency("rake")
  gem.add_development_dependency("rspec")
  gem.add_development_dependency("turnip")

end
