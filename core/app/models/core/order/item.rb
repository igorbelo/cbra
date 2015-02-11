module Core
  class Order::Item < ActiveRecord::Base
    belongs_to :order
    belongs_to :product

    validates :order, presence: true
    validates :product, presence: true
  end
end
