class Student < ActiveRecord::Base
  validates :name, presence: true
  has_many :badges
end
