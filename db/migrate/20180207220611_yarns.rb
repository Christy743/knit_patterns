class Yarns < ActiveRecord::Migration[5.1]
  def change
    create_table :yarns do |t|
      t.string :name
      t.string :weight
      t.integer :quantity, default: 1
    end
  end
end
