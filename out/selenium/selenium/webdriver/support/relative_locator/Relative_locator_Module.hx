/* This file is generated, do not edit! */
package selenium.webdriver.support.relative_locator;
@:pythonImport("selenium.webdriver.support.relative_locator") extern class Relative_locator_Module {
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Start searching for relative objects your search criteria with By.
		
		:Args:
		    - by: The value from `By` passed in.
		    - using: search term to find the element with.
		:Returns:
		    - RelativeBy - use this object to create filters within a
		        `find_elements` call.
	**/
	static public function locate_with(by:Dynamic, _using:Dynamic):Dynamic;
	/**
		Start searching for relative objects using a tag name.
		
		Note: This method may be removed in future versions, please use
		`locate_with` instead.
		:Args:
		    - tag_name: the DOM tag of element to start searching.
		:Returns:
		    - RelativeBy - use this object to create filters within a
		        `find_elements` call.
	**/
	static public function with_tag_name(tag_name:Dynamic):Dynamic;
}