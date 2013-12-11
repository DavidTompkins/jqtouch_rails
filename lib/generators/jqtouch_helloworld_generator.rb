class JqtouchHelloworldGenerator < Rails::Generators::Base

  source_root File.expand_path("../lib/jqtouch", __FILE__)

  def create_initializer_file
    insert_into_file "config/routes.rb", "  get 'helloworld', to: 'jqtouch_pages#helloworld'\n", after: "::Application.routes.draw do\n"
    create_file "app/controllers/jqtouch_pages_controller.rb", "
class JqtouchPagesController < ApplicationController
  def helloworld
  end
end
"
    copy_file "helloworld.html", "app/views/jqtouch_pages/helloworld.html.erb"
  end
end
