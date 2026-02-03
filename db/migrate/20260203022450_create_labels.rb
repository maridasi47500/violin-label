class CreateLabels < ActiveRecord::Migration[8.0]
  def change
    create_table :labels do |t|
      t.string :manufacturer
      t.string :annee
      t.string :model
      t.string :content

      t.timestamps
    end
  end
end
