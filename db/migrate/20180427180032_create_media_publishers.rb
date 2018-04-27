class CreateMediaPublishers < ActiveRecord::Migration[5.1]
  def change
    create_table :media_publishers do |t|
      t.references :publisher, foreign_key: true
      t.string :offre
      t.string :type_pub
      t.string :format
      t.string :emplacement
      t.string :rubrique
      t.float :tarif
      t.string :categorie
      t.references :target, foreign_key: true

      t.timestamps
    end
  end
end
