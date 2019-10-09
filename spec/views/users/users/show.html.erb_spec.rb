require 'rails_helper'

RSpec.describe "users/users/show", type: :view do
  before(:each) do
    @users_user = assign(:users_user, Users::User.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
