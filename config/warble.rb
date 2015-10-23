Warbler::Config.new do |config|

  config.features += ["compiled"]

  config.includes = FileList["app.rb"]

  # config.excludes = FileList["test"]

  config.dirs += ["lib", "views", "public"]

  config.jar_name = "inv"

  config.bundle_without = ["development", "test"]

  config.compiled_ruby_files = FileList["**/*.rb"]

  # Determines if ruby files in supporting gems will be compiled.
  # Ignored unless compile feature is used.
  # config.compile_gems = false

  # When set it specify the bytecode version for compiled class files
  # config.bytecode_version = "1.6"

  # When set to true, Warbler will override the value of ENV['GEM_HOME'] even it
  # has already been set. When set to false it will use any existing value of
  # GEM_HOME if it is set.
  # config.override_gem_home = true

  # Allows for specifing custom executables
  # config.executable = ["rake", "bin/rake"]

  # Sets default (prefixed) parameters for the executables
  # config.executable_params = "do:something"

  # If set to true, moves jar files into WEB-INF/lib. Prior to version 1.4.2 of Warbler this was done
  # by default. But since 1.4.2 this config defaults to false. It may need to be set to true for
  # web servers that do not explode the WAR file.
  # Alternatively, this option can be set to a regular expression, which will
  # act as a jar selector -- only jar files that match the pattern will be
  # included in the archive.
  # config.move_jars_to_webinf_lib = false

  # === War files only below here ===

  # Path to the pre-bundled gem directory inside the war file. Default
  # is 'WEB-INF/gems'. Specify path if gems are already bundled
  # before running Warbler. This also sets 'gem.path' inside web.xml.
  # config.gem_path = "WEB-INF/vendor/bundler_gems"

  # Files for WEB-INF directory (next to web.xml). This contains
  # web.xml by default. If there is an .erb-File it will be processed
  # with webxml-config. You may want to exclude this file via
  # config.excludes.
  # config.webinf_files += FileList["jboss-web.xml"]

  # Files to be included in the root of the webapp.  Note that files in public
  # will have the leading 'public/' part of the path stripped during staging.
  # config.public_html = FileList["public/**/*", "doc/**/*"]

  # Pathmaps for controlling how public HTML files are copied into the .war
  # config.pathmaps.public_html = ["%{public/,}p"]

  # Embedded webserver to use with the 'executable' feature. Currently supported
  # webservers are:
  # * <tt>jetty</tt> - Embedded Jetty from Eclipse
  # config.webserver = 'jetty'

  # Value of RAILS_ENV for the webapp -- default as shown below
  # config.webxml.rails.env = ENV['RAILS_ENV'] || 'production'

  # Application booter to use, either :rack or :rails (autodetected by default)
  # config.webxml.booter = :rails

  # Set JRuby to run in 1.9 mode.
  # config.webxml.jruby.compat.version = "1.9"

  # When using the :rack booter, "Rackup" script to use.
  # - For 'rackup.path', the value points to the location of the rackup
  # script in the web archive file. You need to make sure this file
  # gets included in the war, possibly by adding it to config.includes
  # or config.webinf_files above.
  # - For 'rackup', the rackup script you provide as an inline string
  #   is simply embedded in web.xml.
  # The script is evaluated in a Rack::Builder to load the application.
  # Examples:
  # config.webxml.rackup.path = 'WEB-INF/hello.ru'
  # config.webxml.rackup = %{require './lib/demo'; run Rack::Adapter::Camping.new(Demo)}
  # config.webxml.rackup = require 'cgi' && CGI::escapeHTML(File.read("config.ru"))

  # Control the pool of Rails runtimes. Leaving unspecified means
  # the pool will grow as needed to service requests. It is recommended
  # that you fix these values when running a production server!
  # If you're using threadsafe! mode, you probably don't want to set these values,
  # since 1 runtime(default for threadsafe mode) will be enough.
  # config.webxml.jruby.min.runtimes = 2
  # config.webxml.jruby.max.runtimes = 4

  # JNDI data source name
  # config.webxml.jndi = 'jdbc/rails'
end
