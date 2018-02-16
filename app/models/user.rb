class User < ActiveRecord::Base
  has_many :listings, foreign_key: 'host'
  has_many :reviews, through: :reservations, foreign_key: 'guest'
  has_many :reservations, foreign_key: 'guest'

  def listings
    Listing.where(host: self)
  end

  def reservations
    Reservation.where(listing: self)
  end

  def trips
    Reservation.where(guest: self)
  end

  def reviews
    Review.where(guest: self)
  end
end
