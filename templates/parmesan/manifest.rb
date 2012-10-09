description "Aurora Base Theme"

# ERB ALL the Drupal files!
file '../shared/aurora.info.erb', :to => "#{options[:project_name] || File.basename(Compass.configuration.project_path)}.info", :erb => true

file 'template.php.erb', :to => "template.php", :erb => true

# Add in custom config file.
file '../shared/config.rb.erb', :to => "config.rb.example", :erb => true

# Stylesheets
file 'style.scss',  :like => :stylesheet, :media => 'screen, projection', :to => 'style.scss'
file 'maintenance.scss',  :like => :stylesheet, :media => 'screen, projection', :to => 'maintenance.scss'
file 'normalize.scss',  :like => :stylesheet, :media => 'screen, projection', :to => 'normalize.scss'
file 'normalize-rtl.scss',  :like => :stylesheet, :media => 'screen, projection', :to => 'normalize-rtl.scss'
file 'print.scss',  :like => :stylesheet, :media => 'print', :to => 'print.scss'
file 'ie.scss',     :like => :stylesheet, :media => 'screen, projection', :condition => "lt IE 8", :to => 'ie.scss'


# Base partials: Settings and the like.
file '_base.scss',  :like => :stylesheet, :to => 'partials/base/_base.scss'
file '_variables.scss', :like => :stylesheet, :to => 'partials/base/_variables.scss'
file '../shared/_functions.scss', :like => :stylesheet, :to => 'partials/base/_functions.scss'
file '../shared/_mixins.scss', :like => :stylesheet, :to => 'partials/base/_mixins.scss'
file '../shared/_extendables.scss', :like => :stylesheet, :to => 'partials/base/_extendables.scss'

# Global partials: Form elements, typeface, etc.
file '_global.scss',  :like => :stylesheet, :to => 'partials/global/_global.scss'
file '_defaults.scss',  :like => :stylesheet, :to => 'partials/global/_defaults.scss'
file '_forms.scss',  :like => :stylesheet, :to => 'partials/global/_forms.scss'
file '_type.scss',  :like => :stylesheet, :to => 'partials/global/_type.scss'

# Page-based partials: For site-structure-based content.
file '_header.scss',  :like => :stylesheet, :to => 'partials/page/_header.scss'
file '_content.scss',  :like => :stylesheet, :to => 'partials/page/_content.scss'
file '_sidebar_first.scss',  :like => :stylesheet, :to => 'partials/page/_sidebar_first.scss'
file '_sidebar_second.scss',  :like => :stylesheet, :to => 'partials/page/_sidebar_second.scss'
file '_comment.scss',  :like => :stylesheet, :to => 'partials/page/_comment.scss'
file '_footer.scss',  :like => :stylesheet, :to => 'partials/page/_footer.scss'

# Node-base partials: For node-content types.
file '_node.scss',  :like => :stylesheet, :to => 'partials/node/_node.scss'
file '_basic_page.scss',  :like => :stylesheet, :to => 'partials/node/_basic_page.scss'

# View-based partials: For specific views.
file '_view.scss',  :like => :stylesheet, :to => 'partials/view/_view.scss'

# Helpful read-mes for n00bs.
file 'README_SASS.md',  :like => :stylesheet, :to => 'partials/README.md'
file 'README_PARTIALS.md',  :like => :stylesheet, :to => 'README.md'

# JavaScript
file '../shared/hammer.js',           :like => :javascript, :to => 'hammer.js'
file '../shared/loader.js',           :like => :javascript, :to => 'loader.js'
file '../shared/modernizr-2.5.3.js',  :like => :javascript, :to => 'modernizr-2.5.3.js'
file '../shared/jquery.min.js',  :like => :javascript, :to => 'jquery.min.js'

help %Q{
  Please contact Sam Richard with questions:

      sam@snug.ug
}

welcome_message %Q{

  Aurora Base Theme using Susy.
  
}

