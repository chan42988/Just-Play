class AddPosition2ToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :position2, :string
  end
end
