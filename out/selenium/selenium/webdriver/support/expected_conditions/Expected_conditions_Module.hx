/* This file is generated, do not edit! */
package selenium.webdriver.support.expected_conditions;
@:pythonImport("selenium.webdriver.support.expected_conditions") extern class Expected_conditions_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _element_if_visible(element:Dynamic, ?visibility:Dynamic):Dynamic;
	static public function alert_is_present():Dynamic;
	/**
		An expectation that all of multiple expected conditions is true.
		Equivalent to a logical 'AND'.
		Returns: When any ExpectedCondition is not met: False.
		When all ExpectedConditions are met: A List with each ExpectedCondition's return value. 
	**/
	static public function all_of(?expected_conditions:python.VarArgs<Dynamic>):Dynamic;
	/**
		An expectation that any of multiple expected conditions is true.
		Equivalent to a logical 'OR'.
		Returns results of the first matching condition, or False if none do. 
	**/
	static public function any_of(?expected_conditions:python.VarArgs<Dynamic>):Dynamic;
	/**
		An expectation for checking if the given attribute is included in the
		specified element.
		locator, attribute
	**/
	static public function element_attribute_to_include(locator:Dynamic, attribute_:Dynamic):Dynamic;
	/**
		An expectation to locate an element and check if the selection state
		specified is in that state.
		locator is a tuple of (by, path)
		is_selected is a boolean
	**/
	static public function element_located_selection_state_to_be(locator:Dynamic, is_selected:Dynamic):Dynamic;
	/**
		An expectation for the element to be located is selected.
		locator is a tuple of (by, path)
	**/
	static public function element_located_to_be_selected(locator:Dynamic):Dynamic;
	/**
		An expectation for checking if the given element is selected.
		element is WebElement object
		is_selected is a Boolean."
	**/
	static public function element_selection_state_to_be(element:Dynamic, is_selected:Dynamic):Dynamic;
	/**
		An Expectation for checking an element is visible and enabled such that
		you can click it.
		
		element is either a locator (text) or an WebElement
	**/
	static public function element_to_be_clickable(mark:Dynamic):Dynamic;
	/**
		An expectation for checking the selection is selected.
		element is WebElement object
	**/
	static public function element_to_be_selected(element:Dynamic):Dynamic;
	/**
		An expectation for checking whether the given frame is available to
		switch to.  If the frame is available it switches the given driver to the
		specified frame.
	**/
	static public function frame_to_be_available_and_switch_to_it(locator:Dynamic):Dynamic;
	/**
		An Expectation for checking that an element is either invisible or not
		present on the DOM.
		
		element is either a locator (text) or an WebElement
	**/
	static public function invisibility_of_element(element:Dynamic):Dynamic;
	/**
		An Expectation for checking that an element is either invisible or not
		present on the DOM.
		
		locator used to find the element
	**/
	static public function invisibility_of_element_located(locator:Dynamic):Dynamic;
	/**
		An expectation that a new window will be opened and have the number of
		windows handles increase
	**/
	static public function new_window_is_opened(current_handles:Dynamic):Dynamic;
	/**
		An expectation that none of 1 or multiple expected conditions is true.
		Equivalent to a logical 'NOT-OR'.
		Returns a Boolean 
	**/
	static public function none_of(?expected_conditions:python.VarArgs<Dynamic>):Dynamic;
	/**
		An expectation for the number of windows to be a certain value.
	**/
	static public function number_of_windows_to_be(num_windows:Dynamic):Dynamic;
	/**
		An expectation for checking that there is at least one element present
		on a web page.
		locator is used to find the element
		returns the list of WebElements once they are located
	**/
	static public function presence_of_all_elements_located(locator:Dynamic):Dynamic;
	/**
		An expectation for checking that an element is present on the DOM
		of a page. This does not necessarily mean that the element is visible.
		locator - used to find the element
		returns the WebElement once it is located
	**/
	static public function presence_of_element_located(locator:Dynamic):Dynamic;
	/**
		Wait until an element is no longer attached to the DOM.
		element is the element to wait for.
		returns False if the element is still attached to the DOM, true otherwise.
	**/
	static public function staleness_of(element:Dynamic):Dynamic;
	/**
		An expectation for checking if the given text is present in the
		specified element.
		locator, text
	**/
	static public function text_to_be_present_in_element(locator:Dynamic, text_:Dynamic):Dynamic;
	/**
		An expectation for checking if the given text is present in the element's attribute.
		locator, attribute, text
	**/
	static public function text_to_be_present_in_element_attribute(locator:Dynamic, attribute_:Dynamic, text_:Dynamic):Dynamic;
	/**
		An expectation for checking if the given text is present in the element's value.
		locator, text
	**/
	static public function text_to_be_present_in_element_value(locator:Dynamic, text_:Dynamic):Dynamic;
	/**
		An expectation for checking that the title contains a case-sensitive
		substring. title is the fragment of title expected
		returns True when the title matches, False otherwise
	**/
	static public function title_contains(title:Dynamic):Dynamic;
	/**
		An expectation for checking the title of a page.
		title is the expected title, which must be an exact match
		returns True if the title matches, false otherwise.
	**/
	static public function title_is(title:Dynamic):Dynamic;
	/**
		An expectation for checking the current url.
		url is the expected url, which must not be an exact match
		returns True if the url is different, false otherwise.
	**/
	static public function url_changes(url:Dynamic):Dynamic;
	/**
		An expectation for checking that the current url contains a
		case-sensitive substring.
		url is the fragment of url expected,
		returns True when the url matches, False otherwise
	**/
	static public function url_contains(url:Dynamic):Dynamic;
	/**
		An expectation for checking the current url.
		pattern is the expected pattern, which must be an exact match
		returns True if the url matches, false otherwise.
	**/
	static public function url_matches(pattern:Dynamic):Dynamic;
	/**
		An expectation for checking the current url.
		url is the expected url, which must be an exact match
		returns True if the url matches, false otherwise.
	**/
	static public function url_to_be(url:Dynamic):Dynamic;
	/**
		An expectation for checking that an element, known to be present on the
		DOM of a page, is visible. Visibility means that the element is not only
		displayed but also has a height and width that is greater than 0.
		element is the WebElement
		returns the (same) WebElement once it is visible
	**/
	static public function visibility_of(element:Dynamic):Dynamic;
	/**
		An expectation for checking that all elements are present on the DOM of a
		page and visible. Visibility means that the elements are not only displayed
		but also has a height and width that is greater than 0.
		locator - used to find the elements
		returns the list of WebElements once they are located and visible
	**/
	static public function visibility_of_all_elements_located(locator:Dynamic):Dynamic;
	/**
		An expectation for checking that there is at least one element visible
		on a web page.
		locator is used to find the element
		returns the list of WebElements once they are located
	**/
	static public function visibility_of_any_elements_located(locator:Dynamic):Dynamic;
	/**
		An expectation for checking that an element is present on the DOM of a
		page and visible. Visibility means that the element is not only displayed
		but also has a height and width that is greater than 0.
		locator - used to find the element
		returns the WebElement once it is located and visible
	**/
	static public function visibility_of_element_located(locator:Dynamic):Dynamic;
}