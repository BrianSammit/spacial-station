class AddCategoryToRockets < ActiveRecord::Migration[7.0]
  def change
    add_reference :rockets, :category, null: false, foreign_key: true
  end
end
