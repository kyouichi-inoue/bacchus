class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :item
      t.text :text
      t.integer :liquor_id
      t.integer :taste_id
      t.integer :place_id
      t.integer :alcohol_id
    end
  end
end