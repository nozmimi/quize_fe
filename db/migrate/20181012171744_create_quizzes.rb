class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :question, default:0
      t.string :selection, default:0
      t.string :answer, default:0 

      t.timestamps
    end
  end
end
