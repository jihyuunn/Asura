class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :username
      t.text :content
      t.integer :rating
      t.references :fortune, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
