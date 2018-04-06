class AddTypeToPublishers < ActiveRecord::Migration[5.1]
  def change
    add_reference :publishers, :type, foreign_key: true
  end
end
