class CreateAboutPageItems < ActiveRecord::Migration[5.2]
  def change
    create_table :about_page_items do |t|
      t.string :name
      t.string :role
      t.text :bio

      t.timestamps
    end
  end
end
