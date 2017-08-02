/* This file is generated, do not edit! */
package theano.gof.link;
@:pythonImport("theano.gof.link") extern class Link_Module {
	/**
		Variant on WrapLinker that runs a series of wrapper functions instead of
		just one.
	**/
	static public function WrapLinkerMany(linkers:Dynamic, wrappers:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	/**
		excepthook(exctype, value, traceback) -> None
		
		Handle an exception by displaying it with a traceback on sys.stderr.
	**/
	static public function __excepthook(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function add_clear_storage(f:Dynamic, computed:Dynamic, storage_map:Dynamic):Dynamic;
	/**
		Shallow copy operation on arbitrary Python objects.
		
		See the module's __doc__ string for more info.
	**/
	static public function copy(x:Dynamic):Dynamic;
	/**
		Deep copy operation on arbitrary Python objects.
		
		See the module's __doc__ string for more info.
	**/
	static public function deepcopy(x:Dynamic, ?memo:Dynamic, ?_nil:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return the set of Variable instances which are computed by node_list.
		Parameters
		----------
		node_list
		    List of Apply instances in program execution order.
		
		Returns
		-------
		2-tuple
		    FIRST, the set of Variable instances which are computed by node_list,
		    and SECOND a dictionary that maps each Variable instance to a the last
		    node to use Variable as an input.
		
		Extended Summary
		----------------
		This is used to allow garbage collection within graphs.
		
		It ignores view_map and destroy_map. This isn't needed as python
		have reference count. In Theano gc, we should not take into
		account view_map and destroy_map as if the thunk decided to create
		a new output, we would delay uselessly its gc by Python.
	**/
	static public function gc_helper(node_list:Dynamic):Dynamic;
	/**
		getsizeof(object, default) -> int
		
		Return the size of object in bytes.
	**/
	static public function getsizeof(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Log Theano's diagnostic stack trace for an exception
		raised by raise_with_op.
	**/
	static public function log_thunk_trace(value:Dynamic, ?f:Dynamic):Dynamic;
	/**
		Ensure there is storage (a length-1 list) for inputs, outputs, and interior nodes.
		
		:param fgraph: The current fgraph.  This function uses the inputs and outputs attributes.
		:param order: an iterable over Apply instances (in program running order)
		:param input_storage: None or existing input storage (see below)
		:param output_storage: None or existing output storage (see below)
		
		:rtype: 3-tuple
		:returns: (list of storage for inputs, list of storage for outputs, and the `storage_map`)
		
		Parameters
		----------
		fgraph
		    The current fgraph. This function uses the inputs and outputs
		    attributes.
		order
		    An iterable over Apply instances (in program running order).
		input_storage
		    None or existing input storage (see below).
		output_storage
		    None or existing output storage (see below).
		
		Returns
		-------
		3-tuple
		    List of storage for inputs, list of storage for outputs, and
		    the `storage_map`.
		
		Extended summary
		----------------
		This function iterates over the nodes in `order` and ensures that for every
		input and output `Variable`, there is a unique storage container. This is
		returned as a dictionary Variable -> storage called the `storage_map`.
		
		This function also returns `input_storage`, which is a list of storages
		corresponding to fgraph.inputs.
		This function also returns `output_storage`, which is a list of storages
		corresponding to fgraph.outputs.
	**/
	static public function map_storage(fgraph:Dynamic, order:Dynamic, input_storage:Dynamic, output_storage:Dynamic, ?storage_map:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Re-raise an exception while annotating the exception object with
		debug info.
		
		Parameters
		----------
		node : Apply node
		    The Apply node object that resulted in the raised exception.
		exc_info : tuple, optional
		    A tuple containing the exception type, exception object and
		    associated traceback, as would be returned by a call to
		    `sys.exc_info()` (which is done if `None` is passed).
		storage_map: dict, optional
		    storage map of the theano function that resulted in the
		    raised exception.
		
		Notes
		-----
		This re-raises the exception described by `exc_info` (or the last
		one raised, if `exc_info` is omitted) and annotates the exception
		object with several new members which may be helpful for debugging
		Theano graphs. They are:
		
		 * __op_instance__: The Op that is responsible for the exception
		   being raised.
		 * __thunk_trace__: A traceback corresponding to the code that
		   actually generated the exception, if it is available.
		 * __applynode_index__: The index of the Apply node corresponding
		   to this op in `op.fgraph.toposort()`.
		
		The exception is not annotated if it is of type `KeyboardInterrupt`.
	**/
	static public function raise_with_op(node:Dynamic, ?thunk:Dynamic, ?exc_info:Dynamic, ?storage_map:Dynamic):Dynamic;
	/**
		Reraise an exception.
	**/
	static public function reraise(tp:Dynamic, value:Dynamic, ?tb:Dynamic):Dynamic;
	/**
		WRITEME
		
		Parameters
		----------
		fgraph
		thunks
		    The list of program instructions.
		order
		    The list of apply instances that gave rise to the thunks
		    (same order as thunks).
		post_thunk_old_storage
		    A list (corresponding to thunks, order) whose elements are lists of
		    storage cells, that should be cleared after running thecorresponding
		    thunk. A value of None disables this functionality.
		no_recycling
		    Storage elements that cannot be 'recycled' by repeatedly executing the
		    program. These storage elements are cleared before re-running.
		nice_errors
		    Run in such a way that the double-traceback is printed. This costs a
		    bit of performance in the inner python loop.
	**/
	static public function streamline(fgraph:Dynamic, thunks:Dynamic, order:Dynamic, ?post_thunk_old_storage:Dynamic, ?no_recycling:Dynamic, ?nice_errors:Dynamic):Dynamic;
	/**
		This function is meant to replace excepthook and do some
		special work if the exception value has a __thunk_trace__
		field.
		In that case, it retrieves the field, which should
		contain a trace as returned by L{traceback.extract_stack},
		and prints it out on L{stderr}.
		
		The normal excepthook is then called.
		
		Parameters:
		----------
		type
		    Exception class
		value
		    Exception instance
		trace
		    Traceback object
		
		Notes
		-----
		This hook replaced by nosetests, so it does not run in nose tests.
	**/
	static public function thunk_hook(type:Dynamic, value:Dynamic, trace:Dynamic):Dynamic;
	static public var undef : Dynamic;
}