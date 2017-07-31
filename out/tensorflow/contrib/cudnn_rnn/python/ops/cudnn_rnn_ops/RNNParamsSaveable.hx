/* This file is generated, do not edit! */
package tensorflow.contrib.cudnn_rnn.python.ops.cudnn_rnn_ops;
@:pythonImport("tensorflow.contrib.cudnn_rnn.python.ops.cudnn_rnn_ops", "RNNParamsSaveable") extern class RNNParamsSaveable {
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
		Creates a RNNParamsSaveable object.
		
		   RNNParamsSaveable is saveable/restorable in a checkpoint file and is used
		   to save/restore the weights and biases parameters in a canonical
		   format, where parameters are saved as tensors layer by layer. For each
		   layer, the bias tensors are saved following the weight tensors. When
		   restoring, a user could name param_variables as desired, and restore
		   weight and bias tensors to these variables.
		
		   For CudnnRNNRelu or CudnnRNNTanh, there are 2 tensors per weight and per
		   bias for each layer: tensor 0 is applied to the input from the previous
		   layer and tensor 1 to the recurrent input.
		
		   For CudnnLSTM, there are 8 tensors per weight and per bias for each
		   layer: tensor 0-3 are applied to the input from the previous layer and
		   tensor 4-7 to the recurrent input. Tensor 0 and 4 are for the input gate;
		   tensor 1 and 5 the forget gate; tensor 2 and 6 the new memory gate;
		   tensor 3 and 7 the output gate.
		
		   For CudnnGRU, there are 6 tensors per weight and per bias for each layer:
		   tensor 0-2 are applied to the input from the previous layer and
		   tensor 3-5 to the recurrent input. Tensor 0 and 3 are for the reset gate;
		   tensor 1 and 4 the update gate; tensor 2 and 5 the new memory gate.
		
		Args:
		  params_to_canonical: a function to convert params from a specific format
		      for cuDNN or other RNN ops to the canonical format.
		      _CudnnRNN.params_to_canonical() should be provided here.
		  canonical_to_params: a function to convert params from the canonical
		      format to a specific format for cuDNN or other RNN ops. The function
		      must return a scalar (e.g. in the case of cuDNN) or a tuple. This
		      function could be _CudnnRNN.canonical_to_params() or a
		      user-defined function.
		  param_variables: a list of Variables for parameters in a specific form.
		      For cuDNN RNN ops, this is a single merged variable for both weights
		      and biases; for other RNN ops, this might be multiple unmerged or
		      partially merged variables respectively for weights and biases.
		  name: the name of the RNNParamsSaveable object.
	**/
	@:native("__init__")
	public function ___init__(params_to_canonical:Dynamic, canonical_to_params:Dynamic, param_variables:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a RNNParamsSaveable object.
		
		   RNNParamsSaveable is saveable/restorable in a checkpoint file and is used
		   to save/restore the weights and biases parameters in a canonical
		   format, where parameters are saved as tensors layer by layer. For each
		   layer, the bias tensors are saved following the weight tensors. When
		   restoring, a user could name param_variables as desired, and restore
		   weight and bias tensors to these variables.
		
		   For CudnnRNNRelu or CudnnRNNTanh, there are 2 tensors per weight and per
		   bias for each layer: tensor 0 is applied to the input from the previous
		   layer and tensor 1 to the recurrent input.
		
		   For CudnnLSTM, there are 8 tensors per weight and per bias for each
		   layer: tensor 0-3 are applied to the input from the previous layer and
		   tensor 4-7 to the recurrent input. Tensor 0 and 4 are for the input gate;
		   tensor 1 and 5 the forget gate; tensor 2 and 6 the new memory gate;
		   tensor 3 and 7 the output gate.
		
		   For CudnnGRU, there are 6 tensors per weight and per bias for each layer:
		   tensor 0-2 are applied to the input from the previous layer and
		   tensor 3-5 to the recurrent input. Tensor 0 and 3 are for the reset gate;
		   tensor 1 and 4 the update gate; tensor 2 and 5 the new memory gate.
		
		Args:
		  params_to_canonical: a function to convert params from a specific format
		      for cuDNN or other RNN ops to the canonical format.
		      _CudnnRNN.params_to_canonical() should be provided here.
		  canonical_to_params: a function to convert params from the canonical
		      format to a specific format for cuDNN or other RNN ops. The function
		      must return a scalar (e.g. in the case of cuDNN) or a tuple. This
		      function could be _CudnnRNN.canonical_to_params() or a
		      user-defined function.
		  param_variables: a list of Variables for parameters in a specific form.
		      For cuDNN RNN ops, this is a single merged variable for both weights
		      and biases; for other RNN ops, this might be multiple unmerged or
		      partially merged variables respectively for weights and biases.
		  name: the name of the RNNParamsSaveable object.
	**/
	public function new(params_to_canonical:Dynamic, canonical_to_params:Dynamic, param_variables:Dynamic, ?name:Dynamic):Void;
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
		Restores this object from 'restored_tensors'.
		
		Args:
		  restored_tensors: the tensors that were loaded from a checkpoint
		  restored_shapes: the shapes this object should conform to after
		    restore, or None.
		
		Returns:
		  An operation that restores the state of the object.
		
		Raises:
		  ValueError: If the object cannot be restored using the provided
		    parameters.
	**/
	public function restore(restored_tensors:Dynamic, restored_shapes:Dynamic):Dynamic;
}