class CreatePieces < ActiveRecord::Migration[8.0]
  def change
    create_table :pieces do |t|
      t.string :name
      t.string :time_signature
      t.string :key_signature
      t.string :content
      t.integer :composer_id

      t.timestamps
    end
  end
end
