Gem::Specification.new do |gem|
  gem.authors       = ["KITAITI Makoto"]
  gem.email         = ["KitaitiMakoto@gmail.com"]
  gem.description   = %q{Make Pathname class one of options OptionParser's option can accept}
  gem.summary       = %q{Make Pathanme acceptable to OptionParser}
  gem.homepage      = "https://gitorious.org/optparse"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "optparse-pathname"
  gem.require_paths = ["lib"]
  gem.version       = '0.0.1'
end
