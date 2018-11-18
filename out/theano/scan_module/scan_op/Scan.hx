/* This file is generated, do not edit! */
package theano.scan_module.scan_op;
@:pythonImport("theano.scan_module.scan_op", "Scan") extern class Scan {
	public function L_op(inputs:Dynamic, outs:Dynamic, dC_douts:Dynamic):Dynamic;
	/**
		This method is primarily used by tensor.Rop
		
		Suppose the op outputs
		
		[ f_1(inputs), ..., f_n(inputs) ]
		
		Parameters
		----------
		inputs : a Variable or list of Variables
		eval_points
		    A Variable or list of Variables with the same length as inputs.
		    Each element of eval_points specifies the value of the corresponding
		    input at the point where the R op is to be evaluated.
		
		Returns
		-------
		list of n elements
		    rval[i] should be Rop(f=f_i(inputs),
		                          wrt=inputs,
		                          eval_points=eval_points)
	**/
	public function R_op(inputs:Dynamic, eval_points:Dynamic):Dynamic;
	/**
		Optional: return some or all output[s] of `make_node`.
		
		It is called by code such as:
		
		.. python::
		
		   x = tensor.matrix()
		
		   # tensor.exp is an Op instance, calls
		   # Op.__call__(self=<instance of exp>, inputs=(x,))
		   y = tensor.exp(x)
		
		This class implements a convenience function (for graph-building) which
		uses `default_output`, but subclasses are free to override this function
		and ignore `default_output`.
		
		Parameters
		----------
		inputs
		    The Op's inputs, forwarded to the call to `make_node()`.
		kwargs
		    Additional keyword arguments to be forwarded to
		    `make_node()` *except* for optional argument `return_list` (which
		    defaults to False). If `return_list` is True, then the returned
		    value is always a list. Otherwise it is either a single Variable
		    when the output of `make_node()` contains a single element, or this
		    output (unchanged) when it contains multiple elements.
	**/
	public function __call__(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function ___init__(inputs:Dynamic, outputs:Dynamic, info:Dynamic, ?typeConstructor:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(inputs:Dynamic, outputs:Dynamic, info:Dynamic, ?typeConstructor:Dynamic):Void;
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
		Extract test value from variable v.
		Raises AttributeError if there is none.
		
		For a Constant, the test value is v.value.
		For a Shared variable, it is the internal value.
		For another Variable, it is the content of v.tag.test_value.
	**/
	static public function _get_test_value(v:Dynamic):Dynamic;
	/**
		Add tag.trace to an node or variable.
		
		The argument is returned after being affected (inplace).
		
		Parameters
		----------
		thing
		    The object where we add .tag.trace.
		user_line
		    The max number of user line to keep.
		
		Notes
		-----
		We also use config.traceback.limit for the maximum number of stack level
		we look.
	**/
	static public function add_tag_trace(thing:Dynamic, ?user_line:Dynamic):Dynamic;
	public function connection_pattern(node:Dynamic):Dynamic;
	static public var default_output : Dynamic;
	/**
		This allows each op to determine if it wants to be constant
		folded when all its inputs are constant. This allows it to
		choose where it puts its memory/speed trade-off. Also, it
		could make things faster as constants can't be used for inplace
		operations (see *IncSubtensor).
	**/
	public function do_constant_folding(node:Dynamic):Dynamic;
	/**
		The args are packed like this:
		
		    n_steps
		
		    X sequence inputs x_1, x_2, ... x_<self.n_seqs>
		
		    Y initial states (u_1, u_2, ... u_<self.n_outs>) for our
		    outputs. Each must have appropriate length (T_1, T_2, ..., T_Y).
		
		    W other inputs w_1, w_2, ... w_W
		
		There are at least 1 + self.n_seqs + self.n_outs inputs, and the
		ones above this number are passed to the scanned function as
		non-sequential inputs.
		
		The outputs are more straightforward:
		
		    Y sequence outputs y_1, y_2, ... y_<self.n_outs>
	**/
	public function execute(node:Dynamic, args:Dynamic, outs:Dynamic):Dynamic;
	/**
		Compute and return dictionary mappings between the inputs and
		outputs of the inner function and the inputs and outputs of the Scan
		node in the outer graph.
		
		The return value is a dictionary in which the keys are the names of
		the individual mappings and the values are the mapping dictionaries
		themselves. In dictionaries representing mappings to outer variables,
		the values are individual integer indices. In dictionaries
		representing mappings to inner variables, the values are sequences of
		indices because multiple inner variables can be associated with the
		same state.
	**/
	public function get_oinp_iinp_iout_oout_mappings():Dynamic;
	public function infer_shape(node:Dynamic, input_shapes:Dynamic):Dynamic;
	public function inner_mitmot(list_inputs:Dynamic):Dynamic;
	public function inner_mitmot_outs(list_outputs:Dynamic):Dynamic;
	public function inner_mitsot(list_inputs:Dynamic):Dynamic;
	public function inner_mitsot_outs(list_outputs:Dynamic):Dynamic;
	public function inner_nitsot_outs(list_outputs:Dynamic):Dynamic;
	public function inner_non_seqs(list_inputs:Dynamic):Dynamic;
	public function inner_seqs(list_inputs:Dynamic):Dynamic;
	public function inner_shared(list_inputs:Dynamic):Dynamic;
	public function inner_shared_outs(list_outputs:Dynamic):Dynamic;
	public function inner_sitsot(list_inputs:Dynamic):Dynamic;
	public function inner_sitsot_outs(list_outputs:Dynamic):Dynamic;
	/**
		Conventions:
		    inner_X - the variable corresponding to X in the inner function
		              of scan (the lambda function executed at every time
		              step)
		    outer_X - the variable corresponding to X in the outer graph,
		              i.e. the main graph (where the scan op lives)
		    inner_X_out - the variable representing the new value of X after
		                  executing one step of scan (i.e. outputs given by
		                  the inner function)
	**/
	public function make_node(?inputs:python.VarArgs<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		node
		    Something previously returned by self.make_node.
		storage_map
		    dict variable -> one-element-list where a computed
		    value for this variable may be found.
		compute_map
		    dict variable -> one-element-list where a boolean
		    value will be found. The boolean indicates whether the
		    variable's storage_map container contains a valid value (True)
		    or if it has not been computed yet (False).
		no_recycling
		    List of variables for which it is forbidden to reuse memory
		    allocated by a previous call.
		impl
		    Use 'py' if we want python execution.
		Notes
		-----
		If the thunk consults the storage_map on every call, it is safe
		for it to ignore the no_recycling argument, because elements of the
		no_recycling list will have a value of None in the storage map. If
		the thunk can potentially cache return values (like CLinker does),
		then it must not do so for variables in the no_recycling list.
	**/
	public function make_thunk(node:Dynamic, storage_map:Dynamic, compute_map:Dynamic, no_recycling:Dynamic, ?impl:Dynamic):Dynamic;
	public function mitmot_out_taps():Dynamic;
	public function mitmot_taps():Dynamic;
	public function mitsot_taps():Dynamic;
	public function outer_mitmot(list_inputs:Dynamic):Dynamic;
	public function outer_mitmot_outs(list_outputs:Dynamic):Dynamic;
	public function outer_mitsot(list_inputs:Dynamic):Dynamic;
	public function outer_mitsot_outs(list_outputs:Dynamic):Dynamic;
	public function outer_nitsot(list_inputs:Dynamic):Dynamic;
	public function outer_nitsot_outs(list_outputs:Dynamic):Dynamic;
	public function outer_non_seqs(list_inputs:Dynamic):Dynamic;
	public function outer_seqs(list_inputs:Dynamic):Dynamic;
	public function outer_shared(list_inputs:Dynamic):Dynamic;
	public function outer_shared_outs(list_outputs:Dynamic):Dynamic;
	public function outer_sitsot(list_inputs:Dynamic):Dynamic;
	public function outer_sitsot_outs(list_outputs:Dynamic):Dynamic;
	/**
		Required: Calculate the function on the inputs and put the variables in
		the output storage. Return None.
		
		Parameters
		----------
		node : Apply instance
		    Contains the symbolic inputs and outputs.
		inputs : list
		    Sequence of inputs (immutable).
		output_storage : list
		     List of mutable 1-element lists (do not change the length of
		     these lists)
		
		Notes
		-----
		The `output_storage` list might contain data. If an element of
		output_storage is not None, it has to be of the right type,
		for instance, for a TensorVariable, it has to be a Numpy ndarray,
		with the right number of dimensions, and the correct dtype.
		Its shape and stride pattern, can be arbitrary. It not is
		guaranteed that it was produced by a previous call to impl. It
		could be allocated by another Op impl is free to reuse it as it
		sees fit, or to discard it and allocate new memory.
		
		Raises
		------
		MethodNotDefined
		    The subclass does not override this method.
	**/
	public function perform(node:Dynamic, inputs:Dynamic, output_storage:Dynamic, ?params:Dynamic):Dynamic;
	/**
		Perform some elementary validations on the inner graph to ensure
		that it is coherent.
	**/
	public function validate_inner_graph():Dynamic;
}