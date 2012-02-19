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
 * Implements hook_process_html()
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