class CreatePhs < ActiveRecord::Migration
  def change
    create_table :phs do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
