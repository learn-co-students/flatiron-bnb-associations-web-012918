class Reservation < ActiveRecord::Base

  belongs_to :guest, :class_name => "User"
  belongs_to :listing
  has_many :reviews

end

# :class_name option -- "Use it only if that name can't be inferred from the assoiation name. By default Reservation will be linked to the Guest class, but the real class name is User"
