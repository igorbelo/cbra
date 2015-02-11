require 'rails_helper'

describe Core::Product do
  it { is_expected.to validate_uniqueness_of(:name) }
end
