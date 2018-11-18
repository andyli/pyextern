/* This file is generated, do not edit! */
package tensorflow.contrib.model_pruning.python.pruning;
@:pythonImport("tensorflow.contrib.model_pruning.python.pruning") extern class Pruning_Module {
	static public var _MASKED_WEIGHT_COLLECTION : Dynamic;
	static public var _MASKED_WEIGHT_NAME : Dynamic;
	static public var _MASK_COLLECTION : Dynamic;
	static public var _THRESHOLD_COLLECTION : Dynamic;
	static public var _WEIGHT_COLLECTION : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Apply mask to a given weight tensor.
		
		Args:
		  x: Input weight tensor
		  scope: The current variable scope. Defaults to "".
		Returns:
		  Tensor representing masked_weights
	**/
	static public function apply_mask(x:Dynamic, ?scope:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function get_masked_weights():Dynamic;
	static public function get_masks():Dynamic;
	/**
		Get a tf.HParams object with the default values for the hyperparameters.
		
		  name: string
		    name of the pruning specification. Used for adding summaries and ops under
		    a common tensorflow name_scope
		  begin_pruning_step: integer
		    the global step at which to begin pruning
		  end_pruning_step: integer
		    the global step at which to terminate pruning. Defaults to -1 implying
		    that pruning continues till the training stops
		  weight_sparsity_map: list of strings
		     comma separed list of weight variable name:target sparsity pairs.
		     For layers/weights not in this list, sparsity as specified by the
		     target_sparsity hyperparameter is used.
		     Eg. [conv1:0.9,conv2/kernel:0.8]
		  threshold_decay: float
		    the decay factor to use for exponential decay of the thresholds
		  pruning_frequency: integer
		    How often should the masks be updated? (in # of global_steps)
		  nbins: integer
		    number of bins to use for histogram computation
		  block_height: integer
		    number of rows in a block (defaults to 1)
		  block_width: integer
		    number of cols in a block (defaults to 1)
		  block_pooling_function: string
		    Whether to perform average (AVG) or max (MAX) pooling in the block
		    (default: AVG)
		  initial_sparsity: float
		    initial sparsity value
		  target_sparsity: float
		    target sparsity value
		  sparsity_function_begin_step: integer
		    the global step at this which the gradual sparsity function begins to
		    take effect
		  sparsity_function_end_step: integer
		    the global step used as the end point for the gradual sparsity function
		  sparsity_function_exponent: float
		    exponent = 1 is linearly varying sparsity between initial and final.
		    exponent > 1 varies more slowly towards the end than the beginning
		  use_tpu: False
		    Indicates whether to use TPU
		
		  We use the following sparsity function:
		
		  num_steps = (sparsity_function_end_step -
		               sparsity_function_begin_step)/pruning_frequency
		  sparsity(step) = (initial_sparsity - target_sparsity)*
		                   [1-step/(num_steps -1)]**exponent + target_sparsity
		
		Args:
		  None
		
		Returns:
		  tf.HParams object initialized to default values
	**/
	static public function get_pruning_hparams():Dynamic;
	static public function get_thresholds():Dynamic;
	/**
		Get sparsity of the weights.
		
		Args:
		  None
		
		Returns:
		  A list containing the sparsity of each of the weight tensors
	**/
	static public function get_weight_sparsity():Dynamic;
	static public function get_weights():Dynamic;
	static public var print_function : Dynamic;
}