class CreatePlanAds < ActiveRecord::Migration[5.1]
  def change
    create_table :plan_ads do |t|
      t.references :media_publisher, foreign_key: true
      t.references :plan, foreign_key: true

      t.timestamps
    end
  end
end
