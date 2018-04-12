class CreateTargets < ActiveRecord::Migration[5.1]
  def change
    create_table :targets do |t|
      t.integer :age
      t.string :sexe
      t.text :csp, array: true, default: []
      t.text :tag, array: true, default: []
      t.text :geo, array: true, default: []
      t.timestamps
    end
  end
end
