require 'spec_helper'

describe "hours/show.html.erb" do
  before(:each) do
    @hour = assign(:hour, stub_model(Hour,
      :user_id => 1,
      :work_hours => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
  end
end
