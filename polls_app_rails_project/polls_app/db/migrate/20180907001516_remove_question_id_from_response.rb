class RemoveQuestionIdFromResponse < ActiveRecord::Migration[5.1]
  def change
    remove_column :responses, :question_id, :integer
    add_column :responses, :answer_choice_id, :integer, index: true

    # remove_index :responses, :question_id
    # add_index :responses, :answer_choice_id
  end
end
