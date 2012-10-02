class Pessoa < ActiveRecord::Base
  attr_accessible :endereco, :nome, :telefone
end
