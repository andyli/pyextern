/* This file is generated, do not edit! */
package selenium.webdriver.support.select;
@:pythonImport("selenium.webdriver.support.select", "Select") extern class Select {
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
		Constructor. A check is made that the given element is, indeed, a SELECT tag. If it is not,
		then an UnexpectedTagNameException is thrown.
		
		:Args:
		 - webelement - element SELECT element to wrap
		
		Example:
		    from selenium.webdriver.support.ui import Select 
		
		    Select(driver.find_element(By.TAG_NAME, "select")).select_by_index(2)
	**/
	@:native("__init__")
	public function ___init__(webelement:Dynamic):Dynamic;
	/**
		Constructor. A check is made that the given element is, indeed, a SELECT tag. If it is not,
		then an UnexpectedTagNameException is thrown.
		
		:Args:
		 - webelement - element SELECT element to wrap
		
		Example:
		    from selenium.webdriver.support.ui import Select 
		
		    Select(driver.find_element(By.TAG_NAME, "select")).select_by_index(2)
	**/
	public function new(webelement:Dynamic):Void;
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
	public function _escapeString(value:Dynamic):Dynamic;
	public function _get_longest_token(value:Dynamic):Dynamic;
	public function _setSelected(option:Dynamic):Dynamic;
	public function _unsetSelected(option:Dynamic):Dynamic;
	/**
		Returns a list of all selected options belonging to this select tag
	**/
	public var all_selected_options : Dynamic;
	/**
		Clear all selected entries. This is only valid when the SELECT supports multiple selections.
		throws NotImplementedError If the SELECT does not support multiple selections
	**/
	public function deselect_all():Dynamic;
	/**
		Deselect the option at the given index. This is done by examining the "index" attribute of an
		element, and not merely by counting.
		
		:Args:
		 - index - The option at this index will be deselected
		
		 throws NoSuchElementException If there is no option with specified index in SELECT
	**/
	public function deselect_by_index(index:Dynamic):Dynamic;
	/**
		Deselect all options that have a value matching the argument. That is, when given "foo" this
		would deselect an option like:
		
		 <option value="foo">Bar</option>
		
		:Args:
		 - value - The value to match against
		
		 throws NoSuchElementException If there is no option with specified value in SELECT
	**/
	public function deselect_by_value(value:Dynamic):Dynamic;
	/**
		Deselect all options that display text matching the argument. That is, when given "Bar" this
		would deselect an option like:
		
		<option value="foo">Bar</option>
		
		:Args:
		 - text - The visible text to match against
	**/
	public function deselect_by_visible_text(text:Dynamic):Dynamic;
	/**
		The first selected option in this select tag (or the currently selected option in a
		normal select)
	**/
	public var first_selected_option : Dynamic;
	/**
		Returns a list of all options belonging to this select tag
	**/
	public var options : Dynamic;
	/**
		Select the option at the given index. This is done by examining the "index" attribute of an
		element, and not merely by counting.
		
		:Args:
		 - index - The option at this index will be selected
		
		throws NoSuchElementException If there is no option with specified index in SELECT
	**/
	public function select_by_index(index:Dynamic):Dynamic;
	/**
		Select all options that have a value matching the argument. That is, when given "foo" this
		would select an option like:
		
		<option value="foo">Bar</option>
		
		:Args:
		 - value - The value to match against
		
		throws NoSuchElementException If there is no option with specified value in SELECT
	**/
	public function select_by_value(value:Dynamic):Dynamic;
	/**
		Select all options that display text matching the argument. That is, when given "Bar" this
		would select an option like:
		
		 <option value="foo">Bar</option>
		
		:Args:
		 - text - The visible text to match against
		
		 throws NoSuchElementException If there is no option with specified text in SELECT
	**/
	public function select_by_visible_text(text:Dynamic):Dynamic;
}