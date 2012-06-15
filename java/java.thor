#!/usr/bin/env ruby
# require "rubygems" # ruby1.9 doesn't "require" it though
# require "thor"

class Maven < Thor
  include Thor::Actions
  
  desc "init", "Inits a java project layout"
  def init(name)
    run "mkdir -p #{name}/src/main/java"
    run "mkdir -p #{name}/src/main/resources"
    run "mkdir -p #{name}/src/main/java"
    run "mkdir -p #{name}/src/test/resources"
  end
  
  desc "class","Creteas a class"
  def class
      template("templtes/class.tt","src/main/java")
  end
  
  desc "test", "Creates a junit test class"
  def test
    template("templtes/test.tt","src/test/java")
  end
end


# MyThorCommand.start