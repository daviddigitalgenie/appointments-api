class Appointment < ApplicationRecord
  resourcify
  belongs_to :provider
  belongs_to :user
end
