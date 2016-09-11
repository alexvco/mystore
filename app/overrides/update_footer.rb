# The following is based on the Brad Traversy tutorial video, note that the new version of spree does not contain a shared footer file

# Deface::Override.new(:virtual_path => 'spree/shared/_footer',
#   :name => 'change footer text',
#   :replace => "div#footer-left p",
#   :text => "
#             <p>
#                 MyStore Copyright 2014
#             </p>
#   ")


# Deface::Override.new(:virtual_path => 'spree/shared/_header',
#   :name => 'add phone to header',
#   :insert_after => "figure#logo",
#   :text => "
#             <div class='header_phone'>
#               Phone: (877) 555-5555  
#             </div>
#   ")

Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
  :name => 'add footer',
  :insert_after => "div.container",
  :text => '
             <footer>
              <div class="container">
                  <p> Center for Toys &copy; 2016</p>
                  <ul class="list-inline">
                      <li>
                          <a href="#">Privacy</a>
                      </li>
                      <li>
                          <a href="#">Terms</a>
                      </li>
                      <li>
                          <a href="#">FAQ</a>
                      </li>
                  </ul>
              </div>
            </footer>
  ')


