class OperatingSystem < ApplicationRecord
    validates_presence_of :name, uniqueness: true
end
