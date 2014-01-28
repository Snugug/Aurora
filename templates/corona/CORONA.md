CORONA: THEME TEMPLATE
----------------------

Welcome to the Corona sub-theme template for Aurora. This was meant to be a
general starting guide for you to jumpstart your theme development. Below are
some of the general ideas behind this template, and why it was made how it was.
Certainly, you can use or keep the partial structure, it is entirely up to you.

Good luck!

## Partial Structure

There are a few key ideas behind the partial structure that are important to
understand the thinking behind Corona.

### 1. All imports (except for config) happen in the main style.css

This is done so that the cascade can easily be kept in a specific order in one
place. It will also allow for less little files devoted only to importing more
files from mucking up your code base. We ignore this for _config.scss because
that one folder should be imported into every .css file we want to make. The
order of the cascade will not matter within the config, as no CSS will be output
directly from there.

### 2. Our main folders are config, global, layouts, and components.

Unless specific needs require it, the cascade should remain in that order as
well. The config folder has no CSS output, and is just variables, compass
extensions, functions, and mixins. The global folder are global elements that
are site-wide. A better way to think of it are elements that span multiple
compontents, such as forms, typeface and normalize.css. This folder also
includes the extendables, as they are global but unlike mixins actually spit out
CSS. Layouts then have large layout partials. This is more important in Drupal
where you have panel layouts that are side-wide, and helps to keep them
seperate. The final folder is compontents, which should house reusable
components, such as buttons or menu-items. Other folders can be added, if they
are needed but this is a good starting point.

### 3. Our main files are style.css, maintenance.css and print.css.

Style.css will be everything for your site. It will be 95% of your code.
Maintenance.css is for the Drupal maintenance page, in case you have specific
styling you do not want on it. This will help the site load faster. You can, and
should import in specific partial files that you will need on this page.
Print.css is to be conditionally loaded for print stylesheets. It should stay a
seperate file as for most browsers it isn't loaded unless needed. Note: I did
not add an IE.css file, as there are serveral methods to handle internet
explorer fallbacks, each with its own reasons. Depending if you use breakpoint
or not, that may determine if you want a seperate file.

### 4. Reusable components, with expectation to extend should always have silent selectors.

When you create a component, such as a button. Use both a class and a silent
selector. Here is an example:

```sass
.button,
%button {
  margin: 10px;
}

.button-2 {
  @extend %button;
}

```


Adding the silent selector is vital to avoid the following issue.

```sass
.button {
  margin: 10px;
}

.login-page {
  .button {
    background-color: blue;
  }
}

.button-2 {
  @extend .button;
  border: 1px solid grey;
}

```
without the silent selctor, you can get unintended CSS being outputted.

```css
.button, .button-2 {
  margin: 10px;
}

.login-page .button, .login-page .button-2 {
  background-color: blue;
}

.button-2 {
  border: 1px solid grey;
}
```

Notice how .button-2 is also added to the .login-page .button selector, which
may not be desired. On larger codebases, this will become an issue.


### 5. Remember, do not have your selectors go too deep.

After about three selectors deep, performance could start to be affected. This
is far too easy with Sass, so be mindful. You do not need to have the styling
for your page to imitate the DOM, in fact it is better if you do not.

For example this:

```sass
.login-page {
  form {
    .buttons {
      .return-link {
        a {
        }
      }
    }
  }
}

```

should probably be more like this:


```sass
.login-page {
  form {
  }

  .buttons {
  }

  .return-link {
    a {
    }
  }
}

```


## Happy theming!

Good luck! This was made to be a starter for Drupal projects, but if you just
need a partial structure, you can use this too--- just remove the tpl folder,
template.php and the .info file.