class CreateAges < ActiveRecord::Migration[5.1]
  def change
    create_table :ages do |t|
      t.integer :age_min
      t.integer :age_max

      t.timestamps
    end
  end
end
