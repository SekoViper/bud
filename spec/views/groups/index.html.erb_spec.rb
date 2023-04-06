require 'rails_helper'

RSpec.describe 'groups/index', type: :view do
  let(:user) { User.create!(name: 'Another_user', email: 'test2@gmail.com', password: '123123') }

  before(:each) do
    assign(:groups, [
             Group.create!(
               name: 'Name 1',
               icon: 'Icon',
               user:
             ),
             Group.create!(
               name: 'Name 2',
               icon: 'Icon',
               user:
             )
           ])
  end
end
