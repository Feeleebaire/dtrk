class DropAges < ActiveRecord::Migration[5.1]
  def change
    drop_table :ages
  end
end
