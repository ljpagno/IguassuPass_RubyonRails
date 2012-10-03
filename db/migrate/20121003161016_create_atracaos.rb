class CreateAtracaos < ActiveRecord::Migration
  def change
    create_table :atracaos do |t|
      t.string :nome
      t.float :custo

      t.timestamps
    end
  end
end
