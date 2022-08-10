class CreateBartenders < ActiveRecord::Migration[6.1]
  def change
    create_table :bartenders do |t|
      t.string :name
      t.string :handle
      t.integer :restaurant_id
    end
  end
end
