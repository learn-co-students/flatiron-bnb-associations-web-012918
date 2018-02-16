class User < ActiveRecord::Base
  has_many :hosts
  has_many :guests
  has_many :reservations, :foreign_key => "guest_id"
  has_many :reservations, :foreign_key => "host_id"
  has_many :listings, :foreign_key => "host_id"

end
