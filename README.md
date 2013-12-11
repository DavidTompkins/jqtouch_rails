Jqtouch_rails (0.0.2)
=====================

This gem install jqtouch-1.0-b4-rc on your rails application.

Install
-------

Put this line in your Gemfile:

    gem 'jqtouch_rails', git: 'git://github.com/adrienbourgeois/jqtouch_rails.git'

Run:

    bundle install
    rails g jqtouch_install

The last command will copy the necessary files in your vendor/assets, will create a 'jqtouch.js' file in your app/assets/javascripts where your can tune jqtouch if you want and will add the necessary requires in you manifest files.

Generate an example
-------------------

    rails g helloworld_jqtouch

will generate an example. If you are running your app in development, you can see it at http://localhost.com:3000/helloworld.

This generator creates a route, a jqtouch_pages_controller and a view jqtouch_pages/helloworld.html.erb

Issue
-----

If it doesn't work, check that your manifest files looks like this:

application.css:

    *= require_self
    *= require ../../../vendor/assets/stylesheets/jqtouch/css/apple
    *= require_tree .

application.js:

    //= require jquery
    //= require jquery_ujs
    //= require_tree ../../../vendor/assets/javascripts/jqtouch
    //= require turbolinks
    //= require_tree .

Note
----

The author of jqtouch uses by default the javascript library Zepto instead of jquery. He says that as jqtouch is mobile oriented, a lighter library is preferable. I agree with him but as rails uses jquery by default, as a first choice of facility I choosed to use jquery (see further improves).

Further improves
----------------

* Add option to allow to choose between jquery and Zepto
* Add option for jqtouch to be used only if the app is visited with a mobile device

Documentation/Resources
-----------------------

Check the github of jqtouch for documentation:
[https://github.com/senchalabs/jQTouch]{https://github.com/senchalabs/jQTouch}

(the demos files are a great resource to learn to use jqtouch)
