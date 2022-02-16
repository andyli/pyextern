/* This file is generated, do not edit! */
package tensorflow.config.optimizer;
@:pythonImport("tensorflow.config.optimizer") extern class Optimizer_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get experimental optimizer options.
		
		Refer to tf.config.optimizer.set_experimental_options for a list of current
		options.
		
		Note that optimizations are only applied in graph mode, (within tf.function).
		In addition, as these are experimental options, the list is subject to change.
		
		Returns:
		  Dictionary of configured experimental optimizer options
	**/
	static public function get_experimental_options():Dynamic;
	/**
		Returns JIT compilation configuration for code inside `tf.function`.
		
		Possible return values:
		   -`"autoclustering"` if
		   [autoclustering](https://www.tensorflow.org/xla#auto-clustering) is enabled
		   - `""` when no default compilation is applied.
	**/
	static public function get_jit():Dynamic;
	/**
		Set experimental optimizer options.
		
		Note that optimizations are only applied in graph mode, (within tf.function).
		In addition, as these are experimental options, the list is subject to change.
		
		Args:
		  options: Dictionary of experimental optimizer options to configure.
		    Valid keys:
		    - layout_optimizer: Optimize tensor layouts e.g. This will try to use NCHW
		      layout on GPU which is faster.
		    - constant_folding: Fold constants Statically infer the value of tensors
		      when possible, and materialize the result using constants.
		    - shape_optimization: Simplify computations made on shapes.
		    - remapping: Remap subgraphs onto more efficient implementations.
		    - arithmetic_optimization: Simplify arithmetic ops with common
		      sub-expression elimination and arithmetic simplification.
		    - dependency_optimization: Control dependency optimizations. Remove
		      redundant control dependencies, which may enable other optimization.
		      This optimizer is also essential for pruning Identity and NoOp nodes.
		    - loop_optimization: Loop optimizations.
		    - function_optimization: Function optimizations and inlining.
		    - debug_stripper: Strips debug-related nodes from the graph.
		    - disable_model_pruning: Disable removal of unnecessary ops from the graph
		    - scoped_allocator_optimization: Try to allocate some independent Op
		      outputs contiguously in order to merge or eliminate downstream Ops.
		    - pin_to_host_optimization: Force small ops onto the CPU.
		    - implementation_selector: Enable the swap of kernel implementations based
		      on the device placement.
		    - auto_mixed_precision: Change certain float32 ops to float16 on Volta
		      GPUs and above. Without the use of loss scaling, this can cause
		      numerical underflow (see
		      `keras.mixed_precision.experimental.LossScaleOptimizer`).
		    - disable_meta_optimizer: Disable the entire meta optimizer.
		    - min_graph_nodes: The minimum number of nodes in a graph to optimizer.
		      For smaller graphs, optimization is skipped.
	**/
	static public function set_experimental_options(options:Dynamic):Dynamic;
	/**
		Configure JIT compilation. (deprecated argument values)
		
		Warning: SOME ARGUMENT VALUES ARE DEPRECATED: `(jit_config=True)`. They will be removed in a future version.
		Instructions for updating:
		`True` setting is deprecated, use `autoclustering` instead.
		
		Note: compilation is only applied to code that is compiled into a
		graph (in TF2 that's only a code inside `tf.function`).
		
		Args:
		  enabled: JIT compilation configuration.
		  Possible values:
		   - `"autoclustering"` (`True` is a deprecated alias): perform
		   [autoclustering](https://www.tensorflow.org/xla#auto-clustering)
		     (automatically identify and compile clusters of nodes) on all graphs
		     using
		   [XLA](https://www.tensorflow.org/xla).
		   - `False`: do not automatically compile any graphs.
	**/
	static public function set_jit(enabled:Dynamic):Dynamic;
}