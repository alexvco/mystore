# This migration comes from spree_contactus (originally 20160915043305)
class CreateSpreeContacts < ActiveRecord::Migration
  def change
    create_table :spree_contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :message

      t.timestamps null: false
    end
  end
end
