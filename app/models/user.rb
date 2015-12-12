class User < ActiveRecord::Base
    validates :name, presence: true
    validates :email, presence: true, format: {with:/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
    validates :password, length: { minimum: 6 }
    has_secure_password
end
