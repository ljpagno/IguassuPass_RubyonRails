class Usuario < ActiveRecord::Base
  attr_accessible :Bairro, :CEP, :CPF, :Cidade, :Complemento, :Email, :First, :Last, :Name, :Name, :Numero, :Pais, :RuaAv, :Telefone, :UF
end
