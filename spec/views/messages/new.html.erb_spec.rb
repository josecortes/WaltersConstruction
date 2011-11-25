require 'spec_helper'

describe "messages/new.html.erb" do
  before(:each) do
    assign(:message, stub_model(Message,
      :headline => "MyString",
      :body => "MyString"
    ).as_new_record)
  end

  it "renders new message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => messages_path, :method => "post" do
      assert_select "input#message_headline", :name => "message[headline]"
      assert_select "input#message_body", :name => "message[body]"
    end
  end
end
