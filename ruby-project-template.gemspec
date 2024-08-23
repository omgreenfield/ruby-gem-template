# frozen_string_literal: true

require_relative 'lib/ruby_project_template'

Gem::Specification.new do |spec|
  spec.name = 'ruby-project-template'
  spec.version = RubyProjectTemplate::VERSION
  spec.authors = ['Matthew Greenfield']
  spec.email = ['mattgreenfield1@gmail.com']

  spec.summary = 'SUMMARY HERE'
  spec.description = 'DESCRIPTION HERE'
  spec.homepage = 'https://github.com/omgreenfield/ruby_project_template'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.0.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['rubygems_mfa_required'] = 'true'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines('\x0', chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ spec/ .git .github Gemfile])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # spec.add_dependency 'example-gem', '~> 1.0'

  # guide at: https://bundler.io/guides/creating_gem.html
end
