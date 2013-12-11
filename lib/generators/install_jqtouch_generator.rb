require 'find'

class InstallJqtouchGenerator < Rails::Generators::Base

  source_root File.expand_path("../lib/jqtouch", __FILE__)

  def create_initializer_file
    create_file "app/assets/javascripts/jqtouch.js", "var jqtouch = $.jQTouch({});"

    css_manifest_path = nil
    Find.find('app/assets/stylesheets/') { |path| css_manifest_path = path if path =~ /application/ }

    js_manifest_path = nil
    Find.find('app/assets/javascripts/') { |path| js_manifest_path = path if path =~ /application/ }

    insert_into_file js_manifest_path, "//= require_tree ../../../vendor/assets/javascripts/jqtouch\n", after: "//= require jquery_ujs\n" if js_manifest_path
    insert_into_file css_manifest_path, " *= require ../../../vendor/assets/stylesheets/jqtouch/css/apple\n", after: "*= require_self\n" if css_manifest_path
    copy_file "javascripts/jqtouch-jquery.min.js", "vendor/assets/javascripts/jqtouch/jqtouch-jquery.min.js"
    copy_file "javascripts/jqtouch.min.js", "vendor/assets/javascripts/jqtouch/jqtouch.min.js"
    copy_file "stylesheets/apple.css", "vendor/assets/stylesheets/jqtouch/css/apple.css"
    copy_file "stylesheets/jqtouch.css", "vendor/assets/stylesheets/jqtouch/css/jqtouch.css"
    copy_file "stylesheets/vanilla.css", "vendor/assets/stylesheets/jqtouch/css/vanilla.css"
  end
end
