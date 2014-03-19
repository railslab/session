class CreateCadastros < ActiveRecord::Migration
  def change
    create_table :cadastros do |t|
      t.string :nome
      t.string :email
      t.string :password_digest
      t.text :endereco
      t.boolean :admin
      t.date :data_nasc

      t.timestamps
    end
  end
end
