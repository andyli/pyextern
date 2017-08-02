/* This file is generated, do not edit! */
package theano.d3viz.formatting;
@:pythonImport("theano.d3viz.formatting", "PyDotFormatter") extern class PyDotFormatter {
	/**
		Add new node to node list and return unique id.
		
		Parameters
		----------
		node : Theano graph node
		    Apply node, tensor variable, or shared variable in compute graph.
		
		Returns
		-------
		str
		    Unique node id.
	**/
	public function _PyDotFormatter__add_node(node:Dynamic):Dynamic;
	/**
		Return unique node id.
		
		Parameters
		----------
		node : Theano graph node
		    Apply node, tensor variable, or shared variable in compute graph.
		
		Returns
		-------
		str
		    Unique node id.
	**/
	public function _PyDotFormatter__node_id(node:Dynamic):Dynamic;
	/**
		Create pydot graph from function.
		
		Parameters
		----------
		fct : theano.compile.function_module.Function
		    A compiled Theano function, variable, apply or a list of variables.
		graph: pydot.Dot
		    `pydot` graph to which nodes are added. Creates new one if
		    undefined.
		
		Returns
		-------
		pydot.Dot
		    Pydot graph of `fct`
	**/
	public function __call__(fct:Dynamic, ?graph:Dynamic):Dynamic;
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
		Construct PyDotFormatter object.
	**/
	@:native("__init__")
	public function ___init__(?compact:Dynamic):Dynamic;
	/**
		Construct PyDotFormatter object.
	**/
	public function new(?compact:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
}