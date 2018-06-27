class RenameHomePagesToHomePageItems < ActiveRecord::Migration[5.2]
  def change
    rename_table :home_pages, :home_page_items
  end
end
