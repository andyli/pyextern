/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.bijectors.chain;
@:pythonImport("tensorflow.contrib.distributions.python.ops.bijectors.chain") extern class Chain_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Computes the min_event_ndims associated with the give list of bijectors. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		Given a list `bijector_list` of bijectors, compute the min_event_ndims that is
		associated with the composition of bijectors in that list.
		
		min_event_ndims is the # of right most dimensions for which the bijector has
		done necessary computation on (i.e. the non-broadcastable part of the
		computation).
		
		We can derive the min_event_ndims for a chain of bijectors as follows:
		
		In the case where there are no rank changing bijectors, this will simply be
		`max(b.forward_min_event_ndims for b in bijector_list)`. This is because the
		bijector with the most forward_min_event_ndims requires the most dimensions,
		and hence the chain also requires operating on those dimensions.
		
		However in the case of rank changing, more care is needed in determining the
		exact amount of dimensions. Padding dimensions causes subsequent bijectors to
		operate on the padded dimensions, and Removing dimensions causes bijectors to
		operate more left.
		
		Args:
		  bijector_list: List of bijectors to be composed by chain.
		  compute_forward: Boolean. If True, computes the min_event_ndims associated
		    with a forward call to Chain, and otherwise computes the min_event_ndims
		    associated with an inverse call to Chain. The latter is the same as the
		    min_event_ndims associated with a forward call to Invert(Chain(....)).
		
		Returns:
		  min_event_ndims
	**/
	static public function _compute_min_event_ndims(bijector_list:Dynamic, ?compute_forward:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
	**/
	static public function _use_static_shape(input_tensor:Dynamic, ndims:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}