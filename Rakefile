#require File.join(File.dirname(__FILE__), "setup.rb")


begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "tmail"
    gem.summary = "A fork of tmail for ruby 1.9"
    gem.description = File.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
    gem.email = "darwin.git@marianna.se"
    gem.homepage = "http://github.com/bjornblomqvist/tmail"
    gem.authors = ["Mikel Lindsaar","Minero Aoki","Jayson Vaughn","Bjorn Blomqvist"]
    gem.add_development_dependency "rspec"
    gem.files = FileList['lib/**/*.rb', 'ext/**/*','README.rdoc','CHANGES','NOTES','VERSION','test/**/*'].to_a  
    gem.extensions << 'ext/tmailscanner/tmail/extconf.rb'    
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end
