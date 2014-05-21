class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.references :question, index: true
      t.string :name
      t.integer :poll_number, :default => 0

      t.timestamps
    end
  end
end
