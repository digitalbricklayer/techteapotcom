<?php
/*
Plugin Name: OPENXTRA Most Popular Post
Plugin URI: http://www.openxtra.co.uk
Description: Most Popular Post Widget.
Version: 0.9
Author: Dean Sykes
Author URI: http://www.openxtra.co.uk
*/

// We're putting the plugin's functions in one big function we then
// call at 'plugins_loaded' (add_action() at bottom) to ensure the
// required Sidebar Widget functions are available.
function widget_openxtra_mostpopular_init() {

    // Check to see required Widget API functions are defined...
    if ( !function_exists('register_sidebar_widget') || !function_exists('register_widget_control') )
        return; // ...and if not, exit gracefully from the script.

    // This function prints the sidebar widget--the cool stuff!
    function widget_openxtra_mostpopular($args) {

        // $args is an array of strings which help your widget
        // conform to the active theme: before_widget, before_title,
        // after_widget, and after_title are the array keys.
        extract($args);
		
		// Collect our widget's options, or define their defaults.
		$options = get_option('widget_openxtra_mostpopular');
		$title = empty($options['title']) ? __('Most Popular Post') : $options['title'];
		if ( !$number = (int) $options['number'] )
			$number = 1;
		else if ( $number < 1 )
			$number = 1;
		else if ( $number > 15 )
			$number = 15;

         // It's important to use the $before_widget, $before_title,
         // $after_title and $after_widget variables in your output.
        echo $before_widget;
        echo $before_title . $title . $after_title;
		echo '<ul>';
		akpc_most_popular($number, '<li class="recent_post">');
		echo '</ul>';
        echo $after_widget;
    }
	
	// This is the function that outputs the form to let users edit
    // the widget's title and so on. It's an optional feature, but
    // we'll use it because we can!
    function widget_openxtra_mostpopular_control() {
		
		// Collect our widget’s options.
		$options = $newoptions = get_option('widget_openxtra_mostpopular');
		
		// This is for handing the control form submission.
		if ( $_POST['openxtra_mostpopular-submit'] ) {
		// Clean up control form submission options
		$newoptions['title'] = strip_tags(stripslashes($_POST['openxtra_mostpopular-title']));
		$newoptions['number'] = strip_tags(stripslashes($_POST['openxtra_mostpopular-number']));
		}
		
		// If original widget options do not match control form
        // submission options, update them.
        if ( $options != $newoptions ) {
            $options = $newoptions;
            update_option('widget_openxtra_mostpopular', $options);
		}
		
		$title = attribute_escape($options['title']);
		if ( !$number = (int) $options['number'] )
			$number = 1;
?>
			<p><label for="openxtra_mostpopular-title"><?php _e('Title:'); ?> <input style="width: 250px;" id="openxtra_mostpopular-title" name="openxtra_mostpopular-title" type="text" value="<?php echo $title; ?>" /></label></p>
			<p><label for="openxtra_mostpopular-number"><?php _e('Number of posts to show:'); ?> <input style="width: 25px; text-align: center;" id="openxtra_mostpopular-number" name="openxtra_mostpopular-number" type="text" value="<?php echo $number; ?>" /></label> <?php _e('(at most 15)'); ?></p>
			<input type="hidden" id="openxtra_mostpopular-submit" name="openxtra_mostpopular-submit" value="1" />
    <?php
    // end of widget_mywidget_control()
    }
	
    // This registers the widget.
    register_sidebar_widget('OPENXTRA Most Popular Post', 'widget_openxtra_mostpopular');
	
	// This registers the (optional!) widget control form.
    register_widget_control('OPENXTRA Most Popular Post', 'widget_openxtra_mostpopular_control');
}

// Delays plugin execution until Dynamic Sidebar has loaded first.
add_action('plugins_loaded', 'widget_openxtra_mostpopular_init'); 
?>