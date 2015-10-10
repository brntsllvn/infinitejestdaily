class DropCounter < ActiveRecord::Migration
  def change
    remove_column :quotes, :identification_count
  end
end
