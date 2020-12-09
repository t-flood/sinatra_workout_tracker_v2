class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :sets
      t.integer :reps
      t.integer :weight
      t.text :notes
      t.date :date
      t.integer :user_id
    end
  end
end
