ABOUT SASS AND COMPASS
----------------------

Sass is a language that is just normal CSS plus some extra features, like
variables, nested rules, math, mixins, etc. If your stylesheets are written in
Sass, helper applications can convert them to standard CSS so that you can
include the CSS in the normal ways with your theme.

To learn more about Sass, visit: http://sass-lang.com

Compass is a helper library for Sass. It includes libraries of shared mixins, a
package manager to add additional extension libraries, and an executable that
can easily convert Sass files into CSS.

To learn more about Compass, visit: http://compass-style.org


DEVELOPING WITH SASS AND COMPASS
--------------------------------

To automatically generate the CSS versions of the scss while you are doing theme
development, you'll need to tell Compass to "watch" the sass directory so that
any time a .scss file is changed it will automatically place a generated CSS
file into your sub-theme's css directory:

  `compass watch <path to your sub-theme's directory>`

  If you are already in the root of your sub-theme's directory, you can simply
  type:  `compass watch`

While using generated CSS with your browser's inspectors, the line numbers it reports will be
wrong since it will be showing the generated CSS file's line numbers and not the
line numbers of the source Sass files. By default, Compass will output a comment with what line and what partial the CSS is comming from above the selector. This is useful if you're looking at your CSS file itself, but not as useful if you're trying to debug straight from your inspector. If you'd like to debug straight from your inspector, there are two options, one for Google Chrome and one for Firefox.

If you are using Firefox, you can install the [FireSass](https://addons.mozilla.org/en-US/firefox/addon/firesass-for-firebug/) plug-in into Firefox. Then, edit your sub-theme's config.rb file so Firesass is true (`firesass = true`) and make sure that `sass_options = :debug_info => true` is enabled (in the example config.rb file, there's a check for whether you're on the development environment). If you are using Google Chrome (currently available in the Canary build, soon in the full version), make sure the Debug Info is enabled as well, go to `about://flags`, Enable Developer Tools experiments, restart Canary, open your inspector, click settings (the gear on the bottom right), open experiments, and check Support for Sass.


MOVING YOUR CSS TO PRODUCTION
-----------------------------

Once you have finished your sub-theme development and are ready to move your CSS
files to your production server, you'll need to tell sass to update all your CSS
files and to compress them (to improve performance). Note: the Compass command
will only generate CSS for .scss files that have recently changed; in order to
force it to regenerate all the CSS files, you can use the Compass' clean command
to delete all the generated CSS files.

- Delete all CSS files by running: `compass clean`
- Edit the config.rb file in your theme's directory and uncomment this line by
  deleting the "#" from the beginnning:
    `#environment = :production`
- Regenerate all the CSS files by running: `compass compile`

And don't forget to turn on Drupal's CSS aggregation. :-)
