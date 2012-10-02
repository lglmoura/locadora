require 'spec_helper'

describe "pessoas/new" do
  before(:each) do
    assign(:pessoa, stub_model(Pessoa,
      :nome => "MyString",
      :endereco => "MyString",
      :telefone => "MyString"
    ).as_new_record)
  end

  it "renders new pessoa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pessoas_path, :method => "post" do
      assert_select "input#pessoa_nome", :name => "pessoa[nome]"
      assert_select "input#pessoa_endereco", :name => "pessoa[endereco]"
      assert_select "input#pessoa_telefone", :name => "pessoa[telefone]"
    end
  end
end
