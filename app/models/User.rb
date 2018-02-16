class User < ActiveRecord::Base
  has_many :reservations, through: :listings, :foreign_key => 'guest_id'
  has_many :reviews
  has_many :listings, :foreign_key => 'host_id'


  def trips
  end
end
