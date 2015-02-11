module Core
  class Adress < ActiveRecord::Base
    belongs_to :customer
  end
end
