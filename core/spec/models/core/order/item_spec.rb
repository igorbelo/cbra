require 'rails_helper'

describe Core::Order::Item do
  it { is_expected.to belong_to(:order) }
  it { is_expected.to belong_to(:product) }

  it { is_expected.to validate_presence_of(:order) }
  it { is_expected.to validate_presence_of(:product) }
end
