class CreateGenerousSupporters < ActiveRecord::Migration[5.2]
  def change
    create_table :generous_supporters do |t|
      t.string :name
      t.string :website_url
      t.string :category

      t.timestamps
    end
  end
end
