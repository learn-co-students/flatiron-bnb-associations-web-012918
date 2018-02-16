require 'pry'
class Listing < ActiveRecord::Base
  belongs_to :host, :class_name => "User"
  belongs_to :neighborhood
  has_many :reservations
  has_many :reviews, through: :reservations

  def guests
    guests = User.all.select do |user|
      user.reservations.where{listing = self}
    end
  end
end
