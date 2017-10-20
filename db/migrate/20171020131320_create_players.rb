class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :grade
      t.string :program
      t.string :notes
      t.integer :catch
      t.integer :throw
      t.integer :pitch
      t.integer :bat
      t.integer :athleticism
      t.timestamps
    end
  end
end
