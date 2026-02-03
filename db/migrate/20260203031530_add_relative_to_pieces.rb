class AddRelativeToPieces < ActiveRecord::Migration[8.0]
  def change
    add_column :pieces, :relative, :string
  end
end
