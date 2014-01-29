class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :header
      t.text :body
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
