
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "multicloud/adapter/core/version"

Gem::Specification.new do |spec|
  spec.name          = "multicloud-adapter-core"
  spec.version       = Multicloud::Adapter::Core::VERSION
  spec.authors       = ["Glukhikh Vladimir"]
  spec.email         = ["gluxix1993@gmail.com"]

  spec.summary       = %q{The core for creating MultiCloud adapters.}
  spec.description   = %q{This is a gem you should use when write a MultiCloud adapter.}
  spec.homepage      = "https://github.com/glukhikh/multicloud-adapter-core"

  # Prevent pushing this gem to RubyGems.org.
  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/glukhikh/multicloud-adapter-core"
    spec.metadata["changelog_uri"] = "https://github.com/glukhikh/multicloud-adapter-core/blob/master/CHANGELOG.md"
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
  spec.add_development_dependency "rspec", "~> 3.0"
end
