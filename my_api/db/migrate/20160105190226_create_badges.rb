class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :catchphrase
      t.integer :vote, :default => 0
      t.integer :student_id
      t.timestamps null: false
    end
  end
end
