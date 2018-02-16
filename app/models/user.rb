class User < ActiveRecord::Base

  has_many :listings, :foreign_key => 'host_id'
  has_many :reservations, through: :listings, :foreign_key => 'guest_id'
  has_many :trips, class_name: "Reservation", :foreign_key => 'guest_id'
  has_many :reviews, :foreign_key => 'guest_id'

end

# :foreign_key option -- By default this is guessed to be the association name with _id suffix added. A Reservation or Listing class that defines a belongs_to :user association will use "user_id" as the default :foreign_key. Here (?) we're overriding this behavior and causing these classes to use "host_id" and "guest_id" foreign keys. It looks like we couple this definition with the :class_name => "User" option.

# Each macro adds a number of methods to the class which are specialized according to the collection or association symbol and the options hash. It works much the same way as Ruby's own attr* methods.
