class AddColumnToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :selection2, :string
    add_column :quizzes, :selection3, :string
    add_column :quizzes, :selection4, :string
  end
end
