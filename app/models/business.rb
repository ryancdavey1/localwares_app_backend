class Business < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :items

  geocoded_by :address, :latitude => :lat, :longitude => :lng
  after_validation :geocode, :if => lambda{ |obj| obj.address1_changed? && obj.city? && obj.state? && obj.postal_code? }

  def address
    [state, city, postal_code, address1].compact.join(', ')
  end
end
