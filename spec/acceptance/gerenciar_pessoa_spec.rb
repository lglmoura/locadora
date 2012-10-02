# coding: utf-8

require 'spec_helper'

feature 'gerenciar Pessoa' do

  scenario 'incluir pessoa' do # , :javascript => true  do

    visit new_pessoa_path

    preencher_e_verificar_pessoa

    #page.should have_content 'Pessoa cadastrado com sucesso'

  end

   def preencher_e_verificar_pessoa

      fill_in 'Nome',  :with => "Luiz"

      fill_in 'Endereco', :with   => "Rua x"

      fill_in 'Telefone', :with   => "1212121"
    
 
      click_button 'Create Pessoa'

      page.should have_content 'Nome: Luiz'

      page.should have_content 'Endereco: Rua x'
      page.should have_content 'Telefone: 1212121'

   end
end
