description "Aurora Base Theme"
no_configuration_file!

# Add in custom config file.
file '../shared/config.rb.erb', :to => "config.rb", :erb => true

# Add in README
file '../shared/README-Sass.md', :to => 'README-Sass.md'

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
file '../shared/_print-style-guide.scss', :like => :stylesheet, :to => 'partials/styleguide/_print-style-guide.scss'

file '../shared/_layout.scss', :like => :stylesheet, :to => 'partials/layout/_layout.scss'
file '../shared/_print-layout.scss', :like => :stylesheet, :to => 'partials/layout/_print-layout.scss'

file '../shared/_design.scss', :like => :stylesheet, :to => 'partials/design/_design.scss'
file '../shared/_print-design.scss', :like => :stylesheet, :to => 'partials/design/_print-design.scss'

file '../shared/_print.scss',  :like => :stylesheet, :to => '_print.scss'

# JavaScript
file '../shared/hammer.js',           :like => :javascript, :to => 'hammer.js'
file '../shared/loader.js',           :like => :javascript, :to => 'loader.js'

help %Q{
  Please contact Sam Richard with questions:

      sam@snug.ug
}

welcome_message %Q{

  Aurora Base Theme with no grid.

}

