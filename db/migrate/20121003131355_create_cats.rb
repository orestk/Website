class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.text :description
      t.string :family
      t.integer :sex

      t.timestamps
    end
  end
end
