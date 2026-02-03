class AddCityToLabels < ActiveRecord::Migration[8.0]
  def change
    add_column :labels, :city, :string
  end
end
