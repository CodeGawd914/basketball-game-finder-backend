class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
        t.integer :wins,:default => 0
        t.integer :losses,:default => 0
        t.string :stats
        t.date :last_game
        t.string :avatar
      t.timestamps
    end
  end
end
