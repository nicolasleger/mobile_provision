# encoding: utf-8
# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'weaver/version'

Gem::Specification.new do |s|
 s.name = 'weaver'
 s.version = Weaver::Version::STRING
 s.platform = Gem::Platform::RUBY
 s.required_ruby_version = '>= 1.9.3'
 s.authors = ['Alexandre Ignjatovic', 'Robin Sfez', 'Benoit Tigeot', 'Christophe Valentin']
 s.description = <<-EOF
   Weaver is a convenient MobileProvision wrapper written in Ruby.
 EOF

 s.email = 'dev@appaloosa-store.com'
 s.files = `git ls-files`.split($RS).reject do |file|
   file =~ %r{^(?:
   spec/.*
   |Gemfile
   |Rakefile
   |\.rspec
   |\.gitignore
   |\.rubocop.yml
   |\.rubocop_todo.yml
   |.*\.eps
   )$}x
 end
 s.test_files = ['spec/mobile_provision_spec.rb']
 s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
 s.extra_rdoc_files = %w(LICENSE README.md)
 s.homepage = 'http://github.com/appaloosa-store/weaver'
 s.licenses = ['MIT']
 s.require_paths = ['lib']
 s.rubygems_version = '1.8.23'

 s.summary = 'Weaver is a convenient MobileProvision wrapper written in Ruby.'

 s.add_development_dependency('rspec', '~> 3.4')
 s.add_development_dependency('rubocop')
 s.add_dependency('CFPropertyList', '~> 2.3')
end