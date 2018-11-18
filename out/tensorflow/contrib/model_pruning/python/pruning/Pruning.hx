/* This file is generated, do not edit! */
package tensorflow.contrib.model_pruning.python.pruning;
@:pythonImport("tensorflow.contrib.model_pruning.python.pruning", "Pruning") extern class Pruning {
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
		Set up the specification for model pruning.
		
		If a spec is provided, the sparsity is set up based on the sparsity_function
		in the spec. The effect of sparsity_function is overridden if the sparsity
		variable is passed to the constructor. This enables setting up arbitrary
		sparsity profiles externally and passing it to this pruning functions.
		
		Args:
		  spec: Pruning spec as defined in pruning.proto
		  global_step: A tensorflow variable that is used while setting up the
		    sparsity function
		  sparsity: A tensorflow scalar variable storing the sparsity
	**/
	@:native("__init__")
	public function ___init__(?spec:Dynamic, ?global_step:Dynamic, ?sparsity:Dynamic):Dynamic;
	/**
		Set up the specification for model pruning.
		
		If a spec is provided, the sparsity is set up based on the sparsity_function
		in the spec. The effect of sparsity_function is overridden if the sparsity
		variable is passed to the constructor. This enables setting up arbitrary
		sparsity profiles externally and passing it to this pruning functions.
		
		Args:
		  spec: Pruning spec as defined in pruning.proto
		  global_step: A tensorflow variable that is used while setting up the
		    sparsity function
		  sparsity: A tensorflow scalar variable storing the sparsity
	**/
	public function new(?spec:Dynamic, ?global_step:Dynamic, ?sparsity:Dynamic):Void;
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
	public function _get_mask_assign_ops():Dynamic;
	/**
		Return target sparsity for the given layer/weight name.
	**/
	public function _get_sparsity(weight_name:Dynamic):Dynamic;
	/**
		Return the map of weight_name:sparsity parsed from the hparams.
	**/
	public function _get_weight_sparsity_map():Dynamic;
	/**
		Performs block-granular masking of the weights.
		
		Block pruning occurs only if the block_height or block_width is > 1 and
		if the weight tensor, when squeezed, has ndims = 2. Otherwise, elementwise
		pruning occurs.
		Args:
		  weights: The weight tensor that needs to be masked.
		  threshold: The current threshold value. The function will compute a new
		    threshold and return the exponential moving average using the current
		    value of threshold
		
		Returns:
		  new_threshold: The new value of the threshold based on weights, and
		    sparsity at the current global_step
		  new_mask: A numpy array of the same size and shape as weights containing
		    0 or 1 to indicate which of the values in weights falls below
		    the threshold
		
		Raises:
		  ValueError: if block pooling function is not AVG or MAX
	**/
	public function _maybe_update_block_mask(weights:Dynamic, threshold:Dynamic):Dynamic;
	public function _setup_global_step(global_step:Dynamic):Dynamic;
	public function _setup_last_update_step():Dynamic;
	public function _setup_sparsity():Dynamic;
	/**
		Updates the mask for a given weight tensor.
		
		This functions first computes the cdf of the weight tensor, and estimates
		the threshold value such that 'desired_sparsity' fraction of weights
		have magnitude less than the threshold.
		
		Args:
		  weights: The weight tensor that needs to be masked.
		  threshold: The current threshold value. The function will compute a new
		    threshold and return the exponential moving average using the current
		    value of threshold
		
		Returns:
		  new_threshold: The new value of the threshold based on weights, and
		    sparsity at the current global_step
		  new_mask: A numpy array of the same size and shape as weights containing
		    0 or 1 to indicate which of the values in weights falls below
		    the threshold
		
		Raises:
		  ValueError: if sparsity is not defined
	**/
	public function _update_mask(weights:Dynamic, threshold:Dynamic):Dynamic;
	public function _validate_spec():Dynamic;
	/**
		Adds summaries of weight sparsities and thresholds.
	**/
	public function add_pruning_summaries():Dynamic;
	public function conditional_mask_update_op():Dynamic;
	public function mask_update_op():Dynamic;
	public function print_hparams():Dynamic;
}