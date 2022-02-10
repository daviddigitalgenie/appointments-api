class User < ApplicationRecord
  rolify
    has_secure_password
    has_many :appointments

  validates :email, uniqueness: { case_sensitive: false }, presence: true, allow_blank: false, format: => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
