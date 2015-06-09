class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :payment_info
      t.string :shipping_info

      t.timestamps null: false
    end
  end
end
