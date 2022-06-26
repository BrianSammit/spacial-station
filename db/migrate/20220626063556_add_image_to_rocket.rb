class AddImageToRocket < ActiveRecord::Migration[7.0]
  def change
    add_column :rockets, :img_url, :string
  end
end
