class ChangeIp < ActiveRecord::Migration
  def change
    rename_column :votes, :ip_address, :ip
  end
end
