class Whoops < ActiveRecord::Migration
  def change
    remove_column :quotes, :citation
  end
end
