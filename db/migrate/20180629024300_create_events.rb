class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.string :ticket_url
      t.string :you_tube_url

      t.timestamps
    end
  end
end
