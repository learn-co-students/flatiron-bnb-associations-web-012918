class User < ActiveRecord::Base

  def listings
    Listing.all
  end

  def reservations
    Reservation.all
  end

  def trips
    Reservation.all
  end

  def reviews
    Review.all
  end
end
