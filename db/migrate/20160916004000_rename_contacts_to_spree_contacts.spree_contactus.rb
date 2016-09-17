# This migration comes from spree_contactus (originally 20160916002117)
class RenameContactsToSpreeContacts < ActiveRecord::Migration
  def change
    rename_table :contacts, :spree_contacts
  end
end
