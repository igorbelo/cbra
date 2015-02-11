require 'rails_helper'

describe Core::Order do
  it { is_expected.to have_many(:items) }
  it { is_expected.to belong_to(:address) }
  it { is_expected.to belong_to(:customer) }
end
