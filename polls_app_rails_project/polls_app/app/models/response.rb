# == Schema Information
#
# Table name: responses
#
#  id          :bigint(8)        not null, primary key
#  user_id     :integer          not null
#  question_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Response < ApplicationRecord
  belongs_to :question,
  primary_key: :id,
  foregin_key: :question_id,
  class_name: :Question

  belongs_to :respondent,
  primary_key: :id,
  foregin_key: :user_id,
  class_name: :User
end
