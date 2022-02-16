/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.debugger_cli_common;
@:pythonImport("tensorflow.python.debug.cli.debugger_cli_common", "Menu") extern class Menu {
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
		Menu constructor.
		
		Args:
		  name: (str or None) name of this menu.
	**/
	@:native("__init__")
	public function ___init__(?name:Dynamic):Dynamic;
	/**
		Menu constructor.
		
		Args:
		  name: (str or None) name of this menu.
	**/
	public function new(?name:Dynamic):Void;
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
		Append an item to the Menu.
		
		Args:
		  item: (MenuItem) the item to be appended.
	**/
	public function append(item:Dynamic):Dynamic;
	/**
		Get a MenuItem from the caption.
		
		Args:
		  caption: (str) The caption to look up.
		
		Returns:
		  (MenuItem) The first-match menu item with the caption, if any.
		
		Raises:
		  LookupError: If a menu item with the caption does not exist.
	**/
	public function caption_to_item(caption:Dynamic):Dynamic;
	public function captions():Dynamic;
	/**
		Format the menu as a single-line RichTextLines object.
		
		Args:
		  prefix: (str) String added to the beginning of the line.
		  divider: (str) The dividing string between the menu items.
		  enabled_item_attrs: (list or str) Attributes applied to each enabled
		    menu item, e.g., ["bold", "underline"].
		  disabled_item_attrs: (list or str) Attributes applied to each
		    disabled menu item, e.g., ["red"].
		
		Returns:
		  (RichTextLines) A single-line output representing the menu, with
		    font_attr_segs marking the individual menu items.
	**/
	public function format_as_single_line(?prefix:Dynamic, ?divider:Dynamic, ?enabled_item_attrs:Dynamic, ?disabled_item_attrs:Dynamic):Dynamic;
	public function insert(index:Dynamic, item:Dynamic):Dynamic;
	public function num_items():Dynamic;
}