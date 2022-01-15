class RemoveTrueOrFalsefromSynonyms < ActiveRecord::Migration[6.1]
  def change
     remove_column :synonyms, :true_or_false, :boolean
  end
end
