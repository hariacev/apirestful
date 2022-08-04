class CreatePersonajes < ActiveRecord::Migration[5.1]
  def change
    create_table :personajes do |t|
      t.string :imagen
      t.string :nombre
      t.integer :edad
      t.float :peso

      t.timestamps
    end
  end
end
