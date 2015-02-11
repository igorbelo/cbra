require 'rails_helper'

describe Core::Customer do
  it { is_expected.to have_many(:addresses) }
end
