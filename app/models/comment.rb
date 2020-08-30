class Comment < ApplicationRecord
  belongs_to :post

  def create_time
    return self.created_at.strftime("%Y/%m/%d: %H:%M");
  end
end
