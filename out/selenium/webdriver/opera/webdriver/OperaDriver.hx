/* This file is generated, do not edit! */
package selenium.webdriver.opera.webdriver;
@:pythonImport("selenium.webdriver.opera.webdriver", "OperaDriver") extern class OperaDriver {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Creates a new instance of the operadriver.
		
		Starts the service and then creates new instance of operadriver.
		
		:Args:
		 - executable_path - path to the executable. If the default is used
		                     it assumes the executable is in the $PATH
		 - port - port you would like the service to run, if left as 0,
		          a free port will be found.
		 - options: this takes an instance of OperaOptions
		 - service_args - List of args to pass to the driver service
		 - desired_capabilities: Dictionary object with non-browser specific
		 - service_log_path - Where to log information from the driver.
		 - opera_options - Deprecated argument for options
		   capabilities only, such as "proxy" or "loggingPref".
	**/
	@:native("__init__")
	public function ___init__(?executable_path:Dynamic, ?port:Dynamic, ?options:Dynamic, ?service_args:Dynamic, ?desired_capabilities:Dynamic, ?service_log_path:Dynamic, ?opera_options:Dynamic, ?keep_alive:Dynamic):Dynamic;
	/**
		Creates a new instance of the operadriver.
		
		Starts the service and then creates new instance of operadriver.
		
		:Args:
		 - executable_path - path to the executable. If the default is used
		                     it assumes the executable is in the $PATH
		 - port - port you would like the service to run, if left as 0,
		          a free port will be found.
		 - options: this takes an instance of OperaOptions
		 - service_args - List of args to pass to the driver service
		 - desired_capabilities: Dictionary object with non-browser specific
		 - service_log_path - Where to log information from the driver.
		 - opera_options - Deprecated argument for options
		   capabilities only, such as "proxy" or "loggingPref".
	**/
	public function new(?executable_path:Dynamic, ?port:Dynamic, ?options:Dynamic, ?service_args:Dynamic, ?desired_capabilities:Dynamic, ?service_log_path:Dynamic, ?opera_options:Dynamic, ?keep_alive:Dynamic):Void;
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
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function _unwrap_value(value:Dynamic):Dynamic;
	/**
		Represents a DOM element.
		
		Generally, all interesting operations that interact with a document will be
		performed through this interface.
		
		All method calls will do a freshness check to ensure that the element
		reference is still valid.  This essentially determines whether or not the
		element is still attached to the DOM.  If this test fails, then an
		``StaleElementReferenceException`` is thrown, and all future calls to this
		instance will fail.
	**/
	static public function _web_element_cls(parent:Dynamic, id_:Dynamic, ?w3c:Dynamic):Dynamic;
	public function _wrap_value(value:Dynamic):Dynamic;
	/**
		Adds a cookie to your current session.
		
		:Args:
		 - cookie_dict: A dictionary object, with required keys - "name" and "value";
		    optional keys - "path", "domain", "secure", "expiry"
		
		Usage:
		    driver.add_cookie({'name' : 'foo', 'value' : 'bar'})
		    driver.add_cookie({'name' : 'foo', 'value' : 'bar', 'path' : '/'})
		    driver.add_cookie({'name' : 'foo', 'value' : 'bar', 'path' : '/', 'secure':True})
	**/
	public function add_cookie(cookie_dict:Dynamic):Dynamic;
	/**
		Returns a ApplicationCache Object to interact with the browser app cache
	**/
	public var application_cache : Dynamic;
	/**
		Goes one step backward in the browser history.
		
		:Usage:
		    driver.back()
	**/
	public function back():Dynamic;
	/**
		Closes the current window.
		
		:Usage:
		    driver.close()
	**/
	public function close():Dynamic;
	public function create_options():Dynamic;
	/**
		Creates a web element with the specified `element_id`.
	**/
	public function create_web_element(element_id:Dynamic):Dynamic;
	/**
		Gets the URL of the current page.
		
		:Usage:
		    driver.current_url
	**/
	public var current_url : Dynamic;
	/**
		Returns the handle of the current window.
		
		:Usage:
		    driver.current_window_handle
	**/
	public var current_window_handle : Dynamic;
	/**
		Delete all cookies in the scope of the session.
		
		:Usage:
		    driver.delete_all_cookies()
	**/
	public function delete_all_cookies():Dynamic;
	/**
		Deletes a single cookie with the given name.
		
		:Usage:
		    driver.delete_cookie('my_cookie')
	**/
	public function delete_cookie(name:Dynamic):Dynamic;
	/**
		returns the drivers current desired capabilities being used
	**/
	public var desired_capabilities : Dynamic;
	/**
		Sends a command to be executed by a command.CommandExecutor.
		
		:Args:
		 - driver_command: The name of the command to execute as a string.
		 - params: A dictionary of named parameters to send with the command.
		
		:Returns:
		  The command's JSON response loaded into a dictionary object.
	**/
	public function execute(driver_command:Dynamic, ?params:Dynamic):Dynamic;
	/**
		Asynchronously Executes JavaScript in the current window/frame.
		
		:Args:
		 - script: The JavaScript to execute.
		 - \*args: Any applicable arguments for your JavaScript.
		
		:Usage:
		    script = "var callback = arguments[arguments.length - 1]; "                      "window.setTimeout(function(){ callback('timeout') }, 3000);"
		    driver.execute_async_script(script)
	**/
	public function execute_async_script(script:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Execute Chrome Devtools Protocol command and get returned result
		
		The command and command args should follow chrome devtools protocol domains/commands, refer to link
		https://chromedevtools.github.io/devtools-protocol/
		
		:Args:
		 - cmd: A str, command name
		 - cmd_args: A dict, command args. empty dict {} if there is no command args
		
		:Usage:
		    driver.execute_cdp_cmd('Network.getResponseBody', {'requestId': requestId})
		
		:Returns:
		    A dict, empty dict {} if there is no result to return.
		    For example to getResponseBody:
		
		    {'base64Encoded': False, 'body': 'response body string'}
	**/
	public function execute_cdp_cmd(cmd:Dynamic, cmd_args:Dynamic):Dynamic;
	/**
		Synchronously Executes JavaScript in the current window/frame.
		
		:Args:
		 - script: The JavaScript to execute.
		 - \*args: Any applicable arguments for your JavaScript.
		
		:Usage:
		    driver.execute_script('return document.title;')
	**/
	public function execute_script(script:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public var file_detector : Dynamic;
	/**
		Overrides the current file detector (if necessary) in limited context.
		Ensures the original file detector is set afterwards.
		
		Example:
		
		with webdriver.file_detector_context(UselessFileDetector):
		    someinput.send_keys('/etc/hosts')
		
		:Args:
		 - file_detector_class - Class of the desired file detector. If the class is different
		     from the current file_detector, then the class is instantiated with args and kwargs
		     and used as a file detector during the duration of the context manager.
		 - args - Optional arguments that get passed to the file detector class during
		     instantiation.
		 - kwargs - Keyword arguments, passed the same way as args.
	**/
	public function file_detector_context(file_detector_class:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Find an element given a By strategy and locator. Prefer the find_element_by_* methods when
		possible.
		
		:Usage:
		    element = driver.find_element(By.ID, 'foo')
		
		:rtype: WebElement
	**/
	public function find_element(?by:Dynamic, ?value:Dynamic):Dynamic;
	/**
		Finds an element by class name.
		
		:Args:
		 - name: The class name of the element to find.
		
		:Returns:
		 - WebElement - the element if it was found
		
		:Raises:
		 - NoSuchElementException - if the element wasn't found
		
		:Usage:
		    element = driver.find_element_by_class_name('foo')
	**/
	public function find_element_by_class_name(name:Dynamic):Dynamic;
	/**
		Finds an element by css selector.
		
		:Args:
		 - css_selector - CSS selector string, ex: 'a.nav#home'
		
		:Returns:
		 - WebElement - the element if it was found
		
		:Raises:
		 - NoSuchElementException - if the element wasn't found
		
		:Usage:
		    element = driver.find_element_by_css_selector('#foo')
	**/
	public function find_element_by_css_selector(css_selector:Dynamic):Dynamic;
	/**
		Finds an element by id.
		
		:Args:
		 - id\_ - The id of the element to be found.
		
		:Returns:
		 - WebElement - the element if it was found
		
		:Raises:
		 - NoSuchElementException - if the element wasn't found
		
		:Usage:
		    element = driver.find_element_by_id('foo')
	**/
	public function find_element_by_id(id_:Dynamic):Dynamic;
	/**
		Finds an element by link text.
		
		:Args:
		 - link_text: The text of the element to be found.
		
		:Returns:
		 - WebElement - the element if it was found
		
		:Raises:
		 - NoSuchElementException - if the element wasn't found
		
		:Usage:
		    element = driver.find_element_by_link_text('Sign In')
	**/
	public function find_element_by_link_text(link_text:Dynamic):Dynamic;
	/**
		Finds an element by name.
		
		:Args:
		 - name: The name of the element to find.
		
		:Returns:
		 - WebElement - the element if it was found
		
		:Raises:
		 - NoSuchElementException - if the element wasn't found
		
		:Usage:
		    element = driver.find_element_by_name('foo')
	**/
	public function find_element_by_name(name:Dynamic):Dynamic;
	/**
		Finds an element by a partial match of its link text.
		
		:Args:
		 - link_text: The text of the element to partially match on.
		
		:Returns:
		 - WebElement - the element if it was found
		
		:Raises:
		 - NoSuchElementException - if the element wasn't found
		
		:Usage:
		    element = driver.find_element_by_partial_link_text('Sign')
	**/
	public function find_element_by_partial_link_text(link_text:Dynamic):Dynamic;
	/**
		Finds an element by tag name.
		
		:Args:
		 - name - name of html tag (eg: h1, a, span)
		
		:Returns:
		 - WebElement - the element if it was found
		
		:Raises:
		 - NoSuchElementException - if the element wasn't found
		
		:Usage:
		    element = driver.find_element_by_tag_name('h1')
	**/
	public function find_element_by_tag_name(name:Dynamic):Dynamic;
	/**
		Finds an element by xpath.
		
		:Args:
		 - xpath - The xpath locator of the element to find.
		
		:Returns:
		 - WebElement - the element if it was found
		
		:Raises:
		 - NoSuchElementException - if the element wasn't found
		
		:Usage:
		    element = driver.find_element_by_xpath('//div/td[1]')
	**/
	public function find_element_by_xpath(xpath:Dynamic):Dynamic;
	/**
		Find elements given a By strategy and locator. Prefer the find_elements_by_* methods when
		possible.
		
		:Usage:
		    elements = driver.find_elements(By.CLASS_NAME, 'foo')
		
		:rtype: list of WebElement
	**/
	public function find_elements(?by:Dynamic, ?value:Dynamic):Dynamic;
	/**
		Finds elements by class name.
		
		:Args:
		 - name: The class name of the elements to find.
		
		:Returns:
		 - list of WebElement - a list with elements if any was found.  An
		   empty list if not
		
		:Usage:
		    elements = driver.find_elements_by_class_name('foo')
	**/
	public function find_elements_by_class_name(name:Dynamic):Dynamic;
	/**
		Finds elements by css selector.
		
		:Args:
		 - css_selector - CSS selector string, ex: 'a.nav#home'
		
		:Returns:
		 - list of WebElement - a list with elements if any was found.  An
		   empty list if not
		
		:Usage:
		    elements = driver.find_elements_by_css_selector('.foo')
	**/
	public function find_elements_by_css_selector(css_selector:Dynamic):Dynamic;
	/**
		Finds multiple elements by id.
		
		:Args:
		 - id\_ - The id of the elements to be found.
		
		:Returns:
		 - list of WebElement - a list with elements if any was found.  An
		   empty list if not
		
		:Usage:
		    elements = driver.find_elements_by_id('foo')
	**/
	public function find_elements_by_id(id_:Dynamic):Dynamic;
	/**
		Finds elements by link text.
		
		:Args:
		 - link_text: The text of the elements to be found.
		
		:Returns:
		 - list of webelement - a list with elements if any was found.  an
		   empty list if not
		
		:Usage:
		    elements = driver.find_elements_by_link_text('Sign In')
	**/
	public function find_elements_by_link_text(text:Dynamic):Dynamic;
	/**
		Finds elements by name.
		
		:Args:
		 - name: The name of the elements to find.
		
		:Returns:
		 - list of webelement - a list with elements if any was found.  an
		   empty list if not
		
		:Usage:
		    elements = driver.find_elements_by_name('foo')
	**/
	public function find_elements_by_name(name:Dynamic):Dynamic;
	/**
		Finds elements by a partial match of their link text.
		
		:Args:
		 - link_text: The text of the element to partial match on.
		
		:Returns:
		 - list of webelement - a list with elements if any was found.  an
		   empty list if not
		
		:Usage:
		    elements = driver.find_elements_by_partial_link_text('Sign')
	**/
	public function find_elements_by_partial_link_text(link_text:Dynamic):Dynamic;
	/**
		Finds elements by tag name.
		
		:Args:
		 - name - name of html tag (eg: h1, a, span)
		
		:Returns:
		 - list of WebElement - a list with elements if any was found.  An
		   empty list if not
		
		:Usage:
		    elements = driver.find_elements_by_tag_name('h1')
	**/
	public function find_elements_by_tag_name(name:Dynamic):Dynamic;
	/**
		Finds multiple elements by xpath.
		
		:Args:
		 - xpath - The xpath locator of the elements to be found.
		
		:Returns:
		 - list of WebElement - a list with elements if any was found.  An
		   empty list if not
		
		:Usage:
		    elements = driver.find_elements_by_xpath("//div[contains(@class, 'foo')]")
	**/
	public function find_elements_by_xpath(xpath:Dynamic):Dynamic;
	/**
		Goes one step forward in the browser history.
		
		:Usage:
		    driver.forward()
	**/
	public function forward():Dynamic;
	/**
		Invokes the window manager-specific 'full screen' operation
	**/
	public function fullscreen_window():Dynamic;
	/**
		Loads a web page in the current browser session.
	**/
	public function get(url:Dynamic):Dynamic;
	/**
		Get a single cookie by name. Returns the cookie if found, None if not.
		
		:Usage:
		    driver.get_cookie('my_cookie')
	**/
	public function get_cookie(name:Dynamic):Dynamic;
	/**
		Returns a set of dictionaries, corresponding to cookies visible in the current session.
		
		:Usage:
		    driver.get_cookies()
	**/
	public function get_cookies():Dynamic;
	/**
		Gets the log for a given log type
		
		:Args:
		 - log_type: type of log that which will be returned
		
		:Usage:
		    driver.get_log('browser')
		    driver.get_log('driver')
		    driver.get_log('client')
		    driver.get_log('server')
	**/
	public function get_log(log_type:Dynamic):Dynamic;
	/**
		Gets Chrome network emulation settings.
		
		:Returns:
		    A dict. For example:
		
		    {'latency': 4, 'download_throughput': 2, 'upload_throughput': 2,
		    'offline': False}
	**/
	public function get_network_conditions():Dynamic;
	/**
		Gets the screenshot of the current window as a base64 encoded string
		   which is useful in embedded images in HTML.
		
		:Usage:
		    driver.get_screenshot_as_base64()
	**/
	public function get_screenshot_as_base64():Dynamic;
	/**
		Saves a screenshot of the current window to a PNG image file. Returns
		   False if there is any IOError, else returns True. Use full paths in
		   your filename.
		
		:Args:
		 - filename: The full path you wish to save your screenshot to. This
		   should end with a `.png` extension.
		
		:Usage:
		    driver.get_screenshot_as_file('/Screenshots/foo.png')
	**/
	public function get_screenshot_as_file(filename:Dynamic):Dynamic;
	/**
		Gets the screenshot of the current window as a binary data.
		
		:Usage:
		    driver.get_screenshot_as_png()
	**/
	public function get_screenshot_as_png():Dynamic;
	/**
		Gets the x,y position of the current window.
		
		:Usage:
		    driver.get_window_position()
	**/
	public function get_window_position(?windowHandle:Dynamic):Dynamic;
	/**
		Gets the x, y coordinates of the window as well as height and width of
		the current window.
		
		:Usage:
		    driver.get_window_rect()
	**/
	public function get_window_rect():Dynamic;
	/**
		Gets the width and height of the current window.
		
		:Usage:
		    driver.get_window_size()
	**/
	public function get_window_size(?windowHandle:Dynamic):Dynamic;
	/**
		Sets a sticky timeout to implicitly wait for an element to be found,
		   or a command to complete. This method only needs to be called one
		   time per session. To set the timeout for calls to
		   execute_async_script, see set_script_timeout.
		
		:Args:
		 - time_to_wait: Amount of time to wait (in seconds)
		
		:Usage:
		    driver.implicitly_wait(30)
	**/
	public function implicitly_wait(time_to_wait:Dynamic):Dynamic;
	/**
		Launches Chrome app specified by id.
	**/
	public function launch_app(id:Dynamic):Dynamic;
	/**
		Gets a list of the available log types
		
		:Usage:
		    driver.log_types
	**/
	public var log_types : Dynamic;
	/**
		Maximizes the current window that webdriver is using
	**/
	public function maximize_window():Dynamic;
	/**
		Invokes the window manager-specific 'minimize' operation
	**/
	public function minimize_window():Dynamic;
	public var mobile : Dynamic;
	/**
		Returns the name of the underlying browser for this instance.
		
		:Usage:
		    name = driver.name
	**/
	public var name : Dynamic;
	/**
		Gets the current orientation of the device
		
		:Usage:
		    orientation = driver.orientation
	**/
	public var orientation : Dynamic;
	/**
		Gets the source of the current page.
		
		:Usage:
		    driver.page_source
	**/
	public var page_source : Dynamic;
	/**
		Closes the browser and shuts down the ChromeDriver executable
		that is started when starting the ChromeDriver
	**/
	public function quit():Dynamic;
	/**
		Refreshes the current page.
		
		:Usage:
		    driver.refresh()
	**/
	public function refresh():Dynamic;
	/**
		Saves a screenshot of the current window to a PNG image file. Returns
		   False if there is any IOError, else returns True. Use full paths in
		   your filename.
		
		:Args:
		 - filename: The full path you wish to save your screenshot to. This
		   should end with a `.png` extension.
		
		:Usage:
		    driver.save_screenshot('/Screenshots/foo.png')
	**/
	public function save_screenshot(filename:Dynamic):Dynamic;
	/**
		Sets Chrome network emulation settings.
		
		:Args:
		 - network_conditions: A dict with conditions specification.
		
		:Usage:
		    driver.set_network_conditions(
		        offline=False,
		        latency=5,  # additional latency (ms)
		        download_throughput=500 * 1024,  # maximal throughput
		        upload_throughput=500 * 1024)  # maximal throughput
		
		    Note: 'throughput' can be used to set both (for download and upload).
	**/
	public function set_network_conditions(?network_conditions:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the amount of time to wait for a page load to complete
		   before throwing an error.
		
		:Args:
		 - time_to_wait: The amount of time to wait
		
		:Usage:
		    driver.set_page_load_timeout(30)
	**/
	public function set_page_load_timeout(time_to_wait:Dynamic):Dynamic;
	/**
		Set the amount of time that the script should wait during an
		   execute_async_script call before throwing an error.
		
		:Args:
		 - time_to_wait: The amount of time to wait (in seconds)
		
		:Usage:
		    driver.set_script_timeout(30)
	**/
	public function set_script_timeout(time_to_wait:Dynamic):Dynamic;
	/**
		Sets the x,y position of the current window. (window.moveTo)
		
		:Args:
		 - x: the x-coordinate in pixels to set the window position
		 - y: the y-coordinate in pixels to set the window position
		
		:Usage:
		    driver.set_window_position(0,0)
	**/
	public function set_window_position(x:Dynamic, y:Dynamic, ?windowHandle:Dynamic):Dynamic;
	/**
		Sets the x, y coordinates of the window as well as height and width of
		the current window.
		
		:Usage:
		    driver.set_window_rect(x=10, y=10)
		    driver.set_window_rect(width=100, height=200)
		    driver.set_window_rect(x=10, y=10, width=100, height=200)
	**/
	public function set_window_rect(?x:Dynamic, ?y:Dynamic, ?width:Dynamic, ?height:Dynamic):Dynamic;
	/**
		Sets the width and height of the current window. (window.resizeTo)
		
		:Args:
		 - width: the width in pixels to set the window to
		 - height: the height in pixels to set the window to
		
		:Usage:
		    driver.set_window_size(800,600)
	**/
	public function set_window_size(width:Dynamic, height:Dynamic, ?windowHandle:Dynamic):Dynamic;
	/**
		Called before starting a new session. This method may be overridden
		to define custom startup behavior.
	**/
	public function start_client():Dynamic;
	/**
		Creates a new session with the desired capabilities.
		
		:Args:
		 - browser_name - The name of the browser to request.
		 - version - Which browser version to request.
		 - platform - Which platform to request the browser on.
		 - javascript_enabled - Whether the new session should support JavaScript.
		 - browser_profile - A selenium.webdriver.firefox.firefox_profile.FirefoxProfile object. Only used if Firefox is requested.
	**/
	public function start_session(capabilities:Dynamic, ?browser_profile:Dynamic):Dynamic;
	/**
		Called after executing a quit command. This method may be overridden
		to define custom shutdown behavior.
	**/
	public function stop_client():Dynamic;
	/**
		:Returns:
		    - SwitchTo: an object containing all options to switch focus into
		
		:Usage:
		    element = driver.switch_to.active_element
		    alert = driver.switch_to.alert
		    driver.switch_to.default_content()
		    driver.switch_to.frame('frame_name')
		    driver.switch_to.frame(1)
		    driver.switch_to.frame(driver.find_elements_by_tag_name("iframe")[0])
		    driver.switch_to.parent_frame()
		    driver.switch_to.window('main')
	**/
	public var switch_to : Dynamic;
	/**
		Deprecated use driver.switch_to.active_element
		        
	**/
	public function switch_to_active_element():Dynamic;
	/**
		Deprecated use driver.switch_to.alert
		        
	**/
	public function switch_to_alert():Dynamic;
	/**
		Deprecated use driver.switch_to.default_content
		        
	**/
	public function switch_to_default_content():Dynamic;
	/**
		Deprecated use driver.switch_to.frame
		        
	**/
	public function switch_to_frame(frame_reference:Dynamic):Dynamic;
	/**
		Deprecated use driver.switch_to.window
		        
	**/
	public function switch_to_window(window_name:Dynamic):Dynamic;
	/**
		Returns the title of the current page.
		
		:Usage:
		    title = driver.title
	**/
	public var title : Dynamic;
	/**
		Returns the handles of all windows within the current session.
		
		:Usage:
		    driver.window_handles
	**/
	public var window_handles : Dynamic;
}