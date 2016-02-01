class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :project_id, null: false
      t.string :name, index: true, null: false
      t.integer :taggings_count, default: 0, index: true, null: false

      t.timestamps
    end
  end
end
