FactoryGirl.define do
  factory :task, :class => 'Tasks' do
    user nil
task_name "MyString"
task_description "MyText"
task_completion_date "2015-04-07"
task_completion_time "2015-04-07 09:33:58"
status false
clients nil
  end

end
