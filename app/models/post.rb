class Post < ApplicationRecord

  belongs_to :user

  validates:title, presence:true
  validates:url, presence:true

  enum category: { general: 0, work: 1, hobby: 2}

end
