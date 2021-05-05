class Sector < ApplicationRecord
    belongs_to :service
    has_many :rooms
    validates_presence_of :name, uniqueness: true
    validates_presence_of :service_id
end
