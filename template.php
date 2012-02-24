<?php
/**
 * Implements hook_preprocess_html()
 */
function aurora_preprocess_html(&$vars) {
  // Custom Modernizr build w/built in HTML5 Shiv and Respond, from HTML5 Bootstrap
  drupal_add_js(drupal_get_path('theme', 'aurora') . '/js/modernizr-2.5.2.min.js', array('scope' => 'aurora_header'));
  
  // Force IE8/9 to use most up-to-date render engine.
  $xua = array(
    '#tag' => 'meta',
    '#attributes' => array(
      'http-equiv' => 'X-UA-Compatible',
      'content' => 'IE=edge,chrome=1',
    ),
  );
  drupal_add_html_head($xua, 'x-ua-compatible');
  
  // Viewport!
  $viewport = array(
    '#tag' => 'meta',
    '#attributes' => array(
      'name' => 'viewport',
      'content' => 'width=device-width,initial-scale=1',
    ),
  );
  drupal_add_html_head($viewport, 'viewport');
  
  // Chrome Frome for IE<=8
  $chromeframe['wrapper'] = '<!--[if lt IE 9 ]>';
  $chromeframe['include']['element'] = array(
    '#tag' => 'script',
    '#attributes' => array(
      'src' => '//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.3/CFInstall.min.js',
    ),
  );
  $chromeframe['launch']['element'] = array(
    '#tag' => 'script',
    '#attributes' => array(),
    '#value' => 'window.attachEvent(\'onload\',function(){CFInstall.check({mode:\'overlay\'})})',
  );
  
  $vars['chromeframe_array'] = $chromeframe;
  
}

/**
 * Implements hook_process_html().
 */
function aurora_process_html(&$vars) {
  $cf_array = $vars['chromeframe_array'];
  $cf = $cf_array['wrapper'] . theme_html_tag($cf_array['include']) . theme_html_tag($cf_array['launch']) . '<![endif]-->';
  
  $vars['page_bottom'] .= $cf;
}

/**
 * Implements hook_js_alter().
 */
function aurora_js_alter(&$javascript) {
  foreach ($javascript as &$js) {
    if ($js['scope'] != 'aurora_header') {
      $js['scope'] = 'footer';
    }
    else {
      $js['scope'] = 'header';
    }
  }
}

/**
 * Implements hook_preprocess_views_view_fields().
 */
function aurora_preprocess_views_view_fields(&$vars) {
  // Removes wrapping field-content span/div.
  foreach ($vars['fields'] as $field) {
    $output = $field->content;
    
    if (strpos($output, 'span class="field-content"')) {
      $output = str_replace('<span class="field-content">', '', $output);
      $output = substr($output, 0, -7);
    }
    else if (strpos($output, 'div class="field-content"')) {
      $output = str_replace('<div class="field-content">', '', $output);
      $output = substr($output, 0, -6);
    }
    
    $field->content_unwrapped = $output;
  }
}

/**
 * Implements hook_preprocess_flexslider_views_slideshow_main_frame_row().
 */
function aurora_preprocess_flexslider_views_slideshow_main_frame_row(&$vars) {
  // Removes wrapping div.
  $vars['rendered_items'] = str_replace('<div class="flexslider-views-slideshow-main-frame-row-item views-row views-row-0 views-row-first views-row-odd">', '', $vars['rendered_items']);
  $vars['rendered_items'] = substr($vars['rendered_items'], 0, -9);
}

/**
 * Implements hook_preprocess_views_slideshow().
 */
function aurora_preprocess_views_slideshow(&$vars) {
  // Set Hide Skin variable to hide skin div.
  $vars['hide_skin'] = false;
  
  // If using the recommended Flexslider, hide skin.
  if ($vars['options']['slideshow_type'] == 'flexslider_views_slideshow') {
    $vars['hide_skin'] = true;
  }
}