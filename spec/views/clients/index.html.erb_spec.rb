require 'rails_helper'

RSpec.describe "clients/index", type: :view do
  before(:each) do
    assign(:clients, [
      Client.create!(
        :user => nil
      ),
      Client.create!(
        :user => nil
      )
    ])
  end

  it "renders a list of clients" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
