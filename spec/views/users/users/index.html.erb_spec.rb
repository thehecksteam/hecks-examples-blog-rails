require 'rails_helper'

RSpec.describe "users/users/index", type: :view do
  before(:each) do
    assign(:users_users, [
      Users::User.create!(
        :name => "Name"
      ),
      Users::User.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of users/users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
