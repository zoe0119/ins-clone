class Post < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true
  validate :image_type

  def full_size input
    @image =  self.images[input]
    return @image
  end

  def thumbnail input
    @image =  self.images[input]
    return @image.variant(resize: '300x200!').processed
  end

  def preview input
    @image =  self.images[input]
    return @image.variant(resize: '80x50!').processed
  end

  def create_time
    return self.created_at.strftime("%Y/%m/%d: %H:%M");
  end
  
  private

    def image_type
      unless images.attached? == false
        images.each do |image|
          if !image.content_type.in?(%('image/png image/jpg image/jpeg'))
            errors.add(:images, 'The image format should be PNG/JPG/JPEG')
          end
        end
      end
    end
end
