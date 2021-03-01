class BusinessSerializer
  include JSONAPI::Serializer
  attributes :name, :description, :open_hours, :email, :phone_number, :delivery, :user_id, :category_id, :website, :address1, :city, :state, :postal_code, :lat, :lng

  attribute :items do |business|
    business.items.map do |item|
      {
        name: item.name,
        description: item.description,
        price: item.price
      }
    end
  end
end
