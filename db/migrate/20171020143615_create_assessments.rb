class CreateAssessments < ActiveRecord::Migration[5.1]
  def change
    create_table :assessments do |t|
      t.integer :catch
      t.integer :throw
      t.integer :pitch
      t.integer :bat
      t.integer :athleticism

      t.timestamps
    end
  end
end
