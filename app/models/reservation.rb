#
class Reservation < ActiveRecord::Base
  has_many :reviews
#through for has many only
  # belongs_to :host, class_name: "User"
  belongs_to :guest, class_name: "User"
  belongs_to :listing
end
