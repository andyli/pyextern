/* This file is generated, do not edit! */
package theano.gof.vm;
@:pythonImport("theano.gof.vm", "VM_Linker") extern class VM_Linker {
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
	public function ___init__(?allow_gc:Dynamic, ?use_cloop:Dynamic, ?callback:Dynamic, ?callback_input:Dynamic, ?lazy:Dynamic, ?schedule:Dynamic, ?c_thunks:Dynamic, ?allow_partial_eval:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?allow_gc:Dynamic, ?use_cloop:Dynamic, ?callback:Dynamic, ?callback_input:Dynamic, ?lazy:Dynamic, ?schedule:Dynamic, ?c_thunks:Dynamic, ?allow_partial_eval:Dynamic):Void;
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
	public function __setstate__(d:Dynamic):Dynamic;
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
		Check if fgraph is the first FunctionGraph that has ever been
		associated to self, else, create a new VM_Linker
		associated to fgraph
		
		Parameters
		----------
		fgraph
		    A PerformLinker can have accepted one FunctionGraph instance
		    at a time.
		
		no_recycling
		
		    no_recycling is a list of storage (list of 1 element, the
		    value corresponding to one variable). Those variable
		    storage should not be reused after the call that created
		    them.
		
		    This happen for example for output of the graph that we
		    give to the user. We don't want to reuse those object in
		    case the user have kept it.
		
		    VM_Linker make sure this happen by setting the list
		    element to None at the start of each call.
		
		    Older Linker use not exactly the same mechanism. They will
		    also modify the c code to don't look up the value in the
		    storage. This cause duplicate c code compilation for the
		    same op if they are in the middle of the graph or in the
		    no_recycling. We don't want that, so compile all c code
		    the same (middle of the graph vs output).
		
		    TODO: change the logic to remove the reference at the end
		    of the call instead of the start. This will request all VM
		    implementation (Loop, LoopGC, Stack, CVM).__call__ to
		    return the user outputs as Function.__call__ won't be able
		    to find them anymore.
		
		Returns
		-------
		Self if fgraph is the first FunctionGraph that has ever been
		associated to self, else, a new VM_Linker associated to fgraph.
	**/
	public function accept(fgraph:Dynamic, ?no_recycling:Dynamic, ?profile:Dynamic):Dynamic;
	public function accept_var_updates(updated_vars:Dynamic):Dynamic;
	public function clone(?allow_gc:Dynamic):Dynamic;
	/**
		Returns dict: variable K -> list of variables [v1, v2, v3, ...]
		for each K in variables.
		
		The variables v1, v2, ... are the full set of variables that depend
		directly on K. When we know that none of them will need to be
		computed, we know that:
		* K will not need to be computed.
		* If K is already computed, it can be released for garbage collection.
		
		Parameters
		----------
		variables
		    Iterable over the variables used in a graph computation.
		
		Notes
		-----
		It doesn't take care of the view_map/destroy_map. So it means it relies
		on Python gc no to free the object real storage.
		
		N.B. gc means garbage collection
	**/
	public function compute_gc_dependencies(variables:Dynamic):Dynamic;
	public function make_all(?profiler:Dynamic, ?input_storage:Dynamic, ?output_storage:Dynamic, ?storage_map:Dynamic):Dynamic;
	/**
		Returns a function that takes values corresponding to the inputs of the
		fgraph used by this L{Linker} and returns values corresponding the the
		outputs of that fgraph. If inplace is True, the calculations will
		operate in the same storage the fgraph uses, else independent storage
		will be allocated for the function.
		
		Example
		-------
		e = x + y
		fgraph = FunctionGraph([x, y], [e])
		fn = MyLinker(fgraph).make_function(inplace)
		print fn(1.0, 2.0) # 3.0
		print e.data # 3.0 iff inplace == True (else unknown)
		
		If unpack_single is True (default) and that the function has only one
		output, then that output will be returned. Else, a list or tuple of
		length 1 will be returned.
	**/
	public function make_function(?unpack_single:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		This function must return a triplet (function, input_variables,
		output_variables) where function is a thunk that operates on the
		returned variables. If inplace is True, the input_variables and
		output_variables lists will be the same as the inputs and outputs
		of the graph provided to the L{Linker}. Else, independent
		variables will be returned.
		
		Examples
		--------
		x, y = Variable(Double), Variable(Double)
		e = x + y
		fgraph = FunctionGraph([x, y], [e])
		fn, (new_x, new_y), (new_e, ) = MyLinker(fgraph).make_thunk(inplace)
		new_x.data = 1.0
		new_y.data = 2.0
		fn()
		print new_e.data # 3.0
		print e.data # 3.0 iff inplace == True (else unknown)
	**/
	public function make_thunk(?input_storage:Dynamic, ?output_storage:Dynamic, ?storage_map:Dynamic):Dynamic;
	public function make_vm(nodes:Dynamic, thunks:Dynamic, input_storage:Dynamic, output_storage:Dynamic, storage_map:Dynamic, post_thunk_clear:Dynamic, computed:Dynamic, compute_map:Dynamic, updated_vars:Dynamic):Dynamic;
	public function schedule(fgraph:Dynamic):Dynamic;
}