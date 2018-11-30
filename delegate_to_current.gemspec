
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "delegate_to_current/version"

Gem::Specification.new do |spec|
  spec.name          = "delegate_to_current"
  spec.version       = DelegateToCurrent::VERSION
  spec.authors       = ["Ritchie Paul Buitre"]
  spec.email         = ["ritchie@richorelse.com"]

  spec.summary       = "Delegates to an object's 'current' method."
  spec.description   = "Wraps singleton objects and delegate calls to it's 'current' method. For Rails applications version 5.1 and above."
  spec.homepage      = "https://github.com/RichOrElse/delegate_to_current"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
