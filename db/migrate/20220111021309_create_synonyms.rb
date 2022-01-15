class CreateSynonyms < ActiveRecord::Migration[6.1]
  def change
    create_table :synonyms do |t|
      t.string :english_word
      t.string :kannada_word
      t.boolean :true_or_false

      t.timestamps
    end
  end
end
