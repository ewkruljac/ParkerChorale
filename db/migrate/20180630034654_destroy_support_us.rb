class DestroySupportUs < ActiveRecord::Migration[5.2]
  def change
    drop_table :support_us
  end
end
