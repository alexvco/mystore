Deface::Override.new(:virtual_path => 'spree/shared/_header',
  :name => 'add phone to header',
  :insert_after => "figure#logo",
  :text => "
            <div class='header_phone'>
              Phone: (877) 555-5555  
            </div>
  ")

# The following will replace the logo with the text
# Deface::Override.new(:virtual_path => 'spree/shared/_header',
#   :name => 'add phone to header',
#   :replace => "figure#logo",
#   :text => "
#             <p>
#                 MyStore Copyright 2014
#             </p>
#   ")
