class AddCoordinator < ActiveRecord::Migration
  def change
    add_column(:teams, :coord_name, :string)
  end
end
