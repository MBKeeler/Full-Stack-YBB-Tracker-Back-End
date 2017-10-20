class AddAssessmentsToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :assessment, foreign_key: true
  end
end
