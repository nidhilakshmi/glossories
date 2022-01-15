class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :comments
      t.references :synonym, null: false, foreign_key: true

      t.timestamps
    end
  end
end
