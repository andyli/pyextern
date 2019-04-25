/* This file is generated, do not edit! */
package selenium.webdriver.support.wait;
@:pythonImport("selenium.webdriver.support.wait", "WebDriverWait") extern class WebDriverWait {
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
		Constructor, takes a WebDriver instance and timeout in seconds.
		
		:Args:
		 - driver - Instance of WebDriver (Ie, Firefox, Chrome or Remote)
		 - timeout - Number of seconds before timing out
		 - poll_frequency - sleep interval between calls
		   By default, it is 0.5 second.
		 - ignored_exceptions - iterable structure of exception classes ignored during calls.
		   By default, it contains NoSuchElementException only.
		
		Example:
		 from selenium.webdriver.support.ui import WebDriverWait 
		
		 element = WebDriverWait(driver, 10).until(lambda x: x.find_element_by_id("someId")) 
		
		 is_disappeared = WebDriverWait(driver, 30, 1, (ElementNotVisibleException)).\ 
		
		             until_not(lambda x: x.find_element_by_id("someId").is_displayed())
	**/
	@:native("__init__")
	public function ___init__(driver:Dynamic, timeout:Dynamic, ?poll_frequency:Dynamic, ?ignored_exceptions:Dynamic):Dynamic;
	/**
		Constructor, takes a WebDriver instance and timeout in seconds.
		
		:Args:
		 - driver - Instance of WebDriver (Ie, Firefox, Chrome or Remote)
		 - timeout - Number of seconds before timing out
		 - poll_frequency - sleep interval between calls
		   By default, it is 0.5 second.
		 - ignored_exceptions - iterable structure of exception classes ignored during calls.
		   By default, it contains NoSuchElementException only.
		
		Example:
		 from selenium.webdriver.support.ui import WebDriverWait 
		
		 element = WebDriverWait(driver, 10).until(lambda x: x.find_element_by_id("someId")) 
		
		 is_disappeared = WebDriverWait(driver, 30, 1, (ElementNotVisibleException)).\ 
		
		             until_not(lambda x: x.find_element_by_id("someId").is_displayed())
	**/
	public function new(driver:Dynamic, timeout:Dynamic, ?poll_frequency:Dynamic, ?ignored_exceptions:Dynamic):Void;
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
	/**
		Calls the method provided with the driver as an argument until the         return value is not False.
	**/
	public function until(method:Dynamic, ?message:Dynamic):Dynamic;
	/**
		Calls the method provided with the driver as an argument until the         return value is False.
	**/
	public function until_not(method:Dynamic, ?message:Dynamic):Dynamic;
}