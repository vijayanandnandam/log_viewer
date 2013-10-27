$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "log_viewer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "log_viewer"
  s.version     = LogViewer::VERSION
  s.authors     = ["vijayanand nandam"]
  s.email       = ["vijayanand.nandam@gmail.com"]
  s.homepage    = "http://adminuser.org"
  s.summary     = "rails log viewer"
  s.description = "a beautiful log viewer"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.0"
  s.add_dependency "elif", "~> 0.1.0"
  s.add_dependency "coderay_bash", "~> 1.0.5"
  
  s.add_development_dependency "sqlite3"
end
