require 'spec_helper'

describe Rsbe::Shared::Se do
  before(:each) do
    @expected = [ 
      Rsbe::Shared::Type.new(code: 'audio', name: 'audio'),
      Rsbe::Shared::Type.new(code: 'video', name: 'video'),
      Rsbe::Shared::Type.new(code: 'book',  name: 'book'),
      Rsbe::Shared::Type.new(code: 'image', name: 'image'),
      Rsbe::Shared::Type.new(code: 'map',   name: 'map'),
      Rsbe::Shared::Type.new(code: 'image_set', name: 'image set'),
      Rsbe::Shared::Type.new(code: 'postcard',  name: 'postcard')
    ]
  end

  describe '.do_types' do
    it 'returns the correct array of types' do
      expect(Rsbe::Shared::Se.do_types).to eq(@expected)
    end
  end
end
