require 'roman_decoder'
describe RomanDecoder do
  describe '.decode' do
    context 'given property value' do
      it 'returns 21' do
        expect(RomanDecoder.decode('XXI')).to eql(21)
      end
      it 'returns 4' do
        expect(RomanDecoder.decode('IV')).to eql(4)
      end

      it 'returns 2008' do
        expect(RomanDecoder.decode('MMVIII')).to eql(2008)
      end

      it 'returns 1666' do
        expect(RomanDecoder.decode('MDCLXVI')).to eql(1666)
      end
    end
  end
end
