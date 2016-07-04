require 'runoff'
describe Runoff do
  describe '.runoff' do
    context 'given property winner' do
      it 'returns :ind' do
        expect(Runoff.runoff([[:dem, :ind, :rep],
                              [:rep, :ind, :dem],
                              [:ind, :dem, :rep],
                              [:ind, :rep, :dem]])).to eql(:ind)
      end
    end
  end
end
