class AddAssessmentsToPlayer < ActiveRecord::Migration[5.1]
  def change
    add_reference :players, :assessment, foreign_key: true
  end
end
