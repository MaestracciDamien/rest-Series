class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.integer :id_serie
      t.string :name
      t.timestamps null: false
    end
  end
end
