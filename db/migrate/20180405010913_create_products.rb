class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :tag
      t.references :user, foreign_key: true
      t.file :image

      t.timestamps
    end
  end
end
