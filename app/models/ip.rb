class Ip < ApplicationRecord
    belongs_to :room
    belongs_to :device
    validates_presence_of :hostname, uniqueness: true 
    validates_presence_of :ip_address, uniqueness: true 
    validates_presence_of :room_id
end
