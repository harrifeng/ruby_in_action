count = 0
words = File.open("/usr/share/dict/words")

while word = words.gets
  word = word.chomp!
  if word.length == 12
    count += 1
  end
end

puts "#{count} twelve-character words"

######################################################################################
# <===================OUTPUT===================>                                     #
# bash-3.2$ ruby -r profile profileeg.rb                                             #
# 20462 twelve-character words                                                       #
#   %   cumulative   self              self     total                                #
#  time   seconds   seconds    calls  ms/call  ms/call  name                         #
#   7.80     0.91      0.91   235887     0.00     0.00  IO#gets                      #
#   7.38     1.77      0.86   235886     0.00     0.00  Fixnum#==                    #
#   6.60     2.54      0.77   235886     0.00     0.00  String#length                #
#   5.75     3.21      0.67   235886     0.00     0.00  String#chomp!                #
#   0.43     3.26      0.05    20462     0.00     0.00  Fixnum#+                     #
#   0.00     3.26      0.00        1     0.00     0.00  TracePoint#enable            #
#   0.00     3.26      0.00        1     0.00     0.00  MonitorMixin#mon_exit        #
#   0.00     3.26      0.00        2     0.00     0.00  IO#set_encoding              #
#   0.00     3.26      0.00        1     0.00     0.00  File#initialize              #
#   0.00     3.26      0.00        1     0.00     0.00  IO.open                      #
#   0.00     3.26      0.00        1     0.00     0.00  Mutex#unlock                 #
#   0.00     3.26      0.00        1     0.00     0.00  MonitorMixin#mon_check_owner #
#   0.00     3.26      0.00        1     0.00     0.00  MonitorMixin#mon_enter       #
#   0.00     3.26      0.00        1     0.00     0.00  Mutex#lock                   #
#   0.00     3.26      0.00        3     0.00     0.00  Thread.current               #
#   0.00     3.26      0.00        1     0.00     0.00  Fixnum#to_s                  #
#   0.00     3.26      0.00        2     0.00     0.00  IO#write                     #
#   0.00     3.26      0.00        1     0.00     0.00  IO#puts                      #
#   0.00     3.26      0.00        1     0.00     0.00  Kernel#puts                  #
#   0.00     3.26      0.00        1     0.00     0.00  TracePoint#disable           #
#   0.00    11.66      0.00        1     0.00 11660.00  #toplevel                    #
######################################################################################
