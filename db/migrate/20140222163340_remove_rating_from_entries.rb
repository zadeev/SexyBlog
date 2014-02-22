class RemoveRatingFromEntries < ActiveRecord::Migration
  def change
    remove_column :entries, :rating, :integer
  end
end
