class Event < ActiveRecord::Base
    validates :name,presence: true
    validates :description,presence: true
    validates :society_code,presence: true
end
