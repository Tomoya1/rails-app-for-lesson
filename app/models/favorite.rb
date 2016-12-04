class Favorite < ActiveRecord::Base

  belongs_to :user
  belongs_to :tweet

  validates :user, presence: true     #空の値を入れないようにする
  validates :user_id, uniqueness: {scope: :tweet_id}      #同じものを保存しないようにするもの
  validates :tweet, presence: true
end
