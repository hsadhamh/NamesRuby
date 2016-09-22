class CreateNames < ActiveRecord::Migration[5.0]
  def change
    create_table :names do |t|
      t.string :name
      t.string :means
      t.integer :gender
      t.integer :favcount
    end
  end
end
