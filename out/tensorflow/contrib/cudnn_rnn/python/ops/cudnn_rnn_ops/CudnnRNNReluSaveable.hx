/* This file is generated, do not edit! */
package tensorflow.contrib.cudnn_rnn.python.ops.cudnn_rnn_ops;
@:pythonImport("tensorflow.contrib.cudnn_rnn.python.ops.cudnn_rnn_ops", "CudnnRNNReluSaveable") extern class CudnnRNNReluSaveable {
	/**
		Converts from Cudnn canonical format to opaque params.
		
		Args:
		  cu_weights: a list of tensors, Cudnn canonical weights.
		  cu_biases: a list of tensors, Cudnn canonical biases.
		Returns:
		  a single opaque tensor.
	**/
	public function _CanonicalToOpaqueParams(cu_weights:Dynamic, cu_biases:Dynamic):Dynamic;
	/**
		Converts opaque params to Cudnn canonical format.
		
		Returns:
		  2 list for weights and biases respectively.
	**/
	public function _OpaqueParamsToCanonical():Dynamic;
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
	public function _ReverseTransformCanonical(tf_canonicals:Dynamic):Dynamic;
	public function _TFCanonicalNamePrefix(layer:Dynamic, ?is_fwd:Dynamic):Dynamic;
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
		  2 tuples, one for weights and the other for bias.
		  Each tuple has two lists: the 1st for transformed tf canonical tensors
		  and the 2nd for the names of the tensors under which they are saved.
	**/
	public function _TransformCanonical(cu_weights:Dynamic, cu_biases:Dynamic):Dynamic;
	/**
		Transform single layer Cudnn canonicals to tf canonicals.
		
		The elements of cu_weights, cu_biases are laid out in the following format:
		-------------------------------------------------------------------------
		| gate0 param on inputs | gate0 param on hidden state | gate1 ..........|
		-------------------------------------------------------------------------
		Args:
		  cu_weights: a list of tensors, single layer weights.
		  cu_biases: a list of tensors, single layer biases.
		  prefix: the shared prefix of all tensor names.
		  tf_weights: a list where transformed weights are stored.
		  tf_weights_names: a list where names of transformed weights are stored.
		  tf_biases: a list where transformed biases are stored.
		  tf_bias_names: a list where names of transformed biases are stored.
	**/
	public function _TransformSingleLayerCanonical(weights:Dynamic, biases:Dynamic, prefix:Dynamic, tf_weights:Dynamic, tf_weights_names:Dynamic, tf_biases:Dynamic, tf_bias_names:Dynamic):Dynamic;
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
		Creates a CudnnOpaqueParamsSaveable object.
		
		   CudnnOpaqueParamsSaveable is saveable/restorable in a checkpoint file
		   and is used to save/restore the weights and biases parameters in a
		   canonical format which is directly consumable by platform-independent tf
		   RNN cells. Parameters are saved as tensors layer by layer with weight
		   tensors followed by bias tensors, and forward direction followed by
		   backward direction (if applicable). When restoring, a user could name
		   param_variables as desired, and restore weight and bias tensors to these
		   variables.
		
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
		  opaque_params: a variable, Cudnn RNN opaque params.
		  num_layers: the number of layers for the RNN model.
		  num_units: the number of units within the RNN model.
		  input_size: the size of the input, it could be different from the
		      num_units.
		  input_mode: indicate whether there is a linear projection between the
		      input and the actual computation before the first layer. It could be
		      'linear_input', 'skip_input' or 'auto_select'.
		      'linear_input' (default) always applies a linear projection of input
		      onto RNN hidden state. (standard RNN behavior).
		      'skip_input' is only allowed when input_size == num_units;
		      'auto_select' implies 'skip_input' when input_size == num_units;
		      otherwise, it implies 'linear_input'.
		  direction: the direction model that the model operates. Could be either
		      'unidirectional' or 'bidirectional'
		  scope: string of VariableScope, the scope of equivalent subgraph
		      consisting only platform-independent tf RNN cells.
		  name: the name of the CudnnOpaqueParamsSaveable object.
	**/
	@:native("__init__")
	public function ___init__(opaque_params:Dynamic, num_layers:Dynamic, num_units:Dynamic, input_size:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?scope:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a CudnnOpaqueParamsSaveable object.
		
		   CudnnOpaqueParamsSaveable is saveable/restorable in a checkpoint file
		   and is used to save/restore the weights and biases parameters in a
		   canonical format which is directly consumable by platform-independent tf
		   RNN cells. Parameters are saved as tensors layer by layer with weight
		   tensors followed by bias tensors, and forward direction followed by
		   backward direction (if applicable). When restoring, a user could name
		   param_variables as desired, and restore weight and bias tensors to these
		   variables.
		
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
		  opaque_params: a variable, Cudnn RNN opaque params.
		  num_layers: the number of layers for the RNN model.
		  num_units: the number of units within the RNN model.
		  input_size: the size of the input, it could be different from the
		      num_units.
		  input_mode: indicate whether there is a linear projection between the
		      input and the actual computation before the first layer. It could be
		      'linear_input', 'skip_input' or 'auto_select'.
		      'linear_input' (default) always applies a linear projection of input
		      onto RNN hidden state. (standard RNN behavior).
		      'skip_input' is only allowed when input_size == num_units;
		      'auto_select' implies 'skip_input' when input_size == num_units;
		      otherwise, it implies 'linear_input'.
		  direction: the direction model that the model operates. Could be either
		      'unidirectional' or 'bidirectional'
		  scope: string of VariableScope, the scope of equivalent subgraph
		      consisting only platform-independent tf RNN cells.
		  name: the name of the CudnnOpaqueParamsSaveable object.
	**/
	public function new(opaque_params:Dynamic, num_layers:Dynamic, num_units:Dynamic, input_size:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?scope:Dynamic, ?name:Dynamic):Void;
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
		Add canonical weight dependencies to `checkpointable`.
		
		When saving or restoring, converts to or from the opaque buffer
		format. Weights are saved and loaded in the configuration expected by
		cuDNN-compatible cells.
		
		Args:
		  checkpointable: An object inheriting from `CheckpointableBase` to add
		    dependencies too (typically the cuDNN `Layer`).
		  dtype: The dtype for the canonical parameter Tensors.
	**/
	public function _add_checkpointable_dependencies(checkpointable:Dynamic, dtype:Dynamic):Dynamic;
	public function _checkpointable_restore(restore_buffer:Dynamic):Dynamic;
	public function _checkpointable_save(save_buffer:Dynamic):Dynamic;
	/**
		Track parameters for compatibility with CudnnCompatibleLSTMCell.
	**/
	public function _checkpointable_track_params(checkpointable:Dynamic, params:Dynamic):Dynamic;
	/**
		Stitching cudnn canonical biases to generate tf canonical biases.
	**/
	public function _cudnn_to_tf_biases(?cu_biases:python.VarArgs<Dynamic>):Dynamic;
	public function _cudnn_to_tf_gate_params(?cu_gate_order:python.VarArgs<Dynamic>):Dynamic;
	/**
		Stitching cudnn canonical weights to generate tf canonical weights.
	**/
	public function _cudnn_to_tf_weights(?cu_weights:python.VarArgs<Dynamic>):Dynamic;
	static public var _num_params_per_layer : Dynamic;
	static public var _rnn_cell_name : Dynamic;
	static public var _rnn_mode : Dynamic;
	/**
		Reverse the operations in StitchBiases().
	**/
	public function _tf_to_cudnn_biases(?tf_biases:python.VarArgs<Dynamic>):Dynamic;
	public function _tf_to_cudnn_gate_params(?tf_gate_order:python.VarArgs<Dynamic>):Dynamic;
	/**
		Reverse the operations in StitchWeights().
	**/
	public function _tf_to_cudnn_weights(layer:Dynamic, ?tf_weights:python.VarArgs<Dynamic>):Dynamic;
	/**
		The device for SaveSpec Tensors.
	**/
	public var device : Dynamic;
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