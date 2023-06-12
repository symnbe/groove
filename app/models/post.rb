class Post < ApplicationRecord

  belongs_to :user

  validates:title, presence:true
  validates:url, presence:true

  enum category: { work: 0, hobby: 1 }

end
