class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :status
      t.belongs_to :user
      t.belongs_to :entry

      t.timestamps
    end
  end
end
