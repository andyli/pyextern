/* This file is generated, do not edit! */
package theano.gof.opt;
@:pythonImport("theano.gof.opt", "TopoOptimizer") extern class TopoOptimizer {
	/**
		Same as self.optimize(fgraph).
	**/
	public function __call__(fgraph:Dynamic):Dynamic;
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
	public function __eq__(other:Dynamic):Dynamic;
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
	public function ___init__(local_opt:Dynamic, ?order:Dynamic, ?ignore_newtrees:Dynamic, ?failure_callback:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(local_opt:Dynamic, ?order:Dynamic, ?ignore_newtrees:Dynamic, ?failure_callback:Dynamic):Void;
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
	public function __ne__(other:Dynamic):Dynamic;
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
		Add features to the fgraph that are required to apply the optimization.
		For example:
		  fgraph.attach_feature(History())
		  fgraph.attach_feature(MyFeature())
		  etc.
	**/
	public function add_requirements(fgraph:Dynamic):Dynamic;
	/**
		Applies the optimization to the provided L{FunctionGraph}. It may
		use all the methods defined by the L{FunctionGraph}. If the
		L{Optimizer} needs to use a certain tool, such as an
		L{InstanceFinder}, it can do so in its L{add_requirements} method.
	**/
	public function apply(fgraph:Dynamic, ?start_from:Dynamic):Dynamic;
	/**
		Install some FunctionGraph listeners to help the navigator deal with
		the ignore_trees-related functionality.
		
		Parameters
		----------
		importer
		    Function that will be called whenever optimizations add stuff
		    to the graph.
		pruner
		    Function to be called when optimizations remove stuff
		    from the graph.
		chin
		    "on change input" called whenever a node's inputs change.
		name
		    name of the Updater to attach.
		
		Returns
		-------
		object
		    The FunctionGraph plugin that handles the three tasks.
		    Keep this around so that you can detach later!
	**/
	public function attach_updater(fgraph:Dynamic, importer:Dynamic, pruner:Dynamic, ?chin:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Undo the work of attach_updater.
		
		Parameters
		----------
		u
		    A return-value of attach_updater.
		
		Returns
		-------
		None
	**/
	public function detach_updater(fgraph:Dynamic, u:Dynamic):Dynamic;
	/**
		This is meant as a shortcut to:
		  opt.add_requirements(fgraph)
		  opt.apply(fgraph)
	**/
	public function optimize(fgraph:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function print_profile(stream:Dynamic, prof:Dynamic, ?level:Dynamic):Dynamic;
	public function print_summary(?stream:Dynamic, ?level:Dynamic, ?depth:Dynamic):Dynamic;
	/**
		This function will use `lopt` to `transform` the `node`. The
		`transform` method will return either False or a list of Variables
		that are intended to replace `node.outputs`.
		
		If the fgraph accepts the replacement, then the optimization is
		successful, and this function returns True.
		
		If there are no replacement candidates or the fgraph rejects the
		replacements, this function returns False.
		
		Parameters
		----------
		fgraph
		    A FunctionGraph.
		node
		    An Apply instance in `fgraph`
		lopt
		    A LocalOptimizer instance that may have a better idea for
		    how to compute node's outputs.
		
		Returns
		-------
		bool
		    True iff the `node`'s outputs were replaced in the `fgraph`.
	**/
	public function process_node(fgraph:Dynamic, node:Dynamic, ?lopt:Dynamic):Dynamic;
	/**
		Failure_callback for NavigatorOptimizer: print traceback.
	**/
	static public function warn(exc:Dynamic, nav:Dynamic, repl_pairs:Dynamic, local_opt:Dynamic, node:Dynamic):Dynamic;
	/**
		Failure_callback for NavigatorOptimizer: ignore all errors.
	**/
	static public function warn_ignore(exc:Dynamic, nav:Dynamic, repl_pairs:Dynamic, local_opt:Dynamic, node:Dynamic):Dynamic;
	/**
		Failure_callback for NavigatorOptimizer.
		
		Ignore InconsistencyErrors, print traceback.
		
		If error during replacement repl_pairs is set. Otherwise None.
	**/
	static public function warn_inplace(exc:Dynamic, nav:Dynamic, repl_pairs:Dynamic, local_opt:Dynamic, node:Dynamic):Dynamic;
}