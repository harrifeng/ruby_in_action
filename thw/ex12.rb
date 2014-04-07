require 'open-uri'

open("http://www.baidu.com") do |f|
  f.each_line {|line| p line.length}
  puts "f.base_uri=>"
  puts f.base_uri
  puts "f.content_type=>"
  puts f.content_type
  puts "f.charset=>"
  puts f.charset
  puts "f.content_encoding=>"
  puts f.content_encoding
  puts "f.last_modified=>"
  puts f.last_modified
end

##################################################
# <===================OUTPUT===================> #
# 53191                                          #
# f.base_uri=>                                   #
# http://www.baidu.com                           #
# f.content_type=>                               #
# text/html                                      #
# f.charset=>                                    #
# utf-8                                          #
# f.content_encoding=>                           #
# f.last_modified=>                              #
##################################################
