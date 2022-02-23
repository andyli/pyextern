/* This file is generated, do not edit! */
package selenium.webdriver.common.log;
@:pythonImport("selenium.webdriver.common.log", "Log") extern class Log {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __eq__(value:Dynamic):Dynamic;
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
	public function ___init__(driver:Dynamic, bidi_session:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(driver:Dynamic, bidi_session:Dynamic):Void;
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
	/**
		Listens for JS errors and when the contextmanager exits check if there were JS Errors
		
		:Usage:
		     ::
		
		        async with driver.log.add_js_error_listener() as error:
		            driver.find_element(By.ID, "throwing-mouseover").click()
		        assert bool(error)
		        assert error.exception_details.stack_trace.call_frames[0].function_name == "onmouseover"
	**/
	public function add_js_error_listener():Dynamic;
	/**
		Listens for certain events that are passed in.
		
		:Args:
		 - event_type: The type of event that we want to look at.
		
		 :Usage:
		     ::
		
		        async with driver.log.add_listener(Console.log) as messages:
		            driver.execute_script("console.log('I like cheese')")
		        assert messages["message"] == "I love cheese"
	**/
	public function add_listener(event_type:Dynamic):Dynamic;
	/**
		Listens for mutation events and emits them as it finds them
		
		:Usage:
		     ::
		       async with driver.log.mutation_events() as event:
		            pages.load("dynamic.html")
		            driver.find_element(By.ID, "reveal").click()
		            WebDriverWait(driver, 5)                        .until(EC.visibility_of(driver.find_element(By.ID, "revealed")))
		
		        assert event["attribute_name"] == "style"
		        assert event["current_value"] == ""
		        assert event["old_value"] == "display:none;"
	**/
	public function mutation_events():Dynamic;
}