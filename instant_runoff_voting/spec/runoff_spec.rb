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
      it 'returns :e' do
        expect(Runoff.runoff([[:d, :a, :e, :b, :c],
                              [:b, :e, :d, :c, :a],
                              [:e, :a, :c, :b, :d],
                              [:e, :d, :a, :b, :c],
                              [:d, :b, :a, :e, :c]])).to eql(:e)
      end
    end
  end
end
