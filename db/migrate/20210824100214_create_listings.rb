class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.references :user, null: false, foreign_key: true
      t.float :price        
      t.string :title
      t.string :description
      t.date :start_date, null: false
      t.date :end_date, null: false
    end
  end
end
