class CreateBenefactors < ActiveRecord::Migration[5.2]
  def change
    create_table :benefactors do |t|
      t.text :image_caption

      t.timestamps
    end
  end
end
