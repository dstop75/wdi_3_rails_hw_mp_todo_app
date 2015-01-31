require 'rails_helper'

RSpec.describe "tasks/edit", :type => :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      :action => "MyString",
      :done? => false
    ))
  end

  it "renders the edit task form" do
    render

    assert_select "form[action=?][method=?]", task_path(@task), "post" do

      assert_select "input#task_action[name=?]", "task[action]"

      assert_select "input#task_done?[name=?]", "task[done?]"
    end
  end
end
