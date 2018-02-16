class Review < ActiveRecord::Base
  belongs_to :guest, :class_name => "User" #or through reservation??
  belongs_to :reservation
end
