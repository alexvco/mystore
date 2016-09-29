Deface::Override.new(:virtual_path => 'spree/shared/_header',
  :name => 'add carousel after header',
  :replace => "div#spree-header",
  :text => '

            <div id="spree-header" class="<%= on_homepage? %>">
              <header id="header" class="navbar navbar-default" data-hook>
                <div class="container-fluid">

                  <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-nav-bar" aria-expanded="false">
                      <span class="sr-only">Toggle navigation</span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                    </button>
                    <figure id="logo" class="col-md-4" data-hook>
                      <%= logo %>
                    </figure>
                  </div>

                  <div class="collapse navbar-collapse" id="top-nav-bar">
                    <ul id="nav-bar" class="nav navbar-nav navbar-right" data-hook>
                      <li id="search-bar" data-hook>
                          <%= render :partial => \'spree/shared/search\' %>
                      </li>

                      <% if spree_current_user %>
                        <li><%= link_to Spree.t(:my_account), spree.account_path %></li>
                        <li><%= link_to Spree.t(:logout), spree.logout_path %></li>
                      <% else %>
                        <li id="link-to-login"><%= link_to Spree.t(:login), spree.login_path %></li>
                        <li id="link-to-login"><%= link_to Spree.t(:signup), spree.signup_path %></li>
                      <% end %>
                      <li id="search-bar" data-hook>
                          <%= link_to Spree.t(:contact_us), spree.contact_us_path %>
                      </li>
                      <li id="link-to-cart" data-hook>
                        
                          <%= link_to Spree.t(:cart), \'/cart\' %>
                        &nbsp;
                      </li>
                      <script>Spree.fetch_cart()</script>

                    </ul>
                  </div>

                </div>
              </header>
            </div>



            <% if current_page?(:controller => \'home\', :action => \'index\') %>
              <header id="myCarousel" class="carousel slide">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <div class="fill" style="background-image:url(\'http://placehold.it/1900x1080&text=Slide One\');"></div>
                        <div class="carousel-caption">
                            <h2>Caption 1</h2>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image:url(\'http://placehold.it/1900x1080&text=Slide Two\');"></div>
                        <div class="carousel-caption">
                            <h2>Caption 2</h2>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image:url(\'http://placehold.it/1900x1080&text=Slide Three\');"></div>
                        <div class="carousel-caption">
                            <h2>Caption 3</h2>
                        </div>
                    </div>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="icon-prev"></span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="icon-next"></span>
                </a>
            </header>
          <% end %>
  ')
