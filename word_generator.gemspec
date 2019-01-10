
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "word_generator/version"

Gem::Specification.new do |spec|
  spec.name          = "word_generator"
  spec.version       = WordGenerator::VERSION
  spec.authors       = ["Vishal Zambre"]
  spec.email         = ["v.zambre@gmail.com"]

  spec.summary       = %q{Possible combination of words generator against dictionary}
  spec.description   = %q{Given a 10 digit phone number it return all possible words or combination of words from the provided dictionary, that can be mapped back as a whole to the number.}
  spec.homepage      = "http://github.com/vishalzambre/word_generator"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org/"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "http://github.com/vishalzambre/word_generator"
    spec.metadata["changelog_uri"] = "http://github.com/vishalzambre/word_generator/blob/master/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
