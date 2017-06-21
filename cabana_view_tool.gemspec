# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cabana_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "cabana_view_tool"
  spec.version       = CabanaViewTool::VERSION
  spec.authors       = ["Nick Cabana"]
  spec.email         = ["cabanacleaningservices@gmail.com"]

  spec.summary       = %q{Some views I will be using for my application.}
  spec.description   = %q{Provides generated HTML data for Rails applications.}
  spec.homepage      = "https://cabanagem.com"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
