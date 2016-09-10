module ApplicationHelper
  def on_homepage?
   current_page?(:controller => "home", :action => "index") ? "" : "need-margin"
  end
end
