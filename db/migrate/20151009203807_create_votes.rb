class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :quote_id
      t.string :ip_address
    end
  end
end
