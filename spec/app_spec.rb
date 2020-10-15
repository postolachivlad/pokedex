require_relative 'spec_helper'

class AppSpec < PokedexAppSpec
  describe '/' do
    let(:result) { get '/' }

    it 'handles the request' do
      assert_equal 200, result.status
    end
  end
end
