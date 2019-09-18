require 'pry'

class User < ActiveRecord::Base
  has_many :hosts
  has_many :guests
  has_many :trips, class_name: "Reservation", foreign_key: "guest_id"
  has_many :reviews, :foreign_key => "guest_id"
  has_many :reservations, :foreign_key => "guest_id"
  has_many :reservations, through: :listings, :foreign_key => "host_id"
  has_many :listings, :foreign_key => "host_id"

end
