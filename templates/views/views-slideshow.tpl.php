<?php

/**
 * @file
 * Default views template for displaying a slideshow.
 *
 * - $view: The View object.
 * - $options: Settings for the active style.
 * - $rows: The rows output from the View.
 * - $title: The title of this group of rows. May be empty.
 * - $hide_skin: Tells the template whether or not to hide the skin div.
 *
 * @ingroup views_templates
 */
?>
<?php if (!$hide_skin): ?>
  <div class="skin-<?php print $skin; ?>">
<?php endif; ?>
    <?php if (!empty($top_widget_rendered)): ?>
      <div class="views-slideshow-controls-top clearfix">
        <?php print $top_widget_rendered; ?>
      </div>
    <?php endif; ?>

    <?php print $slideshow; ?>

    <?php if (!empty($bottom_widget_rendered)): ?>
      <div class="views-slideshow-controls-bottom clearfix">
        <?php print $bottom_widget_rendered; ?>
      </div>
    <?php endif; ?>
<?php if (!$hide_skin): ?>
  </div>
<?php endif; ?>
