/* This file is generated, do not edit! */
package pyQt5.uic.loader.loader;
@:pythonImport("PyQt5.uic.Loader.loader", "DynamicUILoader") extern class DynamicUILoader {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(_package:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(_package:Dynamic):Void;
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
	static public function _form_layout_role(layout_position:Dynamic):Dynamic;
	public function addAction(elem:Dynamic):Dynamic;
	public function addActions():Dynamic;
	public function addHeader(elem:Dynamic):Dynamic;
	/**
		Return True if any argument appears to be an i18n string. 
	**/
	static public function any_i18n(?args:python.VarArgs<Dynamic>):Dynamic;
	public function buttonGroups(elem:Dynamic):Dynamic;
	public function classname(elem:Dynamic):Dynamic;
	public function configureLayout(elem:Dynamic, layout:Dynamic):Dynamic;
	public function createAction(elem:Dynamic):Dynamic;
	public function createActionGroup(elem:Dynamic):Dynamic;
	public function createConnections(elem:Dynamic):Dynamic;
	public function createLayout(elem:Dynamic):Dynamic;
	public function createSpacer(elem:Dynamic):Dynamic;
	public function createToplevelWidget(classname:Dynamic, widgetname:Dynamic):Dynamic;
	public function createUserInterface(elem:Dynamic):Dynamic;
	public function createWidget(elem:Dynamic):Dynamic;
	/**
		Create a specific type of widget item. 
	**/
	public function createWidgetItem(item_type:Dynamic, elem:Dynamic, getter:Dynamic, ?getter_args:python.VarArgs<Dynamic>):Dynamic;
	public function customWidgets(elem:Dynamic):Dynamic;
	public function disableSorting(w:Dynamic):Dynamic;
	public function finalize():Dynamic;
	public function getProperty(elem:Dynamic, name:Dynamic):Dynamic;
	public function handleHeaderView(elem:Dynamic, name:Dynamic, header:Dynamic):Dynamic;
	public function handleItem(elem:Dynamic):Dynamic;
	public function loadUi(filename:Dynamic, toplevelInst:Dynamic, resource_suffix:Dynamic):Dynamic;
	public function parse(filename:Dynamic, resource_suffix:Dynamic, ?base_dir:Dynamic):Dynamic;
	public function readDefaults(elem:Dynamic):Dynamic;
	/**
		Read a "resources" tag and add the module to import to the parser's
		list of them.
	**/
	public function readResources(elem:Dynamic):Dynamic;
	public function reset():Dynamic;
	public function setArray(elem:Dynamic, name:Dynamic, setter:Dynamic):Dynamic;
	public function setBuddies():Dynamic;
	/**
		Reimplemented by a sub-class if it needs to know the translation
		context.
	**/
	public function setContext(context:Dynamic):Dynamic;
	public function setDelayedProps():Dynamic;
	public function setTaborder(elem:Dynamic):Dynamic;
	public function setZOrder(elem:Dynamic):Dynamic;
	public function setupObject(clsname:Dynamic, parent:Dynamic, branch:Dynamic, ?is_attribute:Dynamic):Dynamic;
	public function traverseWidgetTree(elem:Dynamic):Dynamic;
	/**
		UIParser.uniqueName(string) -> string
		
		Create a unique name from a string.
		>>> p = UIParser(QtCore, QtGui, QtWidgets)
		>>> p.uniqueName("foo")
		'foo'
		>>> p.uniqueName("foo")
		'foo1'
	**/
	public function uniqueName(name:Dynamic):Dynamic;
	static public var widgetTreeItemHandlers : Dynamic;
}