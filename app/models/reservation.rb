class Reservation < ActiveRecord::Base
  # belongs_to :host, class_name: "User" #or belongs to host through listing??
  belongs_to :guest, :class_name => "User"
  # belongs_to :neighborhood
  belongs_to :listing
  has_many :reviews
end
