# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# Note: If a preference is set here it will be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will not make the preference value go away.
#       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false

  config.logo = 'rails.png' #this is to change the main logo of your site
  # config.logo = '/assets/logo/spree_50-1c7335be355d4672a35c5023956d0c883f254831f3e3dae3f2ca05976ceb5e50.png' #this is to change back to original logo
  config.admin_interface_logo = 'admin/rails_2.png' #this is to change the backend/admin logo of your site
end

Spree.user_class = "Spree::User"
