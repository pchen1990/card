class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :card_text

      t.timestamps
    end
  end
end
