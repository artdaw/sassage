require 'rubygems'
require 'bundler'
require 'rake'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

SASSAGE_CSS = "sassage-#{VERSION}.css" 
SASSAGE_MIN_CSS = "sassage-#{VERSION}.min.css" 

SASS_COMMAND = "sass --load-path scss --style"

task SASSAGE_CSS do |target|
  sh "#{SASS_COMMAND} expanded scss/sassage.scss:#{target}"
  css = IO.read(target.to_s)
  css.gsub!('@DATE', `date`.strip)
  File.open(target.to_s, 'w+') { |f| f.write(css) }
end

task SASSAGE_MIN_CSS do |target|
  sh "#{SASS_COMMAND} compressed scss/sassage.scss:#{target}"
end

desc "build regular and compresed versions of sassage"
task :build => [SASSAGE_CSS, SASSAGE_MIN_CSS]

desc "rebuild regular version of sassage when modifications are made"
task :watch do
  sh "expanded --watch scss/sassage.scss:#{SASSAGE_CSS}"
end

task :default => :build

