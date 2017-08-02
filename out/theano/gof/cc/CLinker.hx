/* This file is generated, do not edit! */
package theano.gof.cc;
@:pythonImport("theano.gof.cc", "CLinker") extern class CLinker {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compiles this linker's fgraph.
		
		Parameters
		----------
		input_storage: list or None
		    List of lists of length 1. In order to use the thunk returned
		    by __compile__, the inputs must be put in that storage.
		    If None, storage will be allocated.
		output_storage: list of lists of length 1
		    The thunk returned by __compile__ will put the variables of the
		    computation in these lists. If None, storage will be allocated.
		
		Returns
		-------
		object
		    Thunk, input_storage, output_storage, error_storage.
	**/
	public function __compile__(?input_storage:Dynamic, ?output_storage:Dynamic, ?storage_map:Dynamic, ?keep_lock:Dynamic):Dynamic;
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
	public function ___init__(?schedule:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?schedule:Dynamic):Void;
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
	/**
		Associate linker with fgraph
	**/
	public function accept(fgraph:Dynamic, ?no_recycling:Dynamic, ?profile:Dynamic):Dynamic;
	public function c_compiler():Dynamic;
	public function clone(?allow_gc:Dynamic):Dynamic;
	/**
		Return a complete hashable signature of the module we compiled.
		
		This function must have the property that no two programs that
		compute different things yield the same key.
		
		The key returned by this function is of the form (version, signature)
		The signature has the following form:
		{{{
		    'CLinker.cmodule_key', compilation args, libraries,
		    header_dirs, numpy ABI version, config md5,
		    (op0, input_signature0, output_signature0),
		    (op1, input_signature1, output_signature1),
		    ...
		    (opK, input_signatureK, output_signatureK),
		}}}
		
		The signature is a tuple, some elements of which are sub-tuples.
		
		The outer tuple has a brief header, containing the compilation options
		passed to the compiler, the libraries to link against, an md5 hash
		of theano.config (for all config options where "in_c_key" is True).
		It is followed by elements for every node in the topological ordering
		of `self.fgraph`.
		
		Input Signature
		---------------
		
		Each input signature is a tuple with an element for each input
		to the corresponding Apply node. Each element identifies the
		type of the node input, and the nature of that input in the
		graph.
		
		The nature of a typical variable is encoded by integer pairs
		``((a,b),c)``:
		``a`` is the topological position of the input's owner
		      (-1 for graph inputs),
		``b`` is the index of the variable in the owner's output list.
		``c`` is a flag indicating whether the variable is in the
		      no_recycling set.
		
		If a variable is also a graph output, then its position in the
		outputs list is also bundled with this tuple (after the b).
		
		The nature of a Constant instance is defined as its signature,
		together with two integers: the topological position of the
		first Apply using that Constant instance, and the lowest index
		into that Apply's inputs that refers to that Constant.  (These
		two integers are a surrogate for the id() of the Constant.
		The integers are important because merge-able constants have
		the same signature, but require separate containers in C
		code.)  The membership in no_recycling is also included in the
		signature.
		
		Output Signature
		----------------
		
		The outputs of a node are entirely determined by the node's Op
		and the nature of the inputs, but the set of outputs that may
		be re-used by the computation (the elements of
		self.no_recycling) can affect the code that is generated.
		
		The format of each Op's output signature is a (version, no_recycle)
		pair, where version is incremented if codegen() changes how it
		handles the outputs, and no_recycle is simply a list of
		booleans, indicating whether each output is in the
		no_recycling set. Older versions of compiled modules only have the
		no_recycle list.
	**/
	public function cmodule_key():Dynamic;
	/**
		Do the actual computation of cmodule_key in a static method
		to allow it to be reused in scalar.Composite.__eq__.
	**/
	public function cmodule_key_(fgraph:Dynamic, no_recycling:Dynamic, ?compile_args:Dynamic, ?libraries:Dynamic, ?header_dirs:Dynamic, ?insert_config_md5:Dynamic, ?c_compiler:Dynamic):Dynamic;
	public function cmodule_key_variables(inputs:Dynamic, outputs:Dynamic, no_recycling:Dynamic, ?compile_args:Dynamic, ?libraries:Dynamic, ?header_dirs:Dynamic, ?insert_config_md5:Dynamic, ?c_compiler:Dynamic):Dynamic;
	/**
		Generates code for a struct that does the computation of the fgraph and
		stores it in the struct_code field of the instance.
		
		If reuse_storage is True, outputs and temporaries will be stored in
		the struct so they can be reused each time a function returned by
		make_function is called, which means that the output of a call will
		be invalidated by the next. If reuse_storage is False, that problem
		is avoided.
		
		This method caches its computations.
	**/
	public function code_gen():Dynamic;
	/**
		Returns a list of compile args that are needed by one
		or more Variables or Ops.
		
		This might contain duplicates.
	**/
	public function compile_args():Dynamic;
	/**
		This compiles the source code for this linker and returns a
		loaded module.
	**/
	public function compile_cmodule(?location:Dynamic):Dynamic;
	/**
		Returns a thunk that points to an instance of a C struct that
		can carry on the computation of this linker's fgraph
		
		Parameters:
		----------
		error_storage -> list of length 3
		in_storage -> list of lists of length 1, one per input
		out_storage -> list of lists of length 1, one per output
		
		Returns a thunk that points to an instance of a C struct that
		can carry on the computation of this linker's fgraph. That thunk,
		when executed, will fetch its inputs from in_storage, put its
		outputs in out_storage and if an error occurs will put the
		type, value and traceback of the exception in error_storage.
	**/
	public function cthunk_factory(error_storage:Dynamic, in_storage:Dynamic, out_storage:Dynamic, ?storage_map:Dynamic, ?keep_lock:Dynamic):Dynamic;
	/**
		Fills the inputs, outputs, variables, orphans, temps and node_order
		fields.
	**/
	public function fetch_variables():Dynamic;
	/**
		Return a cmodule.DynamicModule instance full of the code for our fgraph.
		
		This method is cached on the first call so it can be called
		multiple times without penalty.
	**/
	public function get_dynamic_module():Dynamic;
	public function get_init_tasks():Dynamic;
	public function get_src_code():Dynamic;
	/**
		Returns a list of lib directories that are needed by one
		or more Types or Ops.
		
		The return value will not contain duplicates.
	**/
	public function header_dirs():Dynamic;
	/**
		Returns a list of headers that are needed by one
		or more Types or Ops.
		
		The return value will not contain duplicates.
	**/
	public function headers():Dynamic;
	/**
		Return a list of code snippets that have to be inserted
		in the module initialization code.
		
		The return value will not contain duplicates.
	**/
	public function init_code():Dynamic;
	public function instantiate_code(n_args:Dynamic):Dynamic;
	/**
		Returns a list of lib directories that are needed by one
		or more Types or Ops.
		
		The return value will not contain duplicates.
	**/
	public function lib_dirs():Dynamic;
	/**
		Returns a list of libraries that are needed by one
		or more Types or Ops.
		
		The return value will not contain duplicates.
	**/
	public function libraries():Dynamic;
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
		Compiles this linker's fgraph and returns a function to perform the
		computations, as well as lists of storage cells for both the inputs
		and outputs.
		
		Parameters
		----------
		input_storage: list or None
		    List of lists of length 1. In order to use
		    the thunk returned by __compile__, the inputs must be put in
		    that storage. If None, storage will be allocated.
		output_storage: list of lists of length 1.
		    The thunk returned by __compile__ will put the variables
		    of the computation in these lists. If None, storage will
		    be allocated.
		storage_map: dict that map variables to storages.
		    This is used when you need to customize the storage of
		    this thunk
		keep_lock:
		    If True, we won't release the lock on the compiledir
		    at the end of this function call.
		Returns: thunk, input_storage, output_storage
		
		The return values can be used as follows:
		  f, istor, ostor = clinker.make_thunk()
		  istor[0].data = first_input
		  istor[1].data = second_input
		  f()
		  first_output = ostor[0].data
	**/
	public function make_thunk(?input_storage:Dynamic, ?output_storage:Dynamic, ?storage_map:Dynamic, ?keep_lock:Dynamic):Dynamic;
	public function schedule(fgraph:Dynamic):Dynamic;
	/**
		Returns a list of support code strings that are needed by
		one or more Variables or Ops.
		The support code from Variables is added before the support code from Ops.This might contain duplicates.
	**/
	public function support_code():Dynamic;
}