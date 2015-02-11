module Core
  class Customer < ActiveRecord::Base
    has_many :addresses
  end
end
