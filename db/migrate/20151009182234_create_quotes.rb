class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :quote
      t.integer :identification_count

      t.timestamps null: false
    end
  end
end
