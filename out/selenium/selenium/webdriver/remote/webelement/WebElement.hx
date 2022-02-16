/* This file is generated, do not edit! */
package selenium.webdriver.remote.webelement;
@:pythonImport("selenium.webdriver.remote.webelement", "WebElement") extern class WebElement {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(element:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(parent:Dynamic, id_:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(parent:Dynamic, id_:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(element:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_impl : Dynamic;
	/**
		Executes a command against the underlying HTML element.
		
		Args:
		  command: The name of the command to _execute as a string.
		  params: A dictionary of named parameters to send with the command.
		
		Returns:
		  The command's JSON response loaded into a dictionary object.
	**/
	public function _execute(command:Dynamic, ?params:Dynamic):Dynamic;
	public function _upload(filename:Dynamic):Dynamic;
	/**
		Returns the ARIA Level of the current webelement
	**/
	public var accessible_name : Dynamic;
	/**
		Returns the ARIA role of the current web element
	**/
	public var aria_role : Dynamic;
	/**
		Clears the text if it's a text entry element.
	**/
	public function clear():Dynamic;
	/**
		Clicks the element.
	**/
	public function click():Dynamic;
	/**
		Find an element given a By strategy and locator.
		
		:Usage:
		    ::
		
		        element = element.find_element(By.ID, 'foo')
		
		:rtype: WebElement
	**/
	public function find_element(?by:Dynamic, ?value:Dynamic):Dynamic;
	/**
		Finds element within this element's children by class name.
		
		:Args:
		 - name: The class name of the element to find.
		
		:Returns:
		 - WebElement - the element if it was found
		
		:Raises:
		 - NoSuchElementException - if the element wasn't found
		
		:Usage:
		    ::
		
		        element = element.find_element_by_class_name('foo')
	**/
	public function find_element_by_class_name(name:Dynamic):Dynamic;
	/**
		Finds element within this element's children by CSS selector.
		
		:Args:
		 - css_selector - CSS selector string, ex: 'a.nav#home'
		
		:Returns:
		 - WebElement - the element if it was found
		
		:Raises:
		 - NoSuchElementException - if the element wasn't found
		
		:Usage:
		    ::
		
		        element = element.find_element_by_css_selector('#foo')
	**/
	public function find_element_by_css_selector(css_selector:Dynamic):Dynamic;
	/**
		Finds element within this element's children by ID.
		
		:Args:
		 - id\_ - ID of child element to locate.
		
		:Returns:
		 - WebElement - the element if it was found
		
		:Raises:
		 - NoSuchElementException - if the element wasn't found
		
		:Usage:
		    ::
		
		        foo_element = element.find_element_by_id('foo')
	**/
	public function find_element_by_id(id_:Dynamic):Dynamic;
	/**
		Finds element within this element's children by visible link text.
		
		:Args:
		 - link_text - Link text string to search for.
		
		:Returns:
		 - WebElement - the element if it was found
		
		:Raises:
		 - NoSuchElementException - if the element wasn't found
		
		:Usage:
		    ::
		
		        element = element.find_element_by_link_text('Sign In')
	**/
	public function find_element_by_link_text(link_text:Dynamic):Dynamic;
	/**
		Finds element within this element's children by name.
		
		:Args:
		 - name - name property of the element to find.
		
		:Returns:
		 - WebElement - the element if it was found
		
		:Raises:
		 - NoSuchElementException - if the element wasn't found
		
		:Usage:
		    ::
		
		        element = element.find_element_by_name('foo')
	**/
	public function find_element_by_name(name:Dynamic):Dynamic;
	/**
		Finds element within this element's children by partially visible link text.
		
		:Args:
		 - link_text: The text of the element to partially match on.
		
		:Returns:
		 - WebElement - the element if it was found
		
		:Raises:
		 - NoSuchElementException - if the element wasn't found
		
		:Usage:
		    ::
		
		        element = element.find_element_by_partial_link_text('Sign')
	**/
	public function find_element_by_partial_link_text(link_text:Dynamic):Dynamic;
	/**
		Finds element within this element's children by tag name.
		
		:Args:
		 - name - name of html tag (eg: h1, a, span)
		
		:Returns:
		 - WebElement - the element if it was found
		
		:Raises:
		 - NoSuchElementException - if the element wasn't found
		
		:Usage:
		    ::
		
		        element = element.find_element_by_tag_name('h1')
	**/
	public function find_element_by_tag_name(name:Dynamic):Dynamic;
	/**
		Finds element by xpath.
		
		:Args:
		 - xpath - xpath of element to locate.  "//input[@class='myelement']"
		
		Note: The base path will be relative to this element's location.
		
		This will select the first link under this element.
		
		::
		
		    myelement.find_element_by_xpath(".//a")
		
		However, this will select the first link on the page.
		
		::
		
		    myelement.find_element_by_xpath("//a")
		
		:Returns:
		 - WebElement - the element if it was found
		
		:Raises:
		 - NoSuchElementException - if the element wasn't found
		
		:Usage:
		    ::
		
		        element = element.find_element_by_xpath('//div/td[1]')
	**/
	public function find_element_by_xpath(xpath:Dynamic):Dynamic;
	/**
		Find elements given a By strategy and locator.
		
		:Usage:
		    ::
		
		        element = element.find_elements(By.CLASS_NAME, 'foo')
		
		:rtype: list of WebElement
	**/
	public function find_elements(?by:Dynamic, ?value:Dynamic):Dynamic;
	/**
		Finds a list of elements within this element's children by class name.
		
		:Args:
		 - name: The class name of the elements to find.
		
		:Returns:
		 - list of WebElement - a list with elements if any was found.  An
		   empty list if not
		
		:Usage:
		    ::
		
		        elements = element.find_elements_by_class_name('foo')
	**/
	public function find_elements_by_class_name(name:Dynamic):Dynamic;
	/**
		Finds a list of elements within this element's children by CSS selector.
		
		:Args:
		 - css_selector - CSS selector string, ex: 'a.nav#home'
		
		:Returns:
		 - list of WebElement - a list with elements if any was found.  An
		   empty list if not
		
		:Usage:
		    ::
		
		        elements = element.find_elements_by_css_selector('.foo')
	**/
	public function find_elements_by_css_selector(css_selector:Dynamic):Dynamic;
	/**
		Finds a list of elements within this element's children by ID.
		Will return a list of webelements if found, or an empty list if not.
		
		:Args:
		 - id\_ - Id of child element to find.
		
		:Returns:
		 - list of WebElement - a list with elements if any was found.  An
		   empty list if not
		
		:Usage:
		    ::
		
		        elements = element.find_elements_by_id('foo')
	**/
	public function find_elements_by_id(id_:Dynamic):Dynamic;
	/**
		Finds a list of elements within this element's children by visible link text.
		
		:Args:
		 - link_text - Link text string to search for.
		
		:Returns:
		 - list of webelement - a list with elements if any was found.  an
		   empty list if not
		
		:Usage:
		    ::
		
		        elements = element.find_elements_by_link_text('Sign In')
	**/
	public function find_elements_by_link_text(link_text:Dynamic):Dynamic;
	/**
		Finds a list of elements within this element's children by name.
		
		:Args:
		 - name - name property to search for.
		
		:Returns:
		 - list of webelement - a list with elements if any was found.  an
		   empty list if not
		
		:Usage:
		    ::
		
		        elements = element.find_elements_by_name('foo')
	**/
	public function find_elements_by_name(name:Dynamic):Dynamic;
	/**
		Finds a list of elements within this element's children by link text.
		
		:Args:
		 - link_text: The text of the element to partial match on.
		
		:Returns:
		 - list of webelement - a list with elements if any was found.  an
		   empty list if not
		
		:Usage:
		    ::
		
		        elements = element.find_elements_by_partial_link_text('Sign')
	**/
	public function find_elements_by_partial_link_text(link_text:Dynamic):Dynamic;
	/**
		Finds a list of elements within this element's children by tag name.
		
		:Args:
		 - name - name of html tag (eg: h1, a, span)
		
		:Returns:
		 - list of WebElement - a list with elements if any was found.  An
		   empty list if not
		
		:Usage:
		    ::
		
		        elements = element.find_elements_by_tag_name('h1')
	**/
	public function find_elements_by_tag_name(name:Dynamic):Dynamic;
	/**
		Finds elements within the element by xpath.
		
		:Args:
		 - xpath - xpath locator string.
		
		Note: The base path will be relative to this element's location.
		
		This will select all links under this element.
		
		::
		
		    myelement.find_elements_by_xpath(".//a")
		
		However, this will select all links in the page itself.
		
		::
		
		    myelement.find_elements_by_xpath("//a")
		
		:Returns:
		 - list of WebElement - a list with elements if any was found.  An
		   empty list if not
		
		:Usage:
		    ::
		
		        elements = element.find_elements_by_xpath("//div[contains(@class, 'foo')]")
	**/
	public function find_elements_by_xpath(xpath:Dynamic):Dynamic;
	/**
		Gets the given attribute or property of the element.
		
		This method will first try to return the value of a property with the
		given name. If a property with that name doesn't exist, it returns the
		value of the attribute with the same name. If there's no attribute with
		that name, ``None`` is returned.
		
		Values which are considered truthy, that is equals "true" or "false",
		are returned as booleans.  All other non-``None`` values are returned
		as strings.  For attributes or properties which do not exist, ``None``
		is returned.
		
		To obtain the exact value of the attribute or property,
		use :func:`~selenium.webdriver.remote.BaseWebElement.get_dom_attribute` or
		:func:`~selenium.webdriver.remote.BaseWebElement.get_property` methods respectively.
		
		:Args:
		    - name - Name of the attribute/property to retrieve.
		
		Example::
		
		    # Check if the "active" CSS class is applied to an element.
		    is_active = "active" in target_element.get_attribute("class")
	**/
	public function get_attribute(name:Dynamic):Dynamic;
	/**
		Gets the given attribute of the element. Unlike :func:`~selenium.webdriver.remote.BaseWebElement.get_attribute`,
		this method only returns attributes declared in the element's HTML markup.
		
		:Args:
		    - name - Name of the attribute to retrieve.
		
		:Usage:
		    ::
		
		        text_length = target_element.get_dom_attribute("class")
	**/
	public function get_dom_attribute(name:Dynamic):Dynamic;
	/**
		Gets the given property of the element.
		
		:Args:
		    - name - Name of the property to retrieve.
		
		:Usage:
		    ::
		
		        text_length = target_element.get_property("text_length")
	**/
	public function get_property(name:Dynamic):Dynamic;
	/**
		Internal ID used by selenium.
		
		This is mainly for internal use. Simple use cases such as checking if 2
		webelements refer to the same element, can be done using ``==``::
		
		    if element1 == element2:
		        print("These 2 are equal")
	**/
	public var id : Dynamic;
	/**
		Whether the element is visible to a user.
	**/
	public function is_displayed():Dynamic;
	/**
		Returns whether the element is enabled.
	**/
	public function is_enabled():Dynamic;
	/**
		Returns whether the element is selected.
		
		Can be used to check if a checkbox or radio button is selected.
	**/
	public function is_selected():Dynamic;
	/**
		The location of the element in the renderable canvas.
	**/
	public var location : Dynamic;
	/**
		THIS PROPERTY MAY CHANGE WITHOUT WARNING. Use this to discover
		where on the screen an element is so that we can click it. This method
		should cause the element to be scrolled into view.
		
		Returns the top lefthand corner location on the screen, or ``None`` if
		the element is not visible.
	**/
	public var location_once_scrolled_into_view : Dynamic;
	/**
		Internal reference to the WebDriver instance this element was found from.
	**/
	public var parent : Dynamic;
	/**
		A dictionary with the size and location of the element.
	**/
	public var rect : Dynamic;
	/**
		Saves a screenshot of the current element to a PNG image file. Returns
		   False if there is any IOError, else returns True. Use full paths in
		   your filename.
		
		:Args:
		 - filename: The full path you wish to save your screenshot to. This
		   should end with a `.png` extension.
		
		:Usage:
		    ::
		
		        element.screenshot('/Screenshots/foo.png')
	**/
	public function screenshot(filename:Dynamic):Dynamic;
	/**
		Gets the screenshot of the current element as a base64 encoded string.
		
		:Usage:
		    ::
		
		        img_b64 = element.screenshot_as_base64
	**/
	public var screenshot_as_base64 : Dynamic;
	/**
		Gets the screenshot of the current element as a binary data.
		
		:Usage:
		    ::
		
		        element_png = element.screenshot_as_png
	**/
	public var screenshot_as_png : Dynamic;
	/**
		Simulates typing into the element.
		
		:Args:
		    - value - A string for typing, or setting form fields.  For setting
		      file inputs, this could be a local file path.
		
		Use this to send simple key events or to fill out form fields::
		
		    form_textfield = driver.find_element(By.NAME, 'username')
		    form_textfield.send_keys("admin")
		
		This can also be used to set file inputs.
		
		::
		
		    file_input = driver.find_element(By.NAME, 'profilePic')
		    file_input.send_keys("path/to/profilepic.gif")
		    # Generally it's better to wrap the file path in one of the methods
		    # in os.path to return the actual path to support cross OS testing.
		    # file_input.send_keys(os.path.abspath("path/to/profilepic.gif"))
	**/
	public function send_keys(?value:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns a shadow root of the element if there is one or an error. Only works from
		Chromium 96 onwards. Previous versions of Chromium based browsers will throw an
		assertion exception.
		
		:Returns:
		  - ShadowRoot object or
		  - NoSuchShadowRoot - if no shadow root was attached to element
	**/
	public var shadow_root : Dynamic;
	/**
		The size of the element.
	**/
	public var size : Dynamic;
	/**
		Submits a form.
	**/
	public function submit():Dynamic;
	/**
		This element's ``tagName`` property.
	**/
	public var tag_name : Dynamic;
	/**
		The text of the element.
	**/
	public var text : Dynamic;
	/**
		The value of a CSS property.
	**/
	public function value_of_css_property(property_name:Dynamic):Dynamic;
}