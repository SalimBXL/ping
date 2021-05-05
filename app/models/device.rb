class Device < ApplicationRecord
    has_many :ips
    validates_presence_of :name, uniqueness: true
end
