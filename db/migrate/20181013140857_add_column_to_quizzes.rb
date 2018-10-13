class AddColumnToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :selection2, :string, default:0
    add_column :quizzes, :selection3, :string, default:0
    add_column :quizzes, :selection4, :string, default:0
  end
end
