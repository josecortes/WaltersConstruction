require 'spec_helper'

describe "hours/index.html.erb" do
  before(:each) do
    assign(:hours, [
      stub_model(Hour,
        :user_id => 1,
        :worked_hours => 1.5
      ),
      stub_model(Hour,
        :user_id => 1,
        :worked_hours => 1.5
      )
    ])
  end

  it "renders a list of hours" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
