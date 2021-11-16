class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.references :user, null: false, foreign_key: true
      t.string :subject
      t.string :level
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
