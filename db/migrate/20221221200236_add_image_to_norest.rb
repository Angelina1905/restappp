class AddImageToNorest < ActiveRecord::Migration[7.0]
  def change
    add_column :norests, :image, :string
  end
end
