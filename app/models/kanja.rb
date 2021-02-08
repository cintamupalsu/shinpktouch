class Kanja < ApplicationRecord
  before_save {email.downcase!}
  validates :name, presence: true, length: {maximum: 50}
  validates :barcode, presence: true, 
                      length: {maximum: 255},
                      uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end
