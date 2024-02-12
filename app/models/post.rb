class Post < ApplicationRecord
  belongs_to :forum

  validates :title, presence: true
  validates :content, presence: true
  validates :forum, presence: true
  validate :valid_img_url, if: -> { img_url.present? }

  private

  def valid_img_url
    if img_url.present? && img_url =~ /\.(png|jpeg|jpg|gif|svg)$/i
      return true
    else
      errors.add(:img_url, "Image URL is not valid.")
      return false
    end
  end
end
