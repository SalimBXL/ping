class Ip < ApplicationRecord
    require 'socket'
    require 'timeout'

    belongs_to :room
    belongs_to :device
    belongs_to :operating_system
    
    validates_presence_of :hostname, uniqueness: true 
    validates_presence_of :ip_address, uniqueness: true 
    validates_presence_of :room_id

    def ping
        host = self.ip_address
        begin
            Timeout.timeout(5) do 
                s = TCPSocket.new(host, 'echo')
            s.close
            return true
        end
        rescue Errno::ECONNREFUSED 
            return true
        rescue Timeout::Error, Errno::ENETUNREACH, Errno::EHOSTUNREACH
            return false
        end
    end

end
