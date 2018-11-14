RSpec.describe Web::Controllers::D6::Index, type: :action do
  let(:action) { described_class.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    expect(response[0]).to eq 200
  end

  it 'exposes a number' do
    action.call(params)
    expect(action.exposures[:roll]).to be_an(Integer)
  end
end
