/* This file is generated, do not edit! */
package theano.gof.destroyhandler;
@:pythonImport("theano.gof.destroyhandler", "DestroyHandler") extern class DestroyHandler {
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
	public function ___init__(?do_imports_on_attach:Dynamic, ?algo:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?do_imports_on_attach:Dynamic, ?algo:Dynamic):Void;
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
		Do the check for only 1 level.
		
		For now:
		- Destroyed variables can have only 1 clients.
		- Allow view to have multiple clients.
		- Allow sequence of view.
		- But don't allow to destroy view
	**/
	public function fast_destroy(app:Dynamic, reason:Dynamic):Dynamic;
	/**
		When attaching to a new fgraph, check that
		    1) This DestroyHandler wasn't already attached to some fgraph
		       (its data structures are only set up to serve one).
		    2) The FunctionGraph doesn't already have a DestroyHandler.
		       This would result in it validating everything twice, causing
		       compilation to be slower.
		
		Give the FunctionGraph instance:
		    1) A new method "destroyers(var)"
		       TODO: what does this do exactly?
		    2) A new attribute, "destroy_handler"
		TODO: WRITEME: what does this do besides the checks?
	**/
	public function on_attach(fgraph:Dynamic):Dynamic;
	/**
		app.inputs[i] changed from old_r to new_r.
	**/
	public function on_change_input(fgraph:Dynamic, app:Dynamic, i:Dynamic, old_r:Dynamic, new_r:Dynamic, reason:Dynamic):Dynamic;
	/**
		Should remove any dynamically added functionality
		that it installed into the function_graph
	**/
	public function on_detach(fgraph:Dynamic):Dynamic;
	/**
		Add Apply instance to set which must be computed.
	**/
	public function on_import(fgraph:Dynamic, app:Dynamic, reason:Dynamic):Dynamic;
	/**
		Remove Apply instance from set which must be computed.
	**/
	public function on_prune(fgraph:Dynamic, app:Dynamic, reason:Dynamic):Dynamic;
	/**
		Return orderings induced by destructive operations.
		
		Raise InconsistencyError when
		a) attempting to destroy indestructable variable, or
		b) attempting to destroy a value multiple times, or
		c) an Apply destroys (illegally) one of its own inputs by aliasing
	**/
	public function orderings(fgraph:Dynamic, ?ordered:Dynamic):Dynamic;
	static public var pickle_rm_attr : Dynamic;
	/**
		Makes sure self.droot, self.impact, and self.root_destroyer are up to
		date, and returns them (see docstrings for these properties above).
	**/
	public function refresh_droot_impact():Dynamic;
	public function unpickle(fgraph:Dynamic):Dynamic;
	/**
		Return None.
		
		Raise InconsistencyError when
		a) orderings() raises an error
		b) orderings cannot be topologically sorted.
	**/
	public function validate(fgraph:Dynamic):Dynamic;
}