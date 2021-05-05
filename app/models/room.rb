class Room < ApplicationRecord
    belongs_to :sector
    has_many :ips

    validates_presence_of :name, uniqueness: true
    validates_presence_of :sector_id
    validates :number, uniqueness: true
end
