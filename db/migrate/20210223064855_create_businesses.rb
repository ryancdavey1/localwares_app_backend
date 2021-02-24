class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :description
      t.string :open_hours
      t.string :email
      t.string :phone_number
      t.boolean :favorite
      t.boolean :delivery
      t.integer :user_id
      t.integer :category_id
      t.string :website
      t.string :address1
      t.string :city
      t.string :state
      t.string :postal_code
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
