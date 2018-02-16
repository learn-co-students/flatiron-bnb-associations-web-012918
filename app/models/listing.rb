class Listing < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :host, class_name: 'User'
  has_many :reservations

  def reviews
    Review.where(reservation: self)
  end

  def guests
    Reservation.where(listing: self).map{|reservation| reservation.guest}
  end
end
