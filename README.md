# Contributing to Aurora Documentation

If you would like to contribute to Aurora Documentation, the first step is to ensure that you have [Node.js](http://nodejs.org/), [Compass](http://compass-style.org), and [Bundler](http://gembundler.com) installed, then run the following from your command line:

`npm install -g yo grunt-cli bower`

Next, fork and clone into this repo, then in the root of the `docs` branch, run the following from your command line:

`npm install && bower install && bundle install`

This will install the requirements for working with the Documentation.

To work on documentation, from the root of the `docs` branch, run `grunt server` from the command line. This will start the Grunt server allowing you to work on the documentation and preview it in real time in the final environment. All of the inner workings for the documentation are stored in the `app` folder.

When you have made your changes, issue a pull request back to `origin/docs` for us to review. Your pull requests should not include any changes to the `dist` folder.

## Deploying Documentation Updates

When ready to deploy updates to the documentation, run `grunt build` from the root of the `docs` branch. Commit the changes made to the `diet` folder, then run the following:

`git subtree push --prefix dist origin gh-pages`