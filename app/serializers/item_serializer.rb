class ItemSerializer
  include JSONAPI::Serializer
  attributes :name, :description, :price, :business_id
end
