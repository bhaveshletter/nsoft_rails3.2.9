class Question < ActiveRecord::Base	

  has_many :question_answers

  scope :selected, lambda{ |ids| includes(:question_answers).where('id IN  (?)', ids) }
  
  attr_accessible :image, :info, :level, :status
  mount_uploader :image, AvatarUploader	  

end


