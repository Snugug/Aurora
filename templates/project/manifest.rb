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
file '../shared/style.scss',  :like => :stylesheet, :media => 'all', :to => 'style.scss'

file '_base.scss',  :like => :stylesheet, :to => 'partials/global/_base.scss'
file '../shared/_variables.scss', :like => :stylesheet, :to => 'partials/global/_variables.scss'
file '../shared/_functions.scss', :like => :stylesheet, :to => 'partials/global/_functions.scss'
file '../shared/_mixins.scss', :like => :stylesheet, :to => 'partials/global/_mixins.scss'
file '../shared/_extendables.scss', :like => :stylesheet, :to => 'partials/global/_extendables.scss'

file '../shared/_style-guide.scss', :like => :stylesheet, :to => 'partials/styleguide/_style-guide.scss'

file '../shared/_layout.scss', :like => :stylesheet, :to => 'partials/layout/_layout.scss'

file '../shared/_design.scss', :like => :stylesheet, :to => 'partials/design/_design.scss'

file '../shared/print.scss',  :like => :stylesheet, :to => 'print.scss'

# Bower Awesomesauce
file '../shared/bowerrc', :to => '.bowerrc'
file '../shared/component.json.erb', :to => 'component.json', :erb => true

# Developer Consistency
file '../shared/Gemfile', :to => 'Gemfile'
file '../shared/editorconfig', :to => '.editorconfig'
file '../shared/gitignore.txt', :to => ".gitignore"

help %Q{
  Please contact Sam Richard with questions:

      sam@snug.ug
}

welcome_message %Q{
  Aurora Subtheme.

  Please run `bundle install` from inside your new subtheme to isntall the required dependenecies. This will create a Gemfile.lock file, add this to your version control.

  When you are ready start compiling, run `bundle exec compass watch` instead of simply `compass watch` to ensure you are compiling using your dependent Compass extensions.
}