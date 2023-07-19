class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :year
      t.references :store, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
