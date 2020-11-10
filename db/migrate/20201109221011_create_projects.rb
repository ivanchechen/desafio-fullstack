class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.datetime :init_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
