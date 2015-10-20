class AddCitation < ActiveRecord::Migration
  def change
    add_column :quotes, :citation, :text
  end
end
