/* This file is generated, do not edit! */
package tensorflow.python.ops.parallel_for.pfor;
@:pythonImport("tensorflow.python.ops.parallel_for.pfor", "WhileV2") extern class WhileV2 {
	/**
		Converter for the V2 while_loop.
		
		The conversion of a while_loop is another while_loop.
		
		The arguments to this converted while_loop are as follows:
		not_all_done: Boolean scalar Tensor indicating if all the pfor iterations
		  are done.
		indices: int32 1-D Tensor storing the id of the pfor iterations that are not
		  done.
		args: Remaining arguments. These can be divided into 2 categories:
		  - The first set of arguments correspond one-to-one to the inputs to the
		    unvectorized while_loop.
		  - The second set are TensorArrays, corresponding one-to-one to each output
		    of the unvectorized while_loop. Each TensorArray has `PFor.loop_len`
		    elements, i.e. the number of pfor iterations. At the end, the i'th
		    element of each TensorArray will contain the output computed by the i'th
		    iteration of pfor. Note that elements can be written into these tensors
		    arrays in any order, depending on when the corresponding pfor iteration
		    is done.
		In each iteration, the while_loop body recomputes the condition for all
		active pfor iterations to see which of them are now done. It then partitions
		all the inputs and passes them along to the converted body. Values for all
		the iterations that are done are written to TensorArrays indexed by the pfor
		iteration number. When all iterations are done, the TensorArrays are stacked
		to get the final value.
		
		Returns:
		  List of converted outputs.
	**/
	public function __call__():Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(pfor_input:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(pfor_input:Dynamic):Void;
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
		Create arguments passed to converted while_loop.
	**/
	public function _init_values():Dynamic;
	public function _output_shapes():Dynamic;
	/**
		Convert the body function.
	**/
	public function _process_body(inputs_stacked:Dynamic, new_indices:Dynamic, cond_stacked:Dynamic, new_inputs:Dynamic, not_all_done:Dynamic):Dynamic;
	/**
		Handles case when condition is pfor loop dependent.
	**/
	public function _process_cond_stacked(conditions:Dynamic, indices:Dynamic, inputs:Dynamic, inputs_stacked:Dynamic, output_tas:Dynamic):Dynamic;
	/**
		Handles case when condition is pfor loop invariant.
	**/
	public function _process_cond_unstacked(conditions:Dynamic, indices:Dynamic, inputs:Dynamic, output_tas:Dynamic):Dynamic;
}