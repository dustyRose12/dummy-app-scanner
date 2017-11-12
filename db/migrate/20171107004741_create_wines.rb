class CreateWines < ActiveRecord::Migration[5.1]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :price
      t.string :rating

      t.timestamps
    end
  end
end
