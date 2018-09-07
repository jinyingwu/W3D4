class AddIndexToAnswerChoiceId < ActiveRecord::Migration[5.1]
  def change
    add_index :responses, :answer_choice_id
  end
end
