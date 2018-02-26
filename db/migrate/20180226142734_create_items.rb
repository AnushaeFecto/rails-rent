class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :size
      t.float :price
      t.string :photo
      t.string :category
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
