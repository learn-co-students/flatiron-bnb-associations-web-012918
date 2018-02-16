#
class Review < ActiveRecord::Base
  belongs_to :reservation
  # has_many :users, through: :reservations
  belongs_to :guest, :class_name => "User"
end
