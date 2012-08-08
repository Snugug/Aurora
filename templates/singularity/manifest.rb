description "Aurora Base Theme"

# ERB ALL the Drupal files!
file '../shared/aurora.info.erb', :to => "#{options[:project_name] || File.basename(Compass.configuration.project_path)}.info", :erb => true

file '../shared/template.php.erb', :to => "template.php", :erb => true

# Stylesheets
file '../shared/style.scss',  :like => :stylesheet, :media => 'screen, projection', :to => 'style.scss'

file '_base.scss',  :like => :stylesheet, :to => 'partials/global/_base.scss'
file '../shared/_variables.scss', :like => :stylesheet, :to => 'partials/global/_variables.scss'
file '../shared/_functions.scss', :like => :stylesheet, :to => 'partials/global/_functions.scss'
file '../shared/_mixins.scss', :like => :stylesheet, :to => 'partials/global/_mixins.scss'
file '../shared/_extendables.scss', :like => :stylesheet, :to => 'partials/global/_extendables.scss'

file '../shared/_style-guide.scss', :like => :stylesheet, :to => 'partials/styleguide/_style-guide.scss'

file '../shared/_layout.scss', :like => :stylesheet, :to => 'partials/layout/_layout.scss'
file '../shared/_ie-layout.scss', :like => :stylesheet, :to => 'partials/layout/_ie-layout.scss'
file '../shared/_print-layout.scss', :like => :stylesheet, :to => 'partials/layout/_print-layout.scss'

file '../shared/_design.scss', :like => :stylesheet, :to => 'partials/design/_design.scss'
file '../shared/_ie-design.scss', :like => :stylesheet, :to => 'partials/design/_ie-design.scss'
file '../shared/_print-design.scss', :like => :stylesheet, :to => 'partials/design/_print-design.scss'

file '../shared/print.scss',  :like => :stylesheet, :media => 'print', :to => 'print.scss'
file '../shared/ie.scss',     :like => :stylesheet, :media => 'screen, projection', :condition => "lt IE 8", :to => 'ie.scss'

# JavaScript
file '../shared/hammer.js',           :like => :javascript, :to => 'hammer.js'
file '../shared/loader.js',           :like => :javascript, :to => 'loader.js'
file '../shared/modernizr-2.5.3.js',  :like => :javascript, :to => 'modernizr-2.5.3.js'

help %Q{
  Please contact Sam Richard with questions:

      sam@snug.ug
}

welcome_message %Q{

  Aurora Base Theme using Singularity.
  
}