class CreateSampleItems < ActiveRecord::Migration[6.1]
  def change
    create_table :sample_items do |t|
      t.string :name
      t.string :description
      t.string :extra_info

      t.timestamps
    end
  end
end
