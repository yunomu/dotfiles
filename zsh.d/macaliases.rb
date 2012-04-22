#!/usr/bin/ruby

Dir.open("/Applications").select {|a| a =~ /.*\.app$/ }.each {|a|
  print "alias #{a.tr(".app", "").delete(" ")}='open -a \"#{a}\"'", $/
}
