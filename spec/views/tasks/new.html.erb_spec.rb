require 'rails_helper'

RSpec.describe "tasks/new", type: :view do
  before(:each) do
    assign(:task, Task.new(
      :user => nil,
      :task_name => "MyString",
      :task_description => "MyText",
      :status => false,
      :clients => nil
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input#task_user_id[name=?]", "task[user_id]"

      assert_select "input#task_task_name[name=?]", "task[task_name]"

      assert_select "textarea#task_task_description[name=?]", "task[task_description]"

      assert_select "input#task_status[name=?]", "task[status]"

      assert_select "input#task_clients_id[name=?]", "task[clients_id]"
    end
  end
end
