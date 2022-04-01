class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :type
      t.string :tags
      t.string :gallery

      t.timestamps
    end
  end
end
