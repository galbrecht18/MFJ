class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|

      t.string :name
      t.string :type
      t.string :publicorprivate
      t.string :town
      t.string :state

      t.timestamps null: false
    end
  end
end
