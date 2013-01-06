class QuestionAnswer < ActiveRecord::Base	

  belongs_to :question

  attr_accessible :ans, :image, :is_correct
  mount_uploader :image, AvatarUploader	

end
