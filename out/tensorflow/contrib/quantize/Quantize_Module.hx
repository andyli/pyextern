/* This file is generated, do not edit! */
package tensorflow.contrib.quantize;
@:pythonImport("tensorflow.contrib.quantize") extern class Quantize_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		Rewrites an eval input_graph in place for simulated quantization.
		
		Variables added by the rewrite get added to the global variables collection.
		
		The graph has fake quantization ops inserted to simulate the error
		introduced by quantization. Since the graph is transformed in place,
		the expected behavior of previously held references to nodes and tensors may
		change.
		
		Args:
		  input_graph: The tf.Graph to be transformed, if None then defaults to the
		    default graph.
		
		Raises:
		  ValueError: If elements contains an element that isn't a tf.Tensor or
		    tf.Operation.
	**/
	static public function create_eval_graph(?input_graph:Dynamic):Dynamic;
	/**
		Rewrites a training input_graph in place for simulated quantization.
		
		Variables added by the rewrite get added to the global variables collection.
		
		This function must be invoked prior to insertion of gradient ops in a graph
		as quantization should be modeled in both forward and backward passes.
		
		The graph has fake quantization ops inserted to simulate the error
		introduced by quantization. Since the graph is transformed in place,
		the expected behavior of previously held references to nodes and tensors may
		change.
		
		The default value of quant_delay is suitable for finetuning an already trained
		floating point model (recommended).
		If one wants to train a quantized model from scratch, quant_delay should be
		set to the number of steps it take the floating point model to converge.
		Quantization will be activated at this point and effectively finetune the
		model. If quant_delay is not provided when training from scratch, training can
		often fail.
		
		Args:
		  input_graph: The tf.Graph to be transformed.
		  quant_delay: Number of steps after which weights and activations are
		    quantized during training.
		
		Raises:
		  ValueError: If elements contains an element that isn't a tf.Tensor or
		    tf.Operation.
	**/
	static public function create_training_graph(?input_graph:Dynamic, ?quant_delay:Dynamic):Dynamic;
	/**
		Rewrites an eval input_graph in place for simulated quantization.
		
		Variables added by the rewrite get added to the global variables collection.
		
		This function has additional experimental options not (yet) available to
		create_eval_graph. The resulting behavior may be undefined.
		
		The graph has fake quantization ops inserted to simulate the error
		introduced by quantization. Since the graph is transformed in place,
		the expected behavior of previously held references to nodes and tensors may
		change.
		
		Args:
		  input_graph: The tf.Graph to be transformed, if None then defaults to the
		    default graph.
		  weight_bits: Number of bits to use for quantizing weights.
		  activation_bits: Number of bits to use for quantizing activations.
		  symmetric: If true, use symmetric quantization limits instead of training
		    the minimum and maximum of each quantization range separately.
		  quant_delay: Number of steps after which weights and activations are
		    quantized during eval.
		  scope: The scope to be transformed. If it's not None, only the ops which
		    are in this scope will be transformed.
		
		Raises:
		  ValueError: If elements contains an element that isn't a tf.Tensor or
		    tf.Operation.
	**/
	static public function experimental_create_eval_graph(?input_graph:Dynamic, ?weight_bits:Dynamic, ?activation_bits:Dynamic, ?symmetric:Dynamic, ?quant_delay:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Rewrites a training input_graph in place for simulated quantization.
		
		This function must be invoked prior to insertion of gradient ops in a graph
		as quantization should be modeled in both forward and backward passes.
		
		Variables added by the rewrite get added to the global variables collection.
		
		This function has additional experimental options not (yet) available to
		create_training_graph. The resulting behavior may be undefined.
		
		The graph has fake quantization ops inserted to simulate the error
		introduced by quantization. Since the graph is transformed in place,
		the expected behavior of previously held references to nodes and tensors may
		change.
		
		The default value of quant_delay is suitable for finetuning an already trained
		floating point model (recommended).
		If one wants to train a quantized model from scratch, quant_delay should be
		set to the number of steps it take the floating point model to converge.
		Quantization will be activated at this point and effectively finetune the
		model. If quant_delay is not provided when training from scratch, training can
		often fail.
		
		Args:
		  input_graph: The tf.Graph to be transformed, if None then defaults to the
		    default graph.
		  weight_bits: Number of bits to use for quantizing weights.
		  activation_bits: Number of bits to use for quantizing activations.
		  symmetric: If true, use symmetric quantization limits instead of training
		    the minimum and maximum of each quantization range separately.
		  quant_delay: Number of steps after which weights and activations are
		    quantized during training.
		  freeze_bn_delay: Number of steps after which moving mean and variance are
		    frozen and used instead of batch statistics during training.
		    freeze_bn_delay should be greater than quant_delay and should correspond
		    to when training has almost converged
		  scope: The scope to be transformed. If it's not None, only the ops which
		    are in this scope will be transformed.
		
		Raises:
		  ValueError: If elements contains an element that isn't a tf.Tensor or
		      tf.Operation.
	**/
	static public function experimental_create_training_graph(?input_graph:Dynamic, ?weight_bits:Dynamic, ?activation_bits:Dynamic, ?symmetric:Dynamic, ?quant_delay:Dynamic, ?freeze_bn_delay:Dynamic, ?scope:Dynamic):Dynamic;
}