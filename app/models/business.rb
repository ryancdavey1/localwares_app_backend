class Business < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :items

  validates :name, :description, :user, :category_id, :address1, :city, :state, :postal_code, presence: true

  geocoded_by :address, :latitude => :lat, :longitude => :lng
  after_validation :geocode, :if => lambda{ |obj| obj.address1_changed? || obj.city_changed? || obj.state_changed? || obj.postal_code_changed? }

  def address
    [state, city, postal_code, address1].compact.join(', ')
  end
end
