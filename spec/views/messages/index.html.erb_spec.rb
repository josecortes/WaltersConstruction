require 'spec_helper'

describe "messages/index.html.erb" do
  before(:each) do
    assign(:messages, [
      stub_model(Message,
        :headline => "Headline",
        :body => "Body"
      ),
      stub_model(Message,
        :headline => "Headline",
        :body => "Body"
      )
    ])
  end

  it "renders a list of messages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Headline".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Body".to_s, :count => 2
  end
end
