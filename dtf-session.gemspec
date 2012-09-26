# -*- encoding: utf-8 -*-
require 'rake'
require File.expand_path('../lib/dtf-session/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["David Deryl Downey"]
  gem.email         = ["me@daviddwdowney.com"]
  gem.description   = %q{dtf-session adds Bash session support to DTF}
  gem.summary       = %q{dtf-session adds Bash Session gem support for commandline based testing to DTF.}
  gem.homepage      = "https://github.com/dtf-gems/dtf-session"

  gem.files = FileList['lib/**/*.rb', 'bin/*', '[A-Z]*', 'test/**/*', 'spec/**/*', 'features/**/*', 'app/**/*', 'db/**/*'].to_a
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "dtf-session"
  gem.require_paths = ["lib"]
  gem.version       = Dtf::Session::VERSION
  gem.required_ruby_version = '>= 1.9.2'

  gem.add_dependency("dtf")
  gem.add_dependency("rake")
  gem.add_dependency("session")
  gem.add_dependency "sqlite3"
  gem.add_dependency "json"
  gem.add_dependency "json_pure"

  gem.add_development_dependency("rspec")
  gem.add_development_dependency("turnip")
  gem.add_development_dependency("fabrication")
  gem.add_development_dependency "yard"      # For generating documentation
  gem.add_development_dependency "redcarpet" # For generating YARD docs
end
