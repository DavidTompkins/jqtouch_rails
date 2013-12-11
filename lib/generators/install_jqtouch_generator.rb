class InstallJqtouchGenerator < Rails::Generators::Base

  source_root File.expand_path("../lib/jqtouch", __FILE__)

  def create_initializer_file
    create_file "app/assets/javascripts/jqtouch.js", "var jqtouch = $.jQTouch({});"
    insert_into_file "app/assets/javascripts/application.js", "//= require_tree ../../../vendor/assets/javascripts/jqtouch\n", after: "//= require jquery_ujs\n"
    insert_into_file "app/assets/stylesheets/application.css", " *= require ../../../vendor/assets/stylesheets/jqtouch/css/apple\n", after: "*= require_self\n"
    copy_file "javascripts/jqtouch-jquery.min.js", "vendor/assets/javascripts/jqtouch/jqtouch-jquery.min.js"
    copy_file "javascripts/jqtouch.min.js", "vendor/assets/javascripts/jqtouch/jqtouch.min.js"
    copy_file "stylesheets/apple.css", "vendor/assets/stylesheets/jqtouch/css/apple.css"
  end
end
