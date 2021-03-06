Gem::Specification.new do |s|
  s.required_rubygems_version = ">= 1.3.5"

  s.name = 'ckeditor-jsduck'
  s.version = '1.1.0'
  s.date = '2012-03-01'
  s.summary = "Simple JavaScript Duckumentation generator (customized for CKEditor)"
  s.description = "Documentation generator for Sencha JS frameworks"
  s.homepage = "https://github.com/senchalabs/jsduck"
  s.authors = ["Rene Saarsoo", "Nick Poulden"]
  s.email = "rene.saarsoo@sencha.com"
  s.rubyforge_project = s.name

  s.files = `git ls-files`.split("\n").find_all do |file|
    file !~ /spec\// && file !~ /template\// && file !~ /opt\//
  end
  # Add files not in git
  s.files += Dir['template-min/**/*']

  s.executables = ["ckeditor-jsduck"]

  s.add_dependency 'rdiscount'
  s.add_dependency 'json'
  s.add_dependency 'parallel'
  s.add_dependency 'therubyracer', '>= 0.10.0', '< 0.11.0'
  s.add_dependency 'dimensions'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'compass'

  s.require_path = 'lib'
end
