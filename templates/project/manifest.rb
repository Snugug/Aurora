description "Aurora Sub Theme"
no_configuration_file!

# Add in custom config file.
file '../shared/config.rb.erb', :to => "config.rb", :erb => true

# Add in README
file '../shared/README-Sass.md',  :like => :stylesheet, :to => 'README.md'
file '../shared/README-Partials.md',  :like => :stylesheet, :to => 'partials/README.md'
file '../shared/README-templates.md', :to => "templates/README.md"

# ERB ALL the Drupal files!
file '../shared/aurora.info.erb', :to => "#{options[:project_name] || File.basename(Compass.configuration.project_path)}.info", :erb => true

file '../shared/template.php.erb', :to => "template.php", :erb => true

# Stylesheets
discover :stylesheets

file '../shared/_print.scss', :like => :stylesheet, :to => '_print.scss'
file '../shared/style-ie8.scss', :like => :stylesheet, :to => 'style-ie8.scss'
file '../shared/_variables.scss', :like => :stylesheet, :to => 'partials/global/_variables.scss'
file '../shared/_functions.scss', :like => :stylesheet, :to => 'partials/global/_functions.scss'
file '../shared/_mixins.scss', :like => :stylesheet, :to => 'partials/global/_mixins.scss'
file '../shared/_extendables.scss', :like => :stylesheet, :to => 'partials/global/_extendables.scss'

# Developer Consistency
file '../shared/Gemfile.txt', :to => 'Gemfile'
file '../shared/editorconfig.txt', :to => '.editorconfig'
file '../shared/gitignore.txt', :to => ".gitignore"

help %Q{
  Please contact Sam Richard with questions:

      sam@snug.ug
}

welcome_message %Q{
  Aurora Subtheme.

  See http://snugug.github.io/Aurora/ for full documentation.

  Please run `bundle install` from inside your new subtheme to install the required dependencies. This will create a Gemfile.lock file, add this to your version control.

  When you are ready start compiling, run `bundle exec compass watch` instead of simply `compass watch` to ensure you are compiling using your dependent Compass extensions.

  Alternatively, if you are using Grunt, simply run `grunt watch` to compile and start LiveReload.
}
