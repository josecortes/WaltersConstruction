require 'spec_helper'

describe "hours/new.html.erb" do
  before(:each) do
    assign(:hour, stub_model(Hour,
      :user_id => 1,
      :work_hours => 1.5
    ).as_new_record)
  end

  it "renders new hour form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hours_path, :method => "post" do
      assert_select "input#hour_user_id", :name => "hour[user_id]"
      assert_select "input#hour_work_hours", :name => "hour[work_hours]"
    end
  end
end
