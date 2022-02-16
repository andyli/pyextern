/* This file is generated, do not edit! */
package tensorflow.tools.compatibility.tf_upgrade_v2;
@:pythonImport("tensorflow.tools.compatibility.tf_upgrade_v2") extern class Tf_upgrade_v2_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Adds an argument (as a final kwarg arg_name=arg_value_ast).
	**/
	static public function _add_argument_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic, arg_name:Dynamic, arg_value_ast:Dynamic):Dynamic;
	/**
		Adds a loss_reduction argument if not specified.
		
		Default value for tf.estimator.*Classifier and tf.estimator.*Regressor
		loss_reduction argument changed to SUM_OVER_BATCH_SIZE. So, we update
		existing calls to use the old default value `tf.keras.losses.Reduction.SUM`.
		
		Note: to apply this transformation, symbol must be added
		to reordered_function_names above.
	**/
	static public function _add_loss_reduction_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic):Dynamic;
	/**
		Adds cond argument to tf.contrib.summary.xxx_record_summaries().
		
		This is in anticipation of them being renamed to tf.summary.record_if(), which
		requires the cond argument.
	**/
	static public function _add_summary_recording_cond_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic, cond:Dynamic):Dynamic;
	/**
		Adds a step argument to the summary API call if not specified.
		
		The inserted argument value is tf.compat.v1.train.get_or_create_global_step().
	**/
	static public function _add_summary_step_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic):Dynamic;
	/**
		Updates references to uniform_unit_scaling_initializer.
		
		Transforms:
		tf.uniform_unit_scaling_initializer(factor, seed, dtype) to
		tf.compat.v1.keras.initializers.VarianceScaling(
		    scale=factor, distribution="uniform", seed=seed)
		
		Note: to apply this transformation, symbol must be added
		to reordered_function_names above.
	**/
	static public function _add_uniform_scaling_initializer_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic):Dynamic;
	/**
		Transforms to_int and to_float to cast(..., dtype=...).
	**/
	static public function _cast_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic):Dynamic;
	/**
		Replace slim l1 regularizer with Keras one.
		
		This entails renaming the 'scale' arg to 'l' and dropping any
		provided scope arg.
	**/
	static public function _contrib_layers_l1_regularizer_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic):Dynamic;
	/**
		Replace slim l2 regularizer with Keras one, with l=0.5*scale.
		
		Also drops the scope argument.
	**/
	static public function _contrib_layers_l2_regularizer_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic):Dynamic;
	/**
		Updates references to contrib.layers.variance_scaling_initializer.
		
		Transforms:
		tf.contrib.layers.variance_scaling_initializer(
		  factor, mode, uniform, seed, dtype
		) to
		tf.compat.v1.keras.initializers.VarianceScaling(
		    scale=factor, mode=mode.lower(),
		    distribution=("uniform" if uniform else "truncated_normal"),
		    seed=seed, dtype=dtype)
		
		And handles the case where no factor is provided and scale needs to be
		set to 2.0 to match contrib's default instead of tf.keras.initializer's
		default of 1.0
	**/
	static public function _contrib_layers_variance_scaling_initializer_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic):Dynamic;
	/**
		Updates references to contrib.layers.xavier_initializer.
		
		Transforms:
		tf.contrib.layers.xavier_initializer(uniform, seed, dtype) to
		tf.compat.v1.keras.initializers.VarianceScaling(
		    scale=1.0, mode="fan_avg",
		    distribution=("uniform" if uniform else "truncated_normal"),
		    seed=seed, dtype=dtype)
		
		Returns: The new node
	**/
	static public function _contrib_layers_xavier_initializer_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic):Dynamic;
	/**
		Replace keep_prob with 1-rate.
	**/
	static public function _dropout_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic):Dynamic;
	static public function _extract_glimpse_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic):Dynamic;
	/**
		Transforms image.resize_* to image.resize(..., method=*, ...).
	**/
	static public function _image_resize_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic):Dynamic;
	static public function _is_ast_false(node:Dynamic):Dynamic;
	/**
		Determine whether this node represents a string.
	**/
	static public function _is_ast_str(node:Dynamic):Dynamic;
	static public function _is_ast_true(node:Dynamic):Dynamic;
	/**
		Transform iterator methods to compat function calls.
	**/
	static public function _iterator_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic):Dynamic;
	/**
		Fix name scope invocation to use 'default_name' and omit 'values' args.
	**/
	static public function _name_scope_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic):Dynamic;
	/**
		Removes seed2 and deterministic, and adds non-zero seed if needed.
	**/
	static public function _pool_seed_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic):Dynamic;
	static public function _rename_func(node:Dynamic, full_name:Dynamic, new_name:Dynamic, logs:Dynamic, reason:Dynamic):Dynamic;
	/**
		Replaces the given call with tf.compat.v1 if any of the arg_names is found.
		
		Args:
		  parent: Parent of node.
		  node: ast.Call node to modify.
		  full_name: full name of function to modify.
		  name: name of function to modify.
		  logs: list of logs to append to.
		  arg_names: list of names of the argument to look for.
		  arg_ok_predicate: predicate callable with the ast of the argument value,
		    returns whether the argument value is allowed.
		  remove_if_ok: remove the argument if present and ok as determined by
		    arg_ok_predicate.
		  message: message to print if a non-ok arg is found (and hence, the function
		    is renamed to its compat.v1 version).
		
		Returns:
		  node, if it was modified, else None.
	**/
	static public function _rename_if_any_arg_found_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic, ?arg_names:Dynamic, ?arg_ok_predicate:Dynamic, ?remove_if_ok:Dynamic, ?message:Dynamic):Dynamic;
	/**
		Combination of _rename_if_arg_found and _add_loss_reduction transformers.
		
		Args:
		  parent: Parent of node.
		  node: ast.Call node to maybe modify.
		  full_name: full name of function to modify
		  name: name of function to modify
		  logs: list of logs to append to
		  arg_names: list of names of the argument to look for
		  arg_ok_predicate: predicate callable with the ast of the argument value,
		    returns whether the argument value is allowed.
		  remove_if_ok: remove the argument if present and ok as determined by
		    arg_ok_predicate.
		  message: message to print if a non-ok arg is found (and hence, the function
		    is renamed to its compat.v1 version).
		
		Returns:
		  node, if it was modified, else None.
	**/
	static public function _rename_if_arg_found_and_add_loss_reduction_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic, ?arg_names:Dynamic, ?arg_ok_predicate:Dynamic, ?remove_if_ok:Dynamic, ?message:Dynamic):Dynamic;
	/**
		Replaces the given call with tf.compat.v1 if the given arg is found.
		
		This requires the function to be called with all named args, so for using
		this transformer, the function should also be added to renames.
		
		If the arg is not found, the call site is left alone.
		
		If the arg is found, and if arg_ok_predicate is given, it is called with
		the ast Expression representing the argument value found. If it returns
		True, the function is left alone.
		
		If the arg is found, arg_ok_predicate is not None and returns ok, and
		remove_if_ok is True, the argument is removed from the call.
		
		Otherwise, `compat.v1` is inserted between tf and the function name.
		
		Args:
		  parent: Parent of node.
		  node: ast.Call node to maybe modify.
		  full_name: full name of function to modify
		  name: name of function to modify
		  logs: list of logs to append to
		  arg_name: name of the argument to look for
		  arg_ok_predicate: predicate callable with the ast of the argument value,
		    returns whether the argument value is allowed.
		  remove_if_ok: remove the argument if present and ok as determined by
		    arg_ok_predicate.
		  message: message to print if a non-ok arg is found (and hence, the function
		    is renamed to its compat.v1 version).
		
		Returns:
		  node, if it was modified, else None.
	**/
	static public function _rename_if_arg_found_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic, ?arg_name:Dynamic, ?arg_ok_predicate:Dynamic, ?remove_if_ok:Dynamic, ?message:Dynamic):Dynamic;
	static public function _rename_to_compat_v1(node:Dynamic, full_name:Dynamic, logs:Dynamic, reason:Dynamic):Dynamic;
	/**
		Wrap labels argument with stop_gradients.
	**/
	static public function _softmax_cross_entropy_with_logits_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic):Dynamic;
	/**
		Update tf.strings.split arguments: result_type, source.
	**/
	static public function _string_split_rtype_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic):Dynamic;
	/**
		Update tf.string_split arguments: skip_empty, sep, result_type, source.
	**/
	static public function _string_split_transformer(parent:Dynamic, node:Dynamic, full_name:Dynamic, name:Dynamic, logs:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var compat_v1_import : Dynamic;
	static public var compat_v2_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}