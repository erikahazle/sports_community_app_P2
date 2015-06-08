class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.string :name
      t.text :description
      t.text :image
      t.boolean :outdoor

      t.timestamps null: false
    end
  end
end
