description "Aurora Bower Configuration"
no_configuration_file!

# Bower's for the Birds
file '../shared/bowerrc.txt', :to => '.bowerrc'
file '../shared/component.json.erb', :to => 'component.json', :erb => true

help %Q{
  Please contact Sam Richard with questions:

      sam@snug.ug
}

welcome_message %Q{
  Aurora Bower Configuration.

  See http://snugug.github.io/Aurora/ for full documentation.

  Now run `bower install` to install your Bower dependencies.
}