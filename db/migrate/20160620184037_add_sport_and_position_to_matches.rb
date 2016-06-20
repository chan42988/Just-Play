class AddSportAndPositionToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :sport, :string
    add_column :matches, :position, :string
  end
end
