class User < ApplicationRecord
  rolify
    has_secure_password
    has_many :appointments
end
