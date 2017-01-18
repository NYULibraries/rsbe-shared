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
end
