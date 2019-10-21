class Appointment < ApplicationRecord
    belongs_to :client
    belongs_to :pro
    belongs_to :service
end
