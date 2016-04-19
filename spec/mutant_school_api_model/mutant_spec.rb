require 'spec_helper'

describe Mutant do
  describe '#save' do
    describe 'when the record is not persisted' do
      it 'creates a new mutant' do
        attributes = {
          mutant_name: 'Rogue',
          real_name: 'Marie',
          power: 'stealing power from others'
        }

        rogue = Mutant.new attributes
        actual = Mutant.new(rogue.save)
        expect(actual.to_h).must_equal(rogue.to_h)
      end
    end
  end
end
