require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(
        :user => nil,
        :task_name => "Task Name",
        :task_description => "MyText",
        :status => false,
        :clients => nil
      ),
      Task.create!(
        :user => nil,
        :task_name => "Task Name",
        :task_description => "MyText",
        :status => false,
        :clients => nil
      )
    ])
  end

  it "renders a list of tasks" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Task Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
