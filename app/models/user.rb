class User < ActiveRecord::Base
    validates :name, presence: true
    validates :email, presence: true, format: {with:/@/}
    has_secure_password
end
