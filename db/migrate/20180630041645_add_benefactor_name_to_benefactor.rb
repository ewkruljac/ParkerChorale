class AddBenefactorNameToBenefactor < ActiveRecord::Migration[5.2]
  def change
    add_column :benefactors, :name, :string
  end
end
