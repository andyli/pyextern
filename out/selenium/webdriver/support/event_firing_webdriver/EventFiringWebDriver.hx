/* This file is generated, do not edit! */
package selenium.webdriver.support.event_firing_webdriver;
@:pythonImport("selenium.webdriver.support.event_firing_webdriver", "EventFiringWebDriver") extern class EventFiringWebDriver {
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
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	public function __getattr__(name:Dynamic):Dynamic;
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
		Creates a new instance of the EventFiringWebDriver
		
		:Args:
		 - driver : A WebDriver instance
		 - event_listener : Instance of a class that subclasses AbstractEventListener and implements it fully or partially
		
		Example:
		
		.. code-block:: python
		
		    from selenium.webdriver import Firefox
		    from selenium.webdriver.support.events import EventFiringWebDriver, AbstractEventListener
		
		    class MyListener(AbstractEventListener):
		        def before_navigate_to(self, url, driver):
		            print("Before navigate to %s" % url)
		        def after_navigate_to(self, url, driver):
		            print("After navigate to %s" % url)
		
		    driver = Firefox()
		    ef_driver = EventFiringWebDriver(driver, MyListener())
		    ef_driver.get("http://www.google.co.in/")
	**/
	@:native("__init__")
	public function ___init__(driver:Dynamic, event_listener:Dynamic):Dynamic;
	/**
		Creates a new instance of the EventFiringWebDriver
		
		:Args:
		 - driver : A WebDriver instance
		 - event_listener : Instance of a class that subclasses AbstractEventListener and implements it fully or partially
		
		Example:
		
		.. code-block:: python
		
		    from selenium.webdriver import Firefox
		    from selenium.webdriver.support.events import EventFiringWebDriver, AbstractEventListener
		
		    class MyListener(AbstractEventListener):
		        def before_navigate_to(self, url, driver):
		            print("Before navigate to %s" % url)
		        def after_navigate_to(self, url, driver):
		            print("After navigate to %s" % url)
		
		    driver = Firefox()
		    ef_driver = EventFiringWebDriver(driver, MyListener())
		    ef_driver.get("http://www.google.co.in/")
	**/
	public function new(driver:Dynamic, event_listener:Dynamic):Void;
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
	public function __setattr__(item:Dynamic, value:Dynamic):Dynamic;
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
	public function _dispatch(l_call:Dynamic, l_args:Dynamic, d_call:Dynamic, d_args:Dynamic):Dynamic;
	public function _unwrap_element_args(args:Dynamic):Dynamic;
	public function _wrap_value(value:Dynamic):Dynamic;
	public function back():Dynamic;
	public function close():Dynamic;
	public function execute_async_script(script:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public function execute_script(script:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public function find_element(?by:Dynamic, ?value:Dynamic):Dynamic;
	public function find_element_by_class_name(name:Dynamic):Dynamic;
	public function find_element_by_css_selector(css_selector:Dynamic):Dynamic;
	public function find_element_by_id(id_:Dynamic):Dynamic;
	public function find_element_by_link_text(link_text:Dynamic):Dynamic;
	public function find_element_by_name(name:Dynamic):Dynamic;
	public function find_element_by_partial_link_text(link_text:Dynamic):Dynamic;
	public function find_element_by_tag_name(name:Dynamic):Dynamic;
	public function find_element_by_xpath(xpath:Dynamic):Dynamic;
	public function find_elements(?by:Dynamic, ?value:Dynamic):Dynamic;
	public function find_elements_by_class_name(name:Dynamic):Dynamic;
	public function find_elements_by_css_selector(css_selector:Dynamic):Dynamic;
	public function find_elements_by_id(id_:Dynamic):Dynamic;
	public function find_elements_by_link_text(text:Dynamic):Dynamic;
	public function find_elements_by_name(name:Dynamic):Dynamic;
	public function find_elements_by_partial_link_text(link_text:Dynamic):Dynamic;
	public function find_elements_by_tag_name(name:Dynamic):Dynamic;
	public function find_elements_by_xpath(xpath:Dynamic):Dynamic;
	public function forward():Dynamic;
	public function get(url:Dynamic):Dynamic;
	public function quit():Dynamic;
	/**
		Returns the WebDriver instance wrapped by this EventsFiringWebDriver
	**/
	public var wrapped_driver : Dynamic;
}