module Core
  class Product < ActiveRecord::Base
    validates :name, uniqueness: true
  end
end
