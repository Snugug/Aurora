description "Aurora Base Theme"
no_configuration_file!

# ERB ALL the Drupal files!
file '../shared/aurora.info.erb', :to => "#{options[:project_name] || File.basename(Compass.configuration.project_path)}.info", :erb => true

file '../shared/template.php.erb', :to => "template.php", :erb => true

# Add in custom config file.
file '../shared/config.rb.erb', :to => "config.rb", :erb => true

# Stylesheets
file 'style.scss',  :like => :stylesheet, :media => 'screen, projection', :to => 'style.scss'
file 'maintenance.scss',  :like => :stylesheet, :media => 'screen, projection', :to => 'maintenance.scss'
file 'print.scss',  :like => :stylesheet, :media => 'print', :to => 'print.scss'

# Base partials: Settings and the like.
file '_base.scss',  :like => :stylesheet, :to => 'partials/base/_base.scss'
file '_variables.scss', :like => :stylesheet, :to => 'partials/base/_variables.scss'
file '../shared/_functions.scss', :like => :stylesheet, :to => 'partials/base/_functions.scss'
file '../shared/_mixins.scss', :like => :stylesheet, :to => 'partials/base/_mixins.scss'

# Global partials: Form elements, typeface, etc.
file '_global.scss',  :like => :stylesheet, :to => 'partials/global/_global.scss'
file '_defaults.scss',  :like => :stylesheet, :to => 'partials/global/_defaults.scss'
file '_forms.scss',  :like => :stylesheet, :to => 'partials/global/_forms.scss'
file '_type.scss',  :like => :stylesheet, :to => 'partials/global/_type.scss'
file '../shared/_extendables.scss', :like => :stylesheet, :to => 'partials/global/_extendables.scss'

# Design partial: Just a place for design elements to be put in.
file '_design.scss', :like => :stylesheet, :to => 'partials/design/_design.scss'

# Add in READMEs for n00bs.
file '../shared/README-Sass.md',  :like => :stylesheet, :to => 'README.md'
file '../shared/README-Partials.md',  :like => :stylesheet, :to => 'partials/README.md'
file '../shared/README-templates.md', :to => "tpl/README.md", :erb => true

# Template file folder
file '../shared/README-templates.md', :to => "tpl/README.md", :erb => true

# Bower Awesomesauce
file '../shared/bowerrc.txt', :to => '.bowerrc'
file '../shared/component.json.erb', :to => 'component.json', :erb => true

# Developer Consistency
file '../shared/Gemfile.txt', :to => 'Gemfile'
file '../shared/editorconfig.txt', :to => '.editorconfig'
file '../shared/gitignore.txt', :to => ".gitignore"

help %Q{
  Please contact Ian Carrico with questions:

      ian@iancarrico.com
}

welcome_message %Q{
  Corona based Aurora Subtheme.

  Please run `bundle install` from inside your new subtheme to isntall the required dependenecies. This will create a Gemfile.lock file, add this to your version control.

  When you are ready start compiling, run `bundle exec compass watch` instead of simply `compass watch` to ensure you are compiling using your dependent Compass extensions.
}

