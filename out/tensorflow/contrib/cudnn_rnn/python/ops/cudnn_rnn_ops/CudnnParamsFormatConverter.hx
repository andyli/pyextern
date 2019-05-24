/* This file is generated, do not edit! */
package tensorflow.contrib.cudnn_rnn.python.ops.cudnn_rnn_ops;
@:pythonImport("tensorflow.contrib.cudnn_rnn.python.ops.cudnn_rnn_ops", "CudnnParamsFormatConverter") extern class CudnnParamsFormatConverter {
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
		Constructor.
		
		Args:
		  num_layers: the number of layers for the RNN model.
		  num_units: the number of units within the RNN model.
		  input_size: the size of the input, it could be different from the
		    num_units.
		  input_mode: indicate whether there is a linear projection between the
		    input and the actual computation before the first layer. It could be one
		    of 'linear_input', 'skip_input' or 'auto_select'. * 'linear_input'
		    (default) always applies a linear projection of input onto RNN hidden
		    state. (standard RNN behavior). * 'skip_input' is only allowed when
		    input_size == num_units; * 'auto_select' implies 'skip_input' when
		    input_size == num_units; otherwise, it implies 'linear_input'.
		  direction: the direction model that the model operates. Could be either
		    'unidirectional' or 'bidirectional'
	**/
	@:native("__init__")
	public function ___init__(num_layers:Dynamic, num_units:Dynamic, input_size:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic):Dynamic;
	/**
		Constructor.
		
		Args:
		  num_layers: the number of layers for the RNN model.
		  num_units: the number of units within the RNN model.
		  input_size: the size of the input, it could be different from the
		    num_units.
		  input_mode: indicate whether there is a linear projection between the
		    input and the actual computation before the first layer. It could be one
		    of 'linear_input', 'skip_input' or 'auto_select'. * 'linear_input'
		    (default) always applies a linear projection of input onto RNN hidden
		    state. (standard RNN behavior). * 'skip_input' is only allowed when
		    input_size == num_units; * 'auto_select' implies 'skip_input' when
		    input_size == num_units; otherwise, it implies 'linear_input'.
		  direction: the direction model that the model operates. Could be either
		    'unidirectional' or 'bidirectional'
	**/
	public function new(num_layers:Dynamic, num_units:Dynamic, input_size:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic):Void;
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
	/**
		Converts from Cudnn canonical format to opaque params.
		
		Args:
		  cu_weights: a list of tensors, Cudnn canonical weights.
		  cu_biases: a list of tensors, Cudnn canonical biases.
		Returns:
		  a single opaque tensor.
	**/
	public function _cu_canonical_to_opaque(cu_weights:Dynamic, cu_biases:Dynamic):Dynamic;
	/**
		Transform from Cudnn canonical to tf canonical.
		
		The elements of argument lists are laid out in the following format:
		    ------------------------------------------------------------
		    | weights                    | biases                      |
		    ------------------------------------------------------------
		    \                             \
		     \                             \
		      -------------------------------
		      | layer1     |layer2     |... |
		      -------------------------------
		      \             \
		       ---------------
		       |fwd   |bak   |
		       ---------------
		Args:
		  cu_weights: a list of tensors of Cudnn canonical weights.
		  cu_biases: a list of tensors of Cudnn canonical biases.
		Returns:
		  1 tuple, tf canonical weights and biases.
	**/
	public function _cu_canonical_to_tf_canonical(cu_weights:Dynamic, cu_biases:Dynamic):Dynamic;
	/**
		Transform single layer Cudnn canonicals to tf canonicals.
		
		The elements of cu_weights, cu_biases are laid out in the following format:
		-------------------------------------------------------------------------
		| gate0 param on inputs | gate0 param on hidden state | gate1 ..........|
		-------------------------------------------------------------------------
		Args:
		  cu_weights: a list of tensors, single layer weights.
		  cu_biases: a list of tensors, single layer biases.
		  tf_weights: a list where transformed weights are stored.
		  tf_biases: a list where transformed biases are stored.
	**/
	public function _cu_canonical_to_tf_canonical_single_layer(cu_weights:Dynamic, cu_biases:Dynamic, tf_weights:Dynamic, tf_biases:Dynamic):Dynamic;
	/**
		Stitches cudnn canonical biases to generate tf canonical biases.
	**/
	public function _cudnn_to_tf_biases(?biases:python.VarArgs<Dynamic>):Dynamic;
	/**
		Stitches cudnn canonical weights to generate tf canonical weights.
	**/
	public function _cudnn_to_tf_weights(?cu_weights:python.VarArgs<Dynamic>):Dynamic;
	/**
		Converts opaque params to Cudnn canonical format.
		
		Args:
		  opaque_param: An opaque tensor storing cudnn rnn params (weights and
		    biases).
		Returns:
		  2 list for weights and biases respectively.
	**/
	public function _opaque_to_cu_canonical(opaque_param:Dynamic):Dynamic;
	/**
		Transform from tf canonical to Cudnn canonical.
		
		This is the reverse routine of _TransformCanonical().
		Args:
		  tf_canonicals: a list of tensors of tf canonical params. The elements are
		    laid out in the following format:
		    ------------------------------------------------------------
		    | weights                    | biases                      |
		    ------------------------------------------------------------
		    \                             \
		     \                             \
		      -------------------------------
		      | layer1     |layer2     |... |
		      -------------------------------
		      \             \
		       ---------------
		       |fwd   |bak   |
		       ---------------
		Returns:
		  2 lists: the recovered cudnn canonical weights and biases.
	**/
	public function _tf_canonical_to_cu_canonical(tf_canonicals:Dynamic):Dynamic;
	/**
		Reverses the operations in StitchBiases().
	**/
	public function _tf_to_cudnn_biases(?tf_biases:python.VarArgs<Dynamic>):Dynamic;
	/**
		Reverses the operations in StitchWeights().
	**/
	public function _tf_to_cudnn_weights(layer:Dynamic, ?tf_weights:python.VarArgs<Dynamic>):Dynamic;
	/**
		Converts cudnn opaque param to tf canonical weights.
	**/
	public function opaque_to_tf_canonical(opaque_param:Dynamic):Dynamic;
	/**
		Converts tf canonical weights to cudnn opaque param.
	**/
	public function tf_canonical_to_opaque(tf_canonicals:Dynamic):Dynamic;
}