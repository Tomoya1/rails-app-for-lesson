class Tweet < ActiveRecord::Base

  belongs_to :user
  has_many :favorites, dependent: :destroy

  def favorited_by? user
    favorites.where(user_id: user.id).exists?    #exists?メソッドは存在しているかどうかを調べる
  end
end
