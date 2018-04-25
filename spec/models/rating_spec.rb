require 'rails_helper'

RSpec.describe Rating, type: :model do
  describe '#new' do
    let(:rating) { Fabricate(:rating) }

    context 'with a -3 to 3 rating' do
      it 'is not invalid on account of its rating' do
        (-3..3).each do |integer|
          rating.value = integer
          expect(rating).to be_valid
        end
      end
    end

    context 'with a rating outside of the required range' do
      it 'is invalid on account of its rating' do
        [-4, 4].each do |integer|
          rating.value = integer
          expect(rating).to_not be_valid
        end
      end
    end
  end
end
