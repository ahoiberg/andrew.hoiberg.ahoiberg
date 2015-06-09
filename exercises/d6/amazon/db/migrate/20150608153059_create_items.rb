class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :category
      t.float :price
      t.string :description
      t.string :seller

      t.timestamps null: false
    end
  end
end
