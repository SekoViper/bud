require 'rails_helper'

RSpec.describe 'groups/index', type: :view do
  let(:user) { User.create!(name: 'Another_user', email: 'test2@gmail.com', password: '123123') }

  before(:each) do
    assign(:groups, [
      Group.create!(
        name: 'Name 1',
        icon: 'Icon',
        user: user
      ),
      Group.create!(
        name: 'Name 2',
        icon: 'Icon',
        user: user
      )
    ])
  end

  it 'renders a list of groups' do
    render
    expect(response).to include('Name 1', 'Name 2')
  end
end
