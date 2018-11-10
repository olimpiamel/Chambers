class User < ApplicationRecord

has_secure_password

validates :email, presence: true, uniqueness: true

validates :name, presence: true

validates :surname, presence: true

validates :address, presence: true

validates :phone, presence: true

end
