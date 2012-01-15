class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :client
      t.string :description

      t.timestamps
    end
  end
end
