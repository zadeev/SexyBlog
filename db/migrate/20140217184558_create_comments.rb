class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :comment
      t.belongs_to :user
      t.belongs_to :entry

      t.timestamps
    end
  end
end
