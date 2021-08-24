class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.references :user, null: false, foreign_key: true
      t.float :price        
      t.string :title
      t.string :description
      t.string :dates_available, :array => true, :length => 30
    end
  end
end
