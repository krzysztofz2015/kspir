class Client < ActiveRecord::Base
  has_many :products, dependent: :destroy
  validates :Number_Phone, presence: true,
                    length: { minimum: 8 }
end