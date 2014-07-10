class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  acts_as_taggable

  mount_uploader :pic, AnswerUploader

end
