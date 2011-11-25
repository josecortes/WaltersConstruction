require 'spec_helper'

describe "messages/edit.html.erb" do
  before(:each) do
    @message = assign(:message, stub_model(Message,
      :headline => "MyString",
      :body => "MyString"
    ))
  end

  it "renders the edit message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => messages_path(@message), :method => "post" do
      assert_select "input#message_headline", :name => "message[headline]"
      assert_select "input#message_body", :name => "message[body]"
    end
  end
end
