class Service < ApplicationRecord
    belongs_to :pro
    has_many :appointments 
end
