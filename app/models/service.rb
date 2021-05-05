class Service < ApplicationRecord
    has_many :sectors
    validates_presence_of :name
end
