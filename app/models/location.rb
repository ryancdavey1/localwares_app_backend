class Location < ApplicationRecord
  

  geocoded_by :address, :latitude => :lat, :longitude => :lng
  after_validation :geocode, :if => lambda{ |obj| obj.address1_changed? && obj.city? && obj.state? && obj.postal_code? }

  def address
    [state, city, postal_code, address1].compact.join(', ')
  end
end
#rails g scaffold item name:string description:string price:decimal favorite:boolean business_id:integer
#rails g scaffold category name:string 