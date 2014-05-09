require 'gserver'

class LogServer < GServer
  def initialize
    super(12345)
  end

  def serve(client)
    client.puts get_end_of_log_file
  end

  private

  def get_end_of_log_file
    File.open("/var/log/system.log") do |log|
      log.seek(-500, IO::SEEK_END) # bak up 500 characters from end
      log.gets
      log.read
    end
  end
end

server = LogServer.new
server.start.join

#####################################################################################################################
# <===================OUTPUT===================>                                                                    #
# bash-3.2$ telnet 127.0.0.1 12345                                                                                  #
# Trying 127.0.0.1...                                                                                               #
# Connected to localhost.                                                                                           #
# Escape character is '^]'.                                                                                         #
# May  7 21:52:50 hfengdeMacBook-Air kernel[0]: wl0: Roamed or switched channel, reason #4, bssid d4:ee:07:02:41:ca #
# May  7 21:52:50 hfengdeMacBook-Air kernel[0]: en0: BSSID changed to d4:ee:07:02:41:ca                             #
# May  7 21:52:50 hfengdeMacBook-Air kernel[0]: AirPort: RSN handshake complete on en0                              #
# May  7 21:52:53 hfengdeMacBook-Air.local login[1086]: USER_PROCESS: 1086 ttys005                                  #
# May  7 21:54:23 hfengdeMacBook-Air.local apsd[81]: Unrecognized leaf certificate                                  #
# Connection closed by foreign host.                                                                                #
#####################################################################################################################
