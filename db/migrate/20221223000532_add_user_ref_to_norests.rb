class AddUserRefToNorests < ActiveRecord::Migration[7.0]
  def change
    add_reference :norests, :user, null: false, foreign_key: true
  end
end
