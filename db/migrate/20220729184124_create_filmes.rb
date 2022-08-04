class CreateFilmes < ActiveRecord::Migration[5.1]
  def change
    create_table :filmes do |t|
      t.string :imagen
      t.string :titulo
      t.integer :calificacion

      t.timestamps
    end
  end
end
