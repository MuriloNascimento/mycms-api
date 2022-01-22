class User < ApplicationRecord
    has_secure_password

    validates :login, uniqueness: true, presence: true
    validates :name, presence: true
end
