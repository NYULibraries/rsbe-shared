require 'spec_helper'

describe Rsbe::Shared::Type do
  before(:each) do
    @sut = Rsbe::Shared::Type.new(name: 'foo', code: 'bar')
  end

  context 'when created from a hash' do
    it 'returns the correct code' do
      expect(@sut.code).to eq('bar')
    end

    it 'returns the correct name' do
      expect(@sut.name).to eq('foo')
    end
  end

  describe '#==' do
    it 'should be true for two objects with the same attributes' do
      sut1 = Rsbe::Shared::Type.new(name: 'foo', code: 'bar')
      expect(@sut == sut1).to be true
    end

    it 'should be false for  two objects with different attributes' do
      sut1 = Rsbe::Shared::Type.new(name: 'foo', code: 'baz')
      expect(@sut == sut1).to be false
    end
  end
end
