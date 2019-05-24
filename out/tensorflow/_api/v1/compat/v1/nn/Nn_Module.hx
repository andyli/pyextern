/* This file is generated, do not edit! */
package tensorflow._api.v1.compat.v1.nn;
@:pythonImport("tensorflow._api.v1.compat.v1.nn") extern class Nn_Module {
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
		Generate the set of all classes.
		
		Deterministically generates and returns the set of all possible classes.
		For testing purposes.  There is no need to use this, since you might as
		well use full softmax or full logistic regression.
		
		Args:
		  true_classes: A `Tensor` of type `int64` and shape `[batch_size,
		    num_true]`. The target classes.
		  num_true: An `int`.  The number of target classes per training example.
		  num_sampled: An `int`.  The number of possible classes.
		  unique: A `bool`. Ignored.
		    unique.
		  seed: An `int`. An operation-specific seed. Default is 0.
		  name: A name for the operation (optional).
		
		Returns:
		  sampled_candidates: A tensor of type `int64` and shape `[num_sampled]`.
		    This operation deterministically returns the entire range
		    `[0, num_sampled]`.
		  true_expected_count: A tensor of type `float`.  Same shape as
		    `true_classes`. The expected counts under the sampling distribution
		    of each of `true_classes`. All returned values are 1.0.
		  sampled_expected_count: A tensor of type `float`. Same shape as
		    `sampled_candidates`. The expected counts under the sampling distribution
		    of each of `sampled_candidates`. All returned values are 1.0.
	**/
	static public function all_candidate_sampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Atrous convolution (a.k.a. convolution with holes or dilated convolution).
		
		This function is a simpler wrapper around the more general
		`tf.nn.convolution`, and exists only for backwards compatibility. You can
		use `tf.nn.convolution` to perform 1-D, 2-D, or 3-D atrous convolution.
		
		
		Computes a 2-D atrous convolution, also known as convolution with holes or
		dilated convolution, given 4-D `value` and `filters` tensors. If the `rate`
		parameter is equal to one, it performs regular 2-D convolution. If the `rate`
		parameter is greater than one, it performs convolution with holes, sampling
		the input values every `rate` pixels in the `height` and `width` dimensions.
		This is equivalent to convolving the input with a set of upsampled filters,
		produced by inserting `rate - 1` zeros between two consecutive values of the
		filters along the `height` and `width` dimensions, hence the name atrous
		convolution or convolution with holes (the French word trous means holes in
		English).
		
		More specifically:
		
		```
		output[batch, height, width, out_channel] =
		    sum_{dheight, dwidth, in_channel} (
		        filters[dheight, dwidth, in_channel, out_channel] *
		        value[batch, height + rate*dheight, width + rate*dwidth, in_channel]
		    )
		```
		
		Atrous convolution allows us to explicitly control how densely to compute
		feature responses in fully convolutional networks. Used in conjunction with
		bilinear interpolation, it offers an alternative to `conv2d_transpose` in
		dense prediction tasks such as semantic image segmentation, optical flow
		computation, or depth estimation. It also allows us to effectively enlarge
		the field of view of filters without increasing the number of parameters or
		the amount of computation.
		
		For a description of atrous convolution and how it can be used for dense
		feature extraction, please see: [Semantic Image Segmentation with Deep
		Convolutional Nets and Fully Connected CRFs](http://arxiv.org/abs/1412.7062).
		The same operation is investigated further in [Multi-Scale Context Aggregation
		by Dilated Convolutions](http://arxiv.org/abs/1511.07122). Previous works
		that effectively use atrous convolution in different ways are, among others,
		[OverFeat: Integrated Recognition, Localization and Detection using
		Convolutional Networks](http://arxiv.org/abs/1312.6229) and [Fast Image
		Scanning with Deep Max-Pooling Convolutional Neural
		Networks](http://arxiv.org/abs/1302.1700).
		Atrous convolution is also closely related to the so-called noble identities
		in multi-rate signal processing.
		
		There are many different ways to implement atrous convolution (see the refs
		above). The implementation here reduces
		
		```python
		    atrous_conv2d(value, filters, rate, padding=padding)
		```
		
		to the following three operations:
		
		```python
		    paddings = ...
		    net = space_to_batch(value, paddings, block_size=rate)
		    net = conv2d(net, filters, strides=[1, 1, 1, 1], padding="VALID")
		    crops = ...
		    net = batch_to_space(net, crops, block_size=rate)
		```
		
		Advanced usage. Note the following optimization: A sequence of `atrous_conv2d`
		operations with identical `rate` parameters, 'SAME' `padding`, and filters
		with odd heights/ widths:
		
		```python
		    net = atrous_conv2d(net, filters1, rate, padding="SAME")
		    net = atrous_conv2d(net, filters2, rate, padding="SAME")
		    ...
		    net = atrous_conv2d(net, filtersK, rate, padding="SAME")
		```
		
		can be equivalently performed cheaper in terms of computation and memory as:
		
		```python
		    pad = ...  # padding so that the input dims are multiples of rate
		    net = space_to_batch(net, paddings=pad, block_size=rate)
		    net = conv2d(net, filters1, strides=[1, 1, 1, 1], padding="SAME")
		    net = conv2d(net, filters2, strides=[1, 1, 1, 1], padding="SAME")
		    ...
		    net = conv2d(net, filtersK, strides=[1, 1, 1, 1], padding="SAME")
		    net = batch_to_space(net, crops=pad, block_size=rate)
		```
		
		because a pair of consecutive `space_to_batch` and `batch_to_space` ops with
		the same `block_size` cancel out when their respective `paddings` and `crops`
		inputs are identical.
		
		Args:
		  value: A 4-D `Tensor` of type `float`. It needs to be in the default "NHWC"
		    format. Its shape is `[batch, in_height, in_width, in_channels]`.
		  filters: A 4-D `Tensor` with the same type as `value` and shape
		    `[filter_height, filter_width, in_channels, out_channels]`. `filters`'
		    `in_channels` dimension must match that of `value`. Atrous convolution is
		    equivalent to standard convolution with upsampled filters with effective
		    height `filter_height + (filter_height - 1) * (rate - 1)` and effective
		    width `filter_width + (filter_width - 1) * (rate - 1)`, produced by
		    inserting `rate - 1` zeros along consecutive elements across the
		    `filters`' spatial dimensions.
		  rate: A positive int32. The stride with which we sample input values across
		    the `height` and `width` dimensions. Equivalently, the rate by which we
		    upsample the filter values by inserting zeros across the `height` and
		    `width` dimensions. In the literature, the same parameter is sometimes
		    called `input stride` or `dilation`.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm.
		  name: Optional name for the returned tensor.
		
		Returns:
		  A `Tensor` with the same type as `value`.
		  Output shape with `'VALID'` padding is:
		
		      [batch, height - 2 * (filter_width - 1),
		       width - 2 * (filter_height - 1), out_channels].
		
		  Output shape with `'SAME'` padding is:
		
		      [batch, height, width, out_channels].
		
		Raises:
		  ValueError: If input/output depth does not match `filters`' shape, or if
		    padding is other than `'VALID'` or `'SAME'`.
	**/
	static public function atrous_conv2d(value:Dynamic, filters:Dynamic, rate:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The transpose of `atrous_conv2d`.
		
		This operation is sometimes called "deconvolution" after [Deconvolutional
		Networks](http://www.matthewzeiler.com/pubs/cvpr2010/cvpr2010.pdf), but is
		actually the transpose (gradient) of `atrous_conv2d` rather than an actual
		deconvolution.
		
		Args:
		  value: A 4-D `Tensor` of type `float`. It needs to be in the default `NHWC`
		    format. Its shape is `[batch, in_height, in_width, in_channels]`.
		  filters: A 4-D `Tensor` with the same type as `value` and shape
		    `[filter_height, filter_width, out_channels, in_channels]`. `filters`'
		    `in_channels` dimension must match that of `value`. Atrous convolution is
		    equivalent to standard convolution with upsampled filters with effective
		    height `filter_height + (filter_height - 1) * (rate - 1)` and effective
		    width `filter_width + (filter_width - 1) * (rate - 1)`, produced by
		    inserting `rate - 1` zeros along consecutive elements across the
		    `filters`' spatial dimensions.
		  output_shape: A 1-D `Tensor` of shape representing the output shape of the
		    deconvolution op.
		  rate: A positive int32. The stride with which we sample input values across
		    the `height` and `width` dimensions. Equivalently, the rate by which we
		    upsample the filter values by inserting zeros across the `height` and
		    `width` dimensions. In the literature, the same parameter is sometimes
		    called `input stride` or `dilation`.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm.
		  name: Optional name for the returned tensor.
		
		Returns:
		  A `Tensor` with the same type as `value`.
		
		Raises:
		  ValueError: If input/output depth does not match `filters`' shape, or if
		    padding is other than `'VALID'` or `'SAME'`, or if the `rate` is less
		    than one, or if the output_shape is not a tensor with 4 elements.
	**/
	static public function atrous_conv2d_transpose(value:Dynamic, filters:Dynamic, output_shape:Dynamic, rate:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs the average pooling on the input.
		
		Each entry in `output` is the mean of the corresponding size `ksize`
		window in `value`.
		
		Args:
		  value: A 4-D `Tensor` of shape `[batch, height, width, channels]` and type
		    `float32`, `float64`, `qint8`, `quint8`, or `qint32`.
		  ksize: A list or tuple of 4 ints. The size of the window for each dimension
		    of the input tensor.
		  strides: A list or tuple of 4 ints. The stride of the sliding window for
		    each dimension of the input tensor.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm.
		    See the "returns" section of `tf.nn.convolution` for details.
		  data_format: A string. 'NHWC' and 'NCHW' are supported.
		  name: Optional name for the operation.
		
		Returns:
		  A `Tensor` with the same type as `value`.  The average pooled output tensor.
	**/
	static public function avg_pool(value:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs 3D average pooling on the input.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    Shape `[batch, depth, rows, cols, channels]` tensor to pool over.
		  ksize: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The size of the window for each dimension of
		    the input tensor. Must have `ksize[0] = ksize[4] = 1`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NDHWC", "NCDHW"`. Defaults to `"NDHWC"`.
		    The data format of the input and output data. With the
		    default format "NDHWC", the data is stored in the order of:
		        [batch, in_depth, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCDHW", the data storage order is:
		        [batch, in_channels, in_depth, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function avg_pool3d(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Batch normalization.
		
		This op is deprecated. See `tf.nn.batch_normalization`.
		
		Args:
		  t: A 4D input Tensor.
		  m: A 1D mean Tensor with size matching the last dimension of t.
		    This is the first output from tf.nn.moments,
		    or a saved moving average thereof.
		  v: A 1D variance Tensor with size matching the last dimension of t.
		    This is the second output from tf.nn.moments,
		    or a saved moving average thereof.
		  beta: A 1D beta Tensor with size matching the last dimension of t.
		    An offset to be added to the normalized tensor.
		  gamma: A 1D gamma Tensor with size matching the last dimension of t.
		    If "scale_after_normalization" is true, this tensor will be multiplied
		    with the normalized tensor.
		  variance_epsilon: A small float number to avoid dividing by 0.
		  scale_after_normalization: A bool indicating whether the resulted tensor
		    needs to be multiplied with gamma.
		  name: A name for this operation (optional).
		
		Returns:
		   A batch-normalized `t`.
	**/
	static public function batch_norm_with_global_normalization(t:Dynamic, m:Dynamic, v:Dynamic, beta:Dynamic, gamma:Dynamic, variance_epsilon:Dynamic, scale_after_normalization:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Batch normalization.
		
		As described in http://arxiv.org/abs/1502.03167.
		Normalizes a tensor by `mean` and `variance`, and applies (optionally) a
		`scale` \\(\gamma\\) to it, as well as an `offset` \\(\beta\\):
		
		\\(\frac{\gamma(x-\mu)}{\sigma}+\beta\\)
		
		`mean`, `variance`, `offset` and `scale` are all expected to be of one of two
		shapes:
		
		  * In all generality, they can have the same number of dimensions as the
		    input `x`, with identical sizes as `x` for the dimensions that are not
		    normalized over (the 'depth' dimension(s)), and dimension 1 for the
		    others which are being normalized over.
		    `mean` and `variance` in this case would typically be the outputs of
		    `tf.nn.moments(..., keep_dims=True)` during training, or running averages
		    thereof during inference.
		  * In the common case where the 'depth' dimension is the last dimension in
		    the input tensor `x`, they may be one dimensional tensors of the same
		    size as the 'depth' dimension.
		    This is the case for example for the common `[batch, depth]` layout of
		    fully-connected layers, and `[batch, height, width, depth]` for
		    convolutions.
		    `mean` and `variance` in this case would typically be the outputs of
		    `tf.nn.moments(..., keep_dims=False)` during training, or running averages
		    thereof during inference.
		
		Args:
		  x: Input `Tensor` of arbitrary dimensionality.
		  mean: A mean `Tensor`.
		  variance: A variance `Tensor`.
		  offset: An offset `Tensor`, often denoted \\(\beta\\) in equations, or
		    None. If present, will be added to the normalized tensor.
		  scale: A scale `Tensor`, often denoted \\(\gamma\\) in equations, or
		    `None`. If present, the scale is applied to the normalized tensor.
		  variance_epsilon: A small float number to avoid dividing by 0.
		  name: A name for this operation (optional).
		
		Returns:
		  the normalized, scaled, offset tensor.
	**/
	static public function batch_normalization(x:Dynamic, mean:Dynamic, variance:Dynamic, offset:Dynamic, scale:Dynamic, variance_epsilon:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds `bias` to `value`.
		
		This is (mostly) a special case of `tf.add` where `bias` is restricted to 1-D.
		Broadcasting is supported, so `value` may have any number of dimensions.
		Unlike `tf.add`, the type of `bias` is allowed to differ from `value` in the
		case where both types are quantized.
		
		Args:
		  value: A `Tensor` with type `float`, `double`, `int64`, `int32`, `uint8`,
		    `int16`, `int8`, `complex64`, or `complex128`.
		  bias: A 1-D `Tensor` with size matching the last dimension of `value`.
		    Must be the same type as `value` unless `value` is a quantized type,
		    in which case a different quantized type may be used.
		  data_format: A string. 'NHWC' and 'NCHW' are supported.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with the same type as `value`.
	**/
	static public function bias_add(value:Dynamic, bias:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a dynamic version of bidirectional recurrent neural network. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use `keras.layers.Bidirectional(keras.layers.RNN(cell))`, which is equivalent to this API
		
		Takes input and builds independent forward and backward RNNs. The input_size
		of forward and backward cell must match. The initial state for both directions
		is zero by default (but can be set optionally) and no intermediate states are
		ever returned -- the network is fully unrolled for the given (passed in)
		length(s) of the sequence(s) or completely unrolled if length(s) is not
		given.
		
		Args:
		  cell_fw: An instance of RNNCell, to be used for forward direction.
		  cell_bw: An instance of RNNCell, to be used for backward direction.
		  inputs: The RNN inputs.
		    If time_major == False (default), this must be a tensor of shape:
		      `[batch_size, max_time, ...]`, or a nested tuple of such elements.
		    If time_major == True, this must be a tensor of shape:
		      `[max_time, batch_size, ...]`, or a nested tuple of such elements.
		  sequence_length: (optional) An int32/int64 vector, size `[batch_size]`,
		    containing the actual lengths for each of the sequences in the batch.
		    If not provided, all batch entries are assumed to be full sequences; and
		    time reversal is applied from time `0` to `max_time` for each sequence.
		  initial_state_fw: (optional) An initial state for the forward RNN.
		    This must be a tensor of appropriate type and shape
		    `[batch_size, cell_fw.state_size]`.
		    If `cell_fw.state_size` is a tuple, this should be a tuple of
		    tensors having shapes `[batch_size, s] for s in cell_fw.state_size`.
		  initial_state_bw: (optional) Same as for `initial_state_fw`, but using
		    the corresponding properties of `cell_bw`.
		  dtype: (optional) The data type for the initial states and expected output.
		    Required if initial_states are not provided or RNN states have a
		    heterogeneous dtype.
		  parallel_iterations: (Default: 32).  The number of iterations to run in
		    parallel.  Those operations which do not have any temporal dependency
		    and can be run in parallel, will be.  This parameter trades off
		    time for space.  Values >> 1 use more memory but take less time,
		    while smaller values use less memory but computations take longer.
		  swap_memory: Transparently swap the tensors produced in forward inference
		    but needed for back prop from GPU to CPU.  This allows training RNNs
		    which would typically not fit on a single GPU, with very minimal (or no)
		    performance penalty.
		  time_major: The shape format of the `inputs` and `outputs` Tensors.
		    If true, these `Tensors` must be shaped `[max_time, batch_size, depth]`.
		    If false, these `Tensors` must be shaped `[batch_size, max_time, depth]`.
		    Using `time_major = True` is a bit more efficient because it avoids
		    transposes at the beginning and end of the RNN calculation.  However,
		    most TensorFlow data is batch-major, so by default this function
		    accepts input and emits output in batch-major form.
		  scope: VariableScope for the created subgraph; defaults to
		    "bidirectional_rnn"
		
		Returns:
		  A tuple (outputs, output_states) where:
		    outputs: A tuple (output_fw, output_bw) containing the forward and
		      the backward rnn output `Tensor`.
		      If time_major == False (default),
		        output_fw will be a `Tensor` shaped:
		        `[batch_size, max_time, cell_fw.output_size]`
		        and output_bw will be a `Tensor` shaped:
		        `[batch_size, max_time, cell_bw.output_size]`.
		      If time_major == True,
		        output_fw will be a `Tensor` shaped:
		        `[max_time, batch_size, cell_fw.output_size]`
		        and output_bw will be a `Tensor` shaped:
		        `[max_time, batch_size, cell_bw.output_size]`.
		      It returns a tuple instead of a single concatenated `Tensor`, unlike
		      in the `bidirectional_rnn`. If the concatenated one is preferred,
		      the forward and backward outputs can be concatenated as
		      `tf.concat(outputs, 2)`.
		    output_states: A tuple (output_state_fw, output_state_bw) containing
		      the forward and the backward final states of bidirectional rnn.
		
		Raises:
		  TypeError: If `cell_fw` or `cell_bw` is not an instance of `RNNCell`.
	**/
	static public function bidirectional_dynamic_rnn(cell_fw:Dynamic, cell_bw:Dynamic, inputs:Dynamic, ?sequence_length:Dynamic, ?initial_state_fw:Dynamic, ?initial_state_bw:Dynamic, ?dtype:Dynamic, ?parallel_iterations:Dynamic, ?swap_memory:Dynamic, ?time_major:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Merge repeated labels into single labels.
		
		Args:
		  labels: Tensor of shape (batch, max value in seq_length)
		  seq_length: Tensor of shape (batch), sequence length of each batch element.
		  name: A name for this `Op`. Defaults to "collapse_repeated_labels".
		
		Returns:
		  tuple of Tensor of shape (batch, max_seq_length) with repeated labels
		  collapsed and padded to max_seq_length, eg:
		      [[A, A, B, B, A],
		       [A, B, C, D, E]] => [[A, B, A, 0, 0],
		                            [A, B, C, D, E]]
		  and int tensor of shape [batch] with new sequence lengths.
	**/
	static public function collapse_repeated(labels:Dynamic, seq_length:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the position ids in `sampled_candidates` matching `true_classes`.
		
		In Candidate Sampling, this operation facilitates virtually removing
		sampled classes which happen to match target classes.  This is done
		in Sampled Softmax and Sampled Logistic.
		
		See our [Candidate Sampling Algorithms
		Reference](http://www.tensorflow.org/extras/candidate_sampling.pdf).
		
		We presuppose that the `sampled_candidates` are unique.
		
		We call it an 'accidental hit' when one of the target classes
		matches one of the sampled classes.  This operation reports
		accidental hits as triples `(index, id, weight)`, where `index`
		represents the row number in `true_classes`, `id` represents the
		position in `sampled_candidates`, and weight is `-FLOAT_MAX`.
		
		The result of this op should be passed through a `sparse_to_dense`
		operation, then added to the logits of the sampled classes. This
		removes the contradictory effect of accidentally sampling the true
		target classes as noise classes for the same example.
		
		Args:
		  true_classes: A `Tensor` of type `int64` and shape `[batch_size,
		    num_true]`. The target classes.
		  sampled_candidates: A tensor of type `int64` and shape `[num_sampled]`.
		    The sampled_candidates output of CandidateSampler.
		  num_true: An `int`.  The number of target classes per training example.
		  seed: An `int`. An operation-specific seed. Default is 0.
		  name: A name for the operation (optional).
		
		Returns:
		  indices: A `Tensor` of type `int32` and shape `[num_accidental_hits]`.
		    Values indicate rows in `true_classes`.
		  ids: A `Tensor` of type `int64` and shape `[num_accidental_hits]`.
		    Values indicate positions in `sampled_candidates`.
		  weights: A `Tensor` of type `float` and shape `[num_accidental_hits]`.
		    Each value is `-FLOAT_MAX`.
	**/
	static public function compute_accidental_hits(true_classes:Dynamic, sampled_candidates:Dynamic, num_true:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a 1-D convolution given 3-D input and filter tensors. (deprecated argument values) (deprecated argument values)
		
		Warning: SOME ARGUMENT VALUES ARE DEPRECATED: `(data_format='NCHW')`. They will be removed in a future version.
		Instructions for updating:
		`NCHW` for data_format is deprecated, use `NCW` instead
		
		Warning: SOME ARGUMENT VALUES ARE DEPRECATED: `(data_format='NHWC')`. They will be removed in a future version.
		Instructions for updating:
		`NHWC` for data_format is deprecated, use `NWC` instead
		
		Given an input tensor of shape
		  [batch, in_width, in_channels]
		if data_format is "NWC", or
		  [batch, in_channels, in_width]
		if data_format is "NCW",
		and a filter / kernel tensor of shape
		[filter_width, in_channels, out_channels], this op reshapes
		the arguments to pass them to conv2d to perform the equivalent
		convolution operation.
		
		Internally, this op reshapes the input tensors and invokes `tf.nn.conv2d`.
		For example, if `data_format` does not start with "NC", a tensor of shape
		  [batch, in_width, in_channels]
		is reshaped to
		  [batch, 1, in_width, in_channels],
		and the filter is reshaped to
		  [1, filter_width, in_channels, out_channels].
		The result is then reshaped back to
		  [batch, out_width, out_channels]
		\(where out_width is a function of the stride and padding as in conv2d\) and
		returned to the caller.
		
		Args:
		  value: A 3D `Tensor`.  Must be of type `float16`, `float32`, or `float64`.
		  filters: A 3D `Tensor`.  Must have the same type as `value`.
		  stride: An `integer`.  The number of entries by which
		    the filter is moved right at each step.
		  padding: 'SAME' or 'VALID'
		  use_cudnn_on_gpu: An optional `bool`.  Defaults to `True`.
		  data_format: An optional `string` from `"NWC", "NCW"`.  Defaults
		    to `"NWC"`, the data is stored in the order of
		    [batch, in_width, in_channels].  The `"NCW"` format stores
		    data as [batch, in_channels, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`.  Has the same type as input.
		
		Raises:
		  ValueError: if `data_format` is invalid.
	**/
	static public function conv1d(value:Dynamic, filters:Dynamic, stride:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a 2-D convolution given 4-D `input` and `filter` tensors.
		
		Given an input tensor of shape `[batch, in_height, in_width, in_channels]`
		and a filter / kernel tensor of shape
		`[filter_height, filter_width, in_channels, out_channels]`, this op
		performs the following:
		
		1. Flattens the filter to a 2-D matrix with shape
		   `[filter_height * filter_width * in_channels, output_channels]`.
		2. Extracts image patches from the input tensor to form a *virtual*
		   tensor of shape `[batch, out_height, out_width,
		   filter_height * filter_width * in_channels]`.
		3. For each patch, right-multiplies the filter matrix and the image patch
		   vector.
		
		In detail, with the default NHWC format,
		
		    output[b, i, j, k] =
		        sum_{di, dj, q} input[b, strides[1] * i + di, strides[2] * j + dj, q] *
		                        filter[di, dj, q, k]
		
		Must have `strides[0] = strides[3] = 1`.  For the most common case of the same
		horizontal and vertices strides, `strides = [1, stride, stride, 1]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    A 4-D tensor. The dimension order is interpreted according to the value
		    of `data_format`, see below for details.
		  filter: A `Tensor`. Must have the same type as `input`.
		    A 4-D tensor of shape
		    `[filter_height, filter_width, in_channels, out_channels]`
		  strides: A list of `ints`.
		    1-D tensor of length 4.  The stride of the sliding window for each
		    dimension of `input`. The dimension order is determined by the value of
		    `data_format`, see below for details.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  use_cudnn_on_gpu: An optional `bool`. Defaults to `True`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, height, width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, channels, height, width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by the
		    value of `data_format`, see above for details. Dilations in the batch and
		    depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv2d(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    4-D with shape `[batch, in_height, in_width, in_channels]`.
		  filter_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the tensor shape of `filter`,
		    where `filter` is a 4-D
		    `[filter_height, filter_width, in_channels, out_channels]` tensor.
		  out_backprop: A `Tensor`. Must have the same type as `input`.
		    4-D with shape `[batch, out_height, out_width, out_channels]`.
		    Gradients w.r.t. the output of the convolution.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    of the convolution. Must be in the same order as the dimension specified with
		    format.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  use_cudnn_on_gpu: An optional `bool`. Defaults to `True`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each filter
		    element on that dimension. The dimension order is determined by the value of
		    `data_format`, see above for details. Dilations in the batch and depth
		    dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv2d_backprop_filter(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of convolution with respect to the input.
		
		Args:
		  input_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the shape of `input`,
		    where `input` is a 4-D `[batch, height, width, channels]` tensor.
		  filter: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    4-D with shape
		    `[filter_height, filter_width, in_channels, out_channels]`.
		  out_backprop: A `Tensor`. Must have the same type as `filter`.
		    4-D with shape `[batch, out_height, out_width, out_channels]`.
		    Gradients w.r.t. the output of the convolution.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    of the convolution. Must be in the same order as the dimension specified with
		    format.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  use_cudnn_on_gpu: An optional `bool`. Defaults to `True`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, in_channels, in_height, in_width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each filter
		    element on that dimension. The dimension order is determined by the value of
		    `data_format`, see above for details. Dilations in the batch and depth
		    dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `filter`.
	**/
	static public function conv2d_backprop_input(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?use_cudnn_on_gpu:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The transpose of `conv2d`.
		
		This operation is sometimes called "deconvolution" after [Deconvolutional
		Networks](http://www.matthewzeiler.com/pubs/cvpr2010/cvpr2010.pdf), but is
		actually the transpose (gradient) of `conv2d` rather than an actual
		deconvolution.
		
		Args:
		  value: A 4-D `Tensor` of type `float` and shape
		    `[batch, height, width, in_channels]` for `NHWC` data format or
		    `[batch, in_channels, height, width]` for `NCHW` data format.
		  filter: A 4-D `Tensor` with the same type as `value` and shape
		    `[height, width, output_channels, in_channels]`.  `filter`'s
		    `in_channels` dimension must match that of `value`.
		  output_shape: A 1-D `Tensor` representing the output shape of the
		    deconvolution op.
		  strides: A list of ints. The stride of the sliding window for each
		    dimension of the input tensor.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm.
		    See the "returns" section of `tf.nn.convolution` for details.
		  data_format: A string. 'NHWC' and 'NCHW' are supported.
		  name: Optional name for the returned tensor.
		
		Returns:
		  A `Tensor` with the same type as `value`.
		
		Raises:
		  ValueError: If input/output depth does not match `filter`'s shape, or if
		    padding is other than `'VALID'` or `'SAME'`.
	**/
	static public function conv2d_transpose(value:Dynamic, filter:Dynamic, output_shape:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a 3-D convolution given 5-D `input` and `filter` tensors.
		
		In signal processing, cross-correlation is a measure of similarity of
		two waveforms as a function of a time-lag applied to one of them. This
		is also known as a sliding dot product or sliding inner-product.
		
		Our Conv3D implements a form of cross-correlation.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    Shape `[batch, in_depth, in_height, in_width, in_channels]`.
		  filter: A `Tensor`. Must have the same type as `input`.
		    Shape `[filter_depth, filter_height, filter_width, in_channels,
		    out_channels]`. `in_channels` must match between `input` and `filter`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NDHWC", "NCDHW"`. Defaults to `"NDHWC"`.
		    The data format of the input and output data. With the
		    default format "NDHWC", the data is stored in the order of:
		        [batch, in_depth, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCDHW", the data storage order is:
		        [batch, in_channels, in_depth, in_height, in_width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1, 1]`.
		    1-D tensor of length 5.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by the
		    value of `data_format`, see above for details. Dilations in the batch and
		    depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv3d(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of 3-D convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    Shape `[batch, depth, rows, cols, in_channels]`.
		  filter_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the tensor shape of `filter`,
		    where `filter` is a 5-D
		    `[filter_depth, filter_height, filter_width, in_channels, out_channels]`
		    tensor.
		  out_backprop: A `Tensor`. Must have the same type as `input`.
		    Backprop signal of shape `[batch, out_depth, out_rows, out_cols,
		    out_channels]`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NDHWC", "NCDHW"`. Defaults to `"NDHWC"`.
		    The data format of the input and output data. With the
		    default format "NDHWC", the data is stored in the order of:
		        [batch, in_depth, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCDHW", the data storage order is:
		        [batch, in_channels, in_depth, in_height, in_width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1, 1]`.
		    1-D tensor of length 5.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by the
		    value of `data_format`, see above for details. Dilations in the batch and
		    depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv3d_backprop_filter(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of 3-D convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    Shape `[batch, depth, rows, cols, in_channels]`.
		  filter_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the tensor shape of `filter`,
		    where `filter` is a 5-D
		    `[filter_depth, filter_height, filter_width, in_channels, out_channels]`
		    tensor.
		  out_backprop: A `Tensor`. Must have the same type as `input`.
		    Backprop signal of shape `[batch, out_depth, out_rows, out_cols,
		    out_channels]`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NDHWC", "NCDHW"`. Defaults to `"NDHWC"`.
		    The data format of the input and output data. With the
		    default format "NDHWC", the data is stored in the order of:
		        [batch, in_depth, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCDHW", the data storage order is:
		        [batch, in_channels, in_depth, in_height, in_width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1, 1]`.
		    1-D tensor of length 5.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by the
		    value of `data_format`, see above for details. Dilations in the batch and
		    depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function conv3d_backprop_filter_v2(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The transpose of `conv3d`.
		
		This operation is sometimes called "deconvolution" after [Deconvolutional
		Networks](http://www.matthewzeiler.com/pubs/cvpr2010/cvpr2010.pdf), but is
		actually the transpose (gradient) of `conv3d` rather than an actual
		deconvolution.
		
		Args:
		  value: A 5-D `Tensor` of type `float` and shape
		    `[batch, depth, height, width, in_channels]`.
		  filter: A 5-D `Tensor` with the same type as `value` and shape
		    `[depth, height, width, output_channels, in_channels]`.  `filter`'s
		    `in_channels` dimension must match that of `value`.
		  output_shape: A 1-D `Tensor` representing the output shape of the
		    deconvolution op.
		  strides: A list of ints. The stride of the sliding window for each
		    dimension of the input tensor.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm.
		    See the "returns" section of `tf.nn.convolution` for details.
		  data_format: A string, either `'NDHWC'` or `'NCDHW`' specifying the layout
		    of the input and output tensors. Defaults to `'NDHWC'`.
		  name: Optional name for the returned tensor.
		
		Returns:
		  A `Tensor` with the same type as `value`.
		
		Raises:
		  ValueError: If input/output depth does not match `filter`'s shape, or if
		    padding is other than `'VALID'` or `'SAME'`.
	**/
	static public function conv3d_transpose(value:Dynamic, filter:Dynamic, output_shape:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes sums of N-D convolutions (actually cross-correlation).
		
		This also supports either output striding via the optional `strides` parameter
		or atrous convolution (also known as convolution with holes or dilated
		convolution, based on the French word "trous" meaning holes in English) via
		the optional `dilation_rate` parameter.  Currently, however, output striding
		is not supported for atrous convolutions.
		
		Specifically, in the case that `data_format` does not start with "NC", given
		a rank (N+2) `input` Tensor of shape
		
		  [num_batches,
		   input_spatial_shape[0],
		   ...,
		   input_spatial_shape[N-1],
		   num_input_channels],
		
		a rank (N+2) `filter` Tensor of shape
		
		  [spatial_filter_shape[0],
		   ...,
		   spatial_filter_shape[N-1],
		   num_input_channels,
		   num_output_channels],
		
		an optional `dilation_rate` tensor of shape [N] (defaulting to [1]*N)
		specifying the filter upsampling/input downsampling rate, and an optional list
		of N `strides` (defaulting [1]*N), this computes for each N-D spatial output
		position (x[0], ..., x[N-1]):
		
		```
		  output[b, x[0], ..., x[N-1], k] =
		      sum_{z[0], ..., z[N-1], q}
		          filter[z[0], ..., z[N-1], q, k] *
		          padded_input[b,
		                       x[0]*strides[0] + dilation_rate[0]*z[0],
		                       ...,
		                       x[N-1]*strides[N-1] + dilation_rate[N-1]*z[N-1],
		                       q]
		```
		where b is the index into the batch, k is the output channel number, q is the
		input channel number, and z is the N-D spatial offset within the filter. Here,
		`padded_input` is obtained by zero padding the input using an effective
		spatial filter shape of `(spatial_filter_shape-1) * dilation_rate + 1` and
		output striding `strides` as described in the
		[comment here](https://tensorflow.org/api_guides/python/nn#Convolution).
		
		In the case that `data_format` does start with `"NC"`, the `input` and output
		(but not the `filter`) are simply transposed as follows:
		
		  convolution(input, data_format, **kwargs) =
		    tf.transpose(convolution(tf.transpose(input, [0] + range(2,N+2) + [1]),
		                             **kwargs),
		                 [0, N+1] + range(1, N+1))
		
		It is required that 1 <= N <= 3.
		
		Args:
		  input: An (N+2)-D `Tensor` of type `T`, of shape
		    `[batch_size] + input_spatial_shape + [in_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, in_channels] + input_spatial_shape` if data_format starts
		    with "NC".
		  filter: An (N+2)-D `Tensor` with the same type as `input` and shape
		    `spatial_filter_shape + [in_channels, out_channels]`.
		  padding: A string, either `"VALID"` or `"SAME"`. The padding algorithm.
		  strides: Optional.  Sequence of N ints >= 1.  Specifies the output stride.
		    Defaults to [1]*N.  If any value of strides is > 1, then all values of
		    dilation_rate must be 1.
		  dilation_rate: Optional.  Sequence of N ints >= 1.  Specifies the filter
		    upsampling/input downsampling rate.  In the literature, the same parameter
		    is sometimes called `input stride` or `dilation`.  The effective filter
		    size used for the convolution will be `spatial_filter_shape +
		    (spatial_filter_shape - 1) * (rate - 1)`, obtained by inserting
		    (dilation_rate[i]-1) zeros between consecutive elements of the original
		    filter in each spatial dimension i.  If any value of dilation_rate is > 1,
		    then all values of strides must be 1.
		  name: Optional name for the returned tensor.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		
		Returns:
		  A `Tensor` with the same type as `input` of shape
		
		      `[batch_size] + output_spatial_shape + [out_channels]`
		
		  if data_format is None or does not start with "NC", or
		
		      `[batch_size, out_channels] + output_spatial_shape`
		
		  if data_format starts with "NC",
		  where `output_spatial_shape` depends on the value of `padding`.
		
		  If padding == "SAME":
		    output_spatial_shape[i] = ceil(input_spatial_shape[i] / strides[i])
		
		  If padding == "VALID":
		    output_spatial_shape[i] =
		      ceil((input_spatial_shape[i] -
		            (spatial_filter_shape[i]-1) * dilation_rate[i])
		           / strides[i]).
		
		Raises:
		  ValueError: If input/output depth does not match `filter` shape, if padding
		    is other than `"VALID"` or `"SAME"`, or if data_format is invalid.
	**/
	static public function convolution(input:Dynamic, filter:Dynamic, padding:Dynamic, ?strides:Dynamic, ?dilation_rate:Dynamic, ?name:Dynamic, ?data_format:Dynamic):Dynamic;
	/**
		Computes Concatenated ReLU.
		
		Concatenates a ReLU which selects only the positive part of the activation
		with a ReLU which selects only the *negative* part of the activation.
		Note that as a result this non-linearity doubles the depth of the activations.
		Source: [Understanding and Improving Convolutional Neural Networks via
		Concatenated Rectified Linear Units. W. Shang, et
		al.](https://arxiv.org/abs/1603.05201)
		
		Args:
		  features: A `Tensor` with type `float`, `double`, `int32`, `int64`, `uint8`,
		    `int16`, or `int8`.
		  name: A name for the operation (optional).
		  axis: The axis that the output values are concatenated along. Default is -1.
		
		Returns:
		  A `Tensor` with the same type as `features`.
	**/
	static public function crelu(features:Dynamic, ?name:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Performs beam search decoding on the logits given in input.
		
		**Note** The `ctc_greedy_decoder` is a special case of the
		`ctc_beam_search_decoder` with `top_paths=1` and `beam_width=1` (but
		that decoder is faster for this special case).
		
		If `merge_repeated` is `True`, merge repeated classes in the output beams.
		This means that if consecutive entries in a beam are the same,
		only the first of these is emitted.  That is, when the sequence is
		`A B B * B * B` (where '*' is the blank label), the return value is:
		
		  * `A B` if `merge_repeated = True`.
		  * `A B B B` if `merge_repeated = False`.
		
		Args:
		  inputs: 3-D `float` `Tensor`, size
		    `[max_time x batch_size x num_classes]`.  The logits.
		  sequence_length: 1-D `int32` vector containing sequence lengths,
		    having size `[batch_size]`.
		  beam_width: An int scalar >= 0 (beam search beam width).
		  top_paths: An int scalar >= 0, <= beam_width (controls output size).
		  merge_repeated: Boolean.  Default: True.
		
		Returns:
		  A tuple `(decoded, log_probabilities)` where
		
		  decoded: A list of length top_paths, where `decoded[j]`
		    is a `SparseTensor` containing the decoded outputs:
		
		    `decoded[j].indices`: Indices matrix `(total_decoded_outputs[j] x 2)`
		      The rows store: [batch, time].
		
		    `decoded[j].values`: Values vector, size `(total_decoded_outputs[j])`.
		      The vector stores the decoded classes for beam j.
		
		    `decoded[j].dense_shape`: Shape vector, size `(2)`.
		      The shape values are: `[batch_size, max_decoded_length[j]]`.
		
		  log_probability: A `float` matrix `(batch_size x top_paths)` containing
		      sequence log-probabilities.
	**/
	static public function ctc_beam_search_decoder(inputs:Dynamic, sequence_length:Dynamic, ?beam_width:Dynamic, ?top_paths:Dynamic, ?merge_repeated:Dynamic):Dynamic;
	/**
		Performs beam search decoding on the logits given in input.
		
		**Note** The `ctc_greedy_decoder` is a special case of the
		`ctc_beam_search_decoder` with `top_paths=1` and `beam_width=1` (but
		that decoder is faster for this special case).
		
		Args:
		  inputs: 3-D `float` `Tensor`, size
		    `[max_time, batch_size, num_classes]`.  The logits.
		  sequence_length: 1-D `int32` vector containing sequence lengths,
		    having size `[batch_size]`.
		  beam_width: An int scalar >= 0 (beam search beam width).
		  top_paths: An int scalar >= 0, <= beam_width (controls output size).
		
		Returns:
		  A tuple `(decoded, log_probabilities)` where
		
		  decoded: A list of length top_paths, where `decoded[j]`
		    is a `SparseTensor` containing the decoded outputs:
		
		    `decoded[j].indices`: Indices matrix `[total_decoded_outputs[j], 2]`;
		      The rows store: `[batch, time]`.
		
		    `decoded[j].values`: Values vector, size `[total_decoded_outputs[j]]`.
		      The vector stores the decoded classes for beam `j`.
		
		    `decoded[j].dense_shape`: Shape vector, size `(2)`.
		      The shape values are: `[batch_size, max_decoded_length[j]]`.
		
		  log_probability: A `float` matrix `[batch_size, top_paths]` containing
		      sequence log-probabilities.
	**/
	static public function ctc_beam_search_decoder_v2(inputs:Dynamic, sequence_length:Dynamic, ?beam_width:Dynamic, ?top_paths:Dynamic):Dynamic;
	/**
		Performs greedy decoding on the logits given in input (best path).
		
		Note: Regardless of the value of merge_repeated, if the maximum index of a
		given time and batch corresponds to the blank index `(num_classes - 1)`, no
		new element is emitted.
		
		If `merge_repeated` is `True`, merge repeated classes in output.
		This means that if consecutive logits' maximum indices are the same,
		only the first of these is emitted.  The sequence `A B B * B * B` (where '*'
		is the blank label) becomes
		
		  * `A B B B` if `merge_repeated=True`.
		  * `A B B B B` if `merge_repeated=False`.
		
		Args:
		  inputs: 3-D `float` `Tensor` sized
		    `[max_time, batch_size, num_classes]`.  The logits.
		  sequence_length: 1-D `int32` vector containing sequence lengths,
		    having size `[batch_size]`.
		  merge_repeated: Boolean.  Default: True.
		
		Returns:
		  A tuple `(decoded, neg_sum_logits)` where
		
		  decoded: A single-element list. `decoded[0]`
		    is an `SparseTensor` containing the decoded outputs s.t.:
		
		    `decoded.indices`: Indices matrix `(total_decoded_outputs, 2)`.
		      The rows store: `[batch, time]`.
		
		    `decoded.values`: Values vector, size `(total_decoded_outputs)`.
		      The vector stores the decoded classes.
		
		    `decoded.dense_shape`: Shape vector, size `(2)`.
		      The shape values are: `[batch_size, max_decoded_length]`
		
		  neg_sum_logits: A `float` matrix `(batch_size x 1)` containing, for the
		      sequence found, the negative of the sum of the greatest logit at each
		      timeframe.
	**/
	static public function ctc_greedy_decoder(inputs:Dynamic, sequence_length:Dynamic, ?merge_repeated:Dynamic):Dynamic;
	/**
		Computes the CTC (Connectionist Temporal Classification) Loss.
		
		This op implements the CTC loss as presented in the article:
		
		[A. Graves, S. Fernandez, F. Gomez, J. Schmidhuber.
		Connectionist Temporal Classification: Labeling Unsegmented Sequence Data
		with Recurrent Neural Networks. ICML 2006, Pittsburgh, USA,
		pp. 369-376.](http://www.cs.toronto.edu/~graves/icml_2006.pdf)
		
		Input requirements:
		
		```
		sequence_length(b) <= time for all b
		
		max(labels.indices(labels.indices[:, 1] == b, 2))
		  <= sequence_length(b) for all b.
		```
		
		Notes:
		
		This class performs the softmax operation for you, so inputs should
		be e.g. linear projections of outputs by an LSTM.
		
		The `inputs` Tensor's innermost dimension size, `num_classes`, represents
		`num_labels + 1` classes, where num_labels is the number of true labels, and
		the largest value `(num_classes - 1)` is reserved for the blank label.
		
		For example, for a vocabulary containing 3 labels `[a, b, c]`,
		`num_classes = 4` and the labels indexing is `{a: 0, b: 1, c: 2, blank: 3}`.
		
		Regarding the arguments `preprocess_collapse_repeated` and
		`ctc_merge_repeated`:
		
		If `preprocess_collapse_repeated` is True, then a preprocessing step runs
		before loss calculation, wherein repeated labels passed to the loss
		are merged into single labels.  This is useful if the training labels come
		from, e.g., forced alignments and therefore have unnecessary repetitions.
		
		If `ctc_merge_repeated` is set False, then deep within the CTC calculation,
		repeated non-blank labels will not be merged and are interpreted
		as individual labels.  This is a simplified (non-standard) version of CTC.
		
		Here is a table of the (roughly) expected first order behavior:
		
		* `preprocess_collapse_repeated=False`, `ctc_merge_repeated=True`
		
		  Classical CTC behavior: Outputs true repeated classes with blanks in
		  between, and can also output repeated classes with no blanks in
		  between that need to be collapsed by the decoder.
		
		* `preprocess_collapse_repeated=True`, `ctc_merge_repeated=False`
		
		  Never learns to output repeated classes, as they are collapsed
		  in the input labels before training.
		
		* `preprocess_collapse_repeated=False`, `ctc_merge_repeated=False`
		
		  Outputs repeated classes with blanks in between, but generally does not
		  require the decoder to collapse/merge repeated classes.
		
		* `preprocess_collapse_repeated=True`, `ctc_merge_repeated=True`
		
		  Untested.  Very likely will not learn to output repeated classes.
		
		The `ignore_longer_outputs_than_inputs` option allows to specify the behavior
		of the CTCLoss when dealing with sequences that have longer outputs than
		inputs. If true, the CTCLoss will simply return zero gradient for those
		items, otherwise an InvalidArgument error is returned, stopping training.
		
		Args:
		  labels: An `int32` `SparseTensor`.
		    `labels.indices[i, :] == [b, t]` means `labels.values[i]` stores
		    the id for (batch b, time t).
		    `labels.values[i]` must take on values in `[0, num_labels)`.
		    See `core/ops/ctc_ops.cc` for more details.
		  inputs: 3-D `float` `Tensor`.
		    If time_major == False, this will be a `Tensor` shaped:
		      `[batch_size, max_time, num_classes]`.
		    If time_major == True (default), this will be a `Tensor` shaped:
		      `[max_time, batch_size, num_classes]`.
		    The logits.
		  sequence_length: 1-D `int32` vector, size `[batch_size]`.
		    The sequence lengths.
		  preprocess_collapse_repeated: Boolean.  Default: False.
		    If True, repeated labels are collapsed prior to the CTC calculation.
		  ctc_merge_repeated: Boolean.  Default: True.
		  ignore_longer_outputs_than_inputs: Boolean. Default: False.
		    If True, sequences with longer outputs than inputs will be ignored.
		  time_major: The shape format of the `inputs` Tensors.
		    If True, these `Tensors` must be shaped `[max_time, batch_size,
		    num_classes]`.
		    If False, these `Tensors` must be shaped `[batch_size, max_time,
		    num_classes]`.
		    Using `time_major = True` (default) is a bit more efficient because it
		    avoids transposes at the beginning of the ctc_loss calculation.  However,
		    most TensorFlow data is batch-major, so by this function also accepts
		    inputs in batch-major form.
		
		Returns:
		  A 1-D `float` `Tensor`, size `[batch]`, containing the negative log
		    probabilities.
		
		Raises:
		  TypeError: if labels is not a `SparseTensor`.
	**/
	static public function ctc_loss(labels:Dynamic, inputs:Dynamic, sequence_length:Dynamic, ?preprocess_collapse_repeated:Dynamic, ?ctc_merge_repeated:Dynamic, ?ignore_longer_outputs_than_inputs:Dynamic, ?time_major:Dynamic):Dynamic;
	/**
		Computes CTC (Connectionist Temporal Classification) loss.
		
		This op implements the CTC loss as presented in the article:
		
		[A. Graves, S. Fernandez, F. Gomez, J. Schmidhuber.
		Connectionist Temporal Classification: Labeling Unsegmented Sequence Data
		with Recurrent Neural Networks. ICML 2006, Pittsburgh, USA,
		pp. 369-376.](http://www.cs.toronto.edu/~graves/icml_2006.pdf)
		
		Notes:
		    - Same as the "Classic CTC" in TensorFlow 1.x's tf.nn.ctc_loss setting of
		      preprocess_collapse_repeated=False, ctc_merge_repeated=True
		    - Labels may be supplied as either a dense, zero-padded tensor with a
		      vector of label sequence lengths OR as a SparseTensor.
		    - On TPU and GPU:
		        - Only dense padded labels are supported.
		    - On CPU:
		        - Caller may use SparseTensor or dense padded labels but calling with
		          a SparseTensor will be significantly faster.
		    - Default blank label is 0 rather num_classes - 1, unless overridden by
		      blank_index.
		
		Args:
		  labels: tensor of shape [batch_size, max_label_seq_length] or SparseTensor
		  logits: tensor of shape [frames, batch_size, num_labels],
		    if logits_time_major == False, shape is [batch_size, frames, num_labels].
		  label_length: tensor of shape [batch_size], None if labels is SparseTensor
		    Length of reference label sequence in labels.
		  logit_length: tensor of shape [batch_size]
		    Length of input sequence in logits.
		  logits_time_major: (optional) If True (default), logits is shaped
		    [time, batch, logits]. If False, shape is [batch, time, logits]
		  unique: (optional) Unique label indices as computed by
		    ctc_unique_labels(labels).  If supplied, enable a faster, memory
		    efficient implementation on TPU.
		  blank_index: (optional) Set the class index to use for the blank label.
		    Negative values will start from num_classes, ie, -1 will reproduce the
		    ctc_loss behavior of using num_classes - 1 for the blank symbol.
		    There is some memory/performance overhead to switching from the default
		    of 0 as an additional shifted copy of the logits may be created.
		  name: A name for this `Op`. Defaults to "ctc_loss_dense".
		
		Returns:
		  loss: tensor of shape [batch_size], negative log probabilities.
	**/
	static public function ctc_loss_v2(labels:Dynamic, logits:Dynamic, label_length:Dynamic, logit_length:Dynamic, ?logits_time_major:Dynamic, ?unique:Dynamic, ?blank_index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Get unique labels and indices for batched labels for tf.nn.ctc_loss.
		
		For use with tf.nn.ctc_loss_v2 optional argument `unique`: This op can be
		used to preprocess labels in input pipeline to for better speed/memory use
		computing the ctc loss on TPU.
		
		Example:
		  ctc_unique_labels([[3, 4, 4, 3]]) ->
		    unique labels padded with 0: [[3, 4, 0, 0]]
		    indices of original labels in unique: [0, 1, 1, 0]
		
		Args:
		  labels: tensor of shape [batch_size, max_label_length] padded with 0.
		  name: A name for this `Op`. Defaults to "ctc_unique_labels".
		
		Returns:
		  tuple of
		    - unique labels, tensor of shape `[batch_size, max_label_length]`
		    - indices into unique labels, shape `[batch_size, max_label_length]`
	**/
	static public function ctc_unique_labels(labels:Dynamic, ?name:Dynamic):Dynamic;
	/**
		DepthToSpace for tensors of type T.
		
		Rearranges data from depth into blocks of spatial data.
		This is the reverse transformation of SpaceToDepth. More specifically,
		this op outputs a copy of the input tensor where values from the `depth`
		dimension are moved in spatial blocks to the `height` and `width` dimensions.
		The attr `block_size` indicates the input block size and how the data is moved.
		
		  * Chunks of data of size `block_size * block_size` from depth are rearranged
		    into non-overlapping blocks of size `block_size x block_size`
		  * The width the output tensor is `input_depth * block_size`, whereas the
		    height is `input_height * block_size`.
		  * The Y, X coordinates within each block of the output image are determined
		    by the high order component of the input channel index.
		  * The depth of the input tensor must be divisible by
		    `block_size * block_size`.
		
		The `data_format` attr specifies the layout of the input and output tensors
		with the following options:
		  "NHWC": `[ batch, height, width, channels ]`
		  "NCHW": `[ batch, channels, height, width ]`
		  "NCHW_VECT_C":
		      `qint8 [ batch, channels / 4, height, width, 4 ]`
		
		It is useful to consider the operation as transforming a 6-D Tensor.
		e.g. for data_format = NHWC,
		     Each element in the input tensor can be specified via 6 coordinates,
		     ordered by decreasing memory layout significance as:
		     n,iY,iX,bY,bX,oC  (where n=batch index, iX, iY means X or Y coordinates
		                        within the input image, bX, bY means coordinates
		                        within the output block, oC means output channels).
		     The output would be the input transposed to the following layout:
		     n,iY,bY,iX,bX,oC
		
		This operation is useful for resizing the activations between convolutions
		(but keeping all data), e.g. instead of pooling. It is also useful for training
		purely convolutional models.
		
		For example, given an input of shape `[1, 1, 1, 4]`, data_format = "NHWC" and
		block_size = 2:
		
		```
		x = [[[[1, 2, 3, 4]]]]
		
		```
		
		This operation will output a tensor of shape `[1, 2, 2, 1]`:
		
		```
		   [[[[1], [2]],
		     [[3], [4]]]]
		```
		
		Here, the input has a batch of 1 and each batch element has shape `[1, 1, 4]`,
		the corresponding output will have 2x2 elements and will have a depth of
		1 channel (1 = `4 / (block_size * block_size)`).
		The output element shape is `[2, 2, 1]`.
		
		For an input tensor with larger depth, here of shape `[1, 1, 1, 12]`, e.g.
		
		```
		x = [[[[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]]]]
		```
		
		This operation, for block size of 2, will return the following tensor of shape
		`[1, 2, 2, 3]`
		
		```
		   [[[[1, 2, 3], [4, 5, 6]],
		     [[7, 8, 9], [10, 11, 12]]]]
		
		```
		
		Similarly, for the following input of shape `[1 2 2 4]`, and a block size of 2:
		
		```
		x =  [[[[1, 2, 3, 4],
		       [5, 6, 7, 8]],
		      [[9, 10, 11, 12],
		       [13, 14, 15, 16]]]]
		```
		
		the operator will return the following tensor of shape `[1 4 4 1]`:
		
		```
		x = [[[ [1],   [2],  [5],  [6]],
		      [ [3],   [4],  [7],  [8]],
		      [ [9],  [10], [13],  [14]],
		      [ [11], [12], [15],  [16]]]]
		
		```
		
		Args:
		  input: A `Tensor`.
		  block_size: An `int` that is `>= 2`.
		    The size of the spatial block, same as in Space2Depth.
		  data_format: An optional `string` from: `"NHWC", "NCHW", "NCHW_VECT_C"`. Defaults to `"NHWC"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function depth_to_space(input:Dynamic, block_size:Dynamic, ?name:Dynamic, ?data_format:Dynamic):Dynamic;
	/**
		Depthwise 2-D convolution.
		
		Given a 4D input tensor ('NHWC' or 'NCHW' data formats)
		and a filter tensor of shape
		`[filter_height, filter_width, in_channels, channel_multiplier]`
		containing `in_channels` convolutional filters of depth 1, `depthwise_conv2d`
		applies a different filter to each input channel (expanding from 1 channel
		to `channel_multiplier` channels for each), then concatenates the results
		together.  The output has `in_channels * channel_multiplier` channels.
		
		In detail,
		
		    output[b, i, j, k * channel_multiplier + q] = sum_{di, dj}
		         filter[di, dj, k, q] * input[b, strides[1] * i + rate[0] * di,
		                                         strides[2] * j + rate[1] * dj, k]
		
		Must have `strides[0] = strides[3] = 1`.  For the most common case of the
		same horizontal and vertical strides, `strides = [1, stride, stride, 1]`.
		If any value in `rate` is greater than 1, we perform atrous depthwise
		convolution, in which case all values in the `strides` tensor must be equal
		to 1.
		
		Args:
		  input: 4-D with shape according to `data_format`.
		  filter: 4-D with shape
		    `[filter_height, filter_width, in_channels, channel_multiplier]`.
		  strides: 1-D of size 4.  The stride of the sliding window for each
		    dimension of `input`.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm.
		    See the "returns" section of `tf.nn.convolution` for details.
		  rate: 1-D of size 2. The dilation rate in which we sample input values
		    across the `height` and `width` dimensions in atrous convolution. If it is
		    greater than 1, then all values of strides must be 1.
		  name: A name for this operation (optional).
		  data_format: The data format for input. Either "NHWC" (default) or "NCHW".
		
		Returns:
		  A 4-D `Tensor` with shape according to `data_format`.  E.g., for
		  "NHWC" format, shape is
		  `[batch, out_height, out_width, in_channels * channel_multiplier].`
	**/
	static public function depthwise_conv2d(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?rate:Dynamic, ?name:Dynamic, ?data_format:Dynamic):Dynamic;
	/**
		Computes the gradients of depthwise convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    4-D with shape based on `data_format`.  For example, if
		    `data_format` is 'NHWC' then `input` is a 4-D `[batch, in_height,
		    in_width, in_channels]` tensor.
		  filter_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the tensor shape of `filter`,
		    where `filter` is a 4-D
		    `[filter_height, filter_width, in_channels, depthwise_multiplier]` tensor.
		  out_backprop: A `Tensor`. Must have the same type as `input`.
		    4-D with shape  based on `data_format`.
		    For example, if `data_format` is 'NHWC' then
		    out_backprop shape is `[batch, out_height, out_width, out_channels]`.
		    Gradients w.r.t. the output of the convolution.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    of the convolution.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, height, width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, channels, height, width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each filter
		    element on that dimension. The dimension order is determined by the value of
		    `data_format`, see above for details. Dilations in the batch and depth
		    dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function depthwise_conv2d_backprop_filter(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of depthwise convolution with respect to the input.
		
		Args:
		  input_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the shape of `input`, based
		    on `data_format`.  For example, if `data_format` is 'NHWC' then
		     `input` is a 4-D `[batch, height, width, channels]` tensor.
		  filter: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    4-D with shape
		    `[filter_height, filter_width, in_channels, depthwise_multiplier]`.
		  out_backprop: A `Tensor`. Must have the same type as `filter`.
		    4-D with shape  based on `data_format`.
		    For example, if `data_format` is 'NHWC' then
		    out_backprop shape is `[batch, out_height, out_width, out_channels]`.
		    Gradients w.r.t. the output of the convolution.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    of the convolution.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, height, width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, channels, height, width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each filter
		    element on that dimension. The dimension order is determined by the value of
		    `data_format`, see above for details. Dilations in the batch and depth
		    dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `filter`.
	**/
	static public function depthwise_conv2d_backprop_input(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a 2-D depthwise convolution given 4-D `input` and `filter` tensors.
		
		Given an input tensor of shape `[batch, in_height, in_width, in_channels]`
		and a filter / kernel tensor of shape
		`[filter_height, filter_width, in_channels, channel_multiplier]`, containing
		`in_channels` convolutional filters of depth 1, `depthwise_conv2d` applies
		a different filter to each input channel (expanding from 1 channel to
		`channel_multiplier` channels for each), then concatenates the results
		together. Thus, the output has `in_channels * channel_multiplier` channels.
		
		```
		for k in 0..in_channels-1
		  for q in 0..channel_multiplier-1
		    output[b, i, j, k * channel_multiplier + q] =
		      sum_{di, dj} input[b, strides[1] * i + di, strides[2] * j + dj, k] *
		                        filter[di, dj, k, q]
		```
		
		Must have `strides[0] = strides[3] = 1`.  For the most common case of the same
		horizontal and vertices strides, `strides = [1, stride, stride, 1]`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  filter: A `Tensor`. Must have the same type as `input`.
		  strides: A list of `ints`.
		    1-D of length 4.  The stride of the sliding window for each dimension
		    of `input`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, height, width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, channels, height, width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each filter
		    element on that dimension. The dimension order is determined by the value of
		    `data_format`, see above for details. Dilations in the batch and depth
		    dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function depthwise_conv2d_native(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of depthwise convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    4-D with shape based on `data_format`.  For example, if
		    `data_format` is 'NHWC' then `input` is a 4-D `[batch, in_height,
		    in_width, in_channels]` tensor.
		  filter_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the tensor shape of `filter`,
		    where `filter` is a 4-D
		    `[filter_height, filter_width, in_channels, depthwise_multiplier]` tensor.
		  out_backprop: A `Tensor`. Must have the same type as `input`.
		    4-D with shape  based on `data_format`.
		    For example, if `data_format` is 'NHWC' then
		    out_backprop shape is `[batch, out_height, out_width, out_channels]`.
		    Gradients w.r.t. the output of the convolution.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    of the convolution.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, height, width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, channels, height, width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each filter
		    element on that dimension. The dimension order is determined by the value of
		    `data_format`, see above for details. Dilations in the batch and depth
		    dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function depthwise_conv2d_native_backprop_filter(input:Dynamic, filter_sizes:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of depthwise convolution with respect to the input.
		
		Args:
		  input_sizes: A `Tensor` of type `int32`.
		    An integer vector representing the shape of `input`, based
		    on `data_format`.  For example, if `data_format` is 'NHWC' then
		     `input` is a 4-D `[batch, height, width, channels]` tensor.
		  filter: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    4-D with shape
		    `[filter_height, filter_width, in_channels, depthwise_multiplier]`.
		  out_backprop: A `Tensor`. Must have the same type as `filter`.
		    4-D with shape  based on `data_format`.
		    For example, if `data_format` is 'NHWC' then
		    out_backprop shape is `[batch, out_height, out_width, out_channels]`.
		    Gradients w.r.t. the output of the convolution.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    of the convolution.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        [batch, height, width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		        [batch, channels, height, width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each filter
		    element on that dimension. The dimension order is determined by the value of
		    `data_format`, see above for details. Dilations in the batch and depth
		    dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `filter`.
	**/
	static public function depthwise_conv2d_native_backprop_input(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the grayscale dilation of 4-D `input` and 3-D `filter` tensors.
		
		The `input` tensor has shape `[batch, in_height, in_width, depth]` and the
		`filter` tensor has shape `[filter_height, filter_width, depth]`, i.e., each
		input channel is processed independently of the others with its own structuring
		function. The `output` tensor has shape
		`[batch, out_height, out_width, depth]`. The spatial dimensions of the output
		tensor depend on the `padding` algorithm. We currently only support the default
		"NHWC" `data_format`.
		
		In detail, the grayscale morphological 2-D dilation is the max-sum correlation
		(for consistency with `conv2d`, we use unmirrored filters):
		
		    output[b, y, x, c] =
		       max_{dy, dx} input[b,
		                          strides[1] * y + rates[1] * dy,
		                          strides[2] * x + rates[2] * dx,
		                          c] +
		                    filter[dy, dx, c]
		
		Max-pooling is a special case when the filter has size equal to the pooling
		kernel size and contains all zeros.
		
		Note on duality: The dilation of `input` by the `filter` is equal to the
		negation of the erosion of `-input` by the reflected `filter`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    4-D with shape `[batch, in_height, in_width, depth]`.
		  filter: A `Tensor`. Must have the same type as `input`.
		    3-D with shape `[filter_height, filter_width, depth]`.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the input
		    tensor. Must be: `[1, stride_height, stride_width, 1]`.
		  rates: A list of `ints` that has length `>= 4`.
		    The input stride for atrous morphological dilation. Must be:
		    `[1, rate_height, rate_width, 1]`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function dilation2d(input:Dynamic, filter:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes dropout. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(keep_prob)`. They will be removed in a future version.
		Instructions for updating:
		Please use `rate` instead of `keep_prob`. Rate should be set to `rate = 1 - keep_prob`.
		
		For each element of `x`, with probability `rate`, outputs `0`, and otherwise
		scales up the input by `1 / (1-rate)`. The scaling is such that the expected
		sum is unchanged.
		
		By default, each element is kept or dropped independently.  If `noise_shape`
		is specified, it must be
		[broadcastable](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		to the shape of `x`, and only dimensions with `noise_shape[i] == shape(x)[i]`
		will make independent decisions.  For example, if `shape(x) = [k, l, m, n]`
		and `noise_shape = [k, 1, 1, n]`, each batch and channel component will be
		kept independently and each row and column will be kept or not kept together.
		
		Args:
		  x: A floating point tensor.
		  keep_prob: (deprecated) A deprecated alias for `(1-rate)`.
		  noise_shape: A 1-D `Tensor` of type `int32`, representing the
		    shape for randomly generated keep/drop flags.
		  seed: A Python integer. Used to create random seeds. See
		    `tf.set_random_seed` for behavior.
		  name: A name for this operation (optional).
		  rate: A scalar `Tensor` with the same type as `x`. The probability that each
		    element of `x` is discarded.
		
		Returns:
		  A Tensor of the same shape of `x`.
		
		Raises:
		  ValueError: If `rate` is not in `[0, 1)` or if `x` is not a floating
		    point tensor.
	**/
	static public function dropout(x:Dynamic, ?keep_prob:Dynamic, ?noise_shape:Dynamic, ?seed:Dynamic, ?name:Dynamic, ?rate:Dynamic):Dynamic;
	/**
		Creates a recurrent neural network specified by RNNCell `cell`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use `keras.layers.RNN(cell)`, which is equivalent to this API
		
		Performs fully dynamic unrolling of `inputs`.
		
		Example:
		
		```python
		# create a BasicRNNCell
		rnn_cell = tf.nn.rnn_cell.BasicRNNCell(hidden_size)
		
		# 'outputs' is a tensor of shape [batch_size, max_time, cell_state_size]
		
		# defining initial state
		initial_state = rnn_cell.zero_state(batch_size, dtype=tf.float32)
		
		# 'state' is a tensor of shape [batch_size, cell_state_size]
		outputs, state = tf.nn.dynamic_rnn(rnn_cell, input_data,
		                                   initial_state=initial_state,
		                                   dtype=tf.float32)
		```
		
		```python
		# create 2 LSTMCells
		rnn_layers = [tf.nn.rnn_cell.LSTMCell(size) for size in [128, 256]]
		
		# create a RNN cell composed sequentially of a number of RNNCells
		multi_rnn_cell = tf.nn.rnn_cell.MultiRNNCell(rnn_layers)
		
		# 'outputs' is a tensor of shape [batch_size, max_time, 256]
		# 'state' is a N-tuple where N is the number of LSTMCells containing a
		# tf.contrib.rnn.LSTMStateTuple for each cell
		outputs, state = tf.nn.dynamic_rnn(cell=multi_rnn_cell,
		                                   inputs=data,
		                                   dtype=tf.float32)
		```
		
		
		Args:
		  cell: An instance of RNNCell.
		  inputs: The RNN inputs.
		    If `time_major == False` (default), this must be a `Tensor` of shape:
		      `[batch_size, max_time, ...]`, or a nested tuple of such
		      elements.
		    If `time_major == True`, this must be a `Tensor` of shape:
		      `[max_time, batch_size, ...]`, or a nested tuple of such
		      elements.
		    This may also be a (possibly nested) tuple of Tensors satisfying
		    this property.  The first two dimensions must match across all the inputs,
		    but otherwise the ranks and other shape components may differ.
		    In this case, input to `cell` at each time-step will replicate the
		    structure of these tuples, except for the time dimension (from which the
		    time is taken).
		    The input to `cell` at each time step will be a `Tensor` or (possibly
		    nested) tuple of Tensors each with dimensions `[batch_size, ...]`.
		  sequence_length: (optional) An int32/int64 vector sized `[batch_size]`.
		    Used to copy-through state and zero-out outputs when past a batch
		    element's sequence length.  So it's more for performance than correctness.
		  initial_state: (optional) An initial state for the RNN.
		    If `cell.state_size` is an integer, this must be
		    a `Tensor` of appropriate type and shape `[batch_size, cell.state_size]`.
		    If `cell.state_size` is a tuple, this should be a tuple of
		    tensors having shapes `[batch_size, s] for s in cell.state_size`.
		  dtype: (optional) The data type for the initial state and expected output.
		    Required if initial_state is not provided or RNN state has a heterogeneous
		    dtype.
		  parallel_iterations: (Default: 32).  The number of iterations to run in
		    parallel.  Those operations which do not have any temporal dependency
		    and can be run in parallel, will be.  This parameter trades off
		    time for space.  Values >> 1 use more memory but take less time,
		    while smaller values use less memory but computations take longer.
		  swap_memory: Transparently swap the tensors produced in forward inference
		    but needed for back prop from GPU to CPU.  This allows training RNNs
		    which would typically not fit on a single GPU, with very minimal (or no)
		    performance penalty.
		  time_major: The shape format of the `inputs` and `outputs` Tensors.
		    If true, these `Tensors` must be shaped `[max_time, batch_size, depth]`.
		    If false, these `Tensors` must be shaped `[batch_size, max_time, depth]`.
		    Using `time_major = True` is a bit more efficient because it avoids
		    transposes at the beginning and end of the RNN calculation.  However,
		    most TensorFlow data is batch-major, so by default this function
		    accepts input and emits output in batch-major form.
		  scope: VariableScope for the created subgraph; defaults to "rnn".
		
		Returns:
		  A pair (outputs, state) where:
		
		  outputs: The RNN output `Tensor`.
		
		    If time_major == False (default), this will be a `Tensor` shaped:
		      `[batch_size, max_time, cell.output_size]`.
		
		    If time_major == True, this will be a `Tensor` shaped:
		      `[max_time, batch_size, cell.output_size]`.
		
		    Note, if `cell.output_size` is a (possibly nested) tuple of integers
		    or `TensorShape` objects, then `outputs` will be a tuple having the
		    same structure as `cell.output_size`, containing Tensors having shapes
		    corresponding to the shape data in `cell.output_size`.
		
		  state: The final state.  If `cell.state_size` is an int, this
		    will be shaped `[batch_size, cell.state_size]`.  If it is a
		    `TensorShape`, this will be shaped `[batch_size] + cell.state_size`.
		    If it is a (possibly nested) tuple of ints or `TensorShape`, this will
		    be a tuple having the corresponding shapes. If cells are `LSTMCells`
		    `state` will be a tuple containing a `LSTMStateTuple` for each cell.
		
		Raises:
		  TypeError: If `cell` is not an instance of RNNCell.
		  ValueError: If inputs is None or an empty list.
	**/
	static public function dynamic_rnn(cell:Dynamic, inputs:Dynamic, ?sequence_length:Dynamic, ?initial_state:Dynamic, ?dtype:Dynamic, ?parallel_iterations:Dynamic, ?swap_memory:Dynamic, ?time_major:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Computes exponential linear: `exp(features) - 1` if < 0, `features` otherwise.
		
		See [Fast and Accurate Deep Network Learning by Exponential Linear Units (ELUs)
		](http://arxiv.org/abs/1511.07289)
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function elu(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Looks up `ids` in a list of embedding tensors.
		
		This function is used to perform parallel lookups on the list of
		tensors in `params`.  It is a generalization of
		`tf.gather`, where `params` is
		interpreted as a partitioning of a large embedding tensor.  `params` may be
		a `PartitionedVariable` as returned by using `tf.get_variable()` with a
		partitioner.
		
		If `len(params) > 1`, each element `id` of `ids` is partitioned between
		the elements of `params` according to the `partition_strategy`.
		In all strategies, if the id space does not evenly divide the number of
		partitions, each of the first `(max_id + 1) % len(params)` partitions will
		be assigned one more id.
		
		If `partition_strategy` is `"mod"`, we assign each id to partition
		`p = id % len(params)`. For instance,
		13 ids are split across 5 partitions as:
		`[[0, 5, 10], [1, 6, 11], [2, 7, 12], [3, 8], [4, 9]]`
		
		If `partition_strategy` is `"div"`, we assign ids to partitions in a
		contiguous manner. In this case, 13 ids are split across 5 partitions as:
		`[[0, 1, 2], [3, 4, 5], [6, 7, 8], [9, 10], [11, 12]]`
		
		The results of the lookup are concatenated into a dense
		tensor. The returned tensor has shape `shape(ids) + shape(params)[1:]`.
		
		Args:
		  params: A single tensor representing the complete embedding tensor,
		    or a list of P tensors all of same shape except for the first dimension,
		    representing sharded embedding tensors.  Alternatively, a
		    `PartitionedVariable`, created by partitioning along dimension 0. Each
		    element must be appropriately sized for the given `partition_strategy`.
		  ids: A `Tensor` with type `int32` or `int64` containing the ids to be looked
		    up in `params`.
		  partition_strategy: A string specifying the partitioning strategy, relevant
		    if `len(params) > 1`. Currently `"div"` and `"mod"` are supported. Default
		    is `"mod"`.
		  name: A name for the operation (optional).
		  validate_indices: DEPRECATED. If this operation is assigned to CPU, values
		    in `indices` are always validated to be within range.  If assigned to GPU,
		    out-of-bound indices result in safe but unspecified behavior, which may
		    include raising an error.
		  max_norm: If not `None`, each embedding is clipped if its l2-norm is
		    larger than this value.
		
		Returns:
		  A `Tensor` with the same type as the tensors in `params`.
		
		Raises:
		  ValueError: If `params` is empty.
	**/
	static public function embedding_lookup(params:Dynamic, ids:Dynamic, ?partition_strategy:Dynamic, ?name:Dynamic, ?validate_indices:Dynamic, ?max_norm:Dynamic):Dynamic;
	/**
		Computes embeddings for the given ids and weights.
		
		This op assumes that there is at least one id for each row in the dense tensor
		represented by sp_ids (i.e. there are no rows with empty features), and that
		all the indices of sp_ids are in canonical row-major order.
		
		It also assumes that all id values lie in the range [0, p0), where p0
		is the sum of the size of params along dimension 0.
		
		Args:
		  params: A single tensor representing the complete embedding tensor,
		    or a list of P tensors all of same shape except for the first dimension,
		    representing sharded embedding tensors.  Alternatively, a
		    `PartitionedVariable`, created by partitioning along dimension 0. Each
		    element must be appropriately sized for the given `partition_strategy`.
		  sp_ids: N x M `SparseTensor` of int64 ids where N is typically batch size
		    and M is arbitrary.
		  sp_weights: either a `SparseTensor` of float / double weights, or `None` to
		    indicate all weights should be taken to be 1. If specified, `sp_weights`
		    must have exactly the same shape and indices as `sp_ids`.
		  partition_strategy: A string specifying the partitioning strategy, relevant
		    if `len(params) > 1`. Currently `"div"` and `"mod"` are supported. Default
		    is `"mod"`. See `tf.nn.embedding_lookup` for more details.
		  name: Optional name for the op.
		  combiner: A string specifying the reduction op. Currently "mean", "sqrtn"
		    and "sum" are supported.
		    "sum" computes the weighted sum of the embedding results for each row.
		    "mean" is the weighted sum divided by the total weight.
		    "sqrtn" is the weighted sum divided by the square root of the sum of the
		    squares of the weights.
		  max_norm: If not `None`, each embedding is clipped if its l2-norm is
		    larger than this value, before combining.
		
		Returns:
		  A dense tensor representing the combined embeddings for the
		  sparse ids. For each row in the dense tensor represented by `sp_ids`, the op
		  looks up the embeddings for all ids in that row, multiplies them by the
		  corresponding weight, and combines these embeddings as specified.
		
		  In other words, if
		
		    `shape(combined params) = [p0, p1, ..., pm]`
		
		  and
		
		    `shape(sp_ids) = shape(sp_weights) = [d0, d1, ..., dn]`
		
		  then
		
		    `shape(output) = [d0, d1, ..., dn-1, p1, ..., pm]`.
		
		  For instance, if params is a 10x20 matrix, and sp_ids / sp_weights are
		
		    ```python
		    [0, 0]: id 1, weight 2.0
		    [0, 1]: id 3, weight 0.5
		    [1, 0]: id 0, weight 1.0
		    [2, 3]: id 1, weight 3.0
		    ```
		
		  with `combiner`="mean", then the output will be a 3x20 matrix where
		
		    ```python
		    output[0, :] = (params[1, :] * 2.0 + params[3, :] * 0.5) / (2.0 + 0.5)
		    output[1, :] = (params[0, :] * 1.0) / 1.0
		    output[2, :] = (params[1, :] * 3.0) / 3.0
		    ```
		
		Raises:
		  TypeError: If `sp_ids` is not a `SparseTensor`, or if `sp_weights` is
		    neither `None` nor `SparseTensor`.
		  ValueError: If `combiner` is not one of {"mean", "sqrtn", "sum"}.
	**/
	static public function embedding_lookup_sparse(params:Dynamic, sp_ids:Dynamic, sp_weights:Dynamic, ?partition_strategy:Dynamic, ?name:Dynamic, ?combiner:Dynamic, ?max_norm:Dynamic):Dynamic;
	/**
		Computes the grayscale erosion of 4-D `value` and 3-D `kernel` tensors.
		
		The `value` tensor has shape `[batch, in_height, in_width, depth]` and the
		`kernel` tensor has shape `[kernel_height, kernel_width, depth]`, i.e.,
		each input channel is processed independently of the others with its own
		structuring function. The `output` tensor has shape
		`[batch, out_height, out_width, depth]`. The spatial dimensions of the
		output tensor depend on the `padding` algorithm. We currently only support the
		default "NHWC" `data_format`.
		
		In detail, the grayscale morphological 2-D erosion is given by:
		
		    output[b, y, x, c] =
		       min_{dy, dx} value[b,
		                          strides[1] * y - rates[1] * dy,
		                          strides[2] * x - rates[2] * dx,
		                          c] -
		                    kernel[dy, dx, c]
		
		Duality: The erosion of `value` by the `kernel` is equal to the negation of
		the dilation of `-value` by the reflected `kernel`.
		
		Args:
		  value: A `Tensor`. 4-D with shape `[batch, in_height, in_width, depth]`.
		  kernel: A `Tensor`. Must have the same type as `value`.
		    3-D with shape `[kernel_height, kernel_width, depth]`.
		  strides: A list of `ints` that has length `>= 4`.
		    1-D of length 4. The stride of the sliding window for each dimension of
		    the input tensor. Must be: `[1, stride_height, stride_width, 1]`.
		  rates: A list of `ints` that has length `>= 4`.
		    1-D of length 4. The input stride for atrous morphological dilation.
		    Must be: `[1, rate_height, rate_width, 1]`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional). If not specified "erosion2d"
		    is used.
		
		Returns:
		  A `Tensor`. Has the same type as `value`.
		  4-D with shape `[batch, out_height, out_width, depth]`.
		
		Raises:
		  ValueError: If the `value` depth does not match `kernel`' shape, or if
		    padding is other than `'VALID'` or `'SAME'`.
	**/
	static public function erosion2d(value:Dynamic, kernel:Dynamic, strides:Dynamic, rates:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Samples a set of classes using the provided (fixed) base distribution.
		
		This operation randomly samples a tensor of sampled classes
		(`sampled_candidates`) from the range of integers `[0, range_max)`.
		
		The elements of `sampled_candidates` are drawn without replacement
		(if `unique=True`) or with replacement (if `unique=False`) from
		the base distribution.
		
		The base distribution is read from a file or passed in as an
		in-memory array. There is also an option to skew the distribution by
		applying a distortion power to the weights.
		
		In addition, this operation returns tensors `true_expected_count`
		and `sampled_expected_count` representing the number of times each
		of the target classes (`true_classes`) and the sampled
		classes (`sampled_candidates`) is expected to occur in an average
		tensor of sampled classes.  These values correspond to `Q(y|x)`
		defined in [this
		document](http://www.tensorflow.org/extras/candidate_sampling.pdf).
		If `unique=True`, then these are post-rejection probabilities and we
		compute them approximately.
		
		Args:
		  true_classes: A `Tensor` of type `int64` and shape `[batch_size,
		    num_true]`. The target classes.
		  num_true: An `int`.  The number of target classes per training example.
		  num_sampled: An `int`.  The number of classes to randomly sample.
		  unique: A `bool`. Determines whether all sampled classes in a batch are
		    unique.
		  range_max: An `int`. The number of possible classes.
		  vocab_file: Each valid line in this file (which should have a CSV-like
		    format) corresponds to a valid word ID. IDs are in sequential order,
		    starting from num_reserved_ids. The last entry in each line is expected
		    to be a value corresponding to the count or relative probability. Exactly
		    one of `vocab_file` and `unigrams` needs to be passed to this operation.
		  distortion: The distortion is used to skew the unigram probability
		    distribution.  Each weight is first raised to the distortion's power
		    before adding to the internal unigram distribution. As a result,
		    `distortion = 1.0` gives regular unigram sampling (as defined by the vocab
		    file), and `distortion = 0.0` gives a uniform distribution.
		  num_reserved_ids: Optionally some reserved IDs can be added in the range
		    `[0, num_reserved_ids)` by the users. One use case is that a special
		    unknown word token is used as ID 0. These IDs will have a sampling
		    probability of 0.
		  num_shards: A sampler can be used to sample from a subset of the original
		    range in order to speed up the whole computation through parallelism. This
		    parameter (together with `shard`) indicates the number of partitions that
		    are being used in the overall computation.
		  shard: A sampler can be used to sample from a subset of the original range
		    in order to speed up the whole computation through parallelism. This
		    parameter (together with `num_shards`) indicates the particular partition
		    number of the operation, when partitioning is being used.
		  unigrams: A list of unigram counts or probabilities, one per ID in
		    sequential order. Exactly one of `vocab_file` and `unigrams` should be
		    passed to this operation.
		  seed: An `int`. An operation-specific seed. Default is 0.
		  name: A name for the operation (optional).
		
		Returns:
		  sampled_candidates: A tensor of type `int64` and shape `[num_sampled]`.
		    The sampled classes.
		  true_expected_count: A tensor of type `float`.  Same shape as
		    `true_classes`. The expected counts under the sampling distribution
		    of each of `true_classes`.
		  sampled_expected_count: A tensor of type `float`. Same shape as
		    `sampled_candidates`. The expected counts under the sampling distribution
		    of each of `sampled_candidates`.
	**/
	static public function fixed_unigram_candidate_sampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?vocab_file:Dynamic, ?distortion:Dynamic, ?num_reserved_ids:Dynamic, ?num_shards:Dynamic, ?shard:Dynamic, ?unigrams:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs fractional average pooling on the input. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		`seed2` and `deterministic` args are deprecated.  Use fractional_avg_pool_v2.
		
		This is a deprecated version of `fractional_avg_pool`.
		
		Fractional average pooling is similar to Fractional max pooling in the pooling
		region generation step. The only difference is that after pooling regions are
		generated, a mean operation is performed instead of a max operation in each
		pooling region.
		
		Args:
		  value: A `Tensor`. 4-D with shape `[batch, height, width, channels]`.
		  pooling_ratio: A list of `floats` that has length >= 4.  Pooling ratio for
		    each dimension of `value`, currently only supports row and col dimension
		    and should be >= 1.0. For example, a valid pooling ratio looks like [1.0,
		    1.44, 1.73, 1.0]. The first and last elements must be 1.0 because we don't
		    allow pooling on batch and channels dimensions.  1.44 and 1.73 are pooling
		    ratio on height and width dimensions respectively.
		  pseudo_random: An optional `bool`.  Defaults to `False`. When set to `True`,
		    generates the pooling sequence in a pseudorandom fashion, otherwise, in a
		    random fashion. Check paper [Benjamin Graham, Fractional
		    Max-Pooling](http://arxiv.org/abs/1412.6071) for difference between
		    pseudorandom and random.
		  overlapping: An optional `bool`.  Defaults to `False`.  When set to `True`,
		    it means when pooling, the values at the boundary of adjacent pooling
		    cells are used by both cells. For example:
		    `index  0  1  2  3  4`
		    `value  20 5  16 3  7`
		    If the pooling sequence is [0, 2, 4], then 16, at index 2 will be used
		    twice.  The result would be [20, 16] for fractional avg pooling.
		  deterministic: An optional `bool`.  Deprecated; use `fractional_avg_pool_v2`
		    instead.
		  seed: An optional `int`.  Defaults to `0`.  If set to be non-zero, the
		    random number generator is seeded by the given seed.  Otherwise it is
		    seeded by a random seed.
		  seed2: An optional `int`.  Deprecated; use `fractional_avg_pool_v2` instead.
		  name: A name for the operation (optional).
		
		Returns:
		A tuple of `Tensor` objects (`output`, `row_pooling_sequence`,
		`col_pooling_sequence`).
		  output: Output `Tensor` after fractional avg pooling.  Has the same type as
		    `value`.
		  row_pooling_sequence: A `Tensor` of type `int64`.
		  col_pooling_sequence: A `Tensor` of type `int64`.
	**/
	static public function fractional_avg_pool(value:Dynamic, pooling_ratio:Dynamic, ?pseudo_random:Dynamic, ?overlapping:Dynamic, ?deterministic:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs fractional max pooling on the input. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		`seed2` and `deterministic` args are deprecated.  Use fractional_max_pool_v2.
		
		This is a deprecated version of `fractional_max_pool`.
		
		Fractional max pooling is slightly different than regular max pooling.  In
		regular max pooling, you downsize an input set by taking the maximum value of
		smaller N x N subsections of the set (often 2x2), and try to reduce the set by
		a factor of N, where N is an integer.  Fractional max pooling, as you might
		expect from the word "fractional", means that the overall reduction ratio N
		does not have to be an integer.
		
		The sizes of the pooling regions are generated randomly but are fairly
		uniform.  For example, let's look at the height dimension, and the constraints
		on the list of rows that will be pool boundaries.
		
		First we define the following:
		
		1.  input_row_length : the number of rows from the input set
		2.  output_row_length : which will be smaller than the input
		3.  alpha = input_row_length / output_row_length : our reduction ratio
		4.  K = floor(alpha)
		5.  row_pooling_sequence : this is the result list of pool boundary rows
		
		Then, row_pooling_sequence should satisfy:
		
		1.  a[0] = 0 : the first value of the sequence is 0
		2.  a[end] = input_row_length : the last value of the sequence is the size
		3.  K <= (a[i+1] - a[i]) <= K+1 : all intervals are K or K+1 size
		4.  length(row_pooling_sequence) = output_row_length+1
		
		For more details on fractional max pooling, see this paper: [Benjamin Graham,
		Fractional Max-Pooling](http://arxiv.org/abs/1412.6071)
		
		Args:
		  value: A `Tensor`. 4-D with shape `[batch, height, width, channels]`.
		  pooling_ratio: A list of `floats` that has length >= 4.  Pooling ratio for
		    each dimension of `value`, currently only supports row and col dimension
		    and should be >= 1.0. For example, a valid pooling ratio looks like [1.0,
		    1.44, 1.73, 1.0]. The first and last elements must be 1.0 because we don't
		    allow pooling on batch and channels dimensions.  1.44 and 1.73 are pooling
		    ratio on height and width dimensions respectively.
		  pseudo_random: An optional `bool`.  Defaults to `False`. When set to `True`,
		    generates the pooling sequence in a pseudorandom fashion, otherwise, in a
		    random fashion. Check paper [Benjamin Graham, Fractional
		    Max-Pooling](http://arxiv.org/abs/1412.6071) for difference between
		    pseudorandom and random.
		  overlapping: An optional `bool`.  Defaults to `False`.  When set to `True`,
		    it means when pooling, the values at the boundary of adjacent pooling
		    cells are used by both cells. For example:
		    `index  0  1  2  3  4`
		    `value  20 5  16 3  7`
		    If the pooling sequence is [0, 2, 4], then 16, at index 2 will be used
		    twice.  The result would be [20, 16] for fractional max pooling.
		  deterministic: An optional `bool`.  Deprecated; use `fractional_max_pool_v2`
		    instead.
		  seed: An optional `int`.  Defaults to `0`.  If set to be non-zero, the
		    random number generator is seeded by the given seed.  Otherwise it is
		    seeded by a random seed.
		  seed2: An optional `int`.  Deprecated; use `fractional_max_pool_v2` instead.
		  name: A name for the operation (optional).
		
		Returns:
		A tuple of `Tensor` objects (`output`, `row_pooling_sequence`,
		`col_pooling_sequence`).
		  output: Output `Tensor` after fractional max pooling.  Has the same type as
		    `value`.
		  row_pooling_sequence: A `Tensor` of type `int64`.
		  col_pooling_sequence: A `Tensor` of type `int64`.
	**/
	static public function fractional_max_pool(value:Dynamic, pooling_ratio:Dynamic, ?pseudo_random:Dynamic, ?overlapping:Dynamic, ?deterministic:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Batch normalization.
		
		As described in http://arxiv.org/abs/1502.03167.
		
		Args:
		  x: Input `Tensor` of 4 dimensions.
		  scale: A `Tensor` of 1 dimension for scaling.
		  offset: A `Tensor` of 1 dimension for bias.
		  mean: A `Tensor` of 1 dimension for population mean used for inference.
		  variance: A `Tensor` of 1 dimension for population variance
		            used for inference.
		  epsilon: A small float number added to the variance of x.
		  data_format: The data format for x. Either "NHWC" (default) or "NCHW".
		  is_training: A bool value to specify if the operation is used for
		               training or inference.
		  name: A name for this operation (optional).
		
		Returns:
		  y: A 4D Tensor for the normalized, scaled, offsetted x.
		  batch_mean: A 1D Tensor for the mean of x.
		  batch_var: A 1D Tensor for the variance of x.
		
		Raises:
		  ValueError: If mean or variance is not None when is_training is True.
	**/
	static public function fused_batch_norm(x:Dynamic, scale:Dynamic, offset:Dynamic, ?mean:Dynamic, ?variance:Dynamic, ?epsilon:Dynamic, ?data_format:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Says whether the targets are in the top `K` predictions.
		
		This outputs a `batch_size` bool array, an entry `out[i]` is `true` if the
		prediction for the target class is among the top `k` predictions among
		all predictions for example `i`. Note that the behavior of `InTopK` differs
		from the `TopK` op in its handling of ties; if multiple classes have the
		same prediction value and straddle the top-`k` boundary, all of those
		classes are considered to be in the top `k`.
		
		More formally, let
		
		  \\(predictions_i\\) be the predictions for all classes for example `i`,
		  \\(targets_i\\) be the target class for example `i`,
		  \\(out_i\\) be the output for example `i`,
		
		$$out_i = predictions_{i, targets_i} \in TopKIncludingTies(predictions_i)$$
		
		Args:
		  predictions: A `Tensor` of type `float32`.
		    A `batch_size` x `classes` tensor.
		  targets: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A `batch_size` vector of class ids.
		  k: An `int`. Number of top elements to look at for computing precision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`. Computed Precision at `k` as a `bool Tensor`.
	**/
	static public function in_top_k(predictions:Dynamic, targets:Dynamic, k:Dynamic, ?name:Dynamic):Dynamic;
	/**
		L2 Loss.
		
		Computes half the L2 norm of a tensor without the `sqrt`:
		
		    output = sum(t ** 2) / 2
		
		Args:
		  t: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    Typically 2-D, but may have any dimensions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `t`.
	**/
	static public function l2_loss(t:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Normalizes along dimension `axis` using an L2 norm. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dim)`. They will be removed in a future version.
		Instructions for updating:
		dim is deprecated, use axis instead
		
		For a 1-D tensor with `axis = 0`, computes
		
		    output = x / sqrt(max(sum(x**2), epsilon))
		
		For `x` with more dimensions, independently normalizes each 1-D slice along
		dimension `axis`.
		
		Args:
		  x: A `Tensor`.
		  axis: Dimension along which to normalize.  A scalar or a vector of
		    integers.
		  epsilon: A lower bound value for the norm. Will use `sqrt(epsilon)` as the
		    divisor if `norm < sqrt(epsilon)`.
		  name: A name for this operation (optional).
		  dim: Deprecated alias for axis.
		
		Returns:
		  A `Tensor` with the same shape as `x`.
	**/
	static public function l2_normalize(x:Dynamic, ?axis:Dynamic, ?epsilon:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Compute the Leaky ReLU activation function.
		
		"Rectifier Nonlinearities Improve Neural Network Acoustic Models"
		AL Maas, AY Hannun, AY Ng - Proc. ICML, 2013
		https://ai.stanford.edu/~amaas/papers/relu_hybrid_icml2013_final.pdf
		
		Args:
		  features: A `Tensor` representing preactivation values. Must be one of
		    the following types: `float16`, `float32`, `float64`, `int32`, `int64`.
		  alpha: Slope of the activation function at x < 0.
		  name: A name for the operation (optional).
		
		Returns:
		  The activation value.
	**/
	static public function leaky_relu(features:Dynamic, ?alpha:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Samples a set of classes from a distribution learned during training.
		
		This operation randomly samples a tensor of sampled classes
		(`sampled_candidates`) from the range of integers `[0, range_max)`.
		
		The elements of `sampled_candidates` are drawn without replacement
		(if `unique=True`) or with replacement (if `unique=False`) from
		the base distribution.
		
		The base distribution for this operation is constructed on the fly
		during training.  It is a unigram distribution over the target
		classes seen so far during training.  Every integer in `[0, range_max)`
		begins with a weight of 1, and is incremented by 1 each time it is
		seen as a target class.  The base distribution is not saved to checkpoints,
		so it is reset when the model is reloaded.
		
		In addition, this operation returns tensors `true_expected_count`
		and `sampled_expected_count` representing the number of times each
		of the target classes (`true_classes`) and the sampled
		classes (`sampled_candidates`) is expected to occur in an average
		tensor of sampled classes.  These values correspond to `Q(y|x)`
		defined in [this
		document](http://www.tensorflow.org/extras/candidate_sampling.pdf).
		If `unique=True`, then these are post-rejection probabilities and we
		compute them approximately.
		
		Args:
		  true_classes: A `Tensor` of type `int64` and shape `[batch_size,
		    num_true]`. The target classes.
		  num_true: An `int`.  The number of target classes per training example.
		  num_sampled: An `int`.  The number of classes to randomly sample.
		  unique: A `bool`. Determines whether all sampled classes in a batch are
		    unique.
		  range_max: An `int`. The number of possible classes.
		  seed: An `int`. An operation-specific seed. Default is 0.
		  name: A name for the operation (optional).
		
		Returns:
		  sampled_candidates: A tensor of type `int64` and shape `[num_sampled]`.
		    The sampled classes.
		  true_expected_count: A tensor of type `float`.  Same shape as
		    `true_classes`. The expected counts under the sampling distribution
		    of each of `true_classes`.
		  sampled_expected_count: A tensor of type `float`. Same shape as
		    `sampled_candidates`. The expected counts under the sampling distribution
		    of each of `sampled_candidates`.
	**/
	static public function learned_unigram_candidate_sampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Local Response Normalization.
		
		The 4-D `input` tensor is treated as a 3-D array of 1-D vectors (along the last
		dimension), and each vector is normalized independently.  Within a given vector,
		each component is divided by the weighted, squared sum of inputs within
		`depth_radius`.  In detail,
		
		    sqr_sum[a, b, c, d] =
		        sum(input[a, b, c, d - depth_radius : d + depth_radius + 1] ** 2)
		    output = input / (bias + alpha * sqr_sum) ** beta
		
		For details, see [Krizhevsky et al., ImageNet classification with deep
		convolutional neural networks (NIPS 2012)](http://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks).
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
		    4-D.
		  depth_radius: An optional `int`. Defaults to `5`.
		    0-D.  Half-width of the 1-D normalization window.
		  bias: An optional `float`. Defaults to `1`.
		    An offset (usually positive to avoid dividing by 0).
		  alpha: An optional `float`. Defaults to `1`.
		    A scale factor, usually positive.
		  beta: An optional `float`. Defaults to `0.5`. An exponent.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function local_response_normalization(input:Dynamic, ?depth_radius:Dynamic, ?bias:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes log Poisson loss given `log_input`.
		
		Gives the log-likelihood loss between the prediction and the target under the
		assumption that the target has a Poisson distribution.
		Caveat: By default, this is not the exact loss, but the loss minus a
		  constant term [log(z!)]. That has no effect for optimization, but
		  does not play well with relative loss comparisons. To compute an
		  approximation of the log factorial term, specify
		  compute_full_loss=True to enable Stirling's Approximation.
		
		For brevity, let `c = log(x) = log_input`, `z = targets`.  The log Poisson
		loss is
		
		      -log(exp(-x) * (x^z) / z!)
		    = -log(exp(-x) * (x^z)) + log(z!)
		    ~ -log(exp(-x)) - log(x^z) [+ z * log(z) - z + 0.5 * log(2 * pi * z)]
		        [ Note the second term is the Stirling's Approximation for log(z!).
		          It is invariant to x and does not affect optimization, though
		          important for correct relative loss comparisons. It is only
		          computed when compute_full_loss == True. ]
		    = x - z * log(x) [+ z * log(z) - z + 0.5 * log(2 * pi * z)]
		    = exp(c) - z * c [+ z * log(z) - z + 0.5 * log(2 * pi * z)]
		
		Args:
		  targets: A `Tensor` of the same type and shape as `log_input`.
		  log_input: A `Tensor` of type `float32` or `float64`.
		  compute_full_loss: whether to compute the full loss. If false, a constant
		    term is dropped in favor of more efficient optimization.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `log_input` with the componentwise
		  logistic losses.
		
		Raises:
		  ValueError: If `log_input` and `targets` do not have the same shape.
	**/
	static public function log_poisson_loss(targets:Dynamic, log_input:Dynamic, ?compute_full_loss:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes log softmax activations. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dim)`. They will be removed in a future version.
		Instructions for updating:
		dim is deprecated, use axis instead
		
		For each batch `i` and class `j` we have
		
		    logsoftmax = logits - log(reduce_sum(exp(logits), axis))
		
		Args:
		  logits: A non-empty `Tensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  axis: The dimension softmax would be performed on. The default is -1 which
		    indicates the last dimension.
		  name: A name for the operation (optional).
		  dim: Deprecated alias for `axis`.
		
		Returns:
		  A `Tensor`. Has the same type as `logits`. Same shape as `logits`.
		
		Raises:
		  InvalidArgumentError: if `logits` is empty or `axis` is beyond the last
		    dimension of `logits`.
	**/
	static public function log_softmax(logits:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Samples a set of classes using a log-uniform (Zipfian) base distribution.
		
		This operation randomly samples a tensor of sampled classes
		(`sampled_candidates`) from the range of integers `[0, range_max)`.
		
		The elements of `sampled_candidates` are drawn without replacement
		(if `unique=True`) or with replacement (if `unique=False`) from
		the base distribution.
		
		The base distribution for this operation is an approximately log-uniform
		or Zipfian distribution:
		
		`P(class) = (log(class + 2) - log(class + 1)) / log(range_max + 1)`
		
		This sampler is useful when the target classes approximately follow such
		a distribution - for example, if the classes represent words in a lexicon
		sorted in decreasing order of frequency. If your classes are not ordered by
		decreasing frequency, do not use this op.
		
		In addition, this operation returns tensors `true_expected_count`
		and `sampled_expected_count` representing the number of times each
		of the target classes (`true_classes`) and the sampled
		classes (`sampled_candidates`) is expected to occur in an average
		tensor of sampled classes.  These values correspond to `Q(y|x)`
		defined in [this
		document](http://www.tensorflow.org/extras/candidate_sampling.pdf).
		If `unique=True`, then these are post-rejection probabilities and we
		compute them approximately.
		
		Args:
		  true_classes: A `Tensor` of type `int64` and shape `[batch_size,
		    num_true]`. The target classes.
		  num_true: An `int`.  The number of target classes per training example.
		  num_sampled: An `int`.  The number of classes to randomly sample.
		  unique: A `bool`. Determines whether all sampled classes in a batch are
		    unique.
		  range_max: An `int`. The number of possible classes.
		  seed: An `int`. An operation-specific seed. Default is 0.
		  name: A name for the operation (optional).
		
		Returns:
		  sampled_candidates: A tensor of type `int64` and shape `[num_sampled]`.
		    The sampled classes.
		  true_expected_count: A tensor of type `float`.  Same shape as
		    `true_classes`. The expected counts under the sampling distribution
		    of each of `true_classes`.
		  sampled_expected_count: A tensor of type `float`. Same shape as
		    `sampled_candidates`. The expected counts under the sampling distribution
		    of each of `sampled_candidates`.
	**/
	static public function log_uniform_candidate_sampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Local Response Normalization.
		
		The 4-D `input` tensor is treated as a 3-D array of 1-D vectors (along the last
		dimension), and each vector is normalized independently.  Within a given vector,
		each component is divided by the weighted, squared sum of inputs within
		`depth_radius`.  In detail,
		
		    sqr_sum[a, b, c, d] =
		        sum(input[a, b, c, d - depth_radius : d + depth_radius + 1] ** 2)
		    output = input / (bias + alpha * sqr_sum) ** beta
		
		For details, see [Krizhevsky et al., ImageNet classification with deep
		convolutional neural networks (NIPS 2012)](http://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks).
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
		    4-D.
		  depth_radius: An optional `int`. Defaults to `5`.
		    0-D.  Half-width of the 1-D normalization window.
		  bias: An optional `float`. Defaults to `1`.
		    An offset (usually positive to avoid dividing by 0).
		  alpha: An optional `float`. Defaults to `1`.
		    A scale factor, usually positive.
		  beta: An optional `float`. Defaults to `0.5`. An exponent.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function lrn(input:Dynamic, ?depth_radius:Dynamic, ?bias:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs the max pooling on the input.
		
		Args:
		  value: A 4-D `Tensor` of the format specified by `data_format`.
		  ksize: A list or tuple of 4 ints. The size of the window for each dimension
		    of the input tensor.
		  strides: A list or tuple of 4 ints. The stride of the sliding window for
		    each dimension of the input tensor.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm.
		    See the "returns" section of `tf.nn.convolution` for details.
		  data_format: A string. 'NHWC', 'NCHW' and 'NCHW_VECT_C' are supported.
		  name: Optional name for the operation.
		
		Returns:
		  A `Tensor` of format specified by `data_format`.
		  The max pooled output tensor.
	**/
	static public function max_pool(value:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs 3D max pooling on the input.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`.
		    Shape `[batch, depth, rows, cols, channels]` tensor to pool over.
		  ksize: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The size of the window for each dimension of
		    the input tensor. Must have `ksize[0] = ksize[4] = 1`.
		  strides: A list of `ints` that has length `>= 5`.
		    1-D tensor of length 5. The stride of the sliding window for each
		    dimension of `input`. Must have `strides[0] = strides[4] = 1`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  data_format: An optional `string` from: `"NDHWC", "NCDHW"`. Defaults to `"NDHWC"`.
		    The data format of the input and output data. With the
		    default format "NDHWC", the data is stored in the order of:
		        [batch, in_depth, in_height, in_width, in_channels].
		    Alternatively, the format could be "NCDHW", the data storage order is:
		        [batch, in_channels, in_depth, in_height, in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function max_pool3d(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs max pooling on the input and outputs both max values and indices.
		
		The indices in `argmax` are flattened, so that a maximum value at position
		`[b, y, x, c]` becomes flattened index
		`((b * height + y) * width + x) * channels + c`.
		
		The indices returned are always in `[0, height) x [0, width)` before flattening,
		even if padding is involved and the mathematically correct answer is outside
		(either negative or too large).  This is a bug, but fixing it is difficult to do
		in a safe backwards compatible way, especially due to flattening.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`.
		    4-D with shape `[batch, height, width, channels]`.  Input to pool over.
		  ksize: A list of `ints` that has length `>= 4`.
		    The size of the window for each dimension of the input tensor.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  Targmax: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, argmax).
		
		  output: A `Tensor`. Has the same type as `input`.
		  argmax: A `Tensor` of type `Targmax`.
	**/
	static public function max_pool_with_argmax(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?Targmax:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculate the mean and variance of `x`.
		
		The mean and variance are calculated by aggregating the contents of `x`
		across `axes`.  If `x` is 1-D and `axes = [0]` this is just the mean
		and variance of a vector.
		
		Note: shift is currently not used; the true mean is computed and used.
		
		When using these moments for batch normalization (see
		`tf.nn.batch_normalization`):
		
		 * for so-called "global normalization", used with convolutional filters with
		   shape `[batch, height, width, depth]`, pass `axes=[0, 1, 2]`.
		 * for simple batch normalization pass `axes=[0]` (batch only).
		
		Args:
		  x: A `Tensor`.
		  axes: Array of ints.  Axes along which to compute mean and
		    variance.
		  shift: Not used in the current implementation
		  name: Name used to scope the operations that compute the moments.
		  keep_dims: produce moments with the same dimensionality as the input.
		
		Returns:
		  Two `Tensor` objects: `mean` and `variance`.
	**/
	static public function moments(x:Dynamic, axes:Dynamic, ?shift:Dynamic, ?name:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Computes and returns the noise-contrastive estimation training loss.
		
		See [Noise-contrastive estimation: A new estimation principle for
		unnormalized statistical
		models](http://www.jmlr.org/proceedings/papers/v9/gutmann10a/gutmann10a.pdf).
		Also see our [Candidate Sampling Algorithms
		Reference](https://www.tensorflow.org/extras/candidate_sampling.pdf)
		
		A common use case is to use this method for training, and calculate the full
		sigmoid loss for evaluation or inference. In this case, you must set
		`partition_strategy="div"` for the two losses to be consistent, as in the
		following example:
		
		```python
		if mode == "train":
		  loss = tf.nn.nce_loss(
		      weights=weights,
		      biases=biases,
		      labels=labels,
		      inputs=inputs,
		      ...,
		      partition_strategy="div")
		elif mode == "eval":
		  logits = tf.matmul(inputs, tf.transpose(weights))
		  logits = tf.nn.bias_add(logits, biases)
		  labels_one_hot = tf.one_hot(labels, n_classes)
		  loss = tf.nn.sigmoid_cross_entropy_with_logits(
		      labels=labels_one_hot,
		      logits=logits)
		  loss = tf.reduce_sum(loss, axis=1)
		```
		
		Note: By default this uses a log-uniform (Zipfian) distribution for sampling,
		so your labels must be sorted in order of decreasing frequency to achieve
		good results.  For more details, see
		`tf.nn.log_uniform_candidate_sampler`.
		
		Note: In the case where `num_true` > 1, we assign to each target class
		the target probability 1 / `num_true` so that the target probabilities
		sum to 1 per-example.
		
		Note: It would be useful to allow a variable number of target classes per
		example.  We hope to provide this functionality in a future release.
		For now, if you have a variable number of target classes, you can pad them
		out to a constant number by either repeating them or by padding
		with an otherwise unused class.
		
		Args:
		  weights: A `Tensor` of shape `[num_classes, dim]`, or a list of `Tensor`
		      objects whose concatenation along dimension 0 has shape
		      [num_classes, dim].  The (possibly-partitioned) class embeddings.
		  biases: A `Tensor` of shape `[num_classes]`.  The class biases.
		  labels: A `Tensor` of type `int64` and shape `[batch_size,
		      num_true]`. The target classes.
		  inputs: A `Tensor` of shape `[batch_size, dim]`.  The forward
		      activations of the input network.
		  num_sampled: An `int`.  The number of negative classes to randomly sample
		      per batch. This single sample of negative classes is evaluated for each
		      element in the batch.
		  num_classes: An `int`. The number of possible classes.
		  num_true: An `int`.  The number of target classes per training example.
		  sampled_values: a tuple of (`sampled_candidates`, `true_expected_count`,
		      `sampled_expected_count`) returned by a `*_candidate_sampler` function.
		      (if None, we default to `log_uniform_candidate_sampler`)
		  remove_accidental_hits:  A `bool`.  Whether to remove "accidental hits"
		      where a sampled class equals one of the target classes.  If set to
		      `True`, this is a "Sampled Logistic" loss instead of NCE, and we are
		      learning to generate log-odds instead of log probabilities.  See
		      our [Candidate Sampling Algorithms Reference]
		      (https://www.tensorflow.org/extras/candidate_sampling.pdf).
		      Default is False.
		  partition_strategy: A string specifying the partitioning strategy, relevant
		      if `len(weights) > 1`. Currently `"div"` and `"mod"` are supported.
		      Default is `"mod"`. See `tf.nn.embedding_lookup` for more details.
		  name: A name for the operation (optional).
		
		Returns:
		  A `batch_size` 1-D tensor of per-example NCE losses.
	**/
	static public function nce_loss(weights:Dynamic, biases:Dynamic, labels:Dynamic, inputs:Dynamic, num_sampled:Dynamic, num_classes:Dynamic, ?num_true:Dynamic, ?sampled_values:Dynamic, ?remove_accidental_hits:Dynamic, ?partition_strategy:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculate the mean and variance of based on the sufficient statistics.
		
		Args:
		  counts: A `Tensor` containing the total count of the data (one value).
		  mean_ss: A `Tensor` containing the mean sufficient statistics: the (possibly
		    shifted) sum of the elements to average over.
		  variance_ss: A `Tensor` containing the variance sufficient statistics: the
		    (possibly shifted) squared sum of the data to compute the variance over.
		  shift: A `Tensor` containing the value by which the data is shifted for
		    numerical stability, or `None` if no shift was performed.
		  name: Name used to scope the operations that compute the moments.
		
		Returns:
		  Two `Tensor` objects: `mean` and `variance`.
	**/
	static public function normalize_moments(counts:Dynamic, mean_ss:Dynamic, variance_ss:Dynamic, shift:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs an N-D pooling operation.
		
		In the case that `data_format` does not start with "NC", computes for
		    0 <= b < batch_size,
		    0 <= x[i] < output_spatial_shape[i],
		    0 <= c < num_channels:
		
		```
		  output[b, x[0], ..., x[N-1], c] =
		    REDUCE_{z[0], ..., z[N-1]}
		      input[b,
		            x[0] * strides[0] - pad_before[0] + dilation_rate[0]*z[0],
		            ...
		            x[N-1]*strides[N-1] - pad_before[N-1] + dilation_rate[N-1]*z[N-1],
		            c],
		```
		
		where the reduction function REDUCE depends on the value of `pooling_type`,
		and pad_before is defined based on the value of `padding` as described in
		the "returns" section of `tf.nn.convolution` for details.
		The reduction never includes out-of-bounds positions.
		
		In the case that `data_format` starts with `"NC"`, the `input` and output are
		simply transposed as follows:
		
		```
		  pool(input, data_format, **kwargs) =
		    tf.transpose(pool(tf.transpose(input, [0] + range(2,N+2) + [1]),
		                      **kwargs),
		                 [0, N+1] + range(1, N+1))
		```
		
		Args:
		  input: Tensor of rank N+2, of shape
		    `[batch_size] + input_spatial_shape + [num_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, num_channels] + input_spatial_shape` if data_format starts
		    with "NC".  Pooling happens over the spatial dimensions only.
		  window_shape: Sequence of N ints >= 1.
		  pooling_type: Specifies pooling operation, must be "AVG" or "MAX".
		  padding: The padding algorithm, must be "SAME" or "VALID".
		    See the "returns" section of `tf.nn.convolution` for details.
		  dilation_rate: Optional.  Dilation rate.  List of N ints >= 1.
		    Defaults to [1]*N.  If any value of dilation_rate is > 1, then all values
		    of strides must be 1.
		  strides: Optional.  Sequence of N ints >= 1.  Defaults to [1]*N.
		    If any value of strides is > 1, then all values of dilation_rate must be
		    1.
		  name: Optional. Name of the op.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		
		Returns:
		  Tensor of rank N+2, of shape
		    [batch_size] + output_spatial_shape + [num_channels]
		
		  if data_format is None or does not start with "NC", or
		
		    [batch_size, num_channels] + output_spatial_shape
		
		  if data_format starts with "NC",
		  where `output_spatial_shape` depends on the value of padding:
		
		  If padding = "SAME":
		    output_spatial_shape[i] = ceil(input_spatial_shape[i] / strides[i])
		
		  If padding = "VALID":
		    output_spatial_shape[i] =
		      ceil((input_spatial_shape[i] - (window_shape[i] - 1) * dilation_rate[i])
		           / strides[i]).
		
		Raises:
		  ValueError: if arguments are invalid.
	**/
	static public function pool(input:Dynamic, window_shape:Dynamic, pooling_type:Dynamic, padding:Dynamic, ?dilation_rate:Dynamic, ?strides:Dynamic, ?name:Dynamic, ?data_format:Dynamic):Dynamic;
	/**
		Produces the average pool of the input tensor for quantized types.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    4-D with shape `[batch, height, width, channels]`.
		  min_input: A `Tensor` of type `float32`.
		    The float value that the lowest quantized input value represents.
		  max_input: A `Tensor` of type `float32`.
		    The float value that the highest quantized input value represents.
		  ksize: A list of `ints`.
		    The size of the window for each dimension of the input tensor.
		    The length must be 4 to match the number of dimensions of the input.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    tensor.  The length must be 4 to match the number of dimensions of the input.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor`. Has the same type as `input`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_avg_pool(input:Dynamic, min_input:Dynamic, max_input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a 2D convolution given quantized 4D input and filter tensors.
		
		The inputs are quantized tensors where the lowest value represents the real
		number of the associated minimum, and the highest represents the maximum.
		This means that you can only interpret the quantized output in the same way, by
		taking the returned minimum and maximum values into account.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  filter: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    filter's input_depth dimension must match input's depth dimensions.
		  min_input: A `Tensor` of type `float32`.
		    The float value that the lowest quantized input value represents.
		  max_input: A `Tensor` of type `float32`.
		    The float value that the highest quantized input value represents.
		  min_filter: A `Tensor` of type `float32`.
		    The float value that the lowest quantized filter value represents.
		  max_filter: A `Tensor` of type `float32`.
		    The float value that the highest quantized filter value represents.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.qint32`.
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`.
		    1-D tensor of length 4.  The dilation factor for each dimension of
		    `input`. If set to k > 1, there will be k-1 skipped cells between each
		    filter element on that dimension. The dimension order is determined by the
		    value of `data_format`, see above for details. Dilations in the batch and
		    depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor` of type `out_type`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_conv2d(input:Dynamic, filter:Dynamic, min_input:Dynamic, max_input:Dynamic, min_filter:Dynamic, max_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?out_type:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Produces the max pool of the input tensor for quantized types.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		    The 4D (batch x rows x cols x depth) Tensor to MaxReduce over.
		  min_input: A `Tensor` of type `float32`.
		    The float value that the lowest quantized input value represents.
		  max_input: A `Tensor` of type `float32`.
		    The float value that the highest quantized input value represents.
		  ksize: A list of `ints`.
		    The size of the window for each dimension of the input tensor.
		    The length must be 4 to match the number of dimensions of the input.
		  strides: A list of `ints`.
		    The stride of the sliding window for each dimension of the input
		    tensor. The length must be 4 to match the number of dimensions of the input.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, min_output, max_output).
		
		  output: A `Tensor`. Has the same type as `input`.
		  min_output: A `Tensor` of type `float32`.
		  max_output: A `Tensor` of type `float32`.
	**/
	static public function quantized_max_pool(input:Dynamic, min_input:Dynamic, max_input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Quantized Rectified Linear X: `min(max(features, 0), max_value)`
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `qint8`, `quint8`, `qint32`, `qint16`, `quint16`.
		  max_value: A `Tensor` of type `float32`.
		  min_features: A `Tensor` of type `float32`.
		    The float value that the lowest quantized value represents.
		  max_features: A `Tensor` of type `float32`.
		    The float value that the highest quantized value represents.
		  out_type: An optional `tf.DType` from: `tf.qint8, tf.quint8, tf.qint32, tf.qint16, tf.quint16`. Defaults to `tf.quint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (activations, min_activations, max_activations).
		
		  activations: A `Tensor` of type `out_type`.
		  min_activations: A `Tensor` of type `float32`.
		  max_activations: A `Tensor` of type `float32`.
	**/
	static public function quantized_relu_x(features:Dynamic, max_value:Dynamic, min_features:Dynamic, max_features:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates an `RNN` specified by RNNCell `cell` and loop function `loop_fn`.
		
		**NOTE: This method is still in testing, and the API may change.**
		
		This function is a more primitive version of `dynamic_rnn` that provides
		more direct access to the inputs each iteration.  It also provides more
		control over when to start and finish reading the sequence, and
		what to emit for the output.
		
		For example, it can be used to implement the dynamic decoder of a seq2seq
		model.
		
		Instead of working with `Tensor` objects, most operations work with
		`TensorArray` objects directly.
		
		The operation of `raw_rnn`, in pseudo-code, is basically the following:
		
		```python
		time = tf.constant(0, dtype=tf.int32)
		(finished, next_input, initial_state, emit_structure, loop_state) = loop_fn(
		    time=time, cell_output=None, cell_state=None, loop_state=None)
		emit_ta = TensorArray(dynamic_size=True, dtype=initial_state.dtype)
		state = initial_state
		while not all(finished):
		  (output, cell_state) = cell(next_input, state)
		  (next_finished, next_input, next_state, emit, loop_state) = loop_fn(
		      time=time + 1, cell_output=output, cell_state=cell_state,
		      loop_state=loop_state)
		  # Emit zeros and copy forward state for minibatch entries that are finished.
		  state = tf.where(finished, state, next_state)
		  emit = tf.where(finished, tf.zeros_like(emit_structure), emit)
		  emit_ta = emit_ta.write(time, emit)
		  # If any new minibatch entries are marked as finished, mark these.
		  finished = tf.logical_or(finished, next_finished)
		  time += 1
		return (emit_ta, state, loop_state)
		```
		
		with the additional properties that output and state may be (possibly nested)
		tuples, as determined by `cell.output_size` and `cell.state_size`, and
		as a result the final `state` and `emit_ta` may themselves be tuples.
		
		A simple implementation of `dynamic_rnn` via `raw_rnn` looks like this:
		
		```python
		inputs = tf.placeholder(shape=(max_time, batch_size, input_depth),
		                        dtype=tf.float32)
		sequence_length = tf.placeholder(shape=(batch_size,), dtype=tf.int32)
		inputs_ta = tf.TensorArray(dtype=tf.float32, size=max_time)
		inputs_ta = inputs_ta.unstack(inputs)
		
		cell = tf.contrib.rnn.LSTMCell(num_units)
		
		def loop_fn(time, cell_output, cell_state, loop_state):
		  emit_output = cell_output  # == None for time == 0
		  if cell_output is None:  # time == 0
		    next_cell_state = cell.zero_state(batch_size, tf.float32)
		  else:
		    next_cell_state = cell_state
		  elements_finished = (time >= sequence_length)
		  finished = tf.reduce_all(elements_finished)
		  next_input = tf.cond(
		      finished,
		      lambda: tf.zeros([batch_size, input_depth], dtype=tf.float32),
		      lambda: inputs_ta.read(time))
		  next_loop_state = None
		  return (elements_finished, next_input, next_cell_state,
		          emit_output, next_loop_state)
		
		outputs_ta, final_state, _ = raw_rnn(cell, loop_fn)
		outputs = outputs_ta.stack()
		```
		
		Args:
		  cell: An instance of RNNCell.
		  loop_fn: A callable that takes inputs
		    `(time, cell_output, cell_state, loop_state)`
		    and returns the tuple
		    `(finished, next_input, next_cell_state, emit_output, next_loop_state)`.
		    Here `time` is an int32 scalar `Tensor`, `cell_output` is a
		    `Tensor` or (possibly nested) tuple of tensors as determined by
		    `cell.output_size`, and `cell_state` is a `Tensor`
		    or (possibly nested) tuple of tensors, as determined by the `loop_fn`
		    on its first call (and should match `cell.state_size`).
		    The outputs are: `finished`, a boolean `Tensor` of
		    shape `[batch_size]`, `next_input`: the next input to feed to `cell`,
		    `next_cell_state`: the next state to feed to `cell`,
		    and `emit_output`: the output to store for this iteration.
		
		    Note that `emit_output` should be a `Tensor` or (possibly nested)
		    tuple of tensors which is aggregated in the `emit_ta` inside the
		    `while_loop`. For the first call to `loop_fn`, the `emit_output`
		    corresponds to the `emit_structure` which is then used to determine the
		    size of the `zero_tensor` for the `emit_ta` (defaults to
		    `cell.output_size`). For the subsequent calls to the `loop_fn`, the
		    `emit_output` corresponds to the actual output tensor
		    that is to be aggregated in the `emit_ta`. The parameter `cell_state`
		    and output `next_cell_state` may be either a single or (possibly nested)
		    tuple of tensors.  The parameter `loop_state` and
		    output `next_loop_state` may be either a single or (possibly nested) tuple
		    of `Tensor` and `TensorArray` objects.  This last parameter
		    may be ignored by `loop_fn` and the return value may be `None`.  If it
		    is not `None`, then the `loop_state` will be propagated through the RNN
		    loop, for use purely by `loop_fn` to keep track of its own state.
		    The `next_loop_state` parameter returned may be `None`.
		
		    The first call to `loop_fn` will be `time = 0`, `cell_output = None`,
		    `cell_state = None`, and `loop_state = None`.  For this call:
		    The `next_cell_state` value should be the value with which to initialize
		    the cell's state.  It may be a final state from a previous RNN or it
		    may be the output of `cell.zero_state()`.  It should be a
		    (possibly nested) tuple structure of tensors.
		    If `cell.state_size` is an integer, this must be
		    a `Tensor` of appropriate type and shape `[batch_size, cell.state_size]`.
		    If `cell.state_size` is a `TensorShape`, this must be a `Tensor` of
		    appropriate type and shape `[batch_size] + cell.state_size`.
		    If `cell.state_size` is a (possibly nested) tuple of ints or
		    `TensorShape`, this will be a tuple having the corresponding shapes.
		    The `emit_output` value may be either `None` or a (possibly nested)
		    tuple structure of tensors, e.g.,
		    `(tf.zeros(shape_0, dtype=dtype_0), tf.zeros(shape_1, dtype=dtype_1))`.
		    If this first `emit_output` return value is `None`,
		    then the `emit_ta` result of `raw_rnn` will have the same structure and
		    dtypes as `cell.output_size`.  Otherwise `emit_ta` will have the same
		    structure, shapes (prepended with a `batch_size` dimension), and dtypes
		    as `emit_output`.  The actual values returned for `emit_output` at this
		    initializing call are ignored.  Note, this emit structure must be
		    consistent across all time steps.
		
		  parallel_iterations: (Default: 32).  The number of iterations to run in
		    parallel.  Those operations which do not have any temporal dependency
		    and can be run in parallel, will be.  This parameter trades off
		    time for space.  Values >> 1 use more memory but take less time,
		    while smaller values use less memory but computations take longer.
		  swap_memory: Transparently swap the tensors produced in forward inference
		    but needed for back prop from GPU to CPU.  This allows training RNNs
		    which would typically not fit on a single GPU, with very minimal (or no)
		    performance penalty.
		  scope: VariableScope for the created subgraph; defaults to "rnn".
		
		Returns:
		  A tuple `(emit_ta, final_state, final_loop_state)` where:
		
		  `emit_ta`: The RNN output `TensorArray`.
		     If `loop_fn` returns a (possibly nested) set of Tensors for
		     `emit_output` during initialization, (inputs `time = 0`,
		     `cell_output = None`, and `loop_state = None`), then `emit_ta` will
		     have the same structure, dtypes, and shapes as `emit_output` instead.
		     If `loop_fn` returns `emit_output = None` during this call,
		     the structure of `cell.output_size` is used:
		     If `cell.output_size` is a (possibly nested) tuple of integers
		     or `TensorShape` objects, then `emit_ta` will be a tuple having the
		     same structure as `cell.output_size`, containing TensorArrays whose
		     elements' shapes correspond to the shape data in `cell.output_size`.
		
		  `final_state`: The final cell state.  If `cell.state_size` is an int, this
		    will be shaped `[batch_size, cell.state_size]`.  If it is a
		    `TensorShape`, this will be shaped `[batch_size] + cell.state_size`.
		    If it is a (possibly nested) tuple of ints or `TensorShape`, this will
		    be a tuple having the corresponding shapes.
		
		  `final_loop_state`: The final loop state as returned by `loop_fn`.
		
		Raises:
		  TypeError: If `cell` is not an instance of RNNCell, or `loop_fn` is not
		    a `callable`.
	**/
	static public function raw_rnn(cell:Dynamic, loop_fn:Dynamic, ?parallel_iterations:Dynamic, ?swap_memory:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Computes rectified linear: `max(features, 0)`.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`, `qint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function relu(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Rectified Linear 6: `min(max(features, 0), 6)`.
		
		Source: [Convolutional Deep Belief Networks on CIFAR-10. A.
		Krizhevsky](http://www.cs.utoronto.ca/~kriz/conv-cifar10-aug2010.pdf)
		
		Args:
		  features: A `Tensor` with type `float`, `double`, `int32`, `int64`, `uint8`,
		    `int16`, or `int8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with the same type as `features`.
	**/
	static public function relu6(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Relu(x * weight + biases).
		
		Args:
		  x: a 2D tensor.  Dimensions typically: batch, in_units
		  weights: a 2D tensor.  Dimensions typically: in_units, out_units
		  biases: a 1D tensor.  Dimensions: out_units
		  name: A name for the operation (optional).  If not specified
		    "nn_relu_layer" is used.
		
		Returns:
		  A 2-D Tensor computing relu(matmul(x, weights) + biases).
		  Dimensions typically: batch, out_units.
	**/
	static public function relu_layer(x:Dynamic, weights:Dynamic, biases:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Lookup embedding results, accounting for invalid IDs and empty features.
		
		The partitioned embedding in `embedding_weights` must all be the same shape
		except for the first dimension. The first dimension is allowed to vary as the
		vocabulary size is not necessarily a multiple of `P`.  `embedding_weights`
		may be a `PartitionedVariable` as returned by using `tf.get_variable()` with a
		partitioner.
		
		Invalid IDs (< 0) are pruned from input IDs and weights, as well as any IDs
		with non-positive weight. For an entry with no features, the embedding vector
		for `default_id` is returned, or the 0-vector if `default_id` is not supplied.
		
		The ids and weights may be multi-dimensional. Embeddings are always aggregated
		along the last dimension.
		
		Args:
		  embedding_weights:  A list of `P` float `Tensor`s or values representing
		      partitioned embedding `Tensor`s.  Alternatively, a `PartitionedVariable`
		      created by partitioning along dimension 0.  The total unpartitioned
		      shape should be `[e_0, e_1, ..., e_m]`, where `e_0` represents the
		      vocab size and `e_1, ..., e_m` are the embedding dimensions.
		  sparse_ids: `SparseTensor` of shape `[d_0, d_1, ..., d_n]` containing the
		      ids. `d_0` is typically batch size.
		  sparse_weights: `SparseTensor` of same shape as `sparse_ids`, containing
		      float weights corresponding to `sparse_ids`, or `None` if all weights
		      are be assumed to be 1.0.
		  combiner: A string specifying how to combine embedding results for each
		      entry. Currently "mean", "sqrtn" and "sum" are supported, with "mean"
		      the default.
		  default_id: The id to use for an entry with no features.
		  name: A name for this operation (optional).
		  partition_strategy: A string specifying the partitioning strategy.
		      Currently `"div"` and `"mod"` are supported. Default is `"div"`.
		  max_norm: If not `None`, all embeddings are l2-normalized to max_norm before
		      combining.
		
		
		Returns:
		  Dense `Tensor` of shape `[d_0, d_1, ..., d_{n-1}, e_1, ..., e_m]`.
		
		Raises:
		  ValueError: if `embedding_weights` is empty.
	**/
	static public function safe_embedding_lookup_sparse(embedding_weights:Dynamic, sparse_ids:Dynamic, ?sparse_weights:Dynamic, ?combiner:Dynamic, ?default_id:Dynamic, ?name:Dynamic, ?partition_strategy:Dynamic, ?max_norm:Dynamic):Dynamic;
	/**
		Computes and returns the sampled softmax training loss.
		
		This is a faster way to train a softmax classifier over a huge number of
		classes.
		
		This operation is for training only.  It is generally an underestimate of
		the full softmax loss.
		
		A common use case is to use this method for training, and calculate the full
		softmax loss for evaluation or inference. In this case, you must set
		`partition_strategy="div"` for the two losses to be consistent, as in the
		following example:
		
		```python
		if mode == "train":
		  loss = tf.nn.sampled_softmax_loss(
		      weights=weights,
		      biases=biases,
		      labels=labels,
		      inputs=inputs,
		      ...,
		      partition_strategy="div")
		elif mode == "eval":
		  logits = tf.matmul(inputs, tf.transpose(weights))
		  logits = tf.nn.bias_add(logits, biases)
		  labels_one_hot = tf.one_hot(labels, n_classes)
		  loss = tf.nn.softmax_cross_entropy_with_logits_v2(
		      labels=labels_one_hot,
		      logits=logits)
		```
		
		See our [Candidate Sampling Algorithms Reference]
		(https://www.tensorflow.org/extras/candidate_sampling.pdf)
		
		Also see Section 3 of [Jean et al., 2014](http://arxiv.org/abs/1412.2007)
		([pdf](http://arxiv.org/pdf/1412.2007.pdf)) for the math.
		
		Args:
		  weights: A `Tensor` of shape `[num_classes, dim]`, or a list of `Tensor`
		      objects whose concatenation along dimension 0 has shape
		      [num_classes, dim].  The (possibly-sharded) class embeddings.
		  biases: A `Tensor` of shape `[num_classes]`.  The class biases.
		  labels: A `Tensor` of type `int64` and shape `[batch_size,
		      num_true]`. The target classes.  Note that this format differs from
		      the `labels` argument of `nn.softmax_cross_entropy_with_logits_v2`.
		  inputs: A `Tensor` of shape `[batch_size, dim]`.  The forward
		      activations of the input network.
		  num_sampled: An `int`.  The number of classes to randomly sample per batch.
		  num_classes: An `int`. The number of possible classes.
		  num_true: An `int`.  The number of target classes per training example.
		  sampled_values: a tuple of (`sampled_candidates`, `true_expected_count`,
		      `sampled_expected_count`) returned by a `*_candidate_sampler` function.
		      (if None, we default to `log_uniform_candidate_sampler`)
		  remove_accidental_hits:  A `bool`.  whether to remove "accidental hits"
		      where a sampled class equals one of the target classes.  Default is
		      True.
		  partition_strategy: A string specifying the partitioning strategy, relevant
		      if `len(weights) > 1`. Currently `"div"` and `"mod"` are supported.
		      Default is `"mod"`. See `tf.nn.embedding_lookup` for more details.
		  name: A name for the operation (optional).
		  seed: random seed for candidate sampling. Default to None, which doesn't set
		      the op-level random seed for candidate sampling.
		
		Returns:
		  A `batch_size` 1-D tensor of per-example sampled softmax losses.
	**/
	static public function sampled_softmax_loss(weights:Dynamic, biases:Dynamic, labels:Dynamic, inputs:Dynamic, num_sampled:Dynamic, num_classes:Dynamic, ?num_true:Dynamic, ?sampled_values:Dynamic, ?remove_accidental_hits:Dynamic, ?partition_strategy:Dynamic, ?name:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Computes scaled exponential linear: `scale * alpha * (exp(features) - 1)`
		
		if < 0, `scale * features` otherwise.
		
		To be used together with
		`initializer = tf.variance_scaling_initializer(factor=1.0, mode='FAN_IN')`.
		For correct dropout, use `tf.contrib.nn.alpha_dropout`.
		
		See [Self-Normalizing Neural Networks](https://arxiv.org/abs/1706.02515)
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function selu(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		2-D convolution with separable filters.
		
		Performs a depthwise convolution that acts separately on channels followed by
		a pointwise convolution that mixes channels.  Note that this is separability
		between dimensions `[1, 2]` and `3`, not spatial separability between
		dimensions `1` and `2`.
		
		In detail,
		
		    output[b, i, j, k] = sum_{di, dj, q, r}
		        input[b, strides[1] * i + di, strides[2] * j + dj, q] *
		        depthwise_filter[di, dj, q, r] *
		        pointwise_filter[0, 0, q * channel_multiplier + r, k]
		
		`strides` controls the strides for the depthwise convolution only, since
		the pointwise convolution has implicit strides of `[1, 1, 1, 1]`.  Must have
		`strides[0] = strides[3] = 1`.  For the most common case of the same
		horizontal and vertical strides, `strides = [1, stride, stride, 1]`.
		If any value in `rate` is greater than 1, we perform atrous depthwise
		convolution, in which case all values in the `strides` tensor must be equal
		to 1.
		
		Args:
		  input: 4-D `Tensor` with shape according to `data_format`.
		  depthwise_filter: 4-D `Tensor` with shape
		    `[filter_height, filter_width, in_channels, channel_multiplier]`.
		    Contains `in_channels` convolutional filters of depth 1.
		  pointwise_filter: 4-D `Tensor` with shape
		    `[1, 1, channel_multiplier * in_channels, out_channels]`.  Pointwise
		    filter to mix channels after `depthwise_filter` has convolved spatially.
		  strides: 1-D of size 4.  The strides for the depthwise convolution for
		    each dimension of `input`.
		  padding: A string, either `'VALID'` or `'SAME'`.  The padding algorithm.
		    See the "returns" section of `tf.nn.convolution` for details.
		  rate: 1-D of size 2. The dilation rate in which we sample input values
		    across the `height` and `width` dimensions in atrous convolution. If it is
		    greater than 1, then all values of strides must be 1.
		  name: A name for this operation (optional).
		  data_format: The data format for input. Either "NHWC" (default) or "NCHW".
		
		Returns:
		  A 4-D `Tensor` with shape according to 'data_format'. For
		    example, with data_format="NHWC", shape is [batch, out_height,
		    out_width, out_channels].
	**/
	static public function separable_conv2d(input:Dynamic, depthwise_filter:Dynamic, pointwise_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?rate:Dynamic, ?name:Dynamic, ?data_format:Dynamic):Dynamic;
	/**
		Computes sigmoid of `x` element-wise.
		
		Specifically, `y = 1 / (1 + exp(-x))`.
		
		Args:
		  x: A Tensor with type `float16`, `float32`, `float64`, `complex64`,
		    or `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A Tensor with the same type as `x`.
		
		@compatibility(scipy)
		Equivalent to scipy.special.expit
		@end_compatibility
	**/
	static public function sigmoid(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes sigmoid cross entropy given `logits`.
		
		Measures the probability error in discrete classification tasks in which each
		class is independent and not mutually exclusive.  For instance, one could
		perform multilabel classification where a picture can contain both an elephant
		and a dog at the same time.
		
		For brevity, let `x = logits`, `z = labels`.  The logistic loss is
		
		      z * -log(sigmoid(x)) + (1 - z) * -log(1 - sigmoid(x))
		    = z * -log(1 / (1 + exp(-x))) + (1 - z) * -log(exp(-x) / (1 + exp(-x)))
		    = z * log(1 + exp(-x)) + (1 - z) * (-log(exp(-x)) + log(1 + exp(-x)))
		    = z * log(1 + exp(-x)) + (1 - z) * (x + log(1 + exp(-x))
		    = (1 - z) * x + log(1 + exp(-x))
		    = x - x * z + log(1 + exp(-x))
		
		For x < 0, to avoid overflow in exp(-x), we reformulate the above
		
		      x - x * z + log(1 + exp(-x))
		    = log(exp(x)) - x * z + log(1 + exp(-x))
		    = - x * z + log(1 + exp(x))
		
		Hence, to ensure stability and avoid overflow, the implementation uses this
		equivalent formulation
		
		    max(x, 0) - x * z + log(1 + exp(-abs(x)))
		
		`logits` and `labels` must have the same type and shape.
		
		Args:
		  _sentinel: Used to prevent positional parameters. Internal, do not use.
		  labels: A `Tensor` of the same type and shape as `logits`.
		  logits: A `Tensor` of type `float32` or `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `logits` with the componentwise
		  logistic losses.
		
		Raises:
		  ValueError: If `logits` and `labels` do not have the same shape.
	**/
	static public function sigmoid_cross_entropy_with_logits(?_sentinel:Dynamic, ?labels:Dynamic, ?logits:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softmax activations. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dim)`. They will be removed in a future version.
		Instructions for updating:
		dim is deprecated, use axis instead
		
		This function performs the equivalent of
		
		    softmax = tf.exp(logits) / tf.reduce_sum(tf.exp(logits), axis)
		
		Args:
		  logits: A non-empty `Tensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  axis: The dimension softmax would be performed on. The default is -1 which
		    indicates the last dimension.
		  name: A name for the operation (optional).
		  dim: Deprecated alias for `axis`.
		
		Returns:
		  A `Tensor`. Has the same type and shape as `logits`.
		
		Raises:
		  InvalidArgumentError: if `logits` is empty or `axis` is beyond the last
		    dimension of `logits`.
	**/
	static public function softmax(logits:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Computes softmax cross entropy between `logits` and `labels`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		
		Future major versions of TensorFlow will allow gradients to flow
		into the labels input on backprop by default.
		
		See `tf.nn.softmax_cross_entropy_with_logits_v2`.
		
		
		Measures the probability error in discrete classification tasks in which the
		classes are mutually exclusive (each entry is in exactly one class).  For
		example, each CIFAR-10 image is labeled with one and only one label: an image
		can be a dog or a truck, but not both.
		
		**NOTE:**  While the classes are mutually exclusive, their probabilities
		need not be.  All that is required is that each row of `labels` is
		a valid probability distribution.  If they are not, the computation of the
		gradient will be incorrect.
		
		If using exclusive `labels` (wherein one and only
		one class is true at a time), see `sparse_softmax_cross_entropy_with_logits`.
		
		**WARNING:** This op expects unscaled logits, since it performs a `softmax`
		on `logits` internally for efficiency.  Do not call this op with the
		output of `softmax`, as it will produce incorrect results.
		
		A common use case is to have logits and labels of shape
		`[batch_size, num_classes]`, but higher dimensions are supported, with
		the `dim` argument specifying the class dimension.
		
		Backpropagation will happen only into `logits`.  To calculate a cross entropy
		loss that allows backpropagation into both `logits` and `labels`, see
		`tf.nn.softmax_cross_entropy_with_logits_v2`.
		
		**Note that to avoid confusion, it is required to pass only named arguments to
		this function.**
		
		Args:
		  _sentinel: Used to prevent positional parameters. Internal, do not use.
		  labels: Each vector along the class dimension should hold a valid
		    probability distribution e.g. for the case in which labels are of shape
		    `[batch_size, num_classes]`, each row of `labels[i]` must be a valid
		    probability distribution.
		  logits: Unscaled log probabilities.
		  dim: The class dimension. Defaulted to -1 which is the last dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` that contains the softmax cross entropy loss. Its type is the
		  same as `logits` and its shape is the same as `labels` except that it does
		  not have the last dimension of `labels`.
	**/
	static public function softmax_cross_entropy_with_logits(?_sentinel:Dynamic, ?labels:Dynamic, ?logits:Dynamic, ?dim:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softmax cross entropy between `logits` and `labels`. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dim)`. They will be removed in a future version.
		Instructions for updating:
		dim is deprecated, use axis instead
		
		Measures the probability error in discrete classification tasks in which the
		classes are mutually exclusive (each entry is in exactly one class).  For
		example, each CIFAR-10 image is labeled with one and only one label: an image
		can be a dog or a truck, but not both.
		
		**NOTE:**  While the classes are mutually exclusive, their probabilities
		need not be.  All that is required is that each row of `labels` is
		a valid probability distribution.  If they are not, the computation of the
		gradient will be incorrect.
		
		If using exclusive `labels` (wherein one and only
		one class is true at a time), see `sparse_softmax_cross_entropy_with_logits`.
		
		**WARNING:** This op expects unscaled logits, since it performs a `softmax`
		on `logits` internally for efficiency.  Do not call this op with the
		output of `softmax`, as it will produce incorrect results.
		
		A common use case is to have logits and labels of shape
		`[batch_size, num_classes]`, but higher dimensions are supported, with
		the `axis` argument specifying the class dimension.
		
		`logits` and `labels` must have the same dtype (either `float16`, `float32`,
		or `float64`).
		
		Backpropagation will happen into both `logits` and `labels`.  To disallow
		backpropagation into `labels`, pass label tensors through `tf.stop_gradient`
		before feeding it to this function.
		
		**Note that to avoid confusion, it is required to pass only named arguments to
		this function.**
		
		Args:
		  labels: Each vector along the class dimension should hold a valid
		    probability distribution e.g. for the case in which labels are of shape
		    `[batch_size, num_classes]`, each row of `labels[i]` must be a valid
		    probability distribution.
		  logits: Unscaled log probabilities.
		  axis: The class dimension. Defaulted to -1 which is the last dimension.
		  name: A name for the operation (optional).
		  dim: Deprecated alias for axis.
		
		Returns:
		  A `Tensor` that contains the softmax cross entropy loss. Its type is the
		  same as `logits` and its shape is the same as `labels` except that it does
		  not have the last dimension of `labels`.
	**/
	static public function softmax_cross_entropy_with_logits_v2(labels:Dynamic, logits:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Computes softplus: `log(exp(features) + 1)`.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function softplus(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softsign: `features / (abs(features) + 1)`.
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function softsign(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		SpaceToBatch for 4-D tensors of type T.
		
		This is a legacy version of the more general SpaceToBatchND.
		
		Zero-pads and then rearranges (permutes) blocks of spatial data into batch.
		More specifically, this op outputs a copy of the input tensor where values from
		the `height` and `width` dimensions are moved to the `batch` dimension. After
		the zero-padding, both `height` and `width` of the input must be divisible by the
		block size.
		
		Args:
		  input: A `Tensor`. 4-D with shape `[batch, height, width, depth]`.
		  paddings: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D tensor of non-negative integers with shape `[2, 2]`. It specifies
		      the padding of the input with zeros across the spatial dimensions as follows:
		
		          paddings = [[pad_top, pad_bottom], [pad_left, pad_right]]
		
		      The effective spatial dimensions of the zero-padded input tensor will be:
		
		          height_pad = pad_top + height + pad_bottom
		          width_pad = pad_left + width + pad_right
		
		    The attr `block_size` must be greater than one. It indicates the block size.
		
		      * Non-overlapping blocks of size `block_size x block size` in the height and
		        width dimensions are rearranged into the batch dimension at each location.
		      * The batch of the output tensor is `batch * block_size * block_size`.
		      * Both height_pad and width_pad must be divisible by block_size.
		
		    The shape of the output will be:
		
		        [batch*block_size*block_size, height_pad/block_size, width_pad/block_size,
		         depth]
		
		    Some examples:
		
		    (1) For the following input of shape `[1, 2, 2, 1]` and block_size of 2:
		
		    ```
		    x = [[[[1], [2]], [[3], [4]]]]
		    ```
		
		    The output tensor has shape `[4, 1, 1, 1]` and value:
		
		    ```
		    [[[[1]]], [[[2]]], [[[3]]], [[[4]]]]
		    ```
		
		    (2) For the following input of shape `[1, 2, 2, 3]` and block_size of 2:
		
		    ```
		    x = [[[[1, 2, 3], [4, 5, 6]],
		          [[7, 8, 9], [10, 11, 12]]]]
		    ```
		
		    The output tensor has shape `[4, 1, 1, 3]` and value:
		
		    ```
		    [[[1, 2, 3]], [[4, 5, 6]], [[7, 8, 9]], [[10, 11, 12]]]
		    ```
		
		    (3) For the following input of shape `[1, 4, 4, 1]` and block_size of 2:
		
		    ```
		    x = [[[[1],   [2],  [3],  [4]],
		          [[5],   [6],  [7],  [8]],
		          [[9],  [10], [11],  [12]],
		          [[13], [14], [15],  [16]]]]
		    ```
		
		    The output tensor has shape `[4, 2, 2, 1]` and value:
		
		    ```
		    x = [[[[1], [3]], [[9], [11]]],
		         [[[2], [4]], [[10], [12]]],
		         [[[5], [7]], [[13], [15]]],
		         [[[6], [8]], [[14], [16]]]]
		    ```
		
		    (4) For the following input of shape `[2, 2, 4, 1]` and block_size of 2:
		
		    ```
		    x = [[[[1],   [2],  [3],  [4]],
		          [[5],   [6],  [7],  [8]]],
		         [[[9],  [10], [11],  [12]],
		          [[13], [14], [15],  [16]]]]
		    ```
		
		    The output tensor has shape `[8, 1, 2, 1]` and value:
		
		    ```
		    x = [[[[1], [3]]], [[[9], [11]]], [[[2], [4]]], [[[10], [12]]],
		         [[[5], [7]]], [[[13], [15]]], [[[6], [8]]], [[[14], [16]]]]
		    ```
		
		    Among others, this operation is useful for reducing atrous convolution into
		    regular convolution.
		  block_size: An `int` that is `>= 2`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function space_to_batch(input:Dynamic, paddings:Dynamic, block_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		SpaceToDepth for tensors of type T.
		
		Rearranges blocks of spatial data, into depth. More specifically,
		this op outputs a copy of the input tensor where values from the `height`
		and `width` dimensions are moved to the `depth` dimension.
		The attr `block_size` indicates the input block size.
		
		  * Non-overlapping blocks of size `block_size x block size` are rearranged
		    into depth at each location.
		  * The depth of the output tensor is `block_size * block_size * input_depth`.
		  * The Y, X coordinates within each block of the input become the high order
		    component of the output channel index.
		  * The input tensor's height and width must be divisible by block_size.
		
		The `data_format` attr specifies the layout of the input and output tensors
		with the following options:
		  "NHWC": `[ batch, height, width, channels ]`
		  "NCHW": `[ batch, channels, height, width ]`
		  "NCHW_VECT_C":
		      `qint8 [ batch, channels / 4, height, width, 4 ]`
		
		It is useful to consider the operation as transforming a 6-D Tensor.
		e.g. for data_format = NHWC,
		     Each element in the input tensor can be specified via 6 coordinates,
		     ordered by decreasing memory layout significance as:
		     n,oY,bY,oX,bX,iC  (where n=batch index, oX, oY means X or Y coordinates
		                        within the output image, bX, bY means coordinates
		                        within the input block, iC means input channels).
		     The output would be a transpose to the following layout:
		     n,oY,oX,bY,bX,iC
		
		This operation is useful for resizing the activations between convolutions
		(but keeping all data), e.g. instead of pooling. It is also useful for training
		purely convolutional models.
		
		For example, given an input of shape `[1, 2, 2, 1]`, data_format = "NHWC" and
		block_size = 2:
		
		```
		x = [[[[1], [2]],
		      [[3], [4]]]]
		```
		
		This operation will output a tensor of shape `[1, 1, 1, 4]`:
		
		```
		[[[[1, 2, 3, 4]]]]
		```
		
		Here, the input has a batch of 1 and each batch element has shape `[2, 2, 1]`,
		the corresponding output will have a single element (i.e. width and height are
		both 1) and will have a depth of 4 channels (1 * block_size * block_size).
		The output element shape is `[1, 1, 4]`.
		
		For an input tensor with larger depth, here of shape `[1, 2, 2, 3]`, e.g.
		
		```
		x = [[[[1, 2, 3], [4, 5, 6]],
		      [[7, 8, 9], [10, 11, 12]]]]
		```
		
		This operation, for block_size of 2, will return the following tensor of shape
		`[1, 1, 1, 12]`
		
		```
		[[[[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]]]]
		```
		
		Similarly, for the following input of shape `[1 4 4 1]`, and a block size of 2:
		
		```
		x = [[[[1],   [2],  [5],  [6]],
		      [[3],   [4],  [7],  [8]],
		      [[9],  [10], [13],  [14]],
		      [[11], [12], [15],  [16]]]]
		```
		
		the operator will return the following tensor of shape `[1 2 2 4]`:
		
		```
		x = [[[[1, 2, 3, 4],
		       [5, 6, 7, 8]],
		      [[9, 10, 11, 12],
		       [13, 14, 15, 16]]]]
		```
		
		Args:
		  input: A `Tensor`.
		  block_size: An `int` that is `>= 2`. The size of the spatial block.
		  data_format: An optional `string` from: `"NHWC", "NCHW", "NCHW_VECT_C"`. Defaults to `"NHWC"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function space_to_depth(input:Dynamic, block_size:Dynamic, ?name:Dynamic, ?data_format:Dynamic):Dynamic;
	/**
		Computes sparse softmax cross entropy between `logits` and `labels`.
		
		Measures the probability error in discrete classification tasks in which the
		classes are mutually exclusive (each entry is in exactly one class).  For
		example, each CIFAR-10 image is labeled with one and only one label: an image
		can be a dog or a truck, but not both.
		
		**NOTE:**  For this operation, the probability of a given label is considered
		exclusive.  That is, soft classes are not allowed, and the `labels` vector
		must provide a single specific index for the true class for each row of
		`logits` (each minibatch entry).  For soft softmax classification with
		a probability distribution for each entry, see
		`softmax_cross_entropy_with_logits_v2`.
		
		**WARNING:** This op expects unscaled logits, since it performs a `softmax`
		on `logits` internally for efficiency.  Do not call this op with the
		output of `softmax`, as it will produce incorrect results.
		
		A common use case is to have logits of shape
		`[batch_size, num_classes]` and have labels of shape
		`[batch_size]`, but higher dimensions are supported, in which
		case the `dim`-th dimension is assumed to be of size `num_classes`.
		`logits` must have the dtype of `float16`, `float32`, or `float64`, and
		`labels` must have the dtype of `int32` or `int64`.
		
		**Note that to avoid confusion, it is required to pass only named arguments to
		this function.**
		
		Args:
		  _sentinel: Used to prevent positional parameters. Internal, do not use.
		  labels: `Tensor` of shape `[d_0, d_1, ..., d_{r-1}]` (where `r` is rank of
		    `labels` and result) and dtype `int32` or `int64`. Each entry in `labels`
		    must be an index in `[0, num_classes)`. Other values will raise an
		    exception when this op is run on CPU, and return `NaN` for corresponding
		    loss and gradient rows on GPU.
		  logits: Unscaled log probabilities of shape
		    `[d_0, d_1, ..., d_{r-1}, num_classes]` and dtype `float16`, `float32`, or
		    `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `labels` and of the same type as `logits`
		  with the softmax cross entropy loss.
		
		Raises:
		  ValueError: If logits are scalars (need to have rank >= 1) or if the rank
		    of the labels is not equal to the rank of the logits minus one.
	**/
	static public function sparse_softmax_cross_entropy_with_logits(?_sentinel:Dynamic, ?labels:Dynamic, ?logits:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a bidirectional recurrent neural network. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use `keras.layers.Bidirectional(keras.layers.RNN(cell, unroll=True))`, which is equivalent to this API
		
		Similar to the unidirectional case above (rnn) but takes input and builds
		independent forward and backward RNNs with the final forward and backward
		outputs depth-concatenated, such that the output will have the format
		[time][batch][cell_fw.output_size + cell_bw.output_size]. The input_size of
		forward and backward cell must match. The initial state for both directions
		is zero by default (but can be set optionally) and no intermediate states are
		ever returned -- the network is fully unrolled for the given (passed in)
		length(s) of the sequence(s) or completely unrolled if length(s) is not given.
		
		Args:
		  cell_fw: An instance of RNNCell, to be used for forward direction.
		  cell_bw: An instance of RNNCell, to be used for backward direction.
		  inputs: A length T list of inputs, each a tensor of shape
		    [batch_size, input_size], or a nested tuple of such elements.
		  initial_state_fw: (optional) An initial state for the forward RNN.
		    This must be a tensor of appropriate type and shape
		    `[batch_size, cell_fw.state_size]`.
		    If `cell_fw.state_size` is a tuple, this should be a tuple of
		    tensors having shapes `[batch_size, s] for s in cell_fw.state_size`.
		  initial_state_bw: (optional) Same as for `initial_state_fw`, but using
		    the corresponding properties of `cell_bw`.
		  dtype: (optional) The data type for the initial state.  Required if
		    either of the initial states are not provided.
		  sequence_length: (optional) An int32/int64 vector, size `[batch_size]`,
		    containing the actual lengths for each of the sequences.
		  scope: VariableScope for the created subgraph; defaults to
		    "bidirectional_rnn"
		
		Returns:
		  A tuple (outputs, output_state_fw, output_state_bw) where:
		    outputs is a length `T` list of outputs (one for each input), which
		      are depth-concatenated forward and backward outputs.
		    output_state_fw is the final state of the forward rnn.
		    output_state_bw is the final state of the backward rnn.
		
		Raises:
		  TypeError: If `cell_fw` or `cell_bw` is not an instance of `RNNCell`.
		  ValueError: If inputs is None or an empty list.
	**/
	static public function static_bidirectional_rnn(cell_fw:Dynamic, cell_bw:Dynamic, inputs:Dynamic, ?initial_state_fw:Dynamic, ?initial_state_bw:Dynamic, ?dtype:Dynamic, ?sequence_length:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Creates a recurrent neural network specified by RNNCell `cell`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use `keras.layers.RNN(cell, unroll=True)`, which is equivalent to this API
		
		The simplest form of RNN network generated is:
		
		```python
		  state = cell.zero_state(...)
		  outputs = []
		  for input_ in inputs:
		    output, state = cell(input_, state)
		    outputs.append(output)
		  return (outputs, state)
		```
		However, a few other options are available:
		
		An initial state can be provided.
		If the sequence_length vector is provided, dynamic calculation is performed.
		This method of calculation does not compute the RNN steps past the maximum
		sequence length of the minibatch (thus saving computational time),
		and properly propagates the state at an example's sequence length
		to the final state output.
		
		The dynamic calculation performed is, at time `t` for batch row `b`,
		
		```python
		  (output, state)(b, t) =
		    (t >= sequence_length(b))
		      ? (zeros(cell.output_size), states(b, sequence_length(b) - 1))
		      : cell(input(b, t), state(b, t - 1))
		```
		
		Args:
		  cell: An instance of RNNCell.
		  inputs: A length T list of inputs, each a `Tensor` of shape
		    `[batch_size, input_size]`, or a nested tuple of such elements.
		  initial_state: (optional) An initial state for the RNN.
		    If `cell.state_size` is an integer, this must be
		    a `Tensor` of appropriate type and shape `[batch_size, cell.state_size]`.
		    If `cell.state_size` is a tuple, this should be a tuple of
		    tensors having shapes `[batch_size, s] for s in cell.state_size`.
		  dtype: (optional) The data type for the initial state and expected output.
		    Required if initial_state is not provided or RNN state has a heterogeneous
		    dtype.
		  sequence_length: Specifies the length of each sequence in inputs.
		    An int32 or int64 vector (tensor) size `[batch_size]`, values in `[0, T)`.
		  scope: VariableScope for the created subgraph; defaults to "rnn".
		
		Returns:
		  A pair (outputs, state) where:
		
		  - outputs is a length T list of outputs (one for each input), or a nested
		    tuple of such elements.
		  - state is the final state
		
		Raises:
		  TypeError: If `cell` is not an instance of RNNCell.
		  ValueError: If `inputs` is `None` or an empty list, or if the input depth
		    (column size) cannot be inferred from inputs via shape inference.
	**/
	static public function static_rnn(cell:Dynamic, inputs:Dynamic, ?initial_state:Dynamic, ?dtype:Dynamic, ?sequence_length:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		RNN that accepts a state saver for time-truncated RNN calculation.
		
		Args:
		  cell: An instance of `RNNCell`.
		  inputs: A length T list of inputs, each a `Tensor` of shape
		    `[batch_size, input_size]`.
		  state_saver: A state saver object with methods `state` and `save_state`.
		  state_name: Python string or tuple of strings.  The name to use with the
		    state_saver. If the cell returns tuples of states (i.e.,
		    `cell.state_size` is a tuple) then `state_name` should be a tuple of
		    strings having the same length as `cell.state_size`.  Otherwise it should
		    be a single string.
		  sequence_length: (optional) An int32/int64 vector size [batch_size].
		    See the documentation for rnn() for more details about sequence_length.
		  scope: VariableScope for the created subgraph; defaults to "rnn".
		
		Returns:
		  A pair (outputs, state) where:
		    outputs is a length T list of outputs (one for each input)
		    states is the final state
		
		Raises:
		  TypeError: If `cell` is not an instance of RNNCell.
		  ValueError: If `inputs` is `None` or an empty list, or if the arity and
		   type of `state_name` does not match that of `cell.state_size`.
	**/
	static public function static_state_saving_rnn(cell:Dynamic, inputs:Dynamic, state_saver:Dynamic, state_name:Dynamic, ?sequence_length:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Calculate the sufficient statistics for the mean and variance of `x`.
		
		These sufficient statistics are computed using the one pass algorithm on
		an input that's optionally shifted. See:
		https://en.wikipedia.org/wiki/Algorithms_for_calculating_variance#Computing_shifted_data
		
		Args:
		  x: A `Tensor`.
		  axes: Array of ints. Axes along which to compute mean and variance.
		  shift: A `Tensor` containing the value by which to shift the data for
		    numerical stability, or `None` if no shift is to be performed. A shift
		    close to the true mean provides the most numerically stable results.
		  keep_dims: produce statistics with the same dimensionality as the input.
		  name: Name used to scope the operations that compute the sufficient stats.
		
		Returns:
		  Four `Tensor` objects of the same type as `x`:
		
		  * the count (number of elements to average over).
		  * the (possibly shifted) sum of the elements in the array.
		  * the (possibly shifted) sum of squares of the elements in the array.
		  * the shift by which the mean must be corrected or None if `shift` is None.
	**/
	static public function sufficient_statistics(x:Dynamic, axes:Dynamic, ?shift:Dynamic, ?keep_dims:Dynamic, ?name:Dynamic):Dynamic;
	static public function swish(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Computes hyperbolic tangent of `x` element-wise.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `bfloat16`, `half`, `float32`, `float64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
		
		  If `x` is a `SparseTensor`, returns
		  `SparseTensor(x.indices, tf.math.tanh(x.values, ...), x.dense_shape)`
	**/
	static public function tanh(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Finds values and indices of the `k` largest entries for the last dimension.
		
		If the input is a vector (rank=1), finds the `k` largest entries in the vector
		and outputs their values and indices as vectors.  Thus `values[j]` is the
		`j`-th largest entry in `input`, and its index is `indices[j]`.
		
		For matrices (resp. higher rank input), computes the top `k` entries in each
		row (resp. vector along the last dimension).  Thus,
		
		    values.shape = indices.shape = input.shape[:-1] + [k]
		
		If two elements are equal, the lower-index element appears first.
		
		Args:
		  input: 1-D or higher `Tensor` with last dimension at least `k`.
		  k: 0-D `int32` `Tensor`.  Number of top elements to look for along the last
		    dimension (along each row for matrices).
		  sorted: If true the resulting `k` elements will be sorted by the values in
		    descending order.
		  name: Optional name for the operation.
		
		Returns:
		  values: The `k` largest elements along each last dimensional slice.
		  indices: The indices of `values` within the last dimension of `input`.
	**/
	static public function top_k(input:Dynamic, ?k:Dynamic, ?sorted:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Samples a set of classes using a uniform base distribution.
		
		This operation randomly samples a tensor of sampled classes
		(`sampled_candidates`) from the range of integers `[0, range_max)`.
		
		The elements of `sampled_candidates` are drawn without replacement
		(if `unique=True`) or with replacement (if `unique=False`) from
		the base distribution.
		
		The base distribution for this operation is the uniform distribution
		over the range of integers `[0, range_max)`.
		
		In addition, this operation returns tensors `true_expected_count`
		and `sampled_expected_count` representing the number of times each
		of the target classes (`true_classes`) and the sampled
		classes (`sampled_candidates`) is expected to occur in an average
		tensor of sampled classes.  These values correspond to `Q(y|x)`
		defined in [this
		document](http://www.tensorflow.org/extras/candidate_sampling.pdf).
		If `unique=True`, then these are post-rejection probabilities and we
		compute them approximately.
		
		Args:
		  true_classes: A `Tensor` of type `int64` and shape `[batch_size,
		    num_true]`. The target classes.
		  num_true: An `int`.  The number of target classes per training example.
		  num_sampled: An `int`.  The number of classes to randomly sample. The
		    `sampled_candidates` return value will have shape `[num_sampled]`. If
		    `unique=True`, `num_sampled` must be less than or equal to `range_max`.
		  unique: A `bool`. Determines whether all sampled classes in a batch are
		    unique.
		  range_max: An `int`. The number of possible classes.
		  seed: An `int`. An operation-specific seed. Default is 0.
		  name: A name for the operation (optional).
		
		Returns:
		  sampled_candidates: A tensor of type `int64` and shape `[num_sampled]`.  The
		    sampled classes, either with possible duplicates (`unique=False`) or all
		    unique (`unique=True`). In either case, `sampled_candidates` is
		    independent of the true classes.
		  true_expected_count: A tensor of type `float`.  Same shape as
		    `true_classes`. The expected counts under the sampling distribution
		    of each of `true_classes`.
		  sampled_expected_count: A tensor of type `float`. Same shape as
		    `sampled_candidates`. The expected counts under the sampling distribution
		    of each of `sampled_candidates`.
	**/
	static public function uniform_candidate_sampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a weighted cross entropy.
		
		This is like `sigmoid_cross_entropy_with_logits()` except that `pos_weight`,
		allows one to trade off recall and precision by up- or down-weighting the
		cost of a positive error relative to a negative error.
		
		The usual cross-entropy cost is defined as:
		
		    targets * -log(sigmoid(logits)) +
		        (1 - targets) * -log(1 - sigmoid(logits))
		
		A value `pos_weights > 1` decreases the false negative count, hence increasing
		the recall.
		Conversely setting `pos_weights < 1` decreases the false positive count and
		increases the precision.
		This can be seen from the fact that `pos_weight` is introduced as a
		multiplicative coefficient for the positive targets term
		in the loss expression:
		
		    targets * -log(sigmoid(logits)) * pos_weight +
		        (1 - targets) * -log(1 - sigmoid(logits))
		
		For brevity, let `x = logits`, `z = targets`, `q = pos_weight`.
		The loss is:
		
		      qz * -log(sigmoid(x)) + (1 - z) * -log(1 - sigmoid(x))
		    = qz * -log(1 / (1 + exp(-x))) + (1 - z) * -log(exp(-x) / (1 + exp(-x)))
		    = qz * log(1 + exp(-x)) + (1 - z) * (-log(exp(-x)) + log(1 + exp(-x)))
		    = qz * log(1 + exp(-x)) + (1 - z) * (x + log(1 + exp(-x))
		    = (1 - z) * x + (qz +  1 - z) * log(1 + exp(-x))
		    = (1 - z) * x + (1 + (q - 1) * z) * log(1 + exp(-x))
		
		Setting `l = (1 + (q - 1) * z)`, to ensure stability and avoid overflow,
		the implementation uses
		
		    (1 - z) * x + l * (log(1 + exp(-abs(x))) + max(-x, 0))
		
		`logits` and `targets` must have the same type and shape.
		
		Args:
		  targets: A `Tensor` of the same type and shape as `logits`.
		  logits: A `Tensor` of type `float32` or `float64`.
		  pos_weight: A coefficient to use on the positive examples.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `logits` with the componentwise
		  weighted logistic losses.
		
		Raises:
		  ValueError: If `logits` and `targets` do not have the same shape.
	**/
	static public function weighted_cross_entropy_with_logits(targets:Dynamic, logits:Dynamic, pos_weight:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the frequency-weighted mean and variance of `x`.
		
		Args:
		  x: A tensor.
		  axes: 1-d tensor of int32 values; these are the axes along which
		    to compute mean and variance.
		  frequency_weights: A tensor of positive weights which can be
		    broadcast with x.
		  name: Name used to scope the operation.
		  keep_dims: Produce moments with the same dimensionality as the input.
		
		Returns:
		  Two tensors: `weighted_mean` and `weighted_variance`.
	**/
	static public function weighted_moments(x:Dynamic, axes:Dynamic, frequency_weights:Dynamic, ?name:Dynamic, ?keep_dims:Dynamic):Dynamic;
	/**
		Performs `op` on the space-to-batch representation of `input`.
		
		This has the effect of transforming sliding window operations into the
		corresponding "atrous" operation in which the input is sampled at the
		specified `dilation_rate`.
		
		In the special case that `dilation_rate` is uniformly 1, this simply returns:
		
		  op(input, num_spatial_dims, padding)
		
		Otherwise, it returns:
		
		  batch_to_space_nd(
		    op(space_to_batch_nd(input, adjusted_dilation_rate, adjusted_paddings),
		       num_spatial_dims,
		       "VALID")
		    adjusted_dilation_rate,
		    adjusted_crops),
		
		where:
		
		  adjusted_dilation_rate is an int64 tensor of shape [max(spatial_dims)],
		  adjusted_{paddings,crops} are int64 tensors of shape [max(spatial_dims), 2]
		
		defined as follows:
		
		We first define two int64 tensors `paddings` and `crops` of shape
		`[num_spatial_dims, 2]` based on the value of `padding` and the spatial
		dimensions of the `input`:
		
		If `padding = "VALID"`, then:
		
		  paddings, crops = required_space_to_batch_paddings(
		    input_shape[spatial_dims],
		    dilation_rate)
		
		If `padding = "SAME"`, then:
		
		  dilated_filter_shape =
		    filter_shape + (filter_shape - 1) * (dilation_rate - 1)
		
		  paddings, crops = required_space_to_batch_paddings(
		    input_shape[spatial_dims],
		    dilation_rate,
		    [(dilated_filter_shape - 1) // 2,
		     dilated_filter_shape - 1 - (dilated_filter_shape - 1) // 2])
		
		Because `space_to_batch_nd` and `batch_to_space_nd` assume that the spatial
		dimensions are contiguous starting at the second dimension, but the specified
		`spatial_dims` may not be, we must adjust `dilation_rate`, `paddings` and
		`crops` in order to be usable with these operations.  For a given dimension,
		if the block size is 1, and both the starting and ending padding and crop
		amounts are 0, then space_to_batch_nd effectively leaves that dimension alone,
		which is what is needed for dimensions not part of `spatial_dims`.
		Furthermore, `space_to_batch_nd` and `batch_to_space_nd` handle this case
		efficiently for any number of leading and trailing dimensions.
		
		For 0 <= i < len(spatial_dims), we assign:
		
		  adjusted_dilation_rate[spatial_dims[i] - 1] = dilation_rate[i]
		  adjusted_paddings[spatial_dims[i] - 1, :] = paddings[i, :]
		  adjusted_crops[spatial_dims[i] - 1, :] = crops[i, :]
		
		All unassigned values of `adjusted_dilation_rate` default to 1, while all
		unassigned values of `adjusted_paddings` and `adjusted_crops` default to 0.
		
		Note in the case that `dilation_rate` is not uniformly 1, specifying "VALID"
		padding is equivalent to specifying `padding = "SAME"` with a filter_shape of
		`[1]*N`.
		
		Advanced usage. Note the following optimization: A sequence of
		`with_space_to_batch` operations with identical (not uniformly 1)
		`dilation_rate` parameters and "VALID" padding
		
		  net = with_space_to_batch(net, dilation_rate, "VALID", op_1)
		  ...
		  net = with_space_to_batch(net, dilation_rate, "VALID", op_k)
		
		can be combined into a single `with_space_to_batch` operation as follows:
		
		  def combined_op(converted_input, num_spatial_dims, _):
		    result = op_1(converted_input, num_spatial_dims, "VALID")
		    ...
		    result = op_k(result, num_spatial_dims, "VALID")
		
		  net = with_space_to_batch(net, dilation_rate, "VALID", combined_op)
		
		This eliminates the overhead of `k-1` calls to `space_to_batch_nd` and
		`batch_to_space_nd`.
		
		Similarly, a sequence of `with_space_to_batch` operations with identical (not
		uniformly 1) `dilation_rate` parameters, "SAME" padding, and odd filter
		dimensions
		
		  net = with_space_to_batch(net, dilation_rate, "SAME", op_1, filter_shape_1)
		  ...
		  net = with_space_to_batch(net, dilation_rate, "SAME", op_k, filter_shape_k)
		
		can be combined into a single `with_space_to_batch` operation as follows:
		
		  def combined_op(converted_input, num_spatial_dims, _):
		    result = op_1(converted_input, num_spatial_dims, "SAME")
		    ...
		    result = op_k(result, num_spatial_dims, "SAME")
		
		  net = with_space_to_batch(net, dilation_rate, "VALID", combined_op)
		
		Args:
		  input: Tensor of rank > max(spatial_dims).
		  dilation_rate: int32 Tensor of *known* shape [num_spatial_dims].
		  padding: str constant equal to "VALID" or "SAME"
		  op: Function that maps (input, num_spatial_dims, padding) -> output
		  filter_shape: If padding = "SAME", specifies the shape of the convolution
		    kernel/pooling window as an integer Tensor of shape [>=num_spatial_dims].
		    If padding = "VALID", filter_shape is ignored and need not be specified.
		  spatial_dims: Monotonically increasing sequence of `num_spatial_dims`
		    integers (which are >= 1) specifying the spatial dimensions of `input`
		    and output.  Defaults to: `range(1, num_spatial_dims+1)`.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		
		Returns:
		  The output Tensor as described above, dimensions will vary based on the op
		  provided.
		
		Raises:
		  ValueError: if `padding` is invalid or the arguments are incompatible.
		  ValueError: if `spatial_dims` are invalid.
	**/
	static public function with_space_to_batch(input:Dynamic, dilation_rate:Dynamic, padding:Dynamic, op:Dynamic, ?filter_shape:Dynamic, ?spatial_dims:Dynamic, ?data_format:Dynamic):Dynamic;
	/**
		Computes matmul(x, weights) + biases.
		
		Args:
		  x: a 2D tensor.  Dimensions typically: batch, in_units
		  weights: a 2D tensor.  Dimensions typically: in_units, out_units
		  biases: a 1D tensor.  Dimensions: out_units
		  name: A name for the operation (optional).  If not specified
		    "xw_plus_b" is used.
		
		Returns:
		  A 2-D Tensor computing matmul(x, weights) + biases.
		  Dimensions typically: batch, out_units.
	**/
	static public function xw_plus_b(x:Dynamic, weights:Dynamic, biases:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the fraction of zeros in `value`.
		
		If `value` is empty, the result is `nan`.
		
		This is useful in summaries to measure and report sparsity.  For example,
		
		```python
		    z = tf.nn.relu(...)
		    summ = tf.summary.scalar('sparsity', tf.nn.zero_fraction(z))
		```
		
		Args:
		  value: A tensor of numeric type.
		  name: A name for the operation (optional).
		
		Returns:
		  The fraction of zeros in `value`, with type `float32`.
	**/
	static public function zero_fraction(value:Dynamic, ?name:Dynamic):Dynamic;
}