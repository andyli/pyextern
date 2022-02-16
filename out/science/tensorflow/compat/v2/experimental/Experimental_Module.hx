/* This file is generated, do not edit! */
package tensorflow.compat.v2.experimental;
@:pythonImport("tensorflow.compat.v2.experimental") extern class Experimental_Module {
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
		Clear pending operations and error statuses in async execution.
		
		In async execution mode, an error in op/function execution can lead to errors
		in subsequent ops/functions that are scheduled but not yet executed. Calling
		this method clears all pending operations and reset the async execution state.
		
		Example:
		
		```
		while True:
		  try:
		    # Step function updates the metric `loss` internally
		    train_step_fn()
		  except tf.errors.OutOfRangeError:
		    tf.experimental.async_clear_error()
		    break
		logging.info('loss = %s', loss.numpy())
		```
	**/
	static public function async_clear_error():Dynamic;
	/**
		Context manager for grouping async operations.
		
		Ops/function calls inside the scope can return before finishing the actual
		execution. When exiting the async scope, a synchronization barrier will be
		automatically added to ensure the completion of all async op and function
		execution, potentially raising exceptions if async execution results in
		an error state.
		
		Users may write the following code to asynchronously invoke `train_step_fn`
		and log the `loss` metric for every `num_steps` steps in a training loop.
		`train_step_fn` internally consumes data using `iterator.get_next()`, and may
		throw OutOfRangeError when running out of data. In the case:
		
		```
		try:
		  with tf.experimental.async_scope():
		    for _ in range(num_steps):
		      # Step function updates the metric `loss` internally
		      train_step_fn()
		except tf.errors.OutOfRangeError:
		  tf.experimental.async_clear_error()
		logging.info('loss = %s', loss.numpy())
		```
		
		Yields:
		  Context manager for grouping async operations.
	**/
	static public function async_scope():Dynamic;
	/**
		Decorator that overrides the default implementation for a TensorFlow API.
		
		The decorated function (known as the "dispatch target") will override the
		default implementation for the API when the API is called with parameters that
		match a specified type signature.  Signatures are specified using dictionaries
		that map parameter names to type annotations.  E.g., in the following example,
		`masked_add` will be called for `tf.add` if both `x` and `y` are
		`MaskedTensor`s:
		
		>>> class MaskedTensor(extension_type.ExtensionType):
		...   values: tf.Tensor
		...   mask: tf.Tensor
		
		>>> @dispatch_for_api(tf.math.add, {'x': MaskedTensor, 'y': MaskedTensor})
		... def masked_add(x, y, name=None):
		...   return MaskedTensor(x.values + y.values, x.mask & y.mask)
		
		>>> mt = tf.add(MaskedTensor([1, 2], [True, False]), MaskedTensor(10, True))
		>>> print(f"values={mt.values.numpy()}, mask={mt.mask.numpy()}")
		values=[11 12], mask=[ True False]
		
		If multiple type signatures are specified, then the dispatch target will be
		called if any of the signatures match.  For example, the following code
		registers `masked_add` to be called if `x` is a `MaskedTensor` *or* `y` is
		a `MaskedTensor`.
		
		>>> @dispatch_for_api(tf.math.add, {'x': MaskedTensor}, {'y':MaskedTensor})
		... def masked_add(x, y):
		...   x_values = x.values if isinstance(x, MaskedTensor) else x
		...   x_mask = x.mask if isinstance(x, MaskedTensor) else True
		...   y_values = y.values if isinstance(y, MaskedTensor) else y
		...   y_mask = y.mask if isinstance(y, MaskedTensor) else True
		...   return MaskedTensor(x_values + y_values, x_mask & y_mask)
		
		The type annotations in type signatures may be type objects (e.g.,
		`MaskedTensor`), `typing.List` values, or `typing.Union` values.   For
		example, the following will register `masked_concat` to be called if `values`
		is a list of `MaskedTensor` values:
		
		>>> @dispatch_for_api(tf.concat, {'values': typing.List[MaskedTensor]})
		... def masked_concat(values, axis):
		...   return MaskedTensor(tf.concat([v.values for v in values], axis),
		...                       tf.concat([v.mask for v in values], axis))
		
		Each type signature must contain at least one subclass of `tf.CompositeTensor`
		(which includes subclasses of `tf.ExtensionType`), and dispatch will only be
		triggered if at least one type-annotated parameter contains a
		`CompositeTensor` value.  This rule avoids invoking dispatch in degenerate
		cases, such as the following examples:
		
		* `@dispatch_for_api(tf.concat, {'values': List[MaskedTensor]})`: Will not
		  dispatch to the decorated dispatch target when the user calls
		  `tf.concat([])`.
		
		* `@dispatch_for_api(tf.add, {'x': Union[MaskedTensor, Tensor], 'y':
		  Union[MaskedTensor, Tensor]})`: Will not dispatch to the decorated dispatch
		  target when the user calls `tf.add(tf.constant(1), tf.constant(2))`.
		
		The dispatch target's signature must match the signature of the API that is
		being overridden.  In particular, parameters must have the same names, and
		must occur in the same order.  The dispatch target may optionally elide the
		"name" parameter, in which case it will be wrapped with a call to
		`tf.name_scope` when appropraite.
		
		Args:
		  api: The TensorFlow API to override.
		  *signatures: Dictionaries mapping parameter names or indices to type
		    annotations, specifying when the dispatch target should be called.  In
		    particular, the dispatch target will be called if any signature matches;
		    and a signature matches if all of the specified parameters have types that
		    match with the indicated type annotations.  If no signatures are
		    specified, then a signature will be read from the dispatch target
		    function's type annotations.
		
		Returns:
		  A decorator that overrides the default implementation for `api`.
		
		#### Registered APIs
		
		The TensorFlow APIs that may be overridden by `@dispatch_for_api` are:
		
		* `tf.__operators__.add(x, y, name=None)`
		* `tf.__operators__.eq(self, other)`
		* `tf.__operators__.getitem(tensor, slice_spec, var=None)`
		* `tf.__operators__.ne(self, other)`
		* `tf.__operators__.ragged_getitem(rt_input, key)`
		* `tf.argsort(values, axis=-1, direction='ASCENDING', stable=False, name=None)`
		* `tf.audio.decode_wav(contents, desired_channels=-1, desired_samples=-1, name=None)`
		* `tf.audio.encode_wav(audio, sample_rate, name=None)`
		* `tf.batch_to_space(input, block_shape, crops, name=None)`
		* `tf.bitcast(input, type, name=None)`
		* `tf.bitwise.bitwise_and(x, y, name=None)`
		* `tf.bitwise.bitwise_or(x, y, name=None)`
		* `tf.bitwise.bitwise_xor(x, y, name=None)`
		* `tf.bitwise.invert(x, name=None)`
		* `tf.bitwise.left_shift(x, y, name=None)`
		* `tf.bitwise.right_shift(x, y, name=None)`
		* `tf.boolean_mask(tensor, mask, axis=None, name='boolean_mask')`
		* `tf.broadcast_dynamic_shape(shape_x, shape_y)`
		* `tf.broadcast_static_shape(shape_x, shape_y)`
		* `tf.broadcast_to(input, shape, name=None)`
		* `tf.case(pred_fn_pairs, default=None, exclusive=False, strict=False, name='case')`
		* `tf.cast(x, dtype, name=None)`
		* `tf.clip_by_global_norm(t_list, clip_norm, use_norm=None, name=None)`
		* `tf.clip_by_norm(t, clip_norm, axes=None, name=None)`
		* `tf.clip_by_value(t, clip_value_min, clip_value_max, name=None)`
		* `tf.compat.v1.Print(input_, data, message=None, first_n=None, summarize=None, name=None)`
		* `tf.compat.v1.arg_max(input, dimension, output_type=tf.int64, name=None)`
		* `tf.compat.v1.arg_min(input, dimension, output_type=tf.int64, name=None)`
		* `tf.compat.v1.batch_gather(params, indices, name=None)`
		* `tf.compat.v1.batch_to_space(input, crops, block_size, name=None, block_shape=None)`
		* `tf.compat.v1.batch_to_space_nd(input, block_shape, crops, name=None)`
		* `tf.compat.v1.boolean_mask(tensor, mask, name='boolean_mask', axis=None)`
		* `tf.compat.v1.case(pred_fn_pairs, default=None, exclusive=False, strict=False, name='case')`
		* `tf.compat.v1.clip_by_average_norm(t, clip_norm, name=None)`
		* `tf.compat.v1.cond(pred, true_fn=None, false_fn=None, strict=False, name=None, fn1=None, fn2=None)`
		* `tf.compat.v1.convert_to_tensor(value, dtype=None, name=None, preferred_dtype=None, dtype_hint=None)`
		* `tf.compat.v1.debugging.assert_all_finite(t=None, msg=None, name=None, x=None, message=None)`
		* `tf.compat.v1.debugging.assert_equal(x, y, data=None, summarize=None, message=None, name=None)`
		* `tf.compat.v1.debugging.assert_greater(x, y, data=None, summarize=None, message=None, name=None)`
		* `tf.compat.v1.debugging.assert_greater_equal(x, y, data=None, summarize=None, message=None, name=None)`
		* `tf.compat.v1.debugging.assert_integer(x, message=None, name=None)`
		* `tf.compat.v1.debugging.assert_less(x, y, data=None, summarize=None, message=None, name=None)`
		* `tf.compat.v1.debugging.assert_less_equal(x, y, data=None, summarize=None, message=None, name=None)`
		* `tf.compat.v1.debugging.assert_near(x, y, rtol=None, atol=None, data=None, summarize=None, message=None, name=None)`
		* `tf.compat.v1.debugging.assert_negative(x, data=None, summarize=None, message=None, name=None)`
		* `tf.compat.v1.debugging.assert_non_negative(x, data=None, summarize=None, message=None, name=None)`
		* `tf.compat.v1.debugging.assert_non_positive(x, data=None, summarize=None, message=None, name=None)`
		* `tf.compat.v1.debugging.assert_none_equal(x, y, data=None, summarize=None, message=None, name=None)`
		* `tf.compat.v1.debugging.assert_positive(x, data=None, summarize=None, message=None, name=None)`
		* `tf.compat.v1.debugging.assert_rank(x, rank, data=None, summarize=None, message=None, name=None)`
		* `tf.compat.v1.debugging.assert_rank_at_least(x, rank, data=None, summarize=None, message=None, name=None)`
		* `tf.compat.v1.debugging.assert_rank_in(x, ranks, data=None, summarize=None, message=None, name=None)`
		* `tf.compat.v1.debugging.assert_scalar(tensor, name=None, message=None)`
		* `tf.compat.v1.debugging.assert_shapes(shapes, data=None, summarize=None, message=None, name=None)`
		* `tf.compat.v1.debugging.assert_type(tensor, tf_type, message=None, name=None)`
		* `tf.compat.v1.decode_raw(input_bytes=None, out_type=None, little_endian=True, name=None, bytes=None)`
		* `tf.compat.v1.div(x, y, name=None)`
		* `tf.compat.v1.expand_dims(input, axis=None, name=None, dim=None)`
		* `tf.compat.v1.floor_div(x, y, name=None)`
		* `tf.compat.v1.foldl(fn, elems, initializer=None, parallel_iterations=10, back_prop=True, swap_memory=False, name=None)`
		* `tf.compat.v1.foldr(fn, elems, initializer=None, parallel_iterations=10, back_prop=True, swap_memory=False, name=None)`
		* `tf.compat.v1.gather(params, indices, validate_indices=None, name=None, axis=None, batch_dims=0)`
		* `tf.compat.v1.gather_nd(params, indices, name=None, batch_dims=0)`
		* `tf.compat.v1.image.crop_and_resize(image, boxes, box_ind=None, crop_size=None, method='bilinear', extrapolation_value=0, name=None, box_indices=None)`
		* `tf.compat.v1.image.draw_bounding_boxes(images, boxes, name=None, colors=None)`
		* `tf.compat.v1.image.extract_glimpse(input, size, offsets, centered=True, normalized=True, uniform_noise=True, name=None)`
		* `tf.compat.v1.image.extract_image_patches(images, ksizes=None, strides=None, rates=None, padding=None, name=None, sizes=None)`
		* `tf.compat.v1.image.resize_area(images, size, align_corners=False, name=None)`
		* `tf.compat.v1.image.resize_bicubic(images, size, align_corners=False, name=None, half_pixel_centers=False)`
		* `tf.compat.v1.image.resize_bilinear(images, size, align_corners=False, name=None, half_pixel_centers=False)`
		* `tf.compat.v1.image.resize_image_with_pad(image, target_height, target_width, method=0, align_corners=False)`
		* `tf.compat.v1.image.resize_images(images, size, method=0, align_corners=False, preserve_aspect_ratio=False, name=None)`
		* `tf.compat.v1.image.resize_nearest_neighbor(images, size, align_corners=False, name=None, half_pixel_centers=False)`
		* `tf.compat.v1.image.sample_distorted_bounding_box(image_size, bounding_boxes, seed=None, seed2=None, min_object_covered=0.1, aspect_ratio_range=None, area_range=None, max_attempts=None, use_image_if_no_bounding_boxes=None, name=None)`
		* `tf.compat.v1.io.decode_csv(records, record_defaults, field_delim=',', use_quote_delim=True, name=None, na_value='', select_cols=None)`
		* `tf.compat.v1.io.parse_example(serialized, features, name=None, example_names=None)`
		* `tf.compat.v1.io.parse_single_example(serialized, features, name=None, example_names=None)`
		* `tf.compat.v1.io.serialize_many_sparse(sp_input, name=None, out_type=tf.string)`
		* `tf.compat.v1.io.serialize_sparse(sp_input, name=None, out_type=tf.string)`
		* `tf.compat.v1.losses.absolute_difference(labels, predictions, weights=1.0, scope=None, loss_collection='losses', reduction='weighted_sum_by_nonzero_weights')`
		* `tf.compat.v1.losses.compute_weighted_loss(losses, weights=1.0, scope=None, loss_collection='losses', reduction='weighted_sum_by_nonzero_weights')`
		* `tf.compat.v1.losses.cosine_distance(labels, predictions, axis=None, weights=1.0, scope=None, loss_collection='losses', reduction='weighted_sum_by_nonzero_weights', dim=None)`
		* `tf.compat.v1.losses.hinge_loss(labels, logits, weights=1.0, scope=None, loss_collection='losses', reduction='weighted_sum_by_nonzero_weights')`
		* `tf.compat.v1.losses.huber_loss(labels, predictions, weights=1.0, delta=1.0, scope=None, loss_collection='losses', reduction='weighted_sum_by_nonzero_weights')`
		* `tf.compat.v1.losses.log_loss(labels, predictions, weights=1.0, epsilon=1e-07, scope=None, loss_collection='losses', reduction='weighted_sum_by_nonzero_weights')`
		* `tf.compat.v1.losses.mean_pairwise_squared_error(labels, predictions, weights=1.0, scope=None, loss_collection='losses')`
		* `tf.compat.v1.losses.mean_squared_error(labels, predictions, weights=1.0, scope=None, loss_collection='losses', reduction='weighted_sum_by_nonzero_weights')`
		* `tf.compat.v1.losses.sigmoid_cross_entropy(multi_class_labels, logits, weights=1.0, label_smoothing=0, scope=None, loss_collection='losses', reduction='weighted_sum_by_nonzero_weights')`
		* `tf.compat.v1.losses.softmax_cross_entropy(onehot_labels, logits, weights=1.0, label_smoothing=0, scope=None, loss_collection='losses', reduction='weighted_sum_by_nonzero_weights')`
		* `tf.compat.v1.losses.sparse_softmax_cross_entropy(labels, logits, weights=1.0, scope=None, loss_collection='losses', reduction='weighted_sum_by_nonzero_weights')`
		* `tf.compat.v1.math.argmax(input, axis=None, name=None, dimension=None, output_type=tf.int64)`
		* `tf.compat.v1.math.argmin(input, axis=None, name=None, dimension=None, output_type=tf.int64)`
		* `tf.compat.v1.math.confusion_matrix(labels, predictions, num_classes=None, dtype=tf.int32, name=None, weights=None)`
		* `tf.compat.v1.math.count_nonzero(input_tensor=None, axis=None, keepdims=None, dtype=tf.int64, name=None, reduction_indices=None, keep_dims=None, input=None)`
		* `tf.compat.v1.math.in_top_k(predictions, targets, k, name=None)`
		* `tf.compat.v1.math.reduce_all(input_tensor, axis=None, keepdims=None, name=None, reduction_indices=None, keep_dims=None)`
		* `tf.compat.v1.math.reduce_any(input_tensor, axis=None, keepdims=None, name=None, reduction_indices=None, keep_dims=None)`
		* `tf.compat.v1.math.reduce_logsumexp(input_tensor, axis=None, keepdims=None, name=None, reduction_indices=None, keep_dims=None)`
		* `tf.compat.v1.math.reduce_max(input_tensor, axis=None, keepdims=None, name=None, reduction_indices=None, keep_dims=None)`
		* `tf.compat.v1.math.reduce_mean(input_tensor, axis=None, keepdims=None, name=None, reduction_indices=None, keep_dims=None)`
		* `tf.compat.v1.math.reduce_min(input_tensor, axis=None, keepdims=None, name=None, reduction_indices=None, keep_dims=None)`
		* `tf.compat.v1.math.reduce_prod(input_tensor, axis=None, keepdims=None, name=None, reduction_indices=None, keep_dims=None)`
		* `tf.compat.v1.math.reduce_sum(input_tensor, axis=None, keepdims=None, name=None, reduction_indices=None, keep_dims=None)`
		* `tf.compat.v1.math.scalar_mul(scalar, x, name=None)`
		* `tf.compat.v1.nn.avg_pool(value, ksize, strides, padding, data_format='NHWC', name=None, input=None)`
		* `tf.compat.v1.nn.batch_norm_with_global_normalization(t=None, m=None, v=None, beta=None, gamma=None, variance_epsilon=None, scale_after_normalization=None, name=None, input=None, mean=None, variance=None)`
		* `tf.compat.v1.nn.bidirectional_dynamic_rnn(cell_fw, cell_bw, inputs, sequence_length=None, initial_state_fw=None, initial_state_bw=None, dtype=None, parallel_iterations=None, swap_memory=False, time_major=False, scope=None)`
		* `tf.compat.v1.nn.conv1d(value=None, filters=None, stride=None, padding=None, use_cudnn_on_gpu=None, data_format=None, name=None, input=None, dilations=None)`
		* `tf.compat.v1.nn.conv2d(input, filter=None, strides=None, padding=None, use_cudnn_on_gpu=True, data_format='NHWC', dilations=[1, 1, 1, 1], name=None, filters=None)`
		* `tf.compat.v1.nn.conv2d_backprop_filter(input, filter_sizes, out_backprop, strides, padding, use_cudnn_on_gpu=True, data_format='NHWC', dilations=[1, 1, 1, 1], name=None)`
		* `tf.compat.v1.nn.conv2d_backprop_input(input_sizes, filter=None, out_backprop=None, strides=None, padding=None, use_cudnn_on_gpu=True, data_format='NHWC', dilations=[1, 1, 1, 1], name=None, filters=None)`
		* `tf.compat.v1.nn.conv2d_transpose(value=None, filter=None, output_shape=None, strides=None, padding='SAME', data_format='NHWC', name=None, input=None, filters=None, dilations=None)`
		* `tf.compat.v1.nn.conv3d(input, filter=None, strides=None, padding=None, data_format='NDHWC', dilations=[1, 1, 1, 1, 1], name=None, filters=None)`
		* `tf.compat.v1.nn.conv3d_backprop_filter(input, filter_sizes, out_backprop, strides, padding, data_format='NDHWC', dilations=[1, 1, 1, 1, 1], name=None)`
		* `tf.compat.v1.nn.conv3d_transpose(value, filter=None, output_shape=None, strides=None, padding='SAME', data_format='NDHWC', name=None, input=None, filters=None, dilations=None)`
		* `tf.compat.v1.nn.convolution(input, filter, padding, strides=None, dilation_rate=None, name=None, data_format=None, filters=None, dilations=None)`
		* `tf.compat.v1.nn.crelu(features, name=None, axis=-1)`
		* `tf.compat.v1.nn.ctc_beam_search_decoder(inputs, sequence_length, beam_width=100, top_paths=1, merge_repeated=True)`
		* `tf.compat.v1.nn.ctc_loss(labels, inputs=None, sequence_length=None, preprocess_collapse_repeated=False, ctc_merge_repeated=True, ignore_longer_outputs_than_inputs=False, time_major=True, logits=None)`
		* `tf.compat.v1.nn.ctc_loss_v2(labels, logits, label_length, logit_length, logits_time_major=True, unique=None, blank_index=None, name=None)`
		* `tf.compat.v1.nn.depth_to_space(input, block_size, name=None, data_format='NHWC')`
		* `tf.compat.v1.nn.depthwise_conv2d(input, filter, strides, padding, rate=None, name=None, data_format=None, dilations=None)`
		* `tf.compat.v1.nn.depthwise_conv2d_native(input, filter, strides, padding, data_format='NHWC', dilations=[1, 1, 1, 1], name=None)`
		* `tf.compat.v1.nn.dilation2d(input, filter=None, strides=None, rates=None, padding=None, name=None, filters=None, dilations=None)`
		* `tf.compat.v1.nn.dropout(x, keep_prob=None, noise_shape=None, seed=None, name=None, rate=None)`
		* `tf.compat.v1.nn.dynamic_rnn(cell, inputs, sequence_length=None, initial_state=None, dtype=None, parallel_iterations=None, swap_memory=False, time_major=False, scope=None)`
		* `tf.compat.v1.nn.embedding_lookup(params, ids, partition_strategy='mod', name=None, validate_indices=True, max_norm=None)`
		* `tf.compat.v1.nn.embedding_lookup_sparse(params, sp_ids, sp_weights, partition_strategy='mod', name=None, combiner=None, max_norm=None)`
		* `tf.compat.v1.nn.erosion2d(value, kernel, strides, rates, padding, name=None)`
		* `tf.compat.v1.nn.fractional_avg_pool(value, pooling_ratio, pseudo_random=False, overlapping=False, deterministic=False, seed=0, seed2=0, name=None)`
		* `tf.compat.v1.nn.fractional_max_pool(value, pooling_ratio, pseudo_random=False, overlapping=False, deterministic=False, seed=0, seed2=0, name=None)`
		* `tf.compat.v1.nn.fused_batch_norm(x, scale, offset, mean=None, variance=None, epsilon=0.001, data_format='NHWC', is_training=True, name=None, exponential_avg_factor=1.0)`
		* `tf.compat.v1.nn.log_softmax(logits, axis=None, name=None, dim=None)`
		* `tf.compat.v1.nn.max_pool(value, ksize, strides, padding, data_format='NHWC', name=None, input=None)`
		* `tf.compat.v1.nn.max_pool_with_argmax(input, ksize, strides, padding, data_format='NHWC', Targmax=None, name=None, output_dtype=None, include_batch_in_index=False)`
		* `tf.compat.v1.nn.moments(x, axes, shift=None, name=None, keep_dims=None, keepdims=None)`
		* `tf.compat.v1.nn.nce_loss(weights, biases, labels, inputs, num_sampled, num_classes, num_true=1, sampled_values=None, remove_accidental_hits=False, partition_strategy='mod', name='nce_loss')`
		* `tf.compat.v1.nn.pool(input, window_shape, pooling_type, padding, dilation_rate=None, strides=None, name=None, data_format=None, dilations=None)`
		* `tf.compat.v1.nn.quantized_avg_pool(input, min_input, max_input, ksize, strides, padding, name=None)`
		* `tf.compat.v1.nn.quantized_conv2d(input, filter, min_input, max_input, min_filter, max_filter, strides, padding, out_type=tf.qint32, dilations=[1, 1, 1, 1], name=None)`
		* `tf.compat.v1.nn.quantized_max_pool(input, min_input, max_input, ksize, strides, padding, name=None)`
		* `tf.compat.v1.nn.quantized_relu_x(features, max_value, min_features, max_features, out_type=tf.quint8, name=None)`
		* `tf.compat.v1.nn.raw_rnn(cell, loop_fn, parallel_iterations=None, swap_memory=False, scope=None)`
		* `tf.compat.v1.nn.relu_layer(x, weights, biases, name=None)`
		* `tf.compat.v1.nn.safe_embedding_lookup_sparse(embedding_weights, sparse_ids, sparse_weights=None, combiner='mean', default_id=None, name=None, partition_strategy='div', max_norm=None)`
		* `tf.compat.v1.nn.sampled_softmax_loss(weights, biases, labels, inputs, num_sampled, num_classes, num_true=1, sampled_values=None, remove_accidental_hits=True, partition_strategy='mod', name='sampled_softmax_loss', seed=None)`
		* `tf.compat.v1.nn.separable_conv2d(input, depthwise_filter, pointwise_filter, strides, padding, rate=None, name=None, data_format=None, dilations=None)`
		* `tf.compat.v1.nn.sigmoid_cross_entropy_with_logits(_sentinel=None, labels=None, logits=None, name=None)`
		* `tf.compat.v1.nn.softmax(logits, axis=None, name=None, dim=None)`
		* `tf.compat.v1.nn.softmax_cross_entropy_with_logits(_sentinel=None, labels=None, logits=None, dim=-1, name=None, axis=None)`
		* `tf.compat.v1.nn.softmax_cross_entropy_with_logits_v2(labels, logits, axis=None, name=None, dim=None)`
		* `tf.compat.v1.nn.space_to_batch(input, paddings, block_size=None, name=None, block_shape=None)`
		* `tf.compat.v1.nn.space_to_depth(input, block_size, name=None, data_format='NHWC')`
		* `tf.compat.v1.nn.sparse_softmax_cross_entropy_with_logits(_sentinel=None, labels=None, logits=None, name=None)`
		* `tf.compat.v1.nn.static_bidirectional_rnn(cell_fw, cell_bw, inputs, initial_state_fw=None, initial_state_bw=None, dtype=None, sequence_length=None, scope=None)`
		* `tf.compat.v1.nn.static_rnn(cell, inputs, initial_state=None, dtype=None, sequence_length=None, scope=None)`
		* `tf.compat.v1.nn.static_state_saving_rnn(cell, inputs, state_saver, state_name, sequence_length=None, scope=None)`
		* `tf.compat.v1.nn.sufficient_statistics(x, axes, shift=None, keep_dims=None, name=None, keepdims=None)`
		* `tf.compat.v1.nn.weighted_cross_entropy_with_logits(labels=None, logits=None, pos_weight=None, name=None, targets=None)`
		* `tf.compat.v1.nn.weighted_moments(x, axes, frequency_weights, name=None, keep_dims=None, keepdims=None)`
		* `tf.compat.v1.nn.xw_plus_b(x, weights, biases, name=None)`
		* `tf.compat.v1.norm(tensor, ord='euclidean', axis=None, keepdims=None, name=None, keep_dims=None)`
		* `tf.compat.v1.ones_like(tensor, dtype=None, name=None, optimize=True)`
		* `tf.compat.v1.pad(tensor, paddings, mode='CONSTANT', name=None, constant_values=0)`
		* `tf.compat.v1.py_func(func, inp, Tout, stateful=True, name=None)`
		* `tf.compat.v1.quantize_v2(input, min_range, max_range, T, mode='MIN_COMBINED', name=None, round_mode='HALF_AWAY_FROM_ZERO', narrow_range=False, axis=None, ensure_minimum_range=0.01)`
		* `tf.compat.v1.ragged.constant_value(pylist, dtype=None, ragged_rank=None, inner_shape=None, row_splits_dtype='int64')`
		* `tf.compat.v1.ragged.placeholder(dtype, ragged_rank, value_shape=None, name=None)`
		* `tf.compat.v1.random.multinomial(logits, num_samples, seed=None, name=None, output_dtype=None)`
		* `tf.compat.v1.random.poisson(lam, shape, dtype=tf.float32, seed=None, name=None)`
		* `tf.compat.v1.random.stateless_multinomial(logits, num_samples, seed, output_dtype=tf.int64, name=None)`
		* `tf.compat.v1.scan(fn, elems, initializer=None, parallel_iterations=10, back_prop=True, swap_memory=False, infer_shape=True, reverse=False, name=None)`
		* `tf.compat.v1.setdiff1d(x, y, index_dtype=tf.int32, name=None)`
		* `tf.compat.v1.shape(input, name=None, out_type=tf.int32)`
		* `tf.compat.v1.size(input, name=None, out_type=tf.int32)`
		* `tf.compat.v1.sparse_to_dense(sparse_indices, output_shape, sparse_values, default_value=0, validate_indices=True, name=None)`
		* `tf.compat.v1.squeeze(input, axis=None, name=None, squeeze_dims=None)`
		* `tf.compat.v1.string_split(source, sep=None, skip_empty=True, delimiter=None, result_type='SparseTensor', name=None)`
		* `tf.compat.v1.strings.length(input, name=None, unit='BYTE')`
		* `tf.compat.v1.strings.reduce_join(inputs, axis=None, keep_dims=None, separator='', name=None, reduction_indices=None, keepdims=None)`
		* `tf.compat.v1.strings.split(input=None, sep=None, maxsplit=-1, result_type='SparseTensor', source=None, name=None)`
		* `tf.compat.v1.strings.substr(input, pos, len, name=None, unit='BYTE')`
		* `tf.compat.v1.strings.to_hash_bucket(string_tensor=None, num_buckets=None, name=None, input=None)`
		* `tf.compat.v1.strings.to_number(string_tensor=None, out_type=tf.float32, name=None, input=None)`
		* `tf.compat.v1.substr(input, pos, len, name=None, unit='BYTE')`
		* `tf.compat.v1.to_bfloat16(x, name='ToBFloat16')`
		* `tf.compat.v1.to_complex128(x, name='ToComplex128')`
		* `tf.compat.v1.to_complex64(x, name='ToComplex64')`
		* `tf.compat.v1.to_double(x, name='ToDouble')`
		* `tf.compat.v1.to_float(x, name='ToFloat')`
		* `tf.compat.v1.to_int32(x, name='ToInt32')`
		* `tf.compat.v1.to_int64(x, name='ToInt64')`
		* `tf.compat.v1.train.sdca_fprint(input, name=None)`
		* `tf.compat.v1.train.sdca_optimizer(sparse_example_indices, sparse_feature_indices, sparse_feature_values, dense_features, example_weights, example_labels, sparse_indices, sparse_weights, dense_weights, example_state_data, loss_type, l1, l2, num_loss_partitions, num_inner_iterations, adaptative=True, name=None)`
		* `tf.compat.v1.train.sdca_shrink_l1(weights, l1, l2, name=None)`
		* `tf.compat.v1.transpose(a, perm=None, name='transpose', conjugate=False)`
		* `tf.compat.v1.tuple(tensors, name=None, control_inputs=None)`
		* `tf.compat.v1.where(condition, x=None, y=None, name=None)`
		* `tf.compat.v1.zeros_like(tensor, dtype=None, name=None, optimize=True)`
		* `tf.concat(values, axis, name='concat')`
		* `tf.cond(pred, true_fn=None, false_fn=None, name=None)`
		* `tf.convert_to_tensor(value, dtype=None, dtype_hint=None, name=None)`
		* `tf.debugging.Assert(condition, data, summarize=None, name=None)`
		* `tf.debugging.assert_all_finite(x, message, name=None)`
		* `tf.debugging.assert_equal(x, y, message=None, summarize=None, name=None)`
		* `tf.debugging.assert_greater(x, y, message=None, summarize=None, name=None)`
		* `tf.debugging.assert_greater_equal(x, y, message=None, summarize=None, name=None)`
		* `tf.debugging.assert_integer(x, message=None, name=None)`
		* `tf.debugging.assert_less(x, y, message=None, summarize=None, name=None)`
		* `tf.debugging.assert_less_equal(x, y, message=None, summarize=None, name=None)`
		* `tf.debugging.assert_near(x, y, rtol=None, atol=None, message=None, summarize=None, name=None)`
		* `tf.debugging.assert_negative(x, message=None, summarize=None, name=None)`
		* `tf.debugging.assert_non_negative(x, message=None, summarize=None, name=None)`
		* `tf.debugging.assert_non_positive(x, message=None, summarize=None, name=None)`
		* `tf.debugging.assert_none_equal(x, y, summarize=None, message=None, name=None)`
		* `tf.debugging.assert_positive(x, message=None, summarize=None, name=None)`
		* `tf.debugging.assert_proper_iterable(values)`
		* `tf.debugging.assert_rank(x, rank, message=None, name=None)`
		* `tf.debugging.assert_rank_at_least(x, rank, message=None, name=None)`
		* `tf.debugging.assert_rank_in(x, ranks, message=None, name=None)`
		* `tf.debugging.assert_same_float_dtype(tensors=None, dtype=None)`
		* `tf.debugging.assert_scalar(tensor, message=None, name=None)`
		* `tf.debugging.assert_shapes(shapes, data=None, summarize=None, message=None, name=None)`
		* `tf.debugging.assert_type(tensor, tf_type, message=None, name=None)`
		* `tf.debugging.check_numerics(tensor, message, name=None)`
		* `tf.dtypes.complex(real, imag, name=None)`
		* `tf.dtypes.saturate_cast(value, dtype, name=None)`
		* `tf.dynamic_partition(data, partitions, num_partitions, name=None)`
		* `tf.dynamic_stitch(indices, data, name=None)`
		* `tf.edit_distance(hypothesis, truth, normalize=True, name='edit_distance')`
		* `tf.ensure_shape(x, shape, name=None)`
		* `tf.expand_dims(input, axis, name=None)`
		* `tf.extract_volume_patches(input, ksizes, strides, padding, name=None)`
		* `tf.eye(num_rows, num_columns=None, batch_shape=None, dtype=tf.float32, name=None)`
		* `tf.fill(dims, value, name=None)`
		* `tf.fingerprint(data, method='farmhash64', name=None)`
		* `tf.foldl(fn, elems, initializer=None, parallel_iterations=10, back_prop=True, swap_memory=False, name=None)`
		* `tf.foldr(fn, elems, initializer=None, parallel_iterations=10, back_prop=True, swap_memory=False, name=None)`
		* `tf.gather(params, indices, validate_indices=None, axis=None, batch_dims=0, name=None)`
		* `tf.gather_nd(params, indices, batch_dims=0, name=None)`
		* `tf.histogram_fixed_width(values, value_range, nbins=100, dtype=tf.int32, name=None)`
		* `tf.histogram_fixed_width_bins(values, value_range, nbins=100, dtype=tf.int32, name=None)`
		* `tf.identity(input, name=None)`
		* `tf.identity_n(input, name=None)`
		* `tf.image.adjust_brightness(image, delta)`
		* `tf.image.adjust_contrast(images, contrast_factor)`
		* `tf.image.adjust_gamma(image, gamma=1, gain=1)`
		* `tf.image.adjust_hue(image, delta, name=None)`
		* `tf.image.adjust_jpeg_quality(image, jpeg_quality, name=None)`
		* `tf.image.adjust_saturation(image, saturation_factor, name=None)`
		* `tf.image.central_crop(image, central_fraction)`
		* `tf.image.combined_non_max_suppression(boxes, scores, max_output_size_per_class, max_total_size, iou_threshold=0.5, score_threshold=-inf, pad_per_class=False, clip_boxes=True, name=None)`
		* `tf.image.convert_image_dtype(image, dtype, saturate=False, name=None)`
		* `tf.image.crop_and_resize(image, boxes, box_indices, crop_size, method='bilinear', extrapolation_value=0.0, name=None)`
		* `tf.image.crop_to_bounding_box(image, offset_height, offset_width, target_height, target_width)`
		* `tf.image.draw_bounding_boxes(images, boxes, colors, name=None)`
		* `tf.image.extract_glimpse(input, size, offsets, centered=True, normalized=True, noise='uniform', name=None)`
		* `tf.image.extract_patches(images, sizes, strides, rates, padding, name=None)`
		* `tf.image.flip_left_right(image)`
		* `tf.image.flip_up_down(image)`
		* `tf.image.generate_bounding_box_proposals(scores, bbox_deltas, image_info, anchors, nms_threshold=0.7, pre_nms_topn=6000, min_size=16, post_nms_topn=300, name=None)`
		* `tf.image.grayscale_to_rgb(images, name=None)`
		* `tf.image.hsv_to_rgb(images, name=None)`
		* `tf.image.image_gradients(image)`
		* `tf.image.non_max_suppression(boxes, scores, max_output_size, iou_threshold=0.5, score_threshold=-inf, name=None)`
		* `tf.image.non_max_suppression_overlaps(overlaps, scores, max_output_size, overlap_threshold=0.5, score_threshold=-inf, name=None)`
		* `tf.image.non_max_suppression_padded(boxes, scores, max_output_size, iou_threshold=0.5, score_threshold=-inf, pad_to_max_output_size=False, name=None, sorted_input=False, canonicalized_coordinates=False, tile_size=512)`
		* `tf.image.non_max_suppression_with_scores(boxes, scores, max_output_size, iou_threshold=0.5, score_threshold=-inf, soft_nms_sigma=0.0, name=None)`
		* `tf.image.pad_to_bounding_box(image, offset_height, offset_width, target_height, target_width)`
		* `tf.image.per_image_standardization(image)`
		* `tf.image.psnr(a, b, max_val, name=None)`
		* `tf.image.random_brightness(image, max_delta, seed=None)`
		* `tf.image.random_contrast(image, lower, upper, seed=None)`
		* `tf.image.random_crop(value, size, seed=None, name=None)`
		* `tf.image.random_flip_left_right(image, seed=None)`
		* `tf.image.random_flip_up_down(image, seed=None)`
		* `tf.image.random_hue(image, max_delta, seed=None)`
		* `tf.image.random_jpeg_quality(image, min_jpeg_quality, max_jpeg_quality, seed=None)`
		* `tf.image.random_saturation(image, lower, upper, seed=None)`
		* `tf.image.resize(images, size, method='bilinear', preserve_aspect_ratio=False, antialias=False, name=None)`
		* `tf.image.resize_with_crop_or_pad(image, target_height, target_width)`
		* `tf.image.resize_with_pad(image, target_height, target_width, method='bilinear', antialias=False)`
		* `tf.image.rgb_to_grayscale(images, name=None)`
		* `tf.image.rgb_to_hsv(images, name=None)`
		* `tf.image.rgb_to_yiq(images)`
		* `tf.image.rgb_to_yuv(images)`
		* `tf.image.rot90(image, k=1, name=None)`
		* `tf.image.sample_distorted_bounding_box(image_size, bounding_boxes, seed=0, min_object_covered=0.1, aspect_ratio_range=None, area_range=None, max_attempts=None, use_image_if_no_bounding_boxes=None, name=None)`
		* `tf.image.sobel_edges(image)`
		* `tf.image.ssim(img1, img2, max_val, filter_size=11, filter_sigma=1.5, k1=0.01, k2=0.03)`
		* `tf.image.ssim_multiscale(img1, img2, max_val, power_factors=(0.0448, 0.2856, 0.3001, 0.2363, 0.1333), filter_size=11, filter_sigma=1.5, k1=0.01, k2=0.03)`
		* `tf.image.stateless_random_brightness(image, max_delta, seed)`
		* `tf.image.stateless_random_contrast(image, lower, upper, seed)`
		* `tf.image.stateless_random_crop(value, size, seed, name=None)`
		* `tf.image.stateless_random_flip_left_right(image, seed)`
		* `tf.image.stateless_random_flip_up_down(image, seed)`
		* `tf.image.stateless_random_hue(image, max_delta, seed)`
		* `tf.image.stateless_random_jpeg_quality(image, min_jpeg_quality, max_jpeg_quality, seed)`
		* `tf.image.stateless_random_saturation(image, lower, upper, seed=None)`
		* `tf.image.stateless_sample_distorted_bounding_box(image_size, bounding_boxes, seed, min_object_covered=0.1, aspect_ratio_range=None, area_range=None, max_attempts=None, use_image_if_no_bounding_boxes=None, name=None)`
		* `tf.image.total_variation(images, name=None)`
		* `tf.image.transpose(image, name=None)`
		* `tf.image.yiq_to_rgb(images)`
		* `tf.image.yuv_to_rgb(images)`
		* `tf.io.decode_and_crop_jpeg(contents, crop_window, channels=0, ratio=1, fancy_upscaling=True, try_recover_truncated=False, acceptable_fraction=1, dct_method='', name=None)`
		* `tf.io.decode_base64(input, name=None)`
		* `tf.io.decode_bmp(contents, channels=0, name=None)`
		* `tf.io.decode_compressed(bytes, compression_type='', name=None)`
		* `tf.io.decode_csv(records, record_defaults, field_delim=',', use_quote_delim=True, na_value='', select_cols=None, name=None)`
		* `tf.io.decode_gif(contents, name=None)`
		* `tf.io.decode_image(contents, channels=None, dtype=tf.uint8, name=None, expand_animations=True)`
		* `tf.io.decode_jpeg(contents, channels=0, ratio=1, fancy_upscaling=True, try_recover_truncated=False, acceptable_fraction=1, dct_method='', name=None)`
		* `tf.io.decode_png(contents, channels=0, dtype=tf.uint8, name=None)`
		* `tf.io.decode_proto(bytes, message_type, field_names, output_types, descriptor_source='local://', message_format='binary', sanitize=False, name=None)`
		* `tf.io.decode_raw(input_bytes, out_type, little_endian=True, fixed_length=None, name=None)`
		* `tf.io.deserialize_many_sparse(serialized_sparse, dtype, rank=None, name=None)`
		* `tf.io.encode_base64(input, pad=False, name=None)`
		* `tf.io.encode_jpeg(image, format='', quality=95, progressive=False, optimize_size=False, chroma_downsampling=True, density_unit='in', x_density=300, y_density=300, xmp_metadata='', name=None)`
		* `tf.io.encode_png(image, compression=-1, name=None)`
		* `tf.io.encode_proto(sizes, values, field_names, message_type, descriptor_source='local://', name=None)`
		* `tf.io.extract_jpeg_shape(contents, output_type=tf.int32, name=None)`
		* `tf.io.matching_files(pattern, name=None)`
		* `tf.io.parse_example(serialized, features, example_names=None, name=None)`
		* `tf.io.parse_sequence_example(serialized, context_features=None, sequence_features=None, example_names=None, name=None)`
		* `tf.io.parse_single_example(serialized, features, example_names=None, name=None)`
		* `tf.io.parse_single_sequence_example(serialized, context_features=None, sequence_features=None, example_name=None, name=None)`
		* `tf.io.parse_tensor(serialized, out_type, name=None)`
		* `tf.io.serialize_many_sparse(sp_input, out_type=tf.string, name=None)`
		* `tf.io.serialize_sparse(sp_input, out_type=tf.string, name=None)`
		* `tf.io.write_file(filename, contents, name=None)`
		* `tf.linalg.adjoint(matrix, name=None)`
		* `tf.linalg.band_part(input, num_lower, num_upper, name=None)`
		* `tf.linalg.cholesky(input, name=None)`
		* `tf.linalg.cholesky_solve(chol, rhs, name=None)`
		* `tf.linalg.cross(a, b, name=None)`
		* `tf.linalg.det(input, name=None)`
		* `tf.linalg.diag(diagonal, name='diag', k=0, num_rows=-1, num_cols=-1, padding_value=0, align='RIGHT_LEFT')`
		* `tf.linalg.diag_part(input, name='diag_part', k=0, padding_value=0, align='RIGHT_LEFT')`
		* `tf.linalg.eig(tensor, name=None)`
		* `tf.linalg.eigh(tensor, name=None)`
		* `tf.linalg.eigh_tridiagonal(alpha, beta, eigvals_only=True, select='a', select_range=None, tol=None, name=None)`
		* `tf.linalg.eigvals(tensor, name=None)`
		* `tf.linalg.eigvalsh(tensor, name=None)`
		* `tf.linalg.experimental.conjugate_gradient(operator, rhs, preconditioner=None, x=None, tol=1e-05, max_iter=20, name='conjugate_gradient')`
		* `tf.linalg.expm(input, name=None)`
		* `tf.linalg.global_norm(t_list, name=None)`
		* `tf.linalg.inv(input, adjoint=False, name=None)`
		* `tf.linalg.logdet(matrix, name=None)`
		* `tf.linalg.logm(input, name=None)`
		* `tf.linalg.lstsq(matrix, rhs, l2_regularizer=0.0, fast=True, name=None)`
		* `tf.linalg.lu(input, output_idx_type=tf.int32, name=None)`
		* `tf.linalg.lu_matrix_inverse(lower_upper, perm, validate_args=False, name=None)`
		* `tf.linalg.lu_reconstruct(lower_upper, perm, validate_args=False, name=None)`
		* `tf.linalg.lu_solve(lower_upper, perm, rhs, validate_args=False, name=None)`
		* `tf.linalg.matmul(a, b, transpose_a=False, transpose_b=False, adjoint_a=False, adjoint_b=False, a_is_sparse=False, b_is_sparse=False, output_type=None, name=None)`
		* `tf.linalg.matrix_rank(a, tol=None, validate_args=False, name=None)`
		* `tf.linalg.matrix_transpose(a, name='matrix_transpose', conjugate=False)`
		* `tf.linalg.matvec(a, b, transpose_a=False, adjoint_a=False, a_is_sparse=False, b_is_sparse=False, name=None)`
		* `tf.linalg.normalize(tensor, ord='euclidean', axis=None, name=None)`
		* `tf.linalg.pinv(a, rcond=None, validate_args=False, name=None)`
		* `tf.linalg.qr(input, full_matrices=False, name=None)`
		* `tf.linalg.set_diag(input, diagonal, name='set_diag', k=0, align='RIGHT_LEFT')`
		* `tf.linalg.slogdet(input, name=None)`
		* `tf.linalg.solve(matrix, rhs, adjoint=False, name=None)`
		* `tf.linalg.sqrtm(input, name=None)`
		* `tf.linalg.svd(tensor, full_matrices=False, compute_uv=True, name=None)`
		* `tf.linalg.tensor_diag(diagonal, name=None)`
		* `tf.linalg.tensor_diag_part(input, name=None)`
		* `tf.linalg.trace(x, name=None)`
		* `tf.linalg.triangular_solve(matrix, rhs, lower=True, adjoint=False, name=None)`
		* `tf.linalg.tridiagonal_matmul(diagonals, rhs, diagonals_format='compact', name=None)`
		* `tf.linalg.tridiagonal_solve(diagonals, rhs, diagonals_format='compact', transpose_rhs=False, conjugate_rhs=False, name=None, partial_pivoting=True, perturb_singular=False)`
		* `tf.linspace(start, stop, num, name=None, axis=0)`
		* `tf.math.abs(x, name=None)`
		* `tf.math.accumulate_n(inputs, shape=None, tensor_dtype=None, name=None)`
		* `tf.math.acos(x, name=None)`
		* `tf.math.acosh(x, name=None)`
		* `tf.math.add(x, y, name=None)`
		* `tf.math.add_n(inputs, name=None)`
		* `tf.math.angle(input, name=None)`
		* `tf.math.argmax(input, axis=None, output_type=tf.int64, name=None)`
		* `tf.math.argmin(input, axis=None, output_type=tf.int64, name=None)`
		* `tf.math.asin(x, name=None)`
		* `tf.math.asinh(x, name=None)`
		* `tf.math.atan(x, name=None)`
		* `tf.math.atan2(y, x, name=None)`
		* `tf.math.atanh(x, name=None)`
		* `tf.math.bessel_i0(x, name=None)`
		* `tf.math.bessel_i0e(x, name=None)`
		* `tf.math.bessel_i1(x, name=None)`
		* `tf.math.bessel_i1e(x, name=None)`
		* `tf.math.betainc(a, b, x, name=None)`
		* `tf.math.ceil(x, name=None)`
		* `tf.math.confusion_matrix(labels, predictions, num_classes=None, weights=None, dtype=tf.int32, name=None)`
		* `tf.math.conj(x, name=None)`
		* `tf.math.cos(x, name=None)`
		* `tf.math.cosh(x, name=None)`
		* `tf.math.count_nonzero(input, axis=None, keepdims=None, dtype=tf.int64, name=None)`
		* `tf.math.cumprod(x, axis=0, exclusive=False, reverse=False, name=None)`
		* `tf.math.cumsum(x, axis=0, exclusive=False, reverse=False, name=None)`
		* `tf.math.cumulative_logsumexp(x, axis=0, exclusive=False, reverse=False, name=None)`
		* `tf.math.digamma(x, name=None)`
		* `tf.math.divide(x, y, name=None)`
		* `tf.math.divide_no_nan(x, y, name=None)`
		* `tf.math.equal(x, y, name=None)`
		* `tf.math.erf(x, name=None)`
		* `tf.math.erfc(x, name=None)`
		* `tf.math.erfcinv(x, name=None)`
		* `tf.math.erfinv(x, name=None)`
		* `tf.math.exp(x, name=None)`
		* `tf.math.expm1(x, name=None)`
		* `tf.math.floor(x, name=None)`
		* `tf.math.floordiv(x, y, name=None)`
		* `tf.math.floormod(x, y, name=None)`
		* `tf.math.greater(x, y, name=None)`
		* `tf.math.greater_equal(x, y, name=None)`
		* `tf.math.igamma(a, x, name=None)`
		* `tf.math.igammac(a, x, name=None)`
		* `tf.math.imag(input, name=None)`
		* `tf.math.in_top_k(targets, predictions, k, name=None)`
		* `tf.math.invert_permutation(x, name=None)`
		* `tf.math.is_finite(x, name=None)`
		* `tf.math.is_inf(x, name=None)`
		* `tf.math.is_nan(x, name=None)`
		* `tf.math.is_non_decreasing(x, name=None)`
		* `tf.math.is_strictly_increasing(x, name=None)`
		* `tf.math.l2_normalize(x, axis=None, epsilon=1e-12, name=None, dim=None)`
		* `tf.math.lbeta(x, name=None)`
		* `tf.math.less(x, y, name=None)`
		* `tf.math.less_equal(x, y, name=None)`
		* `tf.math.lgamma(x, name=None)`
		* `tf.math.log(x, name=None)`
		* `tf.math.log1p(x, name=None)`
		* `tf.math.log_sigmoid(x, name=None)`
		* `tf.math.logical_and(x, y, name=None)`
		* `tf.math.logical_not(x, name=None)`
		* `tf.math.logical_or(x, y, name=None)`
		* `tf.math.logical_xor(x, y, name='LogicalXor')`
		* `tf.math.maximum(x, y, name=None)`
		* `tf.math.minimum(x, y, name=None)`
		* `tf.math.multiply(x, y, name=None)`
		* `tf.math.multiply_no_nan(x, y, name=None)`
		* `tf.math.ndtri(x, name=None)`
		* `tf.math.negative(x, name=None)`
		* `tf.math.nextafter(x1, x2, name=None)`
		* `tf.math.not_equal(x, y, name=None)`
		* `tf.math.polygamma(a, x, name=None)`
		* `tf.math.polyval(coeffs, x, name=None)`
		* `tf.math.pow(x, y, name=None)`
		* `tf.math.real(input, name=None)`
		* `tf.math.reciprocal(x, name=None)`
		* `tf.math.reciprocal_no_nan(x, name=None)`
		* `tf.math.reduce_all(input_tensor, axis=None, keepdims=False, name=None)`
		* `tf.math.reduce_any(input_tensor, axis=None, keepdims=False, name=None)`
		* `tf.math.reduce_euclidean_norm(input_tensor, axis=None, keepdims=False, name=None)`
		* `tf.math.reduce_logsumexp(input_tensor, axis=None, keepdims=False, name=None)`
		* `tf.math.reduce_max(input_tensor, axis=None, keepdims=False, name=None)`
		* `tf.math.reduce_mean(input_tensor, axis=None, keepdims=False, name=None)`
		* `tf.math.reduce_min(input_tensor, axis=None, keepdims=False, name=None)`
		* `tf.math.reduce_prod(input_tensor, axis=None, keepdims=False, name=None)`
		* `tf.math.reduce_std(input_tensor, axis=None, keepdims=False, name=None)`
		* `tf.math.reduce_sum(input_tensor, axis=None, keepdims=False, name=None)`
		* `tf.math.reduce_variance(input_tensor, axis=None, keepdims=False, name=None)`
		* `tf.math.rint(x, name=None)`
		* `tf.math.round(x, name=None)`
		* `tf.math.rsqrt(x, name=None)`
		* `tf.math.scalar_mul(scalar, x, name=None)`
		* `tf.math.segment_max(data, segment_ids, name=None)`
		* `tf.math.segment_mean(data, segment_ids, name=None)`
		* `tf.math.segment_min(data, segment_ids, name=None)`
		* `tf.math.segment_prod(data, segment_ids, name=None)`
		* `tf.math.segment_sum(data, segment_ids, name=None)`
		* `tf.math.sigmoid(x, name=None)`
		* `tf.math.sign(x, name=None)`
		* `tf.math.sin(x, name=None)`
		* `tf.math.sinh(x, name=None)`
		* `tf.math.sobol_sample(dim, num_results, skip=0, dtype=tf.float32, name=None)`
		* `tf.math.softplus(features, name=None)`
		* `tf.math.special.bessel_j0(x, name=None)`
		* `tf.math.special.bessel_j1(x, name=None)`
		* `tf.math.special.bessel_k0(x, name=None)`
		* `tf.math.special.bessel_k0e(x, name=None)`
		* `tf.math.special.bessel_k1(x, name=None)`
		* `tf.math.special.bessel_k1e(x, name=None)`
		* `tf.math.special.bessel_y0(x, name=None)`
		* `tf.math.special.bessel_y1(x, name=None)`
		* `tf.math.special.dawsn(x, name=None)`
		* `tf.math.special.expint(x, name=None)`
		* `tf.math.special.fresnel_cos(x, name=None)`
		* `tf.math.special.fresnel_sin(x, name=None)`
		* `tf.math.special.spence(x, name=None)`
		* `tf.math.sqrt(x, name=None)`
		* `tf.math.square(x, name=None)`
		* `tf.math.squared_difference(x, y, name=None)`
		* `tf.math.subtract(x, y, name=None)`
		* `tf.math.tan(x, name=None)`
		* `tf.math.tanh(x, name=None)`
		* `tf.math.top_k(input, k=1, sorted=True, name=None)`
		* `tf.math.truediv(x, y, name=None)`
		* `tf.math.unsorted_segment_max(data, segment_ids, num_segments, name=None)`
		* `tf.math.unsorted_segment_mean(data, segment_ids, num_segments, name=None)`
		* `tf.math.unsorted_segment_min(data, segment_ids, num_segments, name=None)`
		* `tf.math.unsorted_segment_prod(data, segment_ids, num_segments, name=None)`
		* `tf.math.unsorted_segment_sqrt_n(data, segment_ids, num_segments, name=None)`
		* `tf.math.unsorted_segment_sum(data, segment_ids, num_segments, name=None)`
		* `tf.math.xdivy(x, y, name=None)`
		* `tf.math.xlog1py(x, y, name=None)`
		* `tf.math.xlogy(x, y, name=None)`
		* `tf.math.zero_fraction(value, name=None)`
		* `tf.math.zeta(x, q, name=None)`
		* `tf.nn.atrous_conv2d(value, filters, rate, padding, name=None)`
		* `tf.nn.atrous_conv2d_transpose(value, filters, output_shape, rate, padding, name=None)`
		* `tf.nn.avg_pool(input, ksize, strides, padding, data_format=None, name=None)`
		* `tf.nn.avg_pool1d(input, ksize, strides, padding, data_format='NWC', name=None)`
		* `tf.nn.avg_pool2d(input, ksize, strides, padding, data_format='NHWC', name=None)`
		* `tf.nn.avg_pool3d(input, ksize, strides, padding, data_format='NDHWC', name=None)`
		* `tf.nn.batch_norm_with_global_normalization(input, mean, variance, beta, gamma, variance_epsilon, scale_after_normalization, name=None)`
		* `tf.nn.batch_normalization(x, mean, variance, offset, scale, variance_epsilon, name=None)`
		* `tf.nn.bias_add(value, bias, data_format=None, name=None)`
		* `tf.nn.collapse_repeated(labels, seq_length, name=None)`
		* `tf.nn.compute_accidental_hits(true_classes, sampled_candidates, num_true, seed=None, name=None)`
		* `tf.nn.compute_average_loss(per_example_loss, sample_weight=None, global_batch_size=None)`
		* `tf.nn.conv1d(input, filters, stride, padding, data_format='NWC', dilations=None, name=None)`
		* `tf.nn.conv1d_transpose(input, filters, output_shape, strides, padding='SAME', data_format='NWC', dilations=None, name=None)`
		* `tf.nn.conv2d(input, filters, strides, padding, data_format='NHWC', dilations=None, name=None)`
		* `tf.nn.conv2d_transpose(input, filters, output_shape, strides, padding='SAME', data_format='NHWC', dilations=None, name=None)`
		* `tf.nn.conv3d(input, filters, strides, padding, data_format='NDHWC', dilations=None, name=None)`
		* `tf.nn.conv3d_transpose(input, filters, output_shape, strides, padding='SAME', data_format='NDHWC', dilations=None, name=None)`
		* `tf.nn.conv_transpose(input, filters, output_shape, strides, padding='SAME', data_format=None, dilations=None, name=None)`
		* `tf.nn.convolution(input, filters, strides=None, padding='VALID', data_format=None, dilations=None, name=None)`
		* `tf.nn.crelu(features, axis=-1, name=None)`
		* `tf.nn.ctc_beam_search_decoder(inputs, sequence_length, beam_width=100, top_paths=1)`
		* `tf.nn.ctc_greedy_decoder(inputs, sequence_length, merge_repeated=True, blank_index=None)`
		* `tf.nn.ctc_loss(labels, logits, label_length, logit_length, logits_time_major=True, unique=None, blank_index=None, name=None)`
		* `tf.nn.ctc_unique_labels(labels, name=None)`
		* `tf.nn.depth_to_space(input, block_size, data_format='NHWC', name=None)`
		* `tf.nn.depthwise_conv2d(input, filter, strides, padding, data_format=None, dilations=None, name=None)`
		* `tf.nn.depthwise_conv2d_backprop_filter(input, filter_sizes, out_backprop, strides, padding, data_format='NHWC', dilations=[1, 1, 1, 1], name=None)`
		* `tf.nn.depthwise_conv2d_backprop_input(input_sizes, filter, out_backprop, strides, padding, data_format='NHWC', dilations=[1, 1, 1, 1], name=None)`
		* `tf.nn.dilation2d(input, filters, strides, padding, data_format, dilations, name=None)`
		* `tf.nn.dropout(x, rate, noise_shape=None, seed=None, name=None)`
		* `tf.nn.elu(features, name=None)`
		* `tf.nn.embedding_lookup(params, ids, max_norm=None, name=None)`
		* `tf.nn.embedding_lookup_sparse(params, sp_ids, sp_weights, combiner=None, max_norm=None, name=None)`
		* `tf.nn.erosion2d(value, filters, strides, padding, data_format, dilations, name=None)`
		* `tf.nn.experimental.stateless_dropout(x, rate, seed, rng_alg=None, noise_shape=None, name=None)`
		* `tf.nn.fractional_avg_pool(value, pooling_ratio, pseudo_random=False, overlapping=False, seed=0, name=None)`
		* `tf.nn.fractional_max_pool(value, pooling_ratio, pseudo_random=False, overlapping=False, seed=0, name=None)`
		* `tf.nn.gelu(features, approximate=False, name=None)`
		* `tf.nn.isotonic_regression(inputs, decreasing=True, axis=-1)`
		* `tf.nn.l2_loss(t, name=None)`
		* `tf.nn.leaky_relu(features, alpha=0.2, name=None)`
		* `tf.nn.local_response_normalization(input, depth_radius=5, bias=1, alpha=1, beta=0.5, name=None)`
		* `tf.nn.log_poisson_loss(targets, log_input, compute_full_loss=False, name=None)`
		* `tf.nn.log_softmax(logits, axis=None, name=None)`
		* `tf.nn.max_pool(input, ksize, strides, padding, data_format=None, name=None)`
		* `tf.nn.max_pool1d(input, ksize, strides, padding, data_format='NWC', name=None)`
		* `tf.nn.max_pool2d(input, ksize, strides, padding, data_format='NHWC', name=None)`
		* `tf.nn.max_pool3d(input, ksize, strides, padding, data_format='NDHWC', name=None)`
		* `tf.nn.max_pool_with_argmax(input, ksize, strides, padding, data_format='NHWC', output_dtype=tf.int64, include_batch_in_index=False, name=None)`
		* `tf.nn.moments(x, axes, shift=None, keepdims=False, name=None)`
		* `tf.nn.nce_loss(weights, biases, labels, inputs, num_sampled, num_classes, num_true=1, sampled_values=None, remove_accidental_hits=False, name='nce_loss')`
		* `tf.nn.normalize_moments(counts, mean_ss, variance_ss, shift, name=None)`
		* `tf.nn.pool(input, window_shape, pooling_type, strides=None, padding='VALID', data_format=None, dilations=None, name=None)`
		* `tf.nn.relu(features, name=None)`
		* `tf.nn.relu6(features, name=None)`
		* `tf.nn.safe_embedding_lookup_sparse(embedding_weights, sparse_ids, sparse_weights=None, combiner='mean', default_id=None, max_norm=None, name=None)`
		* `tf.nn.sampled_softmax_loss(weights, biases, labels, inputs, num_sampled, num_classes, num_true=1, sampled_values=None, remove_accidental_hits=True, seed=None, name='sampled_softmax_loss')`
		* `tf.nn.scale_regularization_loss(regularization_loss)`
		* `tf.nn.selu(features, name=None)`
		* `tf.nn.separable_conv2d(input, depthwise_filter, pointwise_filter, strides, padding, data_format=None, dilations=None, name=None)`
		* `tf.nn.sigmoid_cross_entropy_with_logits(labels=None, logits=None, name=None)`
		* `tf.nn.silu(features)`
		* `tf.nn.softmax(logits, axis=None, name=None)`
		* `tf.nn.softmax_cross_entropy_with_logits(labels, logits, axis=-1, name=None)`
		* `tf.nn.softsign(features, name=None)`
		* `tf.nn.space_to_depth(input, block_size, data_format='NHWC', name=None)`
		* `tf.nn.sparse_softmax_cross_entropy_with_logits(labels, logits, name=None)`
		* `tf.nn.sufficient_statistics(x, axes, shift=None, keepdims=False, name=None)`
		* `tf.nn.weighted_cross_entropy_with_logits(labels, logits, pos_weight, name=None)`
		* `tf.nn.weighted_moments(x, axes, frequency_weights, keepdims=False, name=None)`
		* `tf.nn.with_space_to_batch(input, dilation_rate, padding, op, filter_shape=None, spatial_dims=None, data_format=None)`
		* `tf.no_op(name=None)`
		* `tf.norm(tensor, ord='euclidean', axis=None, keepdims=None, name=None)`
		* `tf.numpy_function(func, inp, Tout, name=None)`
		* `tf.one_hot(indices, depth, on_value=None, off_value=None, axis=None, dtype=None, name=None)`
		* `tf.ones(shape, dtype=tf.float32, name=None)`
		* `tf.ones_like(input, dtype=None, name=None)`
		* `tf.pad(tensor, paddings, mode='CONSTANT', constant_values=0, name=None)`
		* `tf.parallel_stack(values, name='parallel_stack')`
		* `tf.py_function(func, inp, Tout, name=None)`
		* `tf.quantization.dequantize(input, min_range, max_range, mode='MIN_COMBINED', name=None, axis=None, narrow_range=False, dtype=tf.float32)`
		* `tf.quantization.fake_quant_with_min_max_args(inputs, min=-6, max=6, num_bits=8, narrow_range=False, name=None)`
		* `tf.quantization.fake_quant_with_min_max_args_gradient(gradients, inputs, min=-6, max=6, num_bits=8, narrow_range=False, name=None)`
		* `tf.quantization.fake_quant_with_min_max_vars(inputs, min, max, num_bits=8, narrow_range=False, name=None)`
		* `tf.quantization.fake_quant_with_min_max_vars_gradient(gradients, inputs, min, max, num_bits=8, narrow_range=False, name=None)`
		* `tf.quantization.fake_quant_with_min_max_vars_per_channel(inputs, min, max, num_bits=8, narrow_range=False, name=None)`
		* `tf.quantization.fake_quant_with_min_max_vars_per_channel_gradient(gradients, inputs, min, max, num_bits=8, narrow_range=False, name=None)`
		* `tf.quantization.quantize(input, min_range, max_range, T, mode='MIN_COMBINED', round_mode='HALF_AWAY_FROM_ZERO', name=None, narrow_range=False, axis=None, ensure_minimum_range=0.01)`
		* `tf.quantization.quantize_and_dequantize(input, input_min, input_max, signed_input=True, num_bits=8, range_given=False, round_mode='HALF_TO_EVEN', name=None, narrow_range=False, axis=None)`
		* `tf.quantization.quantize_and_dequantize_v2(input, input_min, input_max, signed_input=True, num_bits=8, range_given=False, round_mode='HALF_TO_EVEN', name=None, narrow_range=False, axis=None)`
		* `tf.quantization.quantized_concat(concat_dim, values, input_mins, input_maxes, name=None)`
		* `tf.ragged.boolean_mask(data, mask, name=None)`
		* `tf.ragged.constant(pylist, dtype=None, ragged_rank=None, inner_shape=None, name=None, row_splits_dtype=tf.int64)`
		* `tf.ragged.cross(inputs, name=None)`
		* `tf.ragged.cross_hashed(inputs, num_buckets=0, hash_key=None, name=None)`
		* `tf.ragged.range(starts, limits=None, deltas=1, dtype=None, name=None, row_splits_dtype=tf.int64)`
		* `tf.ragged.row_splits_to_segment_ids(splits, name=None, out_type=None)`
		* `tf.ragged.segment_ids_to_row_splits(segment_ids, num_segments=None, out_type=None, name=None)`
		* `tf.ragged.stack(values: List[Union[tensorflow.python.ops.ragged.ragged_tensor.RaggedTensor, tensorflow.python.ops.ragged.ragged_tensor_value.RaggedTensorValue, tensorflow.python.types.core.Tensor, tensorflow.python.types.core.TensorProtocol, int, float, bool, str, bytes, complex, tuple, list, numpy.ndarray, numpy.generic]], axis=0, name=None)`
		* `tf.ragged.stack_dynamic_partitions(data, partitions, num_partitions, name=None)`
		* `tf.random.categorical(logits, num_samples, dtype=None, seed=None, name=None)`
		* `tf.random.experimental.stateless_fold_in(seed, data, alg='auto_select')`
		* `tf.random.experimental.stateless_split(seed, num=2, alg='auto_select')`
		* `tf.random.fixed_unigram_candidate_sampler(true_classes, num_true, num_sampled, unique, range_max, vocab_file='', distortion=1.0, num_reserved_ids=0, num_shards=1, shard=0, unigrams=(), seed=None, name=None)`
		* `tf.random.gamma(shape, alpha, beta=None, dtype=tf.float32, seed=None, name=None)`
		* `tf.random.learned_unigram_candidate_sampler(true_classes, num_true, num_sampled, unique, range_max, seed=None, name=None)`
		* `tf.random.log_uniform_candidate_sampler(true_classes, num_true, num_sampled, unique, range_max, seed=None, name=None)`
		* `tf.random.normal(shape, mean=0.0, stddev=1.0, dtype=tf.float32, seed=None, name=None)`
		* `tf.random.poisson(shape, lam, dtype=tf.float32, seed=None, name=None)`
		* `tf.random.shuffle(value, seed=None, name=None)`
		* `tf.random.stateless_binomial(shape, seed, counts, probs, output_dtype=tf.int32, name=None)`
		* `tf.random.stateless_categorical(logits, num_samples, seed, dtype=tf.int64, name=None)`
		* `tf.random.stateless_gamma(shape, seed, alpha, beta=None, dtype=tf.float32, name=None)`
		* `tf.random.stateless_normal(shape, seed, mean=0.0, stddev=1.0, dtype=tf.float32, name=None, alg='auto_select')`
		* `tf.random.stateless_parameterized_truncated_normal(shape, seed, means=0.0, stddevs=1.0, minvals=-2.0, maxvals=2.0, name=None)`
		* `tf.random.stateless_poisson(shape, seed, lam, dtype=tf.int32, name=None)`
		* `tf.random.stateless_truncated_normal(shape, seed, mean=0.0, stddev=1.0, dtype=tf.float32, name=None, alg='auto_select')`
		* `tf.random.stateless_uniform(shape, seed, minval=0, maxval=None, dtype=tf.float32, name=None, alg='auto_select')`
		* `tf.random.truncated_normal(shape, mean=0.0, stddev=1.0, dtype=tf.float32, seed=None, name=None)`
		* `tf.random.uniform(shape, minval=0, maxval=None, dtype=tf.float32, seed=None, name=None)`
		* `tf.random.uniform_candidate_sampler(true_classes, num_true, num_sampled, unique, range_max, seed=None, name=None)`
		* `tf.range(start, limit=None, delta=1, dtype=None, name='range')`
		* `tf.rank(input, name=None)`
		* `tf.realdiv(x, y, name=None)`
		* `tf.repeat(input, repeats, axis=None, name=None)`
		* `tf.reshape(tensor, shape, name=None)`
		* `tf.reverse(tensor, axis, name=None)`
		* `tf.reverse_sequence(input, seq_lengths, seq_axis=None, batch_axis=None, name=None)`
		* `tf.roll(input, shift, axis, name=None)`
		* `tf.scan(fn, elems, initializer=None, parallel_iterations=10, back_prop=True, swap_memory=False, infer_shape=True, reverse=False, name=None)`
		* `tf.scatter_nd(indices, updates, shape, name=None)`
		* `tf.searchsorted(sorted_sequence, values, side='left', out_type=tf.int32, name=None)`
		* `tf.sequence_mask(lengths, maxlen=None, dtype=tf.bool, name=None)`
		* `tf.sets.difference(a, b, aminusb=True, validate_indices=True)`
		* `tf.sets.intersection(a, b, validate_indices=True)`
		* `tf.sets.size(a, validate_indices=True)`
		* `tf.sets.union(a, b, validate_indices=True)`
		* `tf.shape(input, out_type=tf.int32, name=None)`
		* `tf.shape_n(input, out_type=tf.int32, name=None)`
		* `tf.signal.dct(input, type=2, n=None, axis=-1, norm=None, name=None)`
		* `tf.signal.fft(input, name=None)`
		* `tf.signal.fft2d(input, name=None)`
		* `tf.signal.fft3d(input, name=None)`
		* `tf.signal.fftshift(x, axes=None, name=None)`
		* `tf.signal.frame(signal, frame_length, frame_step, pad_end=False, pad_value=0, axis=-1, name=None)`
		* `tf.signal.hamming_window(window_length, periodic=True, dtype=tf.float32, name=None)`
		* `tf.signal.hann_window(window_length, periodic=True, dtype=tf.float32, name=None)`
		* `tf.signal.idct(input, type=2, n=None, axis=-1, norm=None, name=None)`
		* `tf.signal.ifft(input, name=None)`
		* `tf.signal.ifft2d(input, name=None)`
		* `tf.signal.ifft3d(input, name=None)`
		* `tf.signal.ifftshift(x, axes=None, name=None)`
		* `tf.signal.inverse_mdct(mdcts, window_fn=<function vorbis_window at 0x7fa0254c4b80>, norm=None, name=None)`
		* `tf.signal.inverse_stft(stfts, frame_length, frame_step, fft_length=None, window_fn=<function hann_window at 0x7fa0254c4d30>, name=None)`
		* `tf.signal.inverse_stft_window_fn(frame_step, forward_window_fn=<function hann_window at 0x7fa0254c4d30>, name=None)`
		* `tf.signal.irfft(input_tensor, fft_length=None, name=None)`
		* `tf.signal.irfft2d(input_tensor, fft_length=None, name=None)`
		* `tf.signal.irfft3d(input_tensor, fft_length=None, name=None)`
		* `tf.signal.kaiser_bessel_derived_window(window_length, beta=12.0, dtype=tf.float32, name=None)`
		* `tf.signal.kaiser_window(window_length, beta=12.0, dtype=tf.float32, name=None)`
		* `tf.signal.linear_to_mel_weight_matrix(num_mel_bins=20, num_spectrogram_bins=129, sample_rate=8000, lower_edge_hertz=125.0, upper_edge_hertz=3800.0, dtype=tf.float32, name=None)`
		* `tf.signal.mdct(signals, frame_length, window_fn=<function vorbis_window at 0x7fa0254c4b80>, pad_end=False, norm=None, name=None)`
		* `tf.signal.mfccs_from_log_mel_spectrograms(log_mel_spectrograms, name=None)`
		* `tf.signal.overlap_and_add(signal, frame_step, name=None)`
		* `tf.signal.rfft(input_tensor, fft_length=None, name=None)`
		* `tf.signal.rfft2d(input_tensor, fft_length=None, name=None)`
		* `tf.signal.rfft3d(input_tensor, fft_length=None, name=None)`
		* `tf.signal.stft(signals, frame_length, frame_step, fft_length=None, window_fn=<function hann_window at 0x7fa0254c4d30>, pad_end=False, name=None)`
		* `tf.signal.vorbis_window(window_length, dtype=tf.float32, name=None)`
		* `tf.size(input, out_type=tf.int32, name=None)`
		* `tf.slice(input_, begin, size, name=None)`
		* `tf.sort(values, axis=-1, direction='ASCENDING', name=None)`
		* `tf.space_to_batch(input, block_shape, paddings, name=None)`
		* `tf.space_to_batch_nd(input, block_shape, paddings, name=None)`
		* `tf.split(value, num_or_size_splits, axis=0, num=None, name='split')`
		* `tf.squeeze(input, axis=None, name=None)`
		* `tf.stack(values, axis=0, name='stack')`
		* `tf.stop_gradient(input, name=None)`
		* `tf.strided_slice(input_, begin, end, strides=None, begin_mask=0, end_mask=0, ellipsis_mask=0, new_axis_mask=0, shrink_axis_mask=0, var=None, name=None)`
		* `tf.strings.as_string(input, precision=-1, scientific=False, shortest=False, width=-1, fill='', name=None)`
		* `tf.strings.bytes_split(input, name=None)`
		* `tf.strings.format(template, inputs, placeholder='{}', summarize=3, name=None)`
		* `tf.strings.join(inputs, separator='', name=None)`
		* `tf.strings.length(input, unit='BYTE', name=None)`
		* `tf.strings.lower(input, encoding='', name=None)`
		* `tf.strings.ngrams(data, ngram_width, separator=' ', pad_values=None, padding_width=None, preserve_short_sequences=False, name=None)`
		* `tf.strings.reduce_join(inputs, axis=None, keepdims=False, separator='', name=None)`
		* `tf.strings.regex_full_match(input, pattern, name=None)`
		* `tf.strings.regex_replace(input, pattern, rewrite, replace_global=True, name=None)`
		* `tf.strings.split(input, sep=None, maxsplit=-1, name=None)`
		* `tf.strings.strip(input, name=None)`
		* `tf.strings.substr(input, pos, len, unit='BYTE', name=None)`
		* `tf.strings.to_hash_bucket(input, num_buckets, name=None)`
		* `tf.strings.to_hash_bucket_fast(input, num_buckets, name=None)`
		* `tf.strings.to_hash_bucket_strong(input, num_buckets, key, name=None)`
		* `tf.strings.to_number(input, out_type=tf.float32, name=None)`
		* `tf.strings.unicode_decode(input, input_encoding, errors='replace', replacement_char=65533, replace_control_characters=False, name=None)`
		* `tf.strings.unicode_decode_with_offsets(input, input_encoding, errors='replace', replacement_char=65533, replace_control_characters=False, name=None)`
		* `tf.strings.unicode_encode(input, output_encoding, errors='replace', replacement_char=65533, name=None)`
		* `tf.strings.unicode_script(input, name=None)`
		* `tf.strings.unicode_split(input, input_encoding, errors='replace', replacement_char=65533, name=None)`
		* `tf.strings.unicode_split_with_offsets(input, input_encoding, errors='replace', replacement_char=65533, name=None)`
		* `tf.strings.unicode_transcode(input, input_encoding, output_encoding, errors='replace', replacement_char=65533, replace_control_characters=False, name=None)`
		* `tf.strings.unsorted_segment_join(inputs, segment_ids, num_segments, separator='', name=None)`
		* `tf.strings.upper(input, encoding='', name=None)`
		* `tf.tensor_scatter_nd_add(tensor, indices, updates, name=None)`
		* `tf.tensor_scatter_nd_max(tensor, indices, updates, name=None)`
		* `tf.tensor_scatter_nd_min(tensor, indices, updates, name=None)`
		* `tf.tensor_scatter_nd_sub(tensor, indices, updates, name=None)`
		* `tf.tensor_scatter_nd_update(tensor, indices, updates, name=None)`
		* `tf.tensordot(a, b, axes, name=None)`
		* `tf.tile(input, multiples, name=None)`
		* `tf.timestamp(name=None)`
		* `tf.transpose(a, perm=None, conjugate=False, name='transpose')`
		* `tf.truncatediv(x, y, name=None)`
		* `tf.truncatemod(x, y, name=None)`
		* `tf.tuple(tensors, control_inputs=None, name=None)`
		* `tf.unique(x, out_idx=tf.int32, name=None)`
		* `tf.unique_with_counts(x, out_idx=tf.int32, name=None)`
		* `tf.unravel_index(indices, dims, name=None)`
		* `tf.unstack(value, num=None, axis=0, name='unstack')`
		* `tf.where(condition, x=None, y=None, name=None)`
		* `tf.xla_all_reduce(input, group_assignment, reduce_op, name=None)`
		* `tf.xla_broadcast_helper(lhs, rhs, broadcast_dims, name=None)`
		* `tf.xla_cluster_output(input, name=None)`
		* `tf.xla_conv(lhs, rhs, window_strides, padding, lhs_dilation, rhs_dilation, feature_group_count, dimension_numbers, precision_config, name=None)`
		* `tf.xla_conv_v2(lhs, rhs, window_strides, padding, lhs_dilation, rhs_dilation, feature_group_count, dimension_numbers, precision_config, preferred_element_type, name=None)`
		* `tf.xla_dequantize(input, min_range, max_range, mode, transpose_output, name=None)`
		* `tf.xla_dot(lhs, rhs, dimension_numbers, precision_config, name=None)`
		* `tf.xla_dot_v2(lhs, rhs, dimension_numbers, precision_config, preferred_element_type, name=None)`
		* `tf.xla_dynamic_slice(input, start_indices, size_indices, name=None)`
		* `tf.xla_dynamic_update_slice(input, update, indices, name=None)`
		* `tf.xla_einsum(a, b, equation, name=None)`
		* `tf.xla_gather(operand, start_indices, slice_sizes, dimension_numbers, indices_are_sorted, name=None)`
		* `tf.xla_if(cond, inputs, then_branch, else_branch, Tout, name=None)`
		* `tf.xla_key_value_sort(keys, values, name=None)`
		* `tf.xla_launch(constants, args, resources, Tresults, function, name=None)`
		* `tf.xla_pad(input, padding_value, padding_low, padding_high, padding_interior, name=None)`
		* `tf.xla_recv(dtype, tensor_name, shape, name=None)`
		* `tf.xla_reduce(input, init_value, dimensions_to_reduce, reducer, name=None)`
		* `tf.xla_reduce_scatter(input, group_assignment, scatter_dimension, reduce_op, name=None)`
		* `tf.xla_reduce_window(input, init_value, window_dimensions, window_strides, base_dilations, window_dilations, padding, computation, name=None)`
		* `tf.xla_remove_dynamic_dimension_size(input, dim_index, name=None)`
		* `tf.xla_replica_id(name=None)`
		* `tf.xla_rng_bit_generator(algorithm, initial_state, shape, dtype=tf.uint64, name=None)`
		* `tf.xla_scatter(operand, scatter_indices, updates, update_computation, dimension_numbers, indices_are_sorted, name=None)`
		* `tf.xla_select_and_scatter(operand, window_dimensions, window_strides, padding, source, init_value, select, scatter, name=None)`
		* `tf.xla_self_adjoint_eig(a, lower, max_iter, epsilon, name=None)`
		* `tf.xla_send(tensor, tensor_name, name=None)`
		* `tf.xla_set_bound(input, bound, name=None)`
		* `tf.xla_set_dynamic_dimension_size(input, dim_index, size, name=None)`
		* `tf.xla_sharding(input, sharding='', unspecified_dims=[], name=None)`
		* `tf.xla_sort(input, name=None)`
		* `tf.xla_spmd_full_to_shard_shape(input, manual_sharding, dim=-1, unspecified_dims=[], name=None)`
		* `tf.xla_spmd_shard_to_full_shape(input, manual_sharding, full_shape, dim=-1, unspecified_dims=[], name=None)`
		* `tf.xla_svd(a, max_iter, epsilon, precision_config, name=None)`
		* `tf.xla_variadic_reduce(input, init_value, dimensions_to_reduce, reducer, name=None)`
		* `tf.xla_variadic_reduce_v2(inputs, init_values, dimensions_to_reduce, reducer, name=None)`
		* `tf.xla_variadic_sort(inputs, dimension, comparator, is_stable, name=None)`
		* `tf.xla_while(input, cond, body, name=None)`
		* `tf.zeros(shape, dtype=tf.float32, name=None)`
		* `tf.zeros_like(input, dtype=None, name=None)`
	**/
	static public function dispatch_for_api(api:Dynamic, ?signatures:python.VarArgs<Dynamic>):Dynamic;
	/**
		Decorator to override default implementation for binary elementwise APIs.
		
		The decorated function (known as the "elementwise api handler") overrides
		the default implementation for any binary elementwise API whenever the value
		for the first two arguments (typically named `x` and `y`) match the specified
		type annotations.  The elementwise api handler is called with two arguments:
		
		  `elementwise_api_handler(api_func, x, y)`
		
		Where `x` and `y` are the first two arguments to the elementwise api, and
		`api_func` is a TensorFlow function that takes two parameters and performs the
		elementwise operation (e.g., `tf.add`).
		
		The following example shows how this decorator can be used to update all
		binary elementwise operations to handle a `MaskedTensor` type:
		
		>>> from tensorflow.python.framework import extension_type
		>>> class MaskedTensor(extension_type.ExtensionType):
		...   values: tf.Tensor
		...   mask: tf.Tensor
		>>> @dispatch_for_binary_elementwise_apis(MaskedTensor, MaskedTensor)
		... def binary_elementwise_api_handler(api_func, x, y):
		...   return MaskedTensor(api_func(x.values, y.values), x.mask & y.mask)
		>>> a = MaskedTensor([1, 2, 3, 4, 5], [True, True, True, True, False])
		>>> b = MaskedTensor([2, 4, 6, 8, 0], [True, True, True, False, True])
		>>> c = tf.add(a, b)
		>>> print(f"values={c.values.numpy()}, mask={c.mask.numpy()}")
		values=[ 3 6 9 12 5], mask=[ True True True False False]
		
		Args:
		  x_type: A type annotation indicating when the api handler should be called.
		  y_type: A type annotation indicating when the api handler should be called.
		
		Returns:
		  A decorator.
		
		#### Registered APIs
		
		The binary elementwise APIs are:
		
		* `tf.bitwise.bitwise_and(x, y, name=None)`
		* `tf.bitwise.bitwise_or(x, y, name=None)`
		* `tf.bitwise.bitwise_xor(x, y, name=None)`
		* `tf.bitwise.left_shift(x, y, name=None)`
		* `tf.bitwise.right_shift(x, y, name=None)`
		* `tf.dtypes.complex(real, imag, name=None)`
		* `tf.math.add(x, y, name=None)`
		* `tf.math.atan2(y, x, name=None)`
		* `tf.math.divide(x, y, name=None)`
		* `tf.math.divide_no_nan(x, y, name=None)`
		* `tf.math.equal(x, y, name=None)`
		* `tf.math.floordiv(x, y, name=None)`
		* `tf.math.floormod(x, y, name=None)`
		* `tf.math.greater(x, y, name=None)`
		* `tf.math.greater_equal(x, y, name=None)`
		* `tf.math.less(x, y, name=None)`
		* `tf.math.less_equal(x, y, name=None)`
		* `tf.math.logical_and(x, y, name=None)`
		* `tf.math.logical_or(x, y, name=None)`
		* `tf.math.logical_xor(x, y, name='LogicalXor')`
		* `tf.math.maximum(x, y, name=None)`
		* `tf.math.minimum(x, y, name=None)`
		* `tf.math.multiply(x, y, name=None)`
		* `tf.math.multiply_no_nan(x, y, name=None)`
		* `tf.math.not_equal(x, y, name=None)`
		* `tf.math.pow(x, y, name=None)`
		* `tf.math.squared_difference(x, y, name=None)`
		* `tf.math.subtract(x, y, name=None)`
		* `tf.math.truediv(x, y, name=None)`
		* `tf.realdiv(x, y, name=None)`
		* `tf.truncatediv(x, y, name=None)`
		* `tf.truncatemod(x, y, name=None)`
	**/
	static public function dispatch_for_binary_elementwise_apis(x_type:Dynamic, y_type:Dynamic):Dynamic;
	/**
		Decorator to override default implementation for unary elementwise APIs.
		
		The decorated function (known as the "elementwise api handler") overrides
		the default implementation for any unary elementwise API whenever the value
		for the first argument (typically named `x`) matches the type annotation
		`x_type`. The elementwise api handler is called with two arguments:
		
		  `elementwise_api_handler(api_func, x)`
		
		Where `api_func` is a function that takes a single parameter and performs the
		elementwise operation (e.g., `tf.abs`), and `x` is the first argument to the
		elementwise api.
		
		The following example shows how this decorator can be used to update all
		unary elementwise operations to handle a `MaskedTensor` type:
		
		>>> from tensorflow.python.framework import extension_type
		>>> class MaskedTensor(extension_type.ExtensionType):
		...   values: tf.Tensor
		...   mask: tf.Tensor
		>>> @dispatch_for_unary_elementwise_apis(MaskedTensor)
		... def unary_elementwise_api_handler(api_func, x):
		...   return MaskedTensor(api_func(x.values), x.mask)
		>>> mt = MaskedTensor([1, -2, -3], [True, False, True])
		>>> abs_mt = tf.abs(mt)
		>>> print(f"values={abs_mt.values.numpy()}, mask={abs_mt.mask.numpy()}")
		values=[1 2 3], mask=[ True False True]
		
		For unary elementwise operations that take extra arguments beyond `x`, those
		arguments are *not* passed to the elementwise api handler, but are
		automatically added when `api_func` is called.  E.g., in the following
		example, the `dtype` parameter is not passed to
		`unary_elementwise_api_handler`, but is added by `api_func`.
		
		>>> ones_mt = tf.ones_like(mt, dtype=tf.float32)
		>>> print(f"values={ones_mt.values.numpy()}, mask={ones_mt.mask.numpy()}")
		values=[1.0 1.0 1.0], mask=[ True False True]
		
		Args:
		  x_type: A type annotation indicating when the api handler should be called.
		    See `dispatch_for_api` for a list of supported annotation types.
		
		Returns:
		  A decorator.
		
		#### Registered APIs
		
		The unary elementwise APIs are:
		
		* `tf.bitwise.invert(x, name=None)`
		* `tf.cast(x, dtype, name=None)`
		* `tf.clip_by_value(t, clip_value_min, clip_value_max, name=None)`
		* `tf.compat.v1.ones_like(tensor, dtype=None, name=None, optimize=True)`
		* `tf.compat.v1.strings.length(input, name=None, unit='BYTE')`
		* `tf.compat.v1.strings.substr(input, pos, len, name=None, unit='BYTE')`
		* `tf.compat.v1.strings.to_hash_bucket(string_tensor=None, num_buckets=None, name=None, input=None)`
		* `tf.compat.v1.substr(input, pos, len, name=None, unit='BYTE')`
		* `tf.compat.v1.zeros_like(tensor, dtype=None, name=None, optimize=True)`
		* `tf.debugging.check_numerics(tensor, message, name=None)`
		* `tf.dtypes.saturate_cast(value, dtype, name=None)`
		* `tf.io.decode_base64(input, name=None)`
		* `tf.io.decode_compressed(bytes, compression_type='', name=None)`
		* `tf.io.encode_base64(input, pad=False, name=None)`
		* `tf.math.abs(x, name=None)`
		* `tf.math.acos(x, name=None)`
		* `tf.math.acosh(x, name=None)`
		* `tf.math.angle(input, name=None)`
		* `tf.math.asin(x, name=None)`
		* `tf.math.asinh(x, name=None)`
		* `tf.math.atan(x, name=None)`
		* `tf.math.atanh(x, name=None)`
		* `tf.math.bessel_i0(x, name=None)`
		* `tf.math.bessel_i0e(x, name=None)`
		* `tf.math.bessel_i1(x, name=None)`
		* `tf.math.bessel_i1e(x, name=None)`
		* `tf.math.ceil(x, name=None)`
		* `tf.math.conj(x, name=None)`
		* `tf.math.cos(x, name=None)`
		* `tf.math.cosh(x, name=None)`
		* `tf.math.digamma(x, name=None)`
		* `tf.math.erf(x, name=None)`
		* `tf.math.erfc(x, name=None)`
		* `tf.math.erfcinv(x, name=None)`
		* `tf.math.erfinv(x, name=None)`
		* `tf.math.exp(x, name=None)`
		* `tf.math.expm1(x, name=None)`
		* `tf.math.floor(x, name=None)`
		* `tf.math.imag(input, name=None)`
		* `tf.math.is_finite(x, name=None)`
		* `tf.math.is_inf(x, name=None)`
		* `tf.math.is_nan(x, name=None)`
		* `tf.math.lgamma(x, name=None)`
		* `tf.math.log(x, name=None)`
		* `tf.math.log1p(x, name=None)`
		* `tf.math.log_sigmoid(x, name=None)`
		* `tf.math.logical_not(x, name=None)`
		* `tf.math.ndtri(x, name=None)`
		* `tf.math.negative(x, name=None)`
		* `tf.math.nextafter(x1, x2, name=None)`
		* `tf.math.real(input, name=None)`
		* `tf.math.reciprocal(x, name=None)`
		* `tf.math.reciprocal_no_nan(x, name=None)`
		* `tf.math.rint(x, name=None)`
		* `tf.math.round(x, name=None)`
		* `tf.math.rsqrt(x, name=None)`
		* `tf.math.sigmoid(x, name=None)`
		* `tf.math.sign(x, name=None)`
		* `tf.math.sin(x, name=None)`
		* `tf.math.sinh(x, name=None)`
		* `tf.math.softplus(features, name=None)`
		* `tf.math.special.bessel_j0(x, name=None)`
		* `tf.math.special.bessel_j1(x, name=None)`
		* `tf.math.special.bessel_k0(x, name=None)`
		* `tf.math.special.bessel_k0e(x, name=None)`
		* `tf.math.special.bessel_k1(x, name=None)`
		* `tf.math.special.bessel_k1e(x, name=None)`
		* `tf.math.special.bessel_y0(x, name=None)`
		* `tf.math.special.bessel_y1(x, name=None)`
		* `tf.math.special.dawsn(x, name=None)`
		* `tf.math.special.expint(x, name=None)`
		* `tf.math.special.fresnel_cos(x, name=None)`
		* `tf.math.special.fresnel_sin(x, name=None)`
		* `tf.math.special.spence(x, name=None)`
		* `tf.math.sqrt(x, name=None)`
		* `tf.math.square(x, name=None)`
		* `tf.math.tan(x, name=None)`
		* `tf.math.tanh(x, name=None)`
		* `tf.ones_like(input, dtype=None, name=None)`
		* `tf.strings.as_string(input, precision=-1, scientific=False, shortest=False, width=-1, fill='', name=None)`
		* `tf.strings.length(input, unit='BYTE', name=None)`
		* `tf.strings.regex_full_match(input, pattern, name=None)`
		* `tf.strings.regex_replace(input, pattern, rewrite, replace_global=True, name=None)`
		* `tf.strings.strip(input, name=None)`
		* `tf.strings.substr(input, pos, len, unit='BYTE', name=None)`
		* `tf.strings.to_hash_bucket(input, num_buckets, name=None)`
		* `tf.strings.to_hash_bucket_fast(input, num_buckets, name=None)`
		* `tf.strings.to_hash_bucket_strong(input, num_buckets, key, name=None)`
		* `tf.strings.to_number(input, out_type=tf.float32, name=None)`
		* `tf.strings.unicode_script(input, name=None)`
		* `tf.zeros_like(input, dtype=None, name=None)`
	**/
	static public function dispatch_for_unary_elementwise_apis(x_type:Dynamic):Dynamic;
	/**
		Context manager for setting the executor of eager defined functions.
		
		Eager defined functions are functions decorated by tf.contrib.eager.defun.
		
		Args:
		  executor_type: a string for the name of the executor to be used to execute
		    functions defined by tf.contrib.eager.defun.
		
		Yields:
		  Context manager for setting the executor of eager defined functions.
	**/
	static public function function_executor_type(executor_type:Dynamic):Dynamic;
	/**
		Loads a TensorFlow FileSystem plugin.
		
		Args:
		  plugin_location: Path to the plugin. Relative or absolute filesystem plugin
		    path to a dynamic library file.
		
		Returns:
		  None
		
		Raises:
		  OSError: When the file to be loaded is not found.
		  RuntimeError: when unable to load the library.
	**/
	static public function register_filesystem_plugin(plugin_location:Dynamic):Dynamic;
	/**
		Unregisters a function that was registered with `@dispatch_for_*`.
		
		This is primarily intended for testing purposes.
		
		Example:
		
		>>> # Define a type and register a dispatcher to override `tf.abs`:
		>>> class MyTensor(extension_type.ExtensionType):
		...   value: tf.Tensor
		>>> @dispatch_for_api(tf.abs)
		... def my_abs(x: MyTensor):
		...   return MyTensor(tf.abs(x.value))
		>>> tf.abs(MyTensor(5))
		MyTensor(value=<tf.Tensor: shape=(), dtype=int32, numpy=5>)
		
		>>> # Unregister the dispatcher, so `tf.abs` no longer calls `my_abs`.
		>>> unregister_dispatch_for(my_abs)
		>>> tf.abs(MyTensor(5))
		Traceback (most recent call last):
		...
		ValueError: Attempt to convert a value ... to a Tensor.
		
		Args:
		  dispatch_target: The function to unregister.
		
		Raises:
		  ValueError: If `dispatch_target` was not registered using `@dispatch_for`,
		    `@dispatch_for_unary_elementwise_apis`, or
		    `@dispatch_for_binary_elementwise_apis`.
	**/
	static public function unregister_dispatch_for(dispatch_target:Dynamic):Dynamic;
}