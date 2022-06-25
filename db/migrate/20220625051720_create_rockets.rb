class CreateRockets < ActiveRecord::Migration[7.0]
  def change
    create_table :rockets do |t|
      t.string :name
      t.string :fuel
      t.string :country
      t.string :activity

      t.timestamps
    end
  end
end
