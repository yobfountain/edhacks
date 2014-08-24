class CreateHackers < ActiveRecord::Migration
  def change
    create_table :hackers do |t|
      t.string :name
      t.string :email
      t.boolean :subscribed

      t.timestamps
    end
  end
end
