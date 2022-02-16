/* This file is generated, do not edit! */
package tensorflow.python.ops.parallel_for.pfor;
@:pythonImport("tensorflow.python.ops.parallel_for.pfor", "WhileOp") extern class WhileOp {
	/**
		Converter for the while_loop.
		
		The conversion of a while_loop is another while_loop.
		
		The arguments to this converted while_loop are as follows:
		not_all_done: Boolean scalar Tensor indicating if all the pfor iterations
		  are done.
		indices: int32 1-D Tensor storing the id of the iterations that are not
		  done.
		args: Remaining arguments. These can be divided into 3 categories:
		  - First set of arguments are the tensors that correspond to the initial
		    elements of self._enters. The elements that appear in original while
		    loop's `loop_vars`.
		  - The second set of arguments are the tensors that correspond to the
		    remaining elements of self._enters. These are the tensors that directly
		    enter the original while loop body.
		   - Finally, the last set of arguments are TensorArrays. These TensorArrays
		     correspond to the outputs of the original while_loop, i.e. to the
		     elements in self._outputs. Each TensorArray has `PFor.loop_len`
		     elements, i.e. the number of pfor iterations. At the end, the i'th
		     element of each TensorArray will contain the output computed by the
		     i'th iteration of pfor. Note that elements can be written into these
		     tensors arrays in any order, depending on when the corresponding pfor
		     iteration is done.
		  If the original while_loop had `k` tensors in its `loop_vars` and its body
		  directly captured `m` tensors, the `args` will contain `2 * k + m` values.
		
		In each iteration, the while_loop body recomputes the condition for all
		active pfor iterations to see which of them are now done. It then partitions
		all the inputs and passes them along to the converted body. Values for all
		the iterations that are done are written to TensorArrays indexed by the pfor
		iteration number. When all iterations are done, the TensorArrays are stacked
		to get the final value.
		
		Args:
		  pfor_input: A PForInput object corresponding to the output of any Exit
		    node from this while loop.
		
		Returns:
		  List of converted outputs.
	**/
	public function __call__(pfor_input:Dynamic):Dynamic;
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
		Initializer.
		
		Args:
		  exit_node: A tensor output from the while_loop.
		  pfor_ops: list of ops inside the current pfor loop.
		  fallback_to_while_loop: If True, fallback to while loop when conversion of
		    an op is not supported
		  pfor_config: PForConfig object used while constructing loop body.
	**/
	@:native("__init__")
	public function ___init__(exit_node:Dynamic, pfor_ops:Dynamic, fallback_to_while_loop:Dynamic, pfor_config:Dynamic):Dynamic;
	/**
		Initializer.
		
		Args:
		  exit_node: A tensor output from the while_loop.
		  pfor_ops: list of ops inside the current pfor loop.
		  fallback_to_while_loop: If True, fallback to while loop when conversion of
		    an op is not supported
		  pfor_config: PForConfig object used while constructing loop body.
	**/
	public function new(exit_node:Dynamic, pfor_ops:Dynamic, fallback_to_while_loop:Dynamic, pfor_config:Dynamic):Void;
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
		String representation.
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
		Converts an Enter node.
	**/
	public function _convert_enter(parent_pfor:Dynamic, enter:Dynamic):Dynamic;
	/**
		Create arguments passed to converted while_loop.
	**/
	public function _create_init_values(pfor_input:Dynamic):Dynamic;
	/**
		Create a PFor object for converting parts of the while_loop.
		
		Args:
		  parent_pfor: PFor object being used for converting the while_loop.
		  indices: int32 Tensor of ids for the iterations that are still active
		    (i.e. did not exit the while_loop).
		  cond_stacked: True if the while_loop condition is stacked.
		  inputs: list of input Tensors corresponding 1-to-1 with self._enters. Note
		    that these Tensors are a subset of the loop variables for the generated
		    while_loop.
		  inputs_stacked: List of booleans corresponding 1-to-1 with `inputs`,
		    indicating if the value is stacked or not.
		
		Returns:
		  A PFor instance. The instance is initialized by adding conversion mappings
		    of nodes that will be external to the conversion that the returned
		    instance will be used for. e.g. Enter nodes as well as Merge and Switch
		    outputs are mapped to converted values.
	**/
	public function _init_pfor(parent_pfor:Dynamic, indices:Dynamic, cond_stacked:Dynamic, inputs:Dynamic, inputs_stacked:Dynamic):Dynamic;
	/**
		Heuristic to figure out if the converting inp leads to a stacked value.
		
		
		Args:
		  cache: map from Tensor to boolean indicating stacked/unstacked.
		  inp: input Tensor.
		
		Returns:
		  True if `inp` could get stacked. If the function returns False, the
		  converted value should be guaranteed to be unstacked. If returning True,
		  it may or may not be stacked.
	**/
	public function _maybe_stacked(cache:Dynamic, inp:Dynamic):Dynamic;
	/**
		Convert the body function.
	**/
	public function _process_body(pfor_input:Dynamic, inputs_stacked:Dynamic, new_indices:Dynamic, cond_stacked:Dynamic, new_inputs:Dynamic, not_all_done:Dynamic):Dynamic;
	public function _process_cond_stacked(conditions:Dynamic, indices:Dynamic, inputs:Dynamic, inputs_stacked:Dynamic, output_tas:Dynamic):Dynamic;
	/**
		Handles case when condition is unstacked.
		
		Note that all iterations end together. So we don't need to partition the
		inputs. When all iterations are done, we write the inputs to the
		TensorArrays. Note that we only write to index 0 of output_tas. Since all
		iterations end together, they can all be output together.
	**/
	public function _process_cond_unstacked(conditions:Dynamic, indices:Dynamic, inputs:Dynamic, output_tas:Dynamic):Dynamic;
	/**
		Control input to all the Enter nodes.
	**/
	public var control_inputs : Dynamic;
	/**
		Input to all the Enter nodes.
	**/
	public var inputs : Dynamic;
	/**
		Returns true if the while_loop was created inside the pfor.
	**/
	public var is_inside_loop : Dynamic;
	public var is_stateful : Dynamic;
	/**
		Context name for the while loop.
	**/
	public var name : Dynamic;
	/**
		True if op was created inside the pfor loop body.
	**/
	public function op_is_inside_loop(op:Dynamic):Dynamic;
	/**
		Outputs of all the Exit nodes.
	**/
	public var outputs : Dynamic;
	/**
		Return a converter for the while loop.
	**/
	public var pfor_converter : Dynamic;
}