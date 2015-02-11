module Core
  class Order < ActiveRecord::Base
    has_many :items
    belongs_to :customer
    belongs_to :address
  end
end
