class User < ActiveRecord::Base
    validates :name, presence: true
    validates :email, presence: true, format: {with:/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
    validates :password, length: { minimum: 6 }
    validates :admission_no, presence: true
    has_secure_password
end
