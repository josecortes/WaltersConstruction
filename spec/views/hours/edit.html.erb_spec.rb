require 'spec_helper'

describe "hours/edit.html.erb" do
  before(:each) do
    @hour = assign(:hour, stub_model(Hour,
      :user_id => 1,
      :work_hours => 1.5
    ))
  end

  it "renders the edit hour form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hours_path(@hour), :method => "post" do
      assert_select "input#hour_user_id", :name => "hour[user_id]"
      assert_select "input#hour_work_hours", :name => "hour[work_hours]"
    end
  end
end
