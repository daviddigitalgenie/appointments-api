class Provider < ApplicationRecord
    resourcify
    has_many :appointments, dependent: :destroy
end
