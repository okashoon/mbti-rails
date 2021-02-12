class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :text
      t.integer :dimension
      t.integer :direction
      t.integer :meaning
      t.timestamps
    end
    create_table :users do |t|
      t.string :email
      t.timestamps
    end
    create_table :answers do |t|
      t.integer :submission_id
      t.integer :question_id
      t.integer :score
      t.timestamps
    end
  end
end
