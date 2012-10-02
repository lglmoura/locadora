require 'spec_helper'

describe "pessoas/index" do
  before(:each) do
    assign(:pessoas, [
      stub_model(Pessoa,
        :nome => "Nome",
        :endereco => "Endereco",
        :telefone => "Telefone"
      ),
      stub_model(Pessoa,
        :nome => "Nome",
        :endereco => "Endereco",
        :telefone => "Telefone"
      )
    ])
  end

  it "renders a list of pessoas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
  end
end
