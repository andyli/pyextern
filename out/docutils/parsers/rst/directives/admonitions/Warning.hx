/* This file is generated, do not edit! */
package docutils.parsers.rst.directives.admonitions;
@:pythonImport("docutils.parsers.rst.directives.admonitions", "Warning") extern class Warning {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, arguments:Dynamic, options:Dynamic, content:Dynamic, lineno:Dynamic, content_offset:Dynamic, block_text:Dynamic, state:Dynamic, state_machine:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(name:Dynamic, arguments:Dynamic, options:Dynamic, content:Dynamic, lineno:Dynamic, content_offset:Dynamic, block_text:Dynamic, state:Dynamic, state_machine:Dynamic):Void;
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
		Append self.options['name'] to node['names'] if it exists.
		
		Also normalize the name string and register it as explicit target.
	**/
	public function add_name(node:Dynamic):Dynamic;
	/**
		Throw an ERROR-level DirectiveError if the directive doesn't
		have contents.
	**/
	public function assert_has_content():Dynamic;
	public function debug(message:Dynamic):Dynamic;
	/**
		Return a DirectiveError suitable for being thrown as an exception.
		
		Call "raise self.directive_error(level, message)" from within
		a directive implementation to return one single system message
		at level `level`, which automatically gets the directive block
		and the line number added.
		
		Preferably use the `debug`, `info`, `warning`, `error`, or `severe`
		wrapper methods, e.g. ``self.error(message)`` to generate an
		ERROR-level directive error.
	**/
	public function directive_error(level:Dynamic, message:Dynamic):Dynamic;
	public function error(message:Dynamic):Dynamic;
	static public var final_argument_whitespace : Dynamic;
	static public var has_content : Dynamic;
	public function info(message:Dynamic):Dynamic;
	/**
		`Element` is the superclass to all specific elements.
		
		Elements contain attributes and child nodes.  Elements emulate
		dictionaries for attributes, indexing by attribute name (a string).  To
		set the attribute 'att' to 'value', do::
		
		    element['att'] = 'value'
		
		There are two special attributes: 'ids' and 'names'.  Both are
		lists of unique identifiers, and names serve as human interfaces
		to IDs.  Names are case- and whitespace-normalized (see the
		fully_normalize_name() function), and IDs conform to the regular
		expression ``[a-z](-?[a-z0-9]+)*`` (see the make_id() function).
		
		Elements also emulate lists for child nodes (element nodes and/or text
		nodes), indexing by integer.  To get the first child node, use::
		
		    element[0]
		
		Elements may be constructed using the ``+=`` operator.  To add one new
		child node to element, do::
		
		    element += node
		
		This is equivalent to ``element.append(node)``.
		
		To add a list of multiple child nodes at once, use the same ``+=``
		operator::
		
		    element += [node1, node2]
		
		This is equivalent to ``element.extend([node1, node2])``.
	**/
	static public function node_class(?rawsource:Dynamic, ?children:python.VarArgs<Dynamic>, ?attributes:python.KwArgs<Dynamic>):Dynamic;
	static public var option_spec : Dynamic;
	static public var optional_arguments : Dynamic;
	static public var required_arguments : Dynamic;
	public function run():Dynamic;
	public function severe(message:Dynamic):Dynamic;
	public function warning(message:Dynamic):Dynamic;
}