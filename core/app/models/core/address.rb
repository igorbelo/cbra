module Core
  class Address < ActiveRecord::Base
    belongs_to :customer
  end
end
