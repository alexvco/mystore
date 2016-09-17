# This migration comes from spree_contactus (originally 20160916002015)
class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :message

      t.timestamps null: false
    end
  end
end
