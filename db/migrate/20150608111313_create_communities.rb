class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :name
      t.text :description
      t.text :image
      t.string :post_code
      t.belongs_to :sport, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
