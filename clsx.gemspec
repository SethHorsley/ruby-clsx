# frozen_string_literal: true

require_relative "lib/clsx/version"

Gem::Specification.new do |spec|
  spec.name = "clsx"
  spec.version = Clsx::VERSION
  spec.authors = ["Seth Horsley"]
  spec.email = ["isethi@me.com"]

  spec.summary = "A gem for constructing HTML class strings conditionally"
  spec.description = "Ruby utility for constructing HTML class strings conditionally with the provided syntax, you can define a module named Clsx that includes a method to handle each case: strings, objects (hashes), arrays, and a combination of these with nested structures. This method will recursively process each argument, filter out falsy values, and concatenate the truthy values into a single string."
  spec.homepage = "https://github.com/iseth/ruby-clsx"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
