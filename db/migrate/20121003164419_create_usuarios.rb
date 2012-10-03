class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :First
      t.string :Name
      t.string :Last
      t.string :Name
      t.string :Email
      t.string :CPF
      t.string :Telefone
      t.string :CEP
      t.string :RuaAv
      t.string :Numero
      t.string :Complemento
      t.string :Bairro
      t.string :Cidade
      t.string :UF
      t.string :Pais

      t.timestamps
    end
  end
end
