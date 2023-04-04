require 'rails_helper'

RSpec.describe 'purchases/index', type: :view do
  let(:user) { User.create!(name: 'Another_user', email: 'test2@gmail.com', password: '123123') }

  before(:each) do
    @group = Group.create!(user:, name: 'Shopping', icon: 'icon')
    assign(:purchases, [
             Purchase.create!(name: 'Item 1', description: 'Description 1', group_id: @group.id, author: user,
                              amount: 10),
             Purchase.create!(name: 'Item 2', description: 'Description 2', group_id: @group.id, author: user,
                              amount: 15)
           ])
  end

  it 'renders a list of purchases' do
    render
    expect(response).to include('Item 1', 'Item 2')
  end
end
