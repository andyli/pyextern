/* This file is generated, do not edit! */
package tensorflow.compat.v2.nn;
@:pythonImport("tensorflow.compat.v2.nn") extern class Nn_Module {
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
		feature extraction, please see: (Chen et al., 2015). The same operation is
		investigated further in (Yu et al., 2016). Previous works that effectively
		use atrous convolution in different ways are, among others,
		(Sermanet et al., 2014) and (Giusti et al., 2013).
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
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
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
		
		References:
		  Multi-Scale Context Aggregation by Dilated Convolutions:
		    [Yu et al., 2016](https://arxiv.org/abs/1511.07122)
		    ([pdf](https://arxiv.org/pdf/1511.07122.pdf))
		  Semantic Image Segmentation with Deep Convolutional Nets and Fully
		  Connected CRFs:
		    [Chen et al., 2015](http://arxiv.org/abs/1412.7062)
		    ([pdf](https://arxiv.org/pdf/1412.7062))
		  OverFeat - Integrated Recognition, Localization and Detection using
		  Convolutional Networks:
		    [Sermanet et al., 2014](https://arxiv.org/abs/1312.6229)
		    ([pdf](https://arxiv.org/pdf/1312.6229.pdf))
		  Fast Image Scanning with Deep Max-Pooling Convolutional Neural Networks:
		    [Giusti et al., 2013]
		    (https://ieeexplore.ieee.org/abstract/document/6738831)
		    ([pdf](https://arxiv.org/pdf/1302.1700.pdf))
	**/
	static public function atrous_conv2d(value:Dynamic, filters:Dynamic, rate:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The transpose of `atrous_conv2d`.
		
		This operation is sometimes called "deconvolution" after
		(Zeiler et al., 2010), but is really the transpose (gradient) of
		`atrous_conv2d` rather than an actual deconvolution.
		
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
		    deconvolution op, of form `[batch, out_height, out_width, out_channels]`.
		  rate: A positive int32. The stride with which we sample input values across
		    the `height` and `width` dimensions. Equivalently, the rate by which we
		    upsample the filter values by inserting zeros across the `height` and
		    `width` dimensions. In the literature, the same parameter is sometimes
		    called `input stride` or `dilation`.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  name: Optional name for the returned tensor.
		
		Returns:
		  A `Tensor` with the same type as `value`.
		
		Raises:
		  ValueError: If input/output depth does not match `filters`' shape, or if
		    padding is other than `'VALID'` or `'SAME'`, or if the `rate` is less
		    than one, or if the output_shape is not a tensor with 4 elements.
		
		References:
		  Deconvolutional Networks:
		    [Zeiler et al., 2010]
		    (https://ieeexplore.ieee.org/abstract/document/5539957)
		    ([pdf]
		    (http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.232.4023&rep=rep1&type=pdf))
	**/
	static public function atrous_conv2d_transpose(value:Dynamic, filters:Dynamic, output_shape:Dynamic, rate:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs the avg pooling on the input.
		
		Each entry in `output` is the mean of the corresponding size `ksize`
		window in `value`.
		
		Args:
		  input:  Tensor of rank N+2, of shape `[batch_size] + input_spatial_shape +
		    [num_channels]` if `data_format` does not start with "NC" (default), or
		    `[batch_size, num_channels] + input_spatial_shape` if data_format starts
		    with "NC". Pooling happens over the spatial dimensions only.
		  ksize: An int or list of `ints` that has length `1`, `N` or `N+2`. The size
		    of the window for each dimension of the input tensor.
		  strides: An int or list of `ints` that has length `1`, `N` or `N+2`. The
		    stride of the sliding window for each dimension of the input tensor.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: A string. Specifies the channel dimension. For N=1 it can be
		    either "NWC" (default) or "NCW", for N=2 it can be either "NHWC" (default)
		    or "NCHW" and for N=3 either "NDHWC" (default) or "NCDHW".
		  name: Optional name for the operation.
		
		Returns:
		  A `Tensor` of format specified by `data_format`.
		  The average pooled output tensor.
	**/
	static public function avg_pool(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs the average pooling on the input.
		
		Each entry in `output` is the mean of the corresponding size `ksize`
		window in `value`.
		
		Note internally this op reshapes and uses the underlying 2d operation.
		
		Args:
		  input: A 3-D `Tensor` of the format specified by `data_format`.
		  ksize: An int or list of `ints` that has length `1` or `3`. The size of the
		    window for each dimension of the input tensor.
		  strides: An int or list of `ints` that has length `1` or `3`. The stride of
		    the sliding window for each dimension of the input tensor.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: An optional string from: "NWC", "NCW". Defaults to "NWC".
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of format specified by `data_format`.
		  The max pooled output tensor.
	**/
	static public function avg_pool1d(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs the average pooling on the input.
		
		Each entry in `output` is the mean of the corresponding size `ksize`
		window in `value`.
		
		Args:
		  input: A 4-D `Tensor` of shape `[batch, height, width, channels]` and type
		    `float32`, `float64`, `qint8`, `quint8`, or `qint32`.
		  ksize: An int or list of `ints` that has length `1`, `2` or `4`. The size of
		    the window for each dimension of the input tensor.
		  strides: An int or list of `ints` that has length `1`, `2` or `4`. The
		    stride of the sliding window for each dimension of the input tensor.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: A string. 'NHWC' and 'NCHW' are supported.
		  name: Optional name for the operation.
		
		Returns:
		  A `Tensor` with the same type as `value`.  The average pooled output tensor.
	**/
	static public function avg_pool2d(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs the average pooling on the input.
		
		Each entry in `output` is the mean of the corresponding size `ksize`
		window in `value`.
		
		Args:
		  input: A 5-D `Tensor` of shape `[batch, height, width, channels]` and type
		    `float32`, `float64`, `qint8`, `quint8`, or `qint32`.
		  ksize: An int or list of `ints` that has length `1`, `3` or `5`. The size of
		    the window for each dimension of the input tensor.
		  strides: An int or list of `ints` that has length `1`, `3` or `5`. The
		    stride of the sliding window for each dimension of the input tensor.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: A string. 'NDHWC' and 'NCDHW' are supported.
		  name: Optional name for the operation.
		
		Returns:
		  A `Tensor` with the same type as `value`.  The average pooled output tensor.
	**/
	static public function avg_pool3d(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Batch normalization.
		
		This op is deprecated. See `tf.nn.batch_normalization`.
		
		Args:
		  input: A 4D input Tensor.
		  mean: A 1D mean Tensor with size matching the last dimension of t.
		    This is the first output from tf.nn.moments,
		    or a saved moving average thereof.
		  variance: A 1D variance Tensor with size matching the last dimension of t.
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
		
		References:
		  Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift:
		    [Ioffe et al., 2015](http://proceedings.mlr.press/v37/ioffe15.html)
		    ([pdf](http://proceedings.mlr.press/v37/ioffe15.pdf))
	**/
	static public function batch_norm_with_global_normalization(input:Dynamic, mean:Dynamic, variance:Dynamic, beta:Dynamic, gamma:Dynamic, variance_epsilon:Dynamic, scale_after_normalization:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Batch normalization.
		
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
		    `tf.nn.moments(..., keepdims=True)` during training, or running averages
		    thereof during inference.
		  * In the common case where the 'depth' dimension is the last dimension in
		    the input tensor `x`, they may be one dimensional tensors of the same
		    size as the 'depth' dimension.
		    This is the case for example for the common `[batch, depth]` layout of
		    fully-connected layers, and `[batch, height, width, depth]` for
		    convolutions.
		    `mean` and `variance` in this case would typically be the outputs of
		    `tf.nn.moments(..., keepdims=False)` during training, or running averages
		    thereof during inference.
		
		See equation 11 in Algorithm 2 of source:
		[Batch Normalization: Accelerating Deep Network Training by
		Reducing Internal Covariate Shift; S. Ioffe, C. Szegedy]
		(http://arxiv.org/abs/1502.03167).
		
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
		
		References:
		  Batch Normalization - Accelerating Deep Network Training by Reducing
		  Internal Covariate Shift:
		    [Ioffe et al., 2015](http://arxiv.org/abs/1502.03167)
		    ([pdf](http://proceedings.mlr.press/v37/ioffe15.pdf))
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
		  bias: A 1-D `Tensor` with size matching the channel dimension of `value`.
		    Must be the same type as `value` unless `value` is a quantized type,
		    in which case a different quantized type may be used.
		  data_format: A string. 'N...C' and 'NC...' are supported. If `None` (the
		    default) is specified then 'N..C' is assumed.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with the same type as `value`.
		
		Raises:
		  ValueError if data format is unrecognized, if `value` has less than two
		  dimensions when `data_format` is 'N..C'/`None` or `value` has less
		  then three dimensions when `data_format` is `NC..`, if `bias` does not
		  have exactly one dimension (is a vector), or if the size of `bias`
		  does not match the size of the channel dimension of `value`.
	**/
	static public function bias_add(value:Dynamic, bias:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Merge repeated labels into single labels.
		
		Args:
		  labels: Tensor of shape [batch, max value in seq_length]
		  seq_length: Tensor of shape [batch], sequence length of each batch element.
		  name: A name for this `Op`. Defaults to "collapse_repeated_labels".
		
		Returns:
		  A tuple `(collapsed_labels, new_seq_length)` where
		
		  collapsed_labels: Tensor of shape [batch, max_seq_length] with repeated
		  labels collapsed and padded to max_seq_length, eg:
		  `[[A, A, B, B, A], [A, B, C, D, E]] => [[A, B, A, 0, 0], [A, B, C, D, E]]`
		
		  new_seq_length: int tensor of shape [batch] with new sequence lengths.
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
		Scales per-example losses with sample_weights and computes their average.
		
		Usage with distribution strategy and custom training loop:
		
		```python
		with strategy.scope():
		  def compute_loss(labels, predictions, sample_weight=None):
		
		    # If you are using a `Loss` class instead, set reduction to `NONE` so that
		    # we can do the reduction afterwards and divide by global batch size.
		    per_example_loss = tf.keras.losses.sparse_categorical_crossentropy(
		        labels, predictions)
		
		    # Compute loss that is scaled by sample_weight and by global batch size.
		    return tf.nn.compute_average_loss(
		        per_example_loss,
		        sample_weight=sample_weight,
		        global_batch_size=GLOBAL_BATCH_SIZE)
		```
		
		Args:
		  per_example_loss: Per-example loss.
		  sample_weight: Optional weighting for each example.
		  global_batch_size: Optional global batch size value. Defaults to (size of
		    first dimension of `losses`) * (number of replicas).
		
		Returns:
		  Scalar loss value.
	**/
	static public function compute_average_loss(per_example_loss:Dynamic, ?sample_weight:Dynamic, ?global_batch_size:Dynamic):Dynamic;
	/**
		Computes a 1-D convolution given 3-D input and filter tensors.
		
		Given an input tensor of shape
		  `batch_shape + [in_width, in_channels]`
		if `data_format` is `"NWC"`, or
		  `batch_shape + [in_channels, in_width]`
		if `data_format` is `"NCW"`,
		and a filter / kernel tensor of shape
		`[filter_width, in_channels, out_channels]`, this op reshapes
		the arguments to pass them to `conv2d` to perform the equivalent
		convolution operation.
		
		Internally, this op reshapes the input tensors and invokes `tf.nn.conv2d`.
		For example, if `data_format` does not start with `"NC"`, a tensor of shape
		  `batch_shape + [in_width, in_channels]`
		is reshaped to
		  `batch_shape + [1, in_width, in_channels]`,
		and the filter is reshaped to
		  `[1, filter_width, in_channels, out_channels]`.
		The result is then reshaped back to
		  `batch_shape + [out_width, out_channels]`
		\(where out_width is a function of the stride and padding as in conv2d\) and
		returned to the caller.
		
		Args:
		  input: A Tensor of rank at least 3. Must be of type `float16`, `float32`, or
		    `float64`.
		  filters: A Tensor of rank at least 3.  Must have the same type as `input`.
		  stride: An int or list of `ints` that has length `1` or `3`.  The number of
		    entries by which the filter is moved right at each step.
		  padding: 'SAME' or 'VALID'. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: An optional `string` from `"NWC", "NCW"`.  Defaults to `"NWC"`,
		    the data is stored in the order of
		    `batch_shape + [in_width, in_channels]`.  The `"NCW"` format stores data
		    as `batch_shape + [in_channels, in_width]`.
		  dilations: An int or list of `ints` that has length `1` or `3` which
		    defaults to 1. The dilation factor for each dimension of input. If set to
		    k > 1, there will be k-1 skipped cells between each filter element on that
		    dimension. Dilations in the batch and depth dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`.  Has the same type as input.
		
		Raises:
		  ValueError: if `data_format` is invalid.
	**/
	static public function conv1d(input:Dynamic, filters:Dynamic, stride:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The transpose of `conv1d`.
		
		This operation is sometimes called "deconvolution" after
		(Zeiler et al., 2010), but is actually the transpose (gradient) of `conv1d`
		rather than an actual deconvolution.
		
		Args:
		  input: A 3-D `Tensor` of type `float` and shape
		    `[batch, in_width, in_channels]` for `NWC` data format or
		    `[batch, in_channels, in_width]` for `NCW` data format.
		  filters: A 3-D `Tensor` with the same type as `input` and shape
		    `[filter_width, output_channels, in_channels]`.  `filter`'s
		    `in_channels` dimension must match that of `input`.
		  output_shape: A 1-D `Tensor`, containing three elements, representing the
		    output shape of the deconvolution op.
		  strides: An int or list of `ints` that has length `1` or `3`.  The number of
		    entries by which the filter is moved right at each step.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: A string. `'NWC'` and `'NCW'` are supported.
		  dilations: An int or list of `ints` that has length `1` or `3` which
		    defaults to 1. The dilation factor for each dimension of input. If set to
		    k > 1, there will be k-1 skipped cells between each filter element on that
		    dimension. Dilations in the batch and depth dimensions must be 1.
		  name: Optional name for the returned tensor.
		
		Returns:
		  A `Tensor` with the same type as `input`.
		
		Raises:
		  ValueError: If input/output depth does not match `filter`'s shape, if
		    `output_shape` is not at 3-element vector, if `padding` is other than
		    `'VALID'` or `'SAME'`, or if `data_format` is invalid.
		
		References:
		  Deconvolutional Networks:
		    [Zeiler et al., 2010]
		    (https://ieeexplore.ieee.org/abstract/document/5539957)
		    ([pdf]
		    (http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.232.4023&rep=rep1&type=pdf))
	**/
	static public function conv1d_transpose(input:Dynamic, filters:Dynamic, output_shape:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a 2-D convolution given `input` and 4-D `filters` tensors.
		
		The `input` tensor may have rank `4` or higher, where shape dimensions `[:-3]`
		are considered batch dimensions (`batch_shape`).
		
		Given an input tensor of shape
		`batch_shape + [in_height, in_width, in_channels]` and a filter / kernel
		tensor of shape `[filter_height, filter_width, in_channels, out_channels]`,
		this op performs the following:
		
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
		horizontal and vertical strides, `strides = [1, stride, stride, 1]`.
		
		Usage Example:
		
		>>> x_in = np.array([[
		...   [[2], [1], [2], [0], [1]],
		...   [[1], [3], [2], [2], [3]],
		...   [[1], [1], [3], [3], [0]],
		...   [[2], [2], [0], [1], [1]],
		...   [[0], [0], [3], [1], [2]], ]])
		>>> kernel_in = np.array([
		...  [ [[2, 0.1]], [[3, 0.2]] ],
		...  [ [[0, 0.3]],[[1, 0.4]] ], ])
		>>> x = tf.constant(x_in, dtype=tf.float32)
		>>> kernel = tf.constant(kernel_in, dtype=tf.float32)
		>>> tf.nn.conv2d(x, kernel, strides=[1, 1, 1, 1], padding='VALID')
		<tf.Tensor: shape=(1, 4, 4, 2), dtype=float32, numpy=..., dtype=float32)>
		
		Args:
		  input: A `Tensor`. Must be one of the following types:
		    `half`, `bfloat16`, `float32`, `float64`.
		    A Tensor of rank at least 4. The dimension order is interpreted according
		    to the value of `data_format`; with the all-but-inner-3 dimensions acting
		    as batch dimensions. See below for details.
		  filters: A `Tensor`. Must have the same type as `input`.
		    A 4-D tensor of shape
		    `[filter_height, filter_width, in_channels, out_channels]`
		  strides: An int or list of `ints` that has length `1`, `2` or `4`.  The
		    stride of the sliding window for each dimension of `input`. If a single
		    value is given it is replicated in the `H` and `W` dimension. By default
		    the `N` and `C` dimensions are set to 1. The dimension order is determined
		    by the value of `data_format`, see below for details.
		  padding: Either the `string` `"SAME"` or `"VALID"` indicating the type of
		    padding algorithm to use, or a list indicating the explicit paddings at
		    the start and end of each dimension. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information. When explicit padding is used and data_format is
		    `"NHWC"`, this should be in the form `[[0, 0], [pad_top, pad_bottom],
		    [pad_left, pad_right], [0, 0]]`. When explicit padding used and
		    data_format is `"NCHW"`, this should be in the form `[[0, 0], [0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right]]`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`.
		    Defaults to `"NHWC"`.
		    Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of:
		        `batch_shape + [height, width, channels]`.
		    Alternatively, the format could be "NCHW", the data storage order of:
		        `batch_shape + [channels, height, width]`.
		  dilations: An int or list of `ints` that has length `1`, `2` or `4`,
		    defaults to 1. The dilation factor for each dimension of`input`. If a
		    single value is given it is replicated in the `H` and `W` dimension. By
		    default the `N` and `C` dimensions are set to 1. If set to k > 1, there
		    will be k-1 skipped cells between each filter element on that dimension.
		    The dimension order is determined by the value of `data_format`, see above
		    for details. Dilations in the batch and depth dimensions if a 4-d tensor
		    must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input` and the same outer batch shape.
	**/
	static public function conv2d(input:Dynamic, filters:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The transpose of `conv2d`.
		
		This operation is sometimes called "deconvolution" after
		(Zeiler et al., 2010), but is really the transpose (gradient) of
		`atrous_conv2d` rather than an actual deconvolution.
		
		Args:
		  input: A 4-D `Tensor` of type `float` and shape `[batch, height, width,
		    in_channels]` for `NHWC` data format or `[batch, in_channels, height,
		    width]` for `NCHW` data format.
		  filters: A 4-D `Tensor` with the same type as `input` and shape `[height,
		    width, output_channels, in_channels]`.  `filter`'s `in_channels` dimension
		    must match that of `input`.
		  output_shape: A 1-D `Tensor` representing the output shape of the
		    deconvolution op.
		  strides: An int or list of `ints` that has length `1`, `2` or `4`.  The
		    stride of the sliding window for each dimension of `input`. If a single
		    value is given it is replicated in the `H` and `W` dimension. By default
		    the `N` and `C` dimensions are set to 0. The dimension order is determined
		    by the value of `data_format`, see below for details.
		  padding: Either the `string` `"SAME"` or `"VALID"` indicating the type of
		    padding algorithm to use, or a list indicating the explicit paddings at
		    the start and end of each dimension. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.  When explicit padding is used and data_format is
		    `"NHWC"`, this should be in the form `[[0, 0], [pad_top, pad_bottom],
		    [pad_left, pad_right], [0, 0]]`. When explicit padding used and
		    data_format is `"NCHW"`, this should be in the form `[[0, 0], [0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right]]`.
		  data_format: A string. 'NHWC' and 'NCHW' are supported.
		  dilations: An int or list of `ints` that has length `1`, `2` or `4`,
		    defaults to 1. The dilation factor for each dimension of`input`. If a
		    single value is given it is replicated in the `H` and `W` dimension. By
		    default the `N` and `C` dimensions are set to 1. If set to k > 1, there
		    will be k-1 skipped cells between each filter element on that dimension.
		    The dimension order is determined by the value of `data_format`, see above
		    for details. Dilations in the batch and depth dimensions if a 4-d tensor
		    must be 1.
		  name: Optional name for the returned tensor.
		
		Returns:
		  A `Tensor` with the same type as `input`.
		
		Raises:
		  ValueError: If input/output depth does not match `filter`'s shape, or if
		    padding is other than `'VALID'` or `'SAME'`.
		
		References:
		  Deconvolutional Networks:
		    [Zeiler et al., 2010]
		    (https://ieeexplore.ieee.org/abstract/document/5539957)
		    ([pdf]
		    (http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.232.4023&rep=rep1&type=pdf))
	**/
	static public function conv2d_transpose(input:Dynamic, filters:Dynamic, output_shape:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a 3-D convolution given 5-D `input` and `filters` tensors.
		
		In signal processing, cross-correlation is a measure of similarity of
		two waveforms as a function of a time-lag applied to one of them. This
		is also known as a sliding dot product or sliding inner-product.
		
		Our Conv3D implements a form of cross-correlation.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`.
		    Shape `[batch, in_depth, in_height, in_width, in_channels]`.
		  filters: A `Tensor`. Must have the same type as `input`.
		    Shape `[filter_depth, filter_height, filter_width, in_channels,
		    out_channels]`. `in_channels` must match between `input` and `filters`.
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
	static public function conv3d(input:Dynamic, filters:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The transpose of `conv3d`.
		
		This operation is sometimes called "deconvolution" after
		(Zeiler et al., 2010), but is really the transpose (gradient) of `conv3d`
		rather than an actual deconvolution.
		
		Args:
		  input: A 5-D `Tensor` of type `float` and shape `[batch, depth, height,
		    width, in_channels]` for `NDHWC` data format or `[batch, in_channels,
		    depth, height, width]` for `NCDHW` data format.
		  filters: A 5-D `Tensor` with the same type as `input` and shape `[depth,
		    height, width, output_channels, in_channels]`.  `filter`'s `in_channels`
		    dimension must match that of `input`.
		  output_shape: A 1-D `Tensor` representing the output shape of the
		    deconvolution op.
		  strides: An int or list of `ints` that has length `1`, `3` or `5`.  The
		    stride of the sliding window for each dimension of `input`. If a single
		    value is given it is replicated in the `D`, `H` and `W` dimension. By
		    default the `N` and `C` dimensions are set to 0. The dimension order is
		    determined by the value of `data_format`, see below for details.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: A string. 'NDHWC' and 'NCDHW' are supported.
		  dilations: An int or list of `ints` that has length `1`, `3` or `5`,
		    defaults to 1. The dilation factor for each dimension of`input`. If a
		    single value is given it is replicated in the `D`, `H` and `W` dimension.
		    By default the `N` and `C` dimensions are set to 1. If set to k > 1, there
		    will be k-1 skipped cells between each filter element on that dimension.
		    The dimension order is determined by the value of `data_format`, see above
		    for details. Dilations in the batch and depth dimensions if a 5-d tensor
		    must be 1.
		  name: Optional name for the returned tensor.
		
		Returns:
		  A `Tensor` with the same type as `input`.
		
		References:
		  Deconvolutional Networks:
		    [Zeiler et al., 2010]
		    (https://ieeexplore.ieee.org/abstract/document/5539957)
		    ([pdf]
		    (http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.232.4023&rep=rep1&type=pdf))
	**/
	static public function conv3d_transpose(input:Dynamic, filters:Dynamic, output_shape:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The transpose of `convolution`.
		
		This operation is sometimes called "deconvolution" after
		(Zeiler et al., 2010), but is really the transpose (gradient) of `conv3d`
		rather than an actual deconvolution.
		
		Args:
		  input: An N+2 dimensional `Tensor` of shape
		    `[batch_size] + input_spatial_shape + [in_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, in_channels] + input_spatial_shape` if data_format starts
		    with "NC". It must be one of the following types:
		    `half`, `bfloat16`, `float32`, `float64`.
		  filters: An N+2 dimensional `Tensor` with the same type as `input` and
		    shape `spatial_filter_shape + [in_channels, out_channels]`.
		  output_shape: A 1-D `Tensor` representing the output shape of the
		    deconvolution op.
		  strides: An int or list of `ints` that has length `1`, `N` or `N+2`.  The
		    stride of the sliding window for each dimension of `input`. If a single
		    value is given it is replicated in the spatial dimensions. By default
		    the `N` and `C` dimensions are set to 0. The dimension order is determined
		    by the value of `data_format`, see below for details.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  dilations: An int or list of `ints` that has length `1`, `N` or `N+2`,
		    defaults to 1. The dilation factor for each dimension of`input`. If a
		    single value is given it is replicated in the spatial dimensions. By
		    default the `N` and `C` dimensions are set to 1. If set to k > 1, there
		    will be k-1 skipped cells between each filter element on that dimension.
		    The dimension order is determined by the value of `data_format`, see above
		    for details.
		  name: A name for the operation (optional). If not specified "conv_transpose"
		    is used.
		
		Returns:
		  A `Tensor` with the same type as `value`.
		
		References:
		  Deconvolutional Networks:
		    [Zeiler et al., 2010]
		    (https://ieeexplore.ieee.org/abstract/document/5539957)
		    ([pdf]
		    (http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.232.4023&rep=rep1&type=pdf))
	**/
	static public function conv_transpose(input:Dynamic, filters:Dynamic, output_shape:Dynamic, strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes sums of N-D convolutions (actually cross-correlation).
		
		This also supports either output striding via the optional `strides` parameter
		or atrous convolution (also known as convolution with holes or dilated
		convolution, based on the French word "trous" meaning holes in English) via
		the optional `dilations` parameter.  Currently, however, output striding
		is not supported for atrous convolutions.
		
		Specifically, in the case that `data_format` does not start with "NC", given
		a rank (N+2) `input` Tensor of shape
		
		  [num_batches,
		   input_spatial_shape[0],
		   ...,
		   input_spatial_shape[N-1],
		   num_input_channels],
		
		a rank (N+2) `filters` Tensor of shape
		
		  [spatial_filter_shape[0],
		   ...,
		   spatial_filter_shape[N-1],
		   num_input_channels,
		   num_output_channels],
		
		an optional `dilations` tensor of shape [N] (defaulting to [1]*N)
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
		output striding `strides`.
		
		In the case that `data_format` does start with `"NC"`, the `input` and output
		(but not the `filters`) are simply transposed as follows:
		
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
		  filters: An (N+2)-D `Tensor` with the same type as `input` and shape
		    `spatial_filter_shape + [in_channels, out_channels]`.
		  padding: A string, either `"VALID"` or `"SAME"`. The padding algorithm.
		    `"valid"` means no padding. `"same"` results in padding evenly to
		    the left/right or up/down of the input such that output has the same
		    height/width dimension as the input when the strides are 1. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  strides: Optional.  Sequence of N ints >= 1.  Specifies the output stride.
		    Defaults to [1]*N.  If any value of strides is > 1, then all values of
		    dilation_rate must be 1.
		  dilations: Optional.  Sequence of N ints >= 1.  Specifies the filter
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
		  ValueError: If input/output depth does not match `filters` shape, if padding
		    is other than `"VALID"` or `"SAME"`, or if data_format is invalid.
	**/
	static public function convolution(input:Dynamic, filters:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
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
		
		References:
		  Understanding and Improving Convolutional Neural Networks via Concatenated
		  Rectified Linear Units:
		    [Shang et al., 2016](http://proceedings.mlr.press/v48/shang16)
		    ([pdf](http://proceedings.mlr.press/v48/shang16.pdf))
	**/
	static public function crelu(features:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs beam search decoding on the logits given in input.
		
		**Note** The `ctc_greedy_decoder` is a special case of the
		`ctc_beam_search_decoder` with `top_paths=1` and `beam_width=1` (but
		that decoder is faster for this special case).
		
		Args:
		  inputs: 3-D `float` `Tensor`, size `[max_time, batch_size, num_classes]`.
		    The logits.
		  sequence_length: 1-D `int32` vector containing sequence lengths, having size
		    `[batch_size]`.
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
	static public function ctc_beam_search_decoder(inputs:Dynamic, sequence_length:Dynamic, ?beam_width:Dynamic, ?top_paths:Dynamic):Dynamic;
	/**
		Performs greedy decoding on the logits given in input (best path).
		
		Given a tensor as `inputs`, the `blank_index` parameter defines the class
		index of the blank symbol.
		
		For example:
		
		If `blank_index` is equal to 1:
		
		>>> inf = float("inf")
		>>> logits = tf.constant([[[   0., -inf, -inf],
		...                        [ -2.3, -inf, -0.1]],
		...                       [[ -inf, -0.5, -inf],
		...                        [ -inf, -inf, -0.1]],
		...                       [[ -inf, -inf, -inf],
		...                        [ -0.1, -inf, -2.3]]])
		>>> seq_lens = tf.constant([2, 3])
		>>> outputs = tf.nn.ctc_greedy_decoder(
		...     logits,
		...     seq_lens,
		...     blank_index=1)
		
		Notes:
		
		- Regardless of the value of `merge_repeated`, if an index of a
		  given time and batch corresponds to the `blank_index`, no new
		  element is emitted.
		- Default `blank_index` is `(num_classes - 1)`, unless overriden.
		
		If `merge_repeated` is `True`, merge repeated classes in output.
		This means that if consecutive logits' maximum indices are the same,
		only the first of these is emitted.  The sequence `A B B * B * B` (where '*'
		is the blank label) becomes
		
		  * `A B B B` if `merge_repeated=True`.
		  * `A B B B B` if `merge_repeated=False`.
		
		Args:
		  inputs: 3-D `float` `Tensor` sized `[max_time, batch_size, num_classes]`.
		    The logits.
		  sequence_length: 1-D `int32` vector containing sequence lengths, having size
		    `[batch_size]`.
		  merge_repeated: Boolean.  Default: True.
		  blank_index: (Optional). Default: `num_classes - 1`. Define the class index
		    to use for the blank label. Negative values will start from num_classes,
		    ie, -1 will reproduce the ctc_greedy_decoder behavior of using
		    num_classes - 1 for the blank symbol, which corresponds to the default.
		
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
	static public function ctc_greedy_decoder(inputs:Dynamic, sequence_length:Dynamic, ?merge_repeated:Dynamic, ?blank_index:Dynamic):Dynamic;
	/**
		Computes CTC (Connectionist Temporal Classification) loss.
		
		This op implements the CTC loss as presented in (Graves et al., 2006).
		
		Notes:
		
		- Same as the "Classic CTC" in TensorFlow 1.x's tf.compat.v1.nn.ctc_loss
		  setting of preprocess_collapse_repeated=False, ctc_merge_repeated=True
		- Labels may be supplied as either a dense, zero-padded tensor with a
		  vector of label sequence lengths OR as a SparseTensor.
		- On TPU and GPU: Only dense padded labels are supported.
		- On CPU: Caller may use SparseTensor or dense padded labels but calling with
		  a SparseTensor will be significantly faster.
		- Default blank label is 0 rather num_classes - 1, unless overridden by
		  blank_index.
		
		Args:
		  labels: tensor of shape [batch_size, max_label_seq_length] or SparseTensor
		  logits: tensor of shape [frames, batch_size, num_labels], if
		    logits_time_major == False, shape is [batch_size, frames, num_labels].
		  label_length: tensor of shape [batch_size], None if labels is SparseTensor
		    Length of reference label sequence in labels.
		  logit_length: tensor of shape [batch_size] Length of input sequence in
		    logits.
		  logits_time_major: (optional) If True (default), logits is shaped [time,
		    batch, logits]. If False, shape is [batch, time, logits]
		  unique: (optional) Unique label indices as computed by
		    ctc_unique_labels(labels).  If supplied, enable a faster, memory efficient
		    implementation on TPU.
		  blank_index: (optional) Set the class index to use for the blank label.
		    Negative values will start from num_classes, ie, -1 will reproduce the
		    ctc_loss behavior of using num_classes - 1 for the blank symbol. There is
		    some memory/performance overhead to switching from the default of 0 as an
		    additional shifted copy of the logits may be created.
		  name: A name for this `Op`. Defaults to "ctc_loss_dense".
		
		Returns:
		  loss: tensor of shape [batch_size], negative log probabilities.
		
		References:
		    Connectionist Temporal Classification - Labeling Unsegmented Sequence Data
		    with Recurrent Neural Networks:
		      [Graves et al., 2006](https://dl.acm.org/citation.cfm?id=1143891)
		      ([pdf](http://www.cs.toronto.edu/~graves/icml_2006.pdf))
	**/
	static public function ctc_loss(labels:Dynamic, logits:Dynamic, label_length:Dynamic, logit_length:Dynamic, ?logits_time_major:Dynamic, ?unique:Dynamic, ?blank_index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Get unique labels and indices for batched labels for `tf.nn.ctc_loss`.
		
		For use with `tf.nn.ctc_loss` optional argument `unique`: This op can be
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
	static public function depth_to_space(input:Dynamic, block_size:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Depthwise 2-D convolution.
		
		Given a 4D input tensor ('NHWC' or 'NCHW' data formats)
		and a filter tensor of shape
		`[filter_height, filter_width, in_channels, channel_multiplier]`
		containing `in_channels` convolutional filters of depth 1, `depthwise_conv2d`
		applies a different filter to each input channel (expanding from 1 channel
		to `channel_multiplier` channels for each), then concatenates the results
		together.  The output has `in_channels * channel_multiplier` channels.
		
		In detail, with the default NHWC format,
		
		    output[b, i, j, k * channel_multiplier + q] = sum_{di, dj}
		         filter[di, dj, k, q] * input[b, strides[1] * i + rate[0] * di,
		                                         strides[2] * j + rate[1] * dj, k]
		
		Must have `strides[0] = strides[3] = 1`.  For the most common case of the
		same horizontal and vertical strides, `strides = [1, stride, stride, 1]`.
		If any value in `rate` is greater than 1, we perform atrous depthwise
		convolution, in which case all values in the `strides` tensor must be equal
		to 1.
		
		Usage Example:
		
		>>> x = np.array([
		...     [1., 2.],
		...     [3., 4.],
		...     [5., 6.]
		... ], dtype=np.float32).reshape((1, 3, 2, 1))
		>>> kernel = np.array([
		...     [1., 2.],
		...     [3., 4]
		... ], dtype=np.float32).reshape((2, 1, 1, 2))
		>>> tf.nn.depthwise_conv2d(x, kernel, strides=[1, 1, 1, 1],
		...                        padding='VALID').numpy()
		  array([[[[10., 14.],
		           [14., 20.]],
		          [[18., 26.],
		           [22., 32.]]]], dtype=float32)
		
		>>> tf.nn.depthwise_conv2d(x, kernel, strides=[1, 1, 1, 1],
		...                        padding=[[0, 0], [1, 0], [1, 0], [0, 0]]).numpy()
		  array([[[[ 0.,  0.],
		           [ 3.,  4.],
		           [ 6.,  8.]],
		          [[ 0.,  0.],
		           [10., 14.],
		           [14., 20.]],
		          [[ 0.,  0.],
		           [18., 26.],
		           [22., 32.]]]], dtype=float32)
		
		Args:
		  input: 4-D with shape according to `data_format`.
		  filter: 4-D with shape
		    `[filter_height, filter_width, in_channels, channel_multiplier]`.
		  strides: 1-D of size 4.  The stride of the sliding window for each
		    dimension of `input`.
		  padding: Controls how to pad the image before applying the convolution. Can
		    be the string `"SAME"` or `"VALID"` indicating the type of padding
		    algorithm to use, or a list indicating the explicit paddings at the start
		    and end of each dimension. When explicit padding is used and data_format
		    is `"NHWC"`, this should be in the form `[[0, 0], [pad_top, pad_bottom],
		    [pad_left, pad_right], [0, 0]]`. When explicit padding used and
		    data_format is `"NCHW"`, this should be in the form `[[0, 0], [0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right]]`.
		  data_format: The data format for input. Either "NHWC" (default) or "NCHW".
		  dilations: 1-D of size 2. The dilation rate in which we sample input values
		    across the `height` and `width` dimensions in atrous convolution. If it is
		    greater than 1, then all values of strides must be 1.
		  name: A name for this operation (optional).
		
		Returns:
		  A 4-D `Tensor` with shape according to `data_format`.  E.g., for
		  "NHWC" format, shape is
		  `[batch, out_height, out_width, in_channels * channel_multiplier].`
	**/
	static public function depthwise_conv2d(input:Dynamic, filter:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradients of depthwise convolution with respect to the filter.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `bfloat16`,
		    `float32`, `float64`. 4-D with shape based on `data_format`.  For example,
		    if `data_format` is 'NHWC' then `input` is a 4-D `[batch, in_height,
		    in_width, in_channels]` tensor.
		  filter_sizes: A `Tensor` of type `int32`. An integer vector representing the
		    tensor shape of `filter`, where `filter` is a 4-D `[filter_height,
		    filter_width, in_channels, depthwise_multiplier]` tensor.
		  out_backprop: A `Tensor`. Must have the same type as `input`. 4-D with shape
		    based on `data_format`. For example, if `data_format` is 'NHWC' then
		    out_backprop shape is `[batch, out_height, out_width, out_channels]`.
		    Gradients w.r.t. the output of the convolution.
		  strides: A list of `ints`. The stride of the sliding window for each
		    dimension of the input of the convolution.
		  padding: Controls how to pad the image before applying the convolution. Can
		    be the string `"SAME"` or `"VALID"` indicating the type of padding
		    algorithm to use, or a list indicating the explicit paddings at the start
		    and end of each dimension. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information. When explicit padding is used and data_format is
		    `"NHWC"`, this should be in the form `[[0, 0], [pad_top, pad_bottom],
		    [pad_left, pad_right], [0, 0]]`. When explicit padding used and
		    data_format is `"NCHW"`, this should be in the form `[[0, 0], [0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right]]`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to
		    `"NHWC"`. Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of: [batch, height,
		      width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		      [batch, channels, height, width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`. 1-D
		    tensor of length 4.  The dilation factor for each dimension of `input`. If
		    set to k > 1, there will be k-1 skipped cells between each filter element
		    on that dimension. The dimension order is determined by the value of
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
		  input_sizes: A `Tensor` of type `int32`. An integer vector representing the
		    shape of `input`, based on `data_format`.  For example, if `data_format`
		    is 'NHWC' then `input` is a 4-D `[batch, height, width, channels]` tensor.
		  filter: A `Tensor`. Must be one of the following types: `half`, `bfloat16`,
		    `float32`, `float64`. 4-D with shape `[filter_height, filter_width,
		    in_channels, depthwise_multiplier]`.
		  out_backprop: A `Tensor`. Must have the same type as `filter`. 4-D with
		    shape  based on `data_format`. For example, if `data_format` is 'NHWC'
		    then out_backprop shape is `[batch, out_height, out_width, out_channels]`.
		    Gradients w.r.t. the output of the convolution.
		  strides: A list of `ints`. The stride of the sliding window for each
		    dimension of the input of the convolution.
		  padding: Controls how to pad the image before applying the convolution. Can
		    be the string `"SAME"` or `"VALID"` indicating the type of padding
		    algorithm to use, or a list indicating the explicit paddings at the start
		    and end of each dimension. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information. When explicit padding is used and data_format is
		    `"NHWC"`, this should be in the form `[[0, 0], [pad_top, pad_bottom],
		    [pad_left, pad_right], [0, 0]]`. When explicit padding used and
		    data_format is `"NCHW"`, this should be in the form `[[0, 0], [0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right]]`.
		  data_format: An optional `string` from: `"NHWC", "NCHW"`. Defaults to
		    `"NHWC"`. Specify the data format of the input and output data. With the
		    default format "NHWC", the data is stored in the order of: [batch, height,
		      width, channels].
		    Alternatively, the format could be "NCHW", the data storage order of:
		      [batch, channels, height, width].
		  dilations: An optional list of `ints`. Defaults to `[1, 1, 1, 1]`. 1-D
		    tensor of length 4.  The dilation factor for each dimension of `input`. If
		    set to k > 1, there will be k-1 skipped cells between each filter element
		    on that dimension. The dimension order is determined by the value of
		    `data_format`, see above for details. Dilations in the batch and depth
		    dimensions must be 1.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `filter`.
	**/
	static public function depthwise_conv2d_backprop_input(input_sizes:Dynamic, filter:Dynamic, out_backprop:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the grayscale dilation of 4-D `input` and 3-D `filters` tensors.
		
		The `input` tensor has shape `[batch, in_height, in_width, depth]` and the
		`filters` tensor has shape `[filter_height, filter_width, depth]`, i.e., each
		input channel is processed independently of the others with its own
		structuring function. The `output` tensor has shape
		`[batch, out_height, out_width, depth]`. The spatial dimensions of the output
		tensor depend on the `padding` algorithm. We currently only support the
		default "NHWC" `data_format`.
		
		In detail, the grayscale morphological 2-D dilation is the max-sum correlation
		(for consistency with `conv2d`, we use unmirrored filters):
		
		    output[b, y, x, c] =
		       max_{dy, dx} input[b,
		                          strides[1] * y + rates[1] * dy,
		                          strides[2] * x + rates[2] * dx,
		                          c] +
		                    filters[dy, dx, c]
		
		Max-pooling is a special case when the filter has size equal to the pooling
		kernel size and contains all zeros.
		
		Note on duality: The dilation of `input` by the `filters` is equal to the
		negation of the erosion of `-input` by the reflected `filters`.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`,
		    `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`,
		    `uint32`, `uint64`.
		    4-D with shape `[batch, in_height, in_width, depth]`.
		  filters: A `Tensor`. Must have the same type as `input`.
		    3-D with shape `[filter_height, filter_width, depth]`.
		  strides: A list of `ints` that has length `>= 4`.
		    The stride of the sliding window for each dimension of the input
		    tensor. Must be: `[1, stride_height, stride_width, 1]`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: A `string`, only `"NHWC"` is currently supported.
		  dilations: A list of `ints` that has length `>= 4`.
		    The input stride for atrous morphological dilation. Must be:
		    `[1, rate_height, rate_width, 1]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function dilation2d(input:Dynamic, filters:Dynamic, strides:Dynamic, padding:Dynamic, data_format:Dynamic, dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes dropout: randomly sets elements to zero to prevent overfitting.
		
		Warning: You should consider using
		`tf.nn.experimental.stateless_dropout` instead of this function. The
		difference between `tf.nn.experimental.stateless_dropout` and this
		function is analogous to the difference between
		`tf.random.stateless_uniform` and `tf.random.uniform`. Please see
		[Random number
		generation](https://www.tensorflow.org/guide/random_numbers) guide
		for a detailed description of the various RNG systems in TF. As the
		guide states, legacy stateful RNG ops like `tf.random.uniform` and
		`tf.nn.dropout` are not deprecated yet but highly discouraged,
		because their states are hard to control.
		
		Note: The behavior of dropout has changed between TensorFlow 1.x and 2.x.
		When converting 1.x code, please use named arguments to ensure behavior stays
		consistent.
		
		See also: `tf.keras.layers.Dropout` for a dropout layer.
		
		[Dropout](https://arxiv.org/abs/1207.0580) is useful for regularizing DNN
		models. Inputs elements are randomly set to zero (and the other elements are
		rescaled). This encourages each node to be independently useful, as it cannot
		rely on the output of other nodes.
		
		More precisely: With probability `rate` elements of `x` are set to `0`.
		The remaining elements are scaled up by `1.0 / (1 - rate)`, so that the
		expected value is preserved.
		
		>>> tf.random.set_seed(0)
		>>> x = tf.ones([3,5])
		>>> tf.nn.dropout(x, rate = 0.5, seed = 1).numpy()
		array([[2., 0., 0., 2., 2.],
		     [2., 2., 2., 2., 2.],
		     [2., 0., 2., 0., 2.]], dtype=float32)
		
		>>> tf.random.set_seed(0)
		>>> x = tf.ones([3,5])
		>>> tf.nn.dropout(x, rate = 0.8, seed = 1).numpy()
		array([[0., 0., 0., 5., 5.],
		     [0., 5., 0., 5., 0.],
		     [5., 0., 5., 0., 5.]], dtype=float32)
		
		>>> tf.nn.dropout(x, rate = 0.0) == x
		<tf.Tensor: shape=(3, 5), dtype=bool, numpy=
		  array([[ True,  True,  True,  True,  True],
		         [ True,  True,  True,  True,  True],
		         [ True,  True,  True,  True,  True]])>
		
		
		By default, each element is kept or dropped independently.  If `noise_shape`
		is specified, it must be
		[broadcastable](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		to the shape of `x`, and only dimensions with `noise_shape[i] == shape(x)[i]`
		will make independent decisions. This is useful for dropping whole
		channels from an image or sequence. For example:
		
		>>> tf.random.set_seed(0)
		>>> x = tf.ones([3,10])
		>>> tf.nn.dropout(x, rate = 2/3, noise_shape=[1,10], seed=1).numpy()
		array([[0., 0., 0., 3., 3., 0., 3., 3., 3., 0.],
		     [0., 0., 0., 3., 3., 0., 3., 3., 3., 0.],
		     [0., 0., 0., 3., 3., 0., 3., 3., 3., 0.]], dtype=float32)
		
		Args:
		  x: A floating point tensor.
		  rate: A scalar `Tensor` with the same type as x. The probability
		    that each element is dropped. For example, setting rate=0.1 would drop
		    10% of input elements.
		  noise_shape: A 1-D integer `Tensor`, representing the
		    shape for randomly generated keep/drop flags.
		  seed: A Python integer. Used to create random seeds. See
		    `tf.random.set_seed` for behavior.
		  name: A name for this operation (optional).
		
		Returns:
		  A Tensor of the same shape of `x`.
		
		Raises:
		  ValueError: If `rate` is not in `[0, 1)` or if `x` is not a floating point
		    tensor. `rate=1` is disallowed, because the output would be all zeros,
		    which is likely not what was intended.
	**/
	static public function dropout(x:Dynamic, rate:Dynamic, ?noise_shape:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the exponential linear function.
		
		The ELU function is defined as:
		
		 * $ e ^ x - 1 $ if $ x < 0 $
		 * $ x $ if $ x >= 0 $
		
		Examples:
		
		>>> tf.nn.elu(1.0)
		<tf.Tensor: shape=(), dtype=float32, numpy=1.0>
		>>> tf.nn.elu(0.0)
		<tf.Tensor: shape=(), dtype=float32, numpy=0.0>
		>>> tf.nn.elu(-1000.0)
		<tf.Tensor: shape=(), dtype=float32, numpy=-1.0>
		
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
		Looks up embeddings for the given `ids` from a list of tensors.
		
		This function is used to perform parallel lookups on the list of tensors in
		`params`.  It is a generalization of `tf.gather`, where `params` is
		interpreted as a partitioning of a large embedding tensor.
		
		If `len(params) > 1`, each element `id` of `ids` is partitioned between the
		elements of `params` according to the "div" partition strategy, which means we
		assign ids to partitions in a contiguous manner. For instance, 13 ids are
		split across 5 partitions as:
		`[[0, 1, 2], [3, 4, 5], [6, 7, 8], [9, 10], [11, 12]]`.
		
		If the id space does not evenly divide the number of partitions, each of the
		first `(max_id + 1) % len(params)` partitions will be assigned one more id.
		
		The results of the lookup are concatenated into a dense
		tensor. The returned tensor has shape `shape(ids) + shape(params)[1:]`.
		
		Args:
		  params: A single tensor representing the complete embedding tensor, or a
		    list of tensors all of same shape except for the first dimension,
		    representing sharded embedding tensors following "div" partition strategy.
		  ids: A `Tensor` with type `int32` or `int64` containing the ids to be looked
		    up in `params`.
		  max_norm: If not `None`, each embedding is clipped if its l2-norm is larger
		    than this value.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with the same type as the tensors in `params`.
		
		  For instance, if `params` is a 5x2 matrix:
		
		  ```python
		  [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]]
		  ```
		
		  or a list of matrices:
		
		  ```python
		  params[0]: [[1, 2], [3, 4]]
		  params[1]: [[5, 6], [7, 8]]
		  params[2]: [[9, 10]]
		  ```
		
		  and `ids` is:
		
		  ```python
		  [0, 3, 4]
		  ```
		
		  The output will be a 3x2 matrix:
		
		  ```python
		  [[1, 2], [7, 8], [9, 10]]
		  ```
		
		Raises:
		  ValueError: If `params` is empty.
	**/
	static public function embedding_lookup(params:Dynamic, ids:Dynamic, ?max_norm:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Looks up embeddings for the given ids and weights from a list of tensors.
		
		This op assumes that there is at least one id for each row in the dense tensor
		represented by sp_ids (i.e. there are no rows with empty features), and that
		all the indices of sp_ids are in canonical row-major order.
		
		`sp_ids` and `sp_weights` (if not None) are `SparseTensor`s with rank of 2.
		Embeddings are always aggregated along the last dimension.
		
		It also assumes that all id values lie in the range [0, p0), where p0
		is the sum of the size of params along dimension 0.
		
		If `len(params) > 1`, each element of `sp_ids` is partitioned between the
		elements of `params` according to the "div" partition strategy, which means we
		assign ids to partitions in a contiguous manner. For instance, 13 ids are
		split across 5 partitions as:
		`[[0, 1, 2], [3, 4, 5], [6, 7, 8], [9, 10], [11, 12]]`.
		
		If the id space does not evenly divide the number of partitions, each of the
		first `(max_id + 1) % len(params)` partitions will be assigned one more id.
		
		Args:
		  params: A single tensor representing the complete embedding tensor, or a
		    list of tensors all of same shape except for the first dimension,
		    representing sharded embedding tensors following "div" partition strategy.
		  sp_ids: N x M `SparseTensor` of int64 ids where N is typically batch size
		    and M is arbitrary.
		  sp_weights: either a `SparseTensor` of float / double weights, or `None` to
		    indicate all weights should be taken to be 1. If specified, `sp_weights`
		    must have exactly the same shape and indices as `sp_ids`.
		  combiner: A string specifying the reduction op. Currently "mean", "sqrtn"
		    and "sum" are supported. "sum" computes the weighted sum of the embedding
		    results for each row. "mean" is the weighted sum divided by the total
		    weight. "sqrtn" is the weighted sum divided by the square root of the sum
		    of the squares of the weights. Defaults to `mean`.
		  max_norm: If not `None`, each embedding is clipped if its l2-norm is larger
		    than this value, before combining.
		  name: Optional name for the op.
		
		Returns:
		  A dense tensor representing the combined embeddings for the
		  sparse ids. For each row in the dense tensor represented by `sp_ids`, the op
		  looks up the embeddings for all ids in that row, multiplies them by the
		  corresponding weight, and combines these embeddings as specified.
		
		  In other words, if
		
		    `shape(combined params) = [p0, p1, ..., pm]`
		
		  and
		
		    `shape(sp_ids) = shape(sp_weights) = [d0, d1]`
		
		  then
		
		    `shape(output) = [d0, p1, ..., pm]`.
		
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
	static public function embedding_lookup_sparse(params:Dynamic, sp_ids:Dynamic, sp_weights:Dynamic, ?combiner:Dynamic, ?max_norm:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the grayscale erosion of 4-D `value` and 3-D `filters` tensors.
		
		The `value` tensor has shape `[batch, in_height, in_width, depth]` and the
		`filters` tensor has shape `[filters_height, filters_width, depth]`, i.e.,
		each input channel is processed independently of the others with its own
		structuring function. The `output` tensor has shape
		`[batch, out_height, out_width, depth]`. The spatial dimensions of the
		output tensor depend on the `padding` algorithm. We currently only support the
		default "NHWC" `data_format`.
		
		In detail, the grayscale morphological 2-D erosion is given by:
		
		    output[b, y, x, c] =
		       min_{dy, dx} value[b,
		                          strides[1] * y - dilations[1] * dy,
		                          strides[2] * x - dilations[2] * dx,
		                          c] -
		                    filters[dy, dx, c]
		
		Duality: The erosion of `value` by the `filters` is equal to the negation of
		the dilation of `-value` by the reflected `filters`.
		
		Args:
		  value: A `Tensor`. 4-D with shape `[batch, in_height, in_width, depth]`.
		  filters: A `Tensor`. Must have the same type as `value`.
		    3-D with shape `[filters_height, filters_width, depth]`.
		  strides: A list of `ints` that has length `>= 4`.
		    1-D of length 4. The stride of the sliding window for each dimension of
		    the input tensor. Must be: `[1, stride_height, stride_width, 1]`.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: A `string`, only `"NHWC"` is currently supported.
		  dilations: A list of `ints` that has length `>= 4`.
		    1-D of length 4. The input stride for atrous morphological dilation.
		    Must be: `[1, rate_height, rate_width, 1]`.
		  name: A name for the operation (optional). If not specified "erosion2d"
		    is used.
		
		Returns:
		  A `Tensor`. Has the same type as `value`.
		  4-D with shape `[batch, out_height, out_width, depth]`.
		
		Raises:
		  ValueError: If the `value` depth does not match `filters`' shape, or if
		    padding is other than `'VALID'` or `'SAME'`.
	**/
	static public function erosion2d(value:Dynamic, filters:Dynamic, strides:Dynamic, padding:Dynamic, data_format:Dynamic, dilations:Dynamic, ?name:Dynamic):Dynamic;
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
		Performs fractional average pooling on the input.
		
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
		    random fashion. Check paper (Graham, 2015) for difference between
		    pseudorandom and random.
		  overlapping: An optional `bool`.  Defaults to `False`.  When set to `True`,
		    it means when pooling, the values at the boundary of adjacent pooling
		    cells are used by both cells. For example:
		    `index  0  1  2  3  4`
		    `value  20 5  16 3  7`
		    If the pooling sequence is [0, 2, 4], then 16, at index 2 will be used
		    twice.  The result would be [20, 16] for fractional avg pooling.
		  seed: An optional `int`.  Defaults to `0`.  If set to be non-zero, the
		    random number generator is seeded by the given seed.  Otherwise it is
		    seeded by a random seed.
		  name: A name for the operation (optional).
		
		Returns:
		A tuple of `Tensor` objects (`output`, `row_pooling_sequence`,
		`col_pooling_sequence`).
		  output: Output `Tensor` after fractional avg pooling.  Has the same type as
		    `value`.
		  row_pooling_sequence: A `Tensor` of type `int64`.
		  col_pooling_sequence: A `Tensor` of type `int64`.
		
		References:
		  Fractional Max-Pooling:
		    [Graham, 2015](https://arxiv.org/abs/1412.6071)
		    ([pdf](https://arxiv.org/pdf/1412.6071.pdf))
	**/
	static public function fractional_avg_pool(value:Dynamic, pooling_ratio:Dynamic, ?pseudo_random:Dynamic, ?overlapping:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs fractional max pooling on the input.
		
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
		
		Args:
		  value: A `Tensor`. 4-D with shape `[batch, height, width, channels]`.
		  pooling_ratio: An int or list of `ints` that has length `1`, `2` or `4`.
		    Pooling ratio for each dimension of `value`, currently only supports row
		    and col dimension and should be >= 1.0. For example, a valid pooling ratio
		    looks like [1.0, 1.44, 1.73, 1.0]. The first and last elements must be 1.0
		    because we don't allow pooling on batch and channels dimensions.  1.44 and
		    1.73 are pooling ratio on height and width dimensions respectively.
		  pseudo_random: An optional `bool`.  Defaults to `False`. When set to `True`,
		    generates the pooling sequence in a pseudorandom fashion, otherwise, in a
		    random fashion. Check paper (Graham, 2015) for difference between
		    pseudorandom and random.
		  overlapping: An optional `bool`.  Defaults to `False`.  When set to `True`,
		    it means when pooling, the values at the boundary of adjacent pooling
		    cells are used by both cells. For example:
		    `index  0  1  2  3  4`
		    `value  20 5  16 3  7`
		    If the pooling sequence is [0, 2, 4], then 16, at index 2 will be used
		    twice.  The result would be [20, 16] for fractional max pooling.
		  seed: An optional `int`.  Defaults to `0`.  If set to be non-zero, the
		    random number generator is seeded by the given seed.  Otherwise it is
		    seeded by a random seed.
		  name: A name for the operation (optional).
		
		Returns:
		A tuple of `Tensor` objects (`output`, `row_pooling_sequence`,
		`col_pooling_sequence`).
		  output: Output `Tensor` after fractional max pooling.  Has the same type as
		    `value`.
		  row_pooling_sequence: A `Tensor` of type `int64`.
		  col_pooling_sequence: A `Tensor` of type `int64`.
		
		References:
		  Fractional Max-Pooling:
		    [Graham, 2015](https://arxiv.org/abs/1412.6071)
		    ([pdf](https://arxiv.org/pdf/1412.6071.pdf))
	**/
	static public function fractional_max_pool(value:Dynamic, pooling_ratio:Dynamic, ?pseudo_random:Dynamic, ?overlapping:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the Gaussian Error Linear Unit (GELU) activation function.
		
		Gaussian error linear unit (GELU) computes
		`x * P(X <= x)`, where `P(X) ~ N(0, 1)`.
		The (GELU) nonlinearity weights inputs by their value, rather than gates
		inputs by their sign as in ReLU.
		
		For example:
		
		>>> x = tf.constant([-3.0, -1.0, 0.0, 1.0, 3.0], dtype=tf.float32)
		>>> y = tf.nn.gelu(x)
		>>> y.numpy()
		array([-0.00404951, -0.15865529,  0.        ,  0.8413447 ,  2.9959507 ],
		    dtype=float32)
		>>> y = tf.nn.gelu(x, approximate=True)
		>>> y.numpy()
		array([-0.00363752, -0.15880796,  0.        ,  0.841192  ,  2.9963627 ],
		    dtype=float32)
		
		Args:
		  features: A `Tensor` representing preactivation values.
		  approximate: An optional `bool`. Defaults to `False`. Whether to enable
		    approximation.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with the same type as `features`.
		
		References:
		  [Gaussian Error Linear Units (GELUs)](https://arxiv.org/abs/1606.08415).
	**/
	static public function gelu(features:Dynamic, ?approximate:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Says whether the targets are in the top `K` predictions.
		
		This outputs a `batch_size` bool array, an entry `out[i]` is `true` if the
		prediction for the target class is finite (not inf, -inf, or nan) and among
		the top `k` predictions among all predictions for example `i`. Note that the
		behavior of `InTopK` differs from the `TopK` op in its handling of ties; if
		multiple classes have the same prediction value and straddle the top-`k`
		boundary, all of those classes are considered to be in the top `k`.
		
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
	static public function in_top_k(targets:Dynamic, predictions:Dynamic, k:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solves isotonic regression problems along the given axis.
		
		For each vector x, the problem solved is
		
		$$\argmin_{y_1 >= y_2 >= ... >= y_n} \sum_i (x_i - y_i)^2.$$
		
		As the solution is component-wise constant, a second tensor is returned that
		encodes the segments. The problems are solved over the given axis.
		
		Consider the following example, where we solve a batch of two problems. The
		first input is [3, 1, 2], while the second [1, 3, 4] (as the axis is 1).
		>>> x = tf.constant([[3, 1, 2], [1, 3, 4]], dtype=tf.float32)
		>>> y, segments = tf.nn.isotonic_regression(x, axis=1)
		>>> y  # The solution.
		<tf.Tensor: shape=(2, 3), dtype=float32, numpy=
		array([[3.       , 1.5      , 1.5      ],
		       [2.6666667, 2.6666667, 2.6666667]], dtype=float32)>
		
		Note that the first solution has two blocks [2] and [1.5, 1.5]. The second
		solution is constant, and thus has a single segment. These segments are
		exactly what the second returned tensor encodes:
		
		>>> segments
		<tf.Tensor: shape=(2, 3), dtype=int32, numpy=
		array([[0, 1, 1],
		       [0, 0, 0]], dtype=int32)>
		
		
		Args:
		  inputs: A tensor holding the inputs.
		  decreasing: If set to False, the inequalities in the optimizing constrained
		    are flipped.
		  axis: The axis along which the problems should be solved.
		
		Returns:
		  output: The solutions, same shape as type as the input.
		  segments: An int32 tensor, same shape as the input indicating the segments
		    that have the same value. Specifically, those positions that have the same
		    value correspond to the same segment. These values start at zero, and are
		    monotonously increasing for each solution.
	**/
	static public function isotonic_regression(inputs:Dynamic, ?decreasing:Dynamic, ?axis:Dynamic):Dynamic;
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
		
		1-D tensor example:
		>>> x = tf.constant([3.0, 4.0])
		>>> tf.math.l2_normalize(x).numpy()
		array([0.6, 0.8], dtype=float32)
		
		2-D tensor example:
		>>> x = tf.constant([[3.0], [4.0]])
		>>> tf.math.l2_normalize(x, 0).numpy()
		array([[0.6],
		     [0.8]], dtype=float32)
		
		>>> x = tf.constant([[3.0], [4.0]])
		>>> tf.math.l2_normalize(x, 1).numpy()
		array([[1.],
		     [1.]], dtype=float32)
		
		Args:
		  x: A `Tensor`.
		  axis: Dimension along which to normalize.  A scalar or a vector of
		    integers.
		  epsilon: A lower bound value for the norm. Will use `sqrt(epsilon)` as the
		    divisor if `norm < sqrt(epsilon)`.
		  name: A name for this operation (optional).
		  dim: Deprecated, do not use.
		
		Returns:
		  A `Tensor` with the same shape as `x`.
	**/
	static public function l2_normalize(x:Dynamic, ?axis:Dynamic, ?epsilon:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Compute the Leaky ReLU activation function.
		
		Source: [Rectifier Nonlinearities Improve Neural Network Acoustic Models.
		AL Maas, AY Hannun, AY Ng - Proc. ICML, 2013]
		(https://ai.stanford.edu/~amaas/papers/relu_hybrid_icml2013_final.pdf).
		
		Args:
		  features: A `Tensor` representing preactivation values. Must be one of
		    the following types: `float16`, `float32`, `float64`, `int32`, `int64`.
		  alpha: Slope of the activation function at x < 0.
		  name: A name for the operation (optional).
		
		Returns:
		  The activation value.
		
		References:
		  Rectifier Nonlinearities Improve Neural Network Acoustic Models:
		    [Maas et al., 2013]
		    (http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.693.1422)
		    ([pdf]
		    (http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.693.1422&rep=rep1&type=pdf))
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
		Computes log softmax activations.
		
		For each batch `i` and class `j` we have
		
		    logsoftmax = logits - log(reduce_sum(exp(logits), axis))
		
		Args:
		  logits: A non-empty `Tensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  axis: The dimension softmax would be performed on. The default is -1 which
		    indicates the last dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `logits`. Same shape as `logits`.
		
		Raises:
		  InvalidArgumentError: if `logits` is empty or `axis` is beyond the last
		    dimension of `logits`.
	**/
	static public function log_softmax(logits:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
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
		Performs max pooling on the input.
		
		For a given window of `ksize`, takes the maximum value within that window.
		Used for reducing computation and preventing overfitting.
		
		Consider an example of pooling with 2x2, non-overlapping windows:
		
		>>> matrix = tf.constant([
		...     [0, 0, 1, 7],
		...     [0, 2, 0, 0],
		...     [5, 2, 0, 0],
		...     [0, 0, 9, 8],
		... ])
		>>> reshaped = tf.reshape(matrix, (1, 4, 4, 1))
		>>> tf.nn.max_pool(reshaped, ksize=2, strides=2, padding="SAME")
		<tf.Tensor: shape=(1, 2, 2, 1), dtype=int32, numpy=
		array([[[[2],
		         [7]],
		        [[5],
		         [9]]]], dtype=int32)>
		
		We can adjust the window size using the `ksize` parameter. For example, if we
		were to expand the window to 3:
		
		>>> tf.nn.max_pool(reshaped, ksize=3, strides=2, padding="SAME")
		<tf.Tensor: shape=(1, 2, 2, 1), dtype=int32, numpy=
		array([[[[5],
		         [7]],
		        [[9],
		         [9]]]], dtype=int32)>
		
		We've now picked up two additional large numbers (5 and 9) in two of the
		pooled spots.
		
		Note that our windows are now overlapping, since we're still moving by 2 units
		on each iteration. This is causing us to see the same 9 repeated twice, since
		it is part of two overlapping windows.
		
		We can adjust how far we move our window with each iteration using the
		`strides` parameter. Updating this to the same value as our window size
		eliminates the overlap:
		
		>>> tf.nn.max_pool(reshaped, ksize=3, strides=3, padding="SAME")
		<tf.Tensor: shape=(1, 2, 2, 1), dtype=int32, numpy=
		array([[[[2],
		         [7]],
		        [[5],
		         [9]]]], dtype=int32)>
		
		Because the window does not neatly fit into our input, padding is added around
		the edges, giving us the same result as when we used a 2x2 window. We can skip
		padding altogether and simply drop the windows that do not fully fit into our
		input by instead passing `"VALID"` to the `padding` argument:
		
		>>> tf.nn.max_pool(reshaped, ksize=3, strides=3, padding="VALID")
		<tf.Tensor: shape=(1, 1, 1, 1), dtype=int32, numpy=array([[[[5]]]],
		 dtype=int32)>
		
		Now we've grabbed the largest value in the 3x3 window starting from the upper-
		left corner. Since no other windows fit in our input, they are dropped.
		
		Args:
		  input:  Tensor of rank N+2, of shape `[batch_size] + input_spatial_shape +
		    [num_channels]` if `data_format` does not start with "NC" (default), or
		    `[batch_size, num_channels] + input_spatial_shape` if data_format starts
		    with "NC". Pooling happens over the spatial dimensions only.
		  ksize: An int or list of `ints` that has length `1`, `N` or `N+2`. The size
		    of the window for each dimension of the input tensor.
		  strides: An int or list of `ints` that has length `1`, `N` or `N+2`. The
		    stride of the sliding window for each dimension of the input tensor.
		  padding: Either the `string` `"SAME"` or `"VALID"` indicating the type of
		    padding algorithm to use, or a list indicating the explicit paddings at
		    the start and end of each dimension. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information. When explicit padding is used and data_format is
		    `"NHWC"`, this should be in the form `[[0, 0], [pad_top, pad_bottom],
		    [pad_left, pad_right], [0, 0]]`. When explicit padding used and
		    data_format is `"NCHW"`, this should be in the form `[[0, 0], [0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right]]`. When using explicit
		    padding, the size of the paddings cannot be greater than the sliding
		    window size.
		  data_format: A string. Specifies the channel dimension. For N=1 it can be
		    either "NWC" (default) or "NCW", for N=2 it can be either "NHWC" (default)
		    or "NCHW" and for N=3 either "NDHWC" (default) or "NCDHW".
		  name: Optional name for the operation.
		
		Returns:
		  A `Tensor` of format specified by `data_format`.
		  The max pooled output tensor.
	**/
	static public function max_pool(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs the max pooling on the input.
		
		Note internally this op reshapes and uses the underlying 2d operation.
		
		Args:
		  input: A 3-D `Tensor` of the format specified by `data_format`.
		  ksize: An int or list of `ints` that has length `1` or `3`. The size of the
		    window for each dimension of the input tensor.
		  strides: An int or list of `ints` that has length `1` or `3`. The stride of
		    the sliding window for each dimension of the input tensor.
		  padding: Either the `string` `"SAME"` or `"VALID"` indicating the type of
		    padding algorithm to use, or a list indicating the explicit paddings at
		    the start and end of each dimension. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information. When explicit padding is used and data_format is
		    `"NWC"`, this should be in the form `[[0, 0], [pad_left, pad_right], [0,
		    0]]`. When explicit padding used and data_format is `"NCW"`, this should
		    be in the form `[[0, 0], [0, 0], [pad_left, pad_right]]`. When using
		    explicit padding, the size of the paddings cannot be greater than the
		    sliding window size.
		  data_format: An optional string from: "NWC", "NCW". Defaults to "NWC".
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of format specified by `data_format`.
		  The max pooled output tensor.
	**/
	static public function max_pool1d(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs the max pooling on the input.
		
		Args:
		  input: A 4-D `Tensor` of the format specified by `data_format`.
		  ksize: An int or list of `ints` that has length `1`, `2` or `4`. The size of
		    the window for each dimension of the input tensor.
		  strides: An int or list of `ints` that has length `1`, `2` or `4`. The
		    stride of the sliding window for each dimension of the input tensor.
		  padding: Either the `string` `"SAME"` or `"VALID"` indicating the type of
		    padding algorithm to use, or a list indicating the explicit paddings at
		    the start and end of each dimension. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information. When explicit padding is used and data_format is
		    `"NHWC"`, this should be in the form `[[0, 0], [pad_top, pad_bottom],
		    [pad_left, pad_right], [0, 0]]`. When explicit padding used and
		    data_format is `"NCHW"`, this should be in the form `[[0, 0], [0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right]]`. When using explicit
		    padding, the size of the paddings cannot be greater than the sliding
		    window size.
		  data_format: A string. 'NHWC', 'NCHW' and 'NCHW_VECT_C' are supported.
		  name: Optional name for the operation.
		
		Returns:
		  A `Tensor` of format specified by `data_format`.
		  The max pooled output tensor.
	**/
	static public function max_pool2d(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs the max pooling on the input.
		
		Args:
		  input: A 5-D `Tensor` of the format specified by `data_format`.
		  ksize: An int or list of `ints` that has length `1`, `3` or `5`. The size of
		    the window for each dimension of the input tensor.
		  strides: An int or list of `ints` that has length `1`, `3` or `5`. The
		    stride of the sliding window for each dimension of the input tensor.
		  padding: A string, either `'VALID'` or `'SAME'`. The padding algorithm. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: An optional string from: "NDHWC", "NCDHW". Defaults to "NDHWC".
		    The data format of the input and output data. With the default format
		    "NDHWC", the data is stored in the order of: [batch, in_depth, in_height,
		      in_width, in_channels]. Alternatively, the format could be "NCDHW", the
		    data storage order is: [batch, in_channels, in_depth, in_height,
		      in_width].
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of format specified by `data_format`.
		  The max pooled output tensor.
	**/
	static public function max_pool3d(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Performs max pooling on the input and outputs both max values and indices.
		
		The indices in `argmax` are flattened, so that a maximum value at position
		`[b, y, x, c]` becomes flattened index: `(y * width + x) * channels + c` if
		`include_batch_in_index` is False;
		`((b * height + y) * width + x) * channels + c`
		if `include_batch_in_index` is True.
		
		The indices returned are always in `[0, height) x [0, width)` before
		flattening, even if padding is involved and the mathematically correct answer
		is outside (either negative or too large).  This is a bug, but fixing it is
		difficult to do in a safe backwards compatible way, especially due to
		flattening.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`,
		    `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`,
		    `uint32`, `uint64`.
		    4-D with shape `[batch, height, width, channels]`.  Input to pool over.
		  ksize: An int or list of `ints` that has length `1`, `2` or `4`.
		    The size of the window for each dimension of the input tensor.
		  strides: An int or list of `ints` that has length `1`, `2` or `4`.
		    The stride of the sliding window for each dimension of the
		    input tensor.
		  padding: A `string` from: `"SAME", "VALID"`.
		    The type of padding algorithm to use. See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: An optional `string`, must be set to `"NHWC"`. Defaults to
		    `"NHWC"`.
		    Specify the data format of the input and output data.
		  output_dtype: An optional `tf.DType` from: `tf.int32, tf.int64`.
		    Defaults to `tf.int64`.
		    The dtype of the returned argmax tensor.
		  include_batch_in_index: An optional `boolean`. Defaults to `False`.
		    Whether to include batch dimension in flattened index of `argmax`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, argmax).
		
		  output: A `Tensor`. Has the same type as `input`.
		  argmax: A `Tensor` of type `output_dtype`.
	**/
	static public function max_pool_with_argmax(input:Dynamic, ksize:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?output_dtype:Dynamic, ?include_batch_in_index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculates the mean and variance of `x`.
		
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
		  shift: Not used in the current implementation.
		  keepdims: produce moments with the same dimensionality as the input.
		  name: Name used to scope the operations that compute the moments.
		
		Returns:
		  Two `Tensor` objects: `mean` and `variance`.
	**/
	static public function moments(x:Dynamic, axes:Dynamic, ?shift:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes and returns the noise-contrastive estimation training loss.
		
		See [Noise-contrastive estimation: A new estimation principle for
		unnormalized statistical
		models](http://www.jmlr.org/proceedings/papers/v9/gutmann10a/gutmann10a.pdf).
		Also see our [Candidate Sampling Algorithms
		Reference](https://www.tensorflow.org/extras/candidate_sampling.pdf)
		
		A common use case is to use this method for training, and calculate the full
		sigmoid loss for evaluation or inference as in the following example:
		
		```python
		if mode == "train":
		  loss = tf.nn.nce_loss(
		      weights=weights,
		      biases=biases,
		      labels=labels,
		      inputs=inputs,
		      ...)
		elif mode == "eval":
		  logits = tf.matmul(inputs, tf.transpose(weights))
		  logits = tf.nn.bias_add(logits, biases)
		  labels_one_hot = tf.one_hot(labels, n_classes)
		  loss = tf.nn.sigmoid_cross_entropy_with_logits(
		      labels=labels_one_hot,
		      logits=logits)
		  loss = tf.reduce_sum(loss, axis=1)
		```
		
		Note: when doing embedding lookup on `weights` and `bias`, "div" partition
		strategy will be used. Support for other partition strategy will be added
		later.
		
		Note: By default this uses a log-uniform (Zipfian) distribution for sampling,
		so your labels must be sorted in order of decreasing frequency to achieve
		good results.  For more details, see
		`tf.random.log_uniform_candidate_sampler`.
		
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
		    objects whose concatenation along dimension 0 has shape [num_classes,
		    dim].  The (possibly-partitioned) class embeddings.
		  biases: A `Tensor` of shape `[num_classes]`.  The class biases.
		  labels: A `Tensor` of type `int64` and shape `[batch_size, num_true]`. The
		    target classes.
		  inputs: A `Tensor` of shape `[batch_size, dim]`.  The forward activations of
		    the input network.
		  num_sampled: An `int`.  The number of negative classes to randomly sample
		    per batch. This single sample of negative classes is evaluated for each
		    element in the batch.
		  num_classes: An `int`. The number of possible classes.
		  num_true: An `int`.  The number of target classes per training example.
		  sampled_values: a tuple of (`sampled_candidates`, `true_expected_count`,
		    `sampled_expected_count`) returned by a `*_candidate_sampler` function.
		    (if None, we default to `log_uniform_candidate_sampler`)
		  remove_accidental_hits:  A `bool`.  Whether to remove "accidental hits"
		    where a sampled class equals one of the target classes.  If set to `True`,
		    this is a "Sampled Logistic" loss instead of NCE, and we are learning to
		    generate log-odds instead of log probabilities.  See our [Candidate
		    Sampling Algorithms Reference]
		      (https://www.tensorflow.org/extras/candidate_sampling.pdf). Default is
		        False.
		  name: A name for the operation (optional).
		
		Returns:
		  A `batch_size` 1-D tensor of per-example NCE losses.
	**/
	static public function nce_loss(weights:Dynamic, biases:Dynamic, labels:Dynamic, inputs:Dynamic, num_sampled:Dynamic, num_classes:Dynamic, ?num_true:Dynamic, ?sampled_values:Dynamic, ?remove_accidental_hits:Dynamic, ?name:Dynamic):Dynamic;
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
		  input: Tensor of rank N+2, of shape `[batch_size] + input_spatial_shape +
		    [num_channels]` if data_format does not start with "NC" (default), or
		    `[batch_size, num_channels] + input_spatial_shape` if data_format starts
		    with "NC".  Pooling happens over the spatial dimensions only.
		  window_shape: Sequence of N ints >= 1.
		  pooling_type: Specifies pooling operation, must be "AVG" or "MAX".
		  strides: Optional. Sequence of N ints >= 1.  Defaults to [1]*N. If any value of
		    strides is > 1, then all values of dilation_rate must be 1.
		  padding: The padding algorithm, must be "SAME" or "VALID". Defaults to "SAME".
		    See
		    [here](https://www.tensorflow.org/api_docs/python/tf/nn#notes_on_padding_2)
		    for more information.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW". For
		    N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  dilations: Optional.  Dilation rate.  List of N ints >= 1. Defaults to
		    [1]*N.  If any value of dilation_rate is > 1, then all values of strides
		    must be 1.
		  name: Optional. Name of the op.
		
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
	static public function pool(input:Dynamic, window_shape:Dynamic, pooling_type:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes rectified linear: `max(features, 0)`.
		
		See: https://en.wikipedia.org/wiki/Rectifier_(neural_networks)
		Example usage:
		>>> tf.nn.relu([-2., 0., 3.]).numpy()
		array([0., 0., 3.], dtype=float32)
		
		Args:
		  features: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`, `qint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `features`.
	**/
	static public function relu(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes Rectified Linear 6: `min(max(features, 0), 6)`.
		
		Args:
		  features: A `Tensor` with type `float`, `double`, `int32`, `int64`, `uint8`,
		    `int16`, or `int8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with the same type as `features`.
		
		References:
		  Convolutional Deep Belief Networks on CIFAR-10:
		    Krizhevsky et al., 2010
		    ([pdf](http://www.cs.utoronto.ca/~kriz/conv-cifar10-aug2010.pdf))
	**/
	static public function relu6(features:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Lookup embedding results, accounting for invalid IDs and empty features.
		
		The partitioned embedding in `embedding_weights` must all be the same shape
		except for the first dimension. The first dimension is allowed to vary as the
		vocabulary size is not necessarily a multiple of num of shards.
		
		Invalid IDs (< 0) are pruned from input IDs and weights, as well as any IDs
		with non-positive weight. For an entry with no features, the embedding vector
		for `default_id` is returned, or the 0-vector if `default_id` is not supplied.
		
		The ids and weights may be multi-dimensional. Embeddings are always aggregated
		along the last dimension.
		
		If `len(embedding_weights) > 1`, each element `id` of `ids` is partitioned
		between the elements of `embedding_weights` according to the "div" partition
		strategy, which means we assign ids to partitions in a contiguous manner. For
		instance, 13 ids are split across 5 partitions as:
		`[[0, 1, 2], [3, 4, 5], [6, 7, 8], [9, 10], [11, 12]]`.
		
		If the id space does not evenly divide the number of partitions, each of the
		first `(max_id + 1) % len(embedding_weights)` partitions will be assigned one
		more id.
		
		Args:
		  embedding_weights: A single tensor representing the complete embedding
		    tensor, or a list of tensors all of same shape except for the first
		    dimension, representing sharded embedding tensors following "div"
		    partition strategy.
		  sparse_ids: `SparseTensor` of shape `[d_0, d_1, ..., d_n]` containing the
		    ids. `d_0` is typically batch size.
		  sparse_weights: `SparseTensor` of same shape as `sparse_ids`, containing
		    float weights corresponding to `sparse_ids`, or `None` if all weights are
		    be assumed to be 1.0.
		  combiner: A string specifying how to combine embedding results for each
		    entry. Currently "mean", "sqrtn" and "sum" are supported, with "mean" the
		    default.
		  default_id: The id to use for an entry with no features. Defaults to
		    0-vector.
		  max_norm: If not `None`, all embeddings are l2-normalized to max_norm before
		    combining.
		  name: A name for this operation (optional).
		
		Returns:
		  A dense tensor representing the combined embeddings for the
		  sparse ids. For each row in the dense tensor represented by `sparse_ids`,
		  the op looks up the embeddings for all ids in that row, multiplies them by
		  the corresponding weight, and combines these embeddings as specified.
		
		  In other words, if
		
		    `shape(combined embedding_weights) = [p0, p1, ..., pm]`
		
		  and
		
		    `shape(sparse_ids) = shape(sparse_weights) = [d0, d1, ..., dn]`
		
		  then
		
		    `shape(output) = [d0, d1, ... dn-1, p1, ..., pm]`.
		
		  For instance, if params is a 10x20 matrix, and sp_ids / sp_weights are
		
		    ```python
		    [0, 0]: id 1, weight 2.0
		    [0, 1]: id 3, weight 0.5
		    [1, 0]: id -1, weight 1.0
		    [2, 3]: id 1, weight 3.0
		    ```
		
		  `default_id` is 0.
		
		  with `combiner`="mean", then the output will be a 3x20 matrix where
		
		    ```python
		    output[0, :] = (params[1, :] * 2.0 + params[3, :] * 0.5) / (2.0 + 0.5)
		    output[1, :] = (params[0, :] * 1.0) / 1.0
		    output[2, :] = (params[1, :] * 3.0) / 3.0
		    ```
		
		Raises:
		  ValueError: if `embedding_weights` is empty.
	**/
	static public function safe_embedding_lookup_sparse(embedding_weights:Dynamic, sparse_ids:Dynamic, ?sparse_weights:Dynamic, ?combiner:Dynamic, ?default_id:Dynamic, ?max_norm:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes and returns the sampled softmax training loss.
		
		This is a faster way to train a softmax classifier over a huge number of
		classes.
		
		This operation is for training only.  It is generally an underestimate of
		the full softmax loss.
		
		A common use case is to use this method for training, and calculate the full
		softmax loss for evaluation or inference as in the following example:
		
		```python
		if mode == "train":
		  loss = tf.nn.sampled_softmax_loss(
		      weights=weights,
		      biases=biases,
		      labels=labels,
		      inputs=inputs,
		      ...)
		elif mode == "eval":
		  logits = tf.matmul(inputs, tf.transpose(weights))
		  logits = tf.nn.bias_add(logits, biases)
		  labels_one_hot = tf.one_hot(labels, n_classes)
		  loss = tf.nn.softmax_cross_entropy_with_logits(
		      labels=labels_one_hot,
		      logits=logits)
		```
		
		See our [Candidate Sampling Algorithms Reference]
		(https://www.tensorflow.org/extras/candidate_sampling.pdf)
		
		Also see Section 3 of [Jean et al., 2014](http://arxiv.org/abs/1412.2007)
		([pdf](http://arxiv.org/pdf/1412.2007.pdf)) for the math.
		
		Note: when doing embedding lookup on `weights` and `bias`, "div" partition
		strategy will be used. Support for other partition strategy will be added
		later.
		
		Args:
		  weights: A `Tensor` of shape `[num_classes, dim]`, or a list of `Tensor`
		    objects whose concatenation along dimension 0 has shape [num_classes,
		    dim].  The (possibly-sharded) class embeddings.
		  biases: A `Tensor` of shape `[num_classes]`.  The class biases.
		  labels: A `Tensor` of type `int64` and shape `[batch_size, num_true]`. The
		    target classes.  Note that this format differs from the `labels` argument
		    of `nn.softmax_cross_entropy_with_logits`.
		  inputs: A `Tensor` of shape `[batch_size, dim]`.  The forward activations of
		    the input network.
		  num_sampled: An `int`.  The number of classes to randomly sample per batch.
		  num_classes: An `int`. The number of possible classes.
		  num_true: An `int`.  The number of target classes per training example.
		  sampled_values: a tuple of (`sampled_candidates`, `true_expected_count`,
		    `sampled_expected_count`) returned by a `*_candidate_sampler` function.
		    (if None, we default to `log_uniform_candidate_sampler`)
		  remove_accidental_hits:  A `bool`.  whether to remove "accidental hits"
		    where a sampled class equals one of the target classes.  Default is True.
		  seed: random seed for candidate sampling. Default to None, which doesn't set
		    the op-level random seed for candidate sampling.
		  name: A name for the operation (optional).
		
		Returns:
		  A `batch_size` 1-D tensor of per-example sampled softmax losses.
	**/
	static public function sampled_softmax_loss(weights:Dynamic, biases:Dynamic, labels:Dynamic, inputs:Dynamic, num_sampled:Dynamic, num_classes:Dynamic, ?num_true:Dynamic, ?sampled_values:Dynamic, ?remove_accidental_hits:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Scales the sum of the given regularization losses by number of replicas.
		
		Usage with distribution strategy and custom training loop:
		
		```python
		with strategy.scope():
		  def compute_loss(self, label, predictions):
		    per_example_loss = tf.keras.losses.sparse_categorical_crossentropy(
		        labels, predictions)
		
		    # Compute loss that is scaled by sample_weight and by global batch size.
		    loss = tf.nn.compute_average_loss(
		        per_example_loss,
		        sample_weight=sample_weight,
		        global_batch_size=GLOBAL_BATCH_SIZE)
		
		    # Add scaled regularization losses.
		    loss += tf.nn.scale_regularization_loss(tf.nn.l2_loss(weights))
		    return loss
		```
		
		Args:
		  regularization_loss: Regularization loss.
		
		Returns:
		  Scalar loss value.
	**/
	static public function scale_regularization_loss(regularization_loss:Dynamic):Dynamic;
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
		
		In detail, with the default NHWC format,
		
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
		  depthwise_filter: 4-D `Tensor` with shape `[filter_height, filter_width,
		    in_channels, channel_multiplier]`. Contains `in_channels` convolutional
		    filters of depth 1.
		  pointwise_filter: 4-D `Tensor` with shape `[1, 1, channel_multiplier *
		    in_channels, out_channels]`.  Pointwise filter to mix channels after
		    `depthwise_filter` has convolved spatially.
		  strides: 1-D of size 4.  The strides for the depthwise convolution for each
		    dimension of `input`.
		  padding: Controls how to pad the image before applying the depthwise
		    convolution. Can be the string `"SAME"` or `"VALID"` indicating the type
		    of padding algorithm to use, or a Python list indicating the explicit
		    paddings at the start and end of each dimension. When explicit padding is
		    used and data_format is `"NHWC"`, this should be in the form `[[0, 0],
		    [pad_top, pad_bottom], [pad_left, pad_right], [0, 0]]`. When explicit
		    padding used and data_format is `"NCHW"`, this should be in the form
		    `[[0, 0], [0, 0], [pad_top, pad_bottom], [pad_left, pad_right]]`.
		  data_format: The data format for input. Either "NHWC" (default) or "NCHW".
		  dilations: 1-D of size 2. The dilation rate in which we sample input values
		    across the `height` and `width` dimensions in atrous convolution. If it is
		    greater than 1, then all values of strides must be 1.
		  name: A name for this operation (optional).
		
		Returns:
		  A 4-D `Tensor` with shape according to 'data_format'. For
		    example, with data_format="NHWC", shape is [batch, out_height,
		    out_width, out_channels].
	**/
	static public function separable_conv2d(input:Dynamic, depthwise_filter:Dynamic, pointwise_filter:Dynamic, strides:Dynamic, padding:Dynamic, ?data_format:Dynamic, ?dilations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes sigmoid of `x` element-wise.
		
		Formula for calculating $\mathrm{sigmoid}(x) = y = 1 / (1 + \exp(-x))$.
		
		For $x \in (-\infty, \infty)$, $\mathrm{sigmoid}(x) \in (0, 1)$.
		
		Example Usage:
		
		If a positive number is large, then its sigmoid will approach to 1 since the
		formula will be `y = <large_num> / (1 + <large_num>)`
		
		>>> x = tf.constant([0.0, 1.0, 50.0, 100.0])
		>>> tf.math.sigmoid(x)
		<tf.Tensor: shape=(4,), dtype=float32,
		numpy=array([0.5      , 0.7310586, 1.       , 1.       ], dtype=float32)>
		
		If a negative number is large, its sigmoid will approach to 0 since the
		formula will be `y = 1 / (1 + <large_num>)`
		
		>>> x = tf.constant([-100.0, -50.0, -1.0, 0.0])
		>>> tf.math.sigmoid(x)
		<tf.Tensor: shape=(4,), dtype=float32, numpy=
		array([0.0000000e+00, 1.9287499e-22, 2.6894143e-01, 0.5],
		      dtype=float32)>
		
		Args:
		  x: A Tensor with type `float16`, `float32`, `float64`, `complex64`, or
		    `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A Tensor with the same type as `x`.
		
		Usage Example:
		
		>>> x = tf.constant([-128.0, 0.0, 128.0], dtype=tf.float32)
		>>> tf.sigmoid(x)
		<tf.Tensor: shape=(3,), dtype=float32,
		numpy=array([0. , 0.5, 1. ], dtype=float32)>
		
		@compatibility(scipy)
		Equivalent to scipy.special.expit
		@end_compatibility
	**/
	static public function sigmoid(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes sigmoid cross entropy given `logits`.
		
		Measures the probability error in tasks with two outcomes in which each
		outcome is independent and need not have a fully certain label. For instance,
		one could perform a regression where the probability of an event happening is
		known and used as a label. This loss may also be used for binary
		classification, where labels are either zero or one.
		
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
		
		>>> logits = tf.constant([1., -1., 0., 1., -1., 0., 0.])
		>>> labels = tf.constant([0., 0., 0., 1., 1., 1., 0.5])
		>>> tf.nn.sigmoid_cross_entropy_with_logits(
		...     labels=labels, logits=logits).numpy()
		array([1.3132617, 0.3132617, 0.6931472, 0.3132617, 1.3132617, 0.6931472,
		       0.6931472], dtype=float32)
		
		Compared to the losses which handle multiple outcomes,
		`tf.nn.softmax_cross_entropy_with_logits` for general multi-class
		classification and `tf.nn.sparse_softmax_cross_entropy_with_logits` for more
		efficient multi-class classification with hard labels,
		`sigmoid_cross_entropy_with_logits` is a slight simplification for binary
		classification:
		
		      sigmoid(x) = softmax([x, 0])[0]
		
		$$\frac{1}{1 + e^{-x}} = \frac{e^x}{e^x + e^0}$$
		
		While `sigmoid_cross_entropy_with_logits` works for soft binary labels
		(probabilities between 0 and 1), it can also be used for binary classification
		where the labels are hard. There is an equivalence between all three symbols
		in this case, with a probability 0 indicating the second class or 1 indicating
		the first class:
		
		>>> sigmoid_logits = tf.constant([1., -1., 0.])
		>>> softmax_logits = tf.stack([sigmoid_logits, tf.zeros_like(sigmoid_logits)],
		...                           axis=-1)
		>>> soft_binary_labels = tf.constant([1., 1., 0.])
		>>> soft_multiclass_labels = tf.stack(
		...     [soft_binary_labels, 1. - soft_binary_labels], axis=-1)
		>>> hard_labels = tf.constant([0, 0, 1])
		>>> tf.nn.sparse_softmax_cross_entropy_with_logits(
		...     labels=hard_labels, logits=softmax_logits).numpy()
		array([0.31326166, 1.3132616 , 0.6931472 ], dtype=float32)
		>>> tf.nn.softmax_cross_entropy_with_logits(
		...     labels=soft_multiclass_labels, logits=softmax_logits).numpy()
		array([0.31326166, 1.3132616, 0.6931472], dtype=float32)
		>>> tf.nn.sigmoid_cross_entropy_with_logits(
		...     labels=soft_binary_labels, logits=sigmoid_logits).numpy()
		array([0.31326166, 1.3132616, 0.6931472], dtype=float32)
		
		Args:
		  labels: A `Tensor` of the same type and shape as `logits`. Between 0 and 1,
		    inclusive.
		  logits: A `Tensor` of type `float32` or `float64`. Any real number.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `logits` with the componentwise
		  logistic losses.
		
		Raises:
		  ValueError: If `logits` and `labels` do not have the same shape.
	**/
	static public function sigmoid_cross_entropy_with_logits(?labels:Dynamic, ?logits:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the SiLU or Swish activation function: `x * sigmoid(x)`.
		
		The SiLU activation function was introduced in "Gaussian Error Linear Units
		(GELUs)" [Hendrycks et al. 2016](https://arxiv.org/abs/1606.08415) and
		"Sigmoid-Weighted Linear Units for Neural Network Function Approximation in
		Reinforcement Learning"
		[Elfwing et al. 2017](https://arxiv.org/abs/1702.03118) and was independently
		discovered (and called swish) in "Searching for Activation Functions"
		[Ramachandran et al. 2017](https://arxiv.org/abs/1710.05941)
		
		Args:
		  features: A `Tensor` representing preactivation values.
		
		Returns:
		  The activation value.
	**/
	static public function silu(features:Dynamic):Dynamic;
	/**
		Computes softmax activations.
		
		Used for multi-class predictions. The sum of all outputs generated by softmax
		is 1.
		
		This function performs the equivalent of
		
		    softmax = tf.exp(logits) / tf.reduce_sum(tf.exp(logits), axis)
		
		Example usage:
		
		>>> softmax = tf.nn.softmax([-1, 0., 1.])
		>>> softmax
		<tf.Tensor: shape=(3,), dtype=float32,
		numpy=array([0.09003057, 0.24472848, 0.66524094], dtype=float32)>
		>>> sum(softmax)
		<tf.Tensor: shape=(), dtype=float32, numpy=1.0>
		
		Args:
		  logits: A non-empty `Tensor`. Must be one of the following types: `half`,
		    `float32`, `float64`.
		  axis: The dimension softmax would be performed on. The default is -1 which
		    indicates the last dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type and shape as `logits`.
		
		Raises:
		  InvalidArgumentError: if `logits` is empty or `axis` is beyond the last
		    dimension of `logits`.
	**/
	static public function softmax(logits:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes softmax cross entropy between `logits` and `labels`.
		
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
		
		Usage:
		
		>>> logits = [[4.0, 2.0, 1.0], [0.0, 5.0, 1.0]]
		>>> labels = [[1.0, 0.0, 0.0], [0.0, 0.8, 0.2]]
		>>> tf.nn.softmax_cross_entropy_with_logits(labels=labels, logits=logits)
		<tf.Tensor: shape=(2,), dtype=float32,
		numpy=array([0.16984604, 0.82474494], dtype=float32)>
		
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
		  logits: Per-label activations, typically a linear output. These activation
		    energies are interpreted as unnormalized log probabilities.
		  axis: The class dimension. Defaulted to -1 which is the last dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` that contains the softmax cross entropy loss. Its type is the
		  same as `logits` and its shape is the same as `labels` except that it does
		  not have the last dimension of `labels`.
	**/
	static public function softmax_cross_entropy_with_logits(labels:Dynamic, logits:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes elementwise softplus: `softplus(x) = log(exp(x) + 1)`.
		
		`softplus` is a smooth approximation of `relu`. Like `relu`, `softplus` always
		takes on positive values.
		
		<img style="width:100%" src="https://www.tensorflow.org/images/softplus.png">
		
		Example:
		
		>>> import tensorflow as tf
		>>> tf.math.softplus(tf.range(0, 2, dtype=tf.float32)).numpy()
		array([0.6931472, 1.3132616], dtype=float32)
		
		Args:
		  features: `Tensor`
		  name: Optional: name to associate with this operation.
		Returns:
		  `Tensor`
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
		SpaceToBatch for N-D tensors of type T.
		
		This operation divides "spatial" dimensions `[1, ..., M]` of the input into a
		grid of blocks of shape `block_shape`, and interleaves these blocks with the
		"batch" dimension (0) such that in the output, the spatial dimensions
		`[1, ..., M]` correspond to the position within the grid, and the batch
		dimension combines both the position within a spatial block and the original
		batch position.  Prior to division into blocks, the spatial dimensions of the
		input are optionally zero padded according to `paddings`. See below for a
		precise description.
		
		This operation is equivalent to the following steps:
		
		1. Zero-pad the start and end of dimensions `[1, ..., M]` of the
		   input according to `paddings` to produce `padded` of shape `padded_shape`.
		
		2. Reshape `padded` to `reshaped_padded` of shape:
		
		     [batch] +
		     [padded_shape[1] / block_shape[0],
		       block_shape[0],
		      ...,
		      padded_shape[M] / block_shape[M-1],
		      block_shape[M-1]] +
		     remaining_shape
		
		3. Permute dimensions of `reshaped_padded` to produce
		   `permuted_reshaped_padded` of shape:
		
		     block_shape +
		     [batch] +
		     [padded_shape[1] / block_shape[0],
		      ...,
		      padded_shape[M] / block_shape[M-1]] +
		     remaining_shape
		
		4. Reshape `permuted_reshaped_padded` to flatten `block_shape` into the batch
		   dimension, producing an output tensor of shape:
		
		     [batch * prod(block_shape)] +
		     [padded_shape[1] / block_shape[0],
		      ...,
		      padded_shape[M] / block_shape[M-1]] +
		     remaining_shape
		
		Some examples:
		
		(1) For the following input of shape `[1, 2, 2, 1]`, `block_shape = [2, 2]`, and
		    `paddings = [[0, 0], [0, 0]]`:
		
		```
		x = [[[[1], [2]], [[3], [4]]]]
		```
		
		The output tensor has shape `[4, 1, 1, 1]` and value:
		
		```
		[[[[1]]], [[[2]]], [[[3]]], [[[4]]]]
		```
		
		(2) For the following input of shape `[1, 2, 2, 3]`, `block_shape = [2, 2]`, and
		    `paddings = [[0, 0], [0, 0]]`:
		
		```
		x = [[[[1, 2, 3], [4, 5, 6]],
		      [[7, 8, 9], [10, 11, 12]]]]
		```
		
		The output tensor has shape `[4, 1, 1, 3]` and value:
		
		```
		[[[[1, 2, 3]]], [[[4, 5, 6]]], [[[7, 8, 9]]], [[[10, 11, 12]]]]
		```
		
		(3) For the following input of shape `[1, 4, 4, 1]`, `block_shape = [2, 2]`, and
		    `paddings = [[0, 0], [0, 0]]`:
		
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
		
		(4) For the following input of shape `[2, 2, 4, 1]`, block_shape = `[2, 2]`, and
		    paddings = `[[0, 0], [2, 0]]`:
		
		```
		x = [[[[1],   [2],  [3],  [4]],
		      [[5],   [6],  [7],  [8]]],
		     [[[9],  [10], [11],  [12]],
		      [[13], [14], [15],  [16]]]]
		```
		
		The output tensor has shape `[8, 1, 3, 1]` and value:
		
		```
		x = [[[[0], [1], [3]]], [[[0], [9], [11]]],
		     [[[0], [2], [4]]], [[[0], [10], [12]]],
		     [[[0], [5], [7]]], [[[0], [13], [15]]],
		     [[[0], [6], [8]]], [[[0], [14], [16]]]]
		```
		
		Among others, this operation is useful for reducing atrous convolution into
		regular convolution.
		
		Args:
		  input: A `Tensor`.
		    N-D with shape `input_shape = [batch] + spatial_shape + remaining_shape`,
		    where spatial_shape has `M` dimensions.
		  block_shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D with shape `[M]`, all values must be >= 1.
		  paddings: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    2-D with shape `[M, 2]`, all values must be >= 0.
		      `paddings[i] = [pad_start, pad_end]` specifies the padding for input dimension
		      `i + 1`, which corresponds to spatial dimension `i`.  It is required that
		      `block_shape[i]` divides `input_shape[i + 1] + pad_start + pad_end`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
	**/
	static public function space_to_batch(input:Dynamic, block_shape:Dynamic, paddings:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function space_to_depth(input:Dynamic, block_size:Dynamic, ?data_format:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes sparse softmax cross entropy between `logits` and `labels`.
		
		Measures the probability error in discrete classification tasks in which the
		classes are mutually exclusive (each entry is in exactly one class).  For
		example, each CIFAR-10 image is labeled with one and only one label: an image
		can be a dog or a truck, but not both.
		
		Note:  For this operation, the probability of a given label is considered
		exclusive.  That is, soft classes are not allowed, and the `labels` vector
		must provide a single specific index for the true class for each row of
		`logits` (each minibatch entry).  For soft softmax classification with
		a probability distribution for each entry, see
		`softmax_cross_entropy_with_logits_v2`.
		
		Warning: This op expects unscaled logits, since it performs a `softmax`
		on `logits` internally for efficiency.  Do not call this op with the
		output of `softmax`, as it will produce incorrect results.
		
		A common use case is to have logits of shape
		`[batch_size, num_classes]` and have labels of shape
		`[batch_size]`, but higher dimensions are supported, in which
		case the `dim`-th dimension is assumed to be of size `num_classes`.
		`logits` must have the dtype of `float16`, `float32`, or `float64`, and
		`labels` must have the dtype of `int32` or `int64`.
		
		>>> logits = tf.constant([[2., -5., .5, -.1],
		...                       [0., 0., 1.9, 1.4],
		...                       [-100., 100., -100., -100.]])
		>>> labels = tf.constant([0, 3, 1])
		>>> tf.nn.sparse_softmax_cross_entropy_with_logits(
		...     labels=labels, logits=logits).numpy()
		array([0.29750752, 1.1448325 , 0.        ], dtype=float32)
		
		To avoid confusion, passing only named arguments to this function is
		recommended.
		
		Args:
		  labels: `Tensor` of shape `[d_0, d_1, ..., d_{r-1}]` (where `r` is rank of
		    `labels` and result) and dtype `int32` or `int64`. Each entry in `labels`
		    must be an index in `[0, num_classes)`. Other values will raise an
		    exception when this op is run on CPU, and return `NaN` for corresponding
		    loss and gradient rows on GPU.
		  logits: Unscaled log probabilities of shape `[d_0, d_1, ..., d_{r-1},
		    num_classes]` and dtype `float16`, `float32`, or `float64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `labels` and of the same type as `logits`
		  with the softmax cross entropy loss.
		
		Raises:
		  ValueError: If logits are scalars (need to have rank >= 1) or if the rank
		    of the labels is not equal to the rank of the logits minus one.
	**/
	static public function sparse_softmax_cross_entropy_with_logits(labels:Dynamic, logits:Dynamic, ?name:Dynamic):Dynamic;
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
		  keepdims: produce statistics with the same dimensionality as the input.
		  name: Name used to scope the operations that compute the sufficient stats.
		
		Returns:
		  Four `Tensor` objects of the same type as `x`:
		
		  * the count (number of elements to average over).
		  * the (possibly shifted) sum of the elements in the array.
		  * the (possibly shifted) sum of squares of the elements in the array.
		  * the shift by which the mean must be corrected or None if `shift` is None.
	**/
	static public function sufficient_statistics(x:Dynamic, axes:Dynamic, ?shift:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the SiLU or Swish activation function: `x * sigmoid(x)`.
		
		The SiLU activation function was introduced in "Gaussian Error Linear Units
		(GELUs)" [Hendrycks et al. 2016](https://arxiv.org/abs/1606.08415) and
		"Sigmoid-Weighted Linear Units for Neural Network Function Approximation in
		Reinforcement Learning"
		[Elfwing et al. 2017](https://arxiv.org/abs/1702.03118) and was independently
		discovered (and called swish) in "Searching for Activation Functions"
		[Ramachandran et al. 2017](https://arxiv.org/abs/1710.05941)
		
		Args:
		  features: A `Tensor` representing preactivation values.
		
		Returns:
		  The activation value.
	**/
	static public function swish(features:Dynamic):Dynamic;
	/**
		Computes hyperbolic tangent of `x` element-wise.
		
		  Given an input tensor, this function computes hyperbolic tangent of every
		  element in the tensor. Input range is `[-inf, inf]` and
		  output range is `[-1,1]`.
		
		  >>> x = tf.constant([-float("inf"), -5, -0.5, 1, 1.2, 2, 3, float("inf")])
		  >>> tf.math.tanh(x)
		  <tf.Tensor: shape=(8,), dtype=float32, numpy=
		  array([-1.        , -0.99990916, -0.46211717,  0.7615942 ,  0.8336547 ,
		          0.9640276 ,  0.9950547 ,  1.        ], dtype=float32)>
		
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
		
		>>> result = tf.math.top_k([1, 2, 98, 1, 1, 99, 3, 1, 3, 96, 4, 1],
		...                         k=3)
		>>> result.values.numpy()
		array([99, 98, 96], dtype=int32)
		>>> result.indices.numpy()
		array([5, 2, 9], dtype=int32)
		
		For matrices (resp. higher rank input), computes the top `k` entries in each
		row (resp. vector along the last dimension).  Thus,
		
		>>> input = tf.random.normal(shape=(3,4,5,6))
		>>> k = 2
		>>> values, indices  = tf.math.top_k(input, k=k)
		>>> values.shape.as_list()
		[3, 4, 5, 2]
		>>>
		>>> values.shape == indices.shape == input.shape[:-1] + [k]
		True
		
		The indices can be used to `gather` from a tensor who's shape matches `input`.
		
		>>> gathered_values = tf.gather(input, indices, batch_dims=-1)
		>>> assert tf.reduce_all(gathered_values == values)
		
		If two elements are equal, the lower-index element appears first.
		
		>>> result = tf.math.top_k([1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0],
		...                        k=3)
		>>> result.indices.numpy()
		array([0, 1, 3], dtype=int32)
		
		Args:
		  input: 1-D or higher `Tensor` with last dimension at least `k`.
		  k: 0-D `int32` `Tensor`.  Number of top elements to look for along the last
		    dimension (along each row for matrices).
		  sorted: If true the resulting `k` elements will be sorted by the values in
		    descending order.
		  name: Optional name for the operation.
		
		Returns:
		  A tuple with two named fields:
		  values: The `k` largest elements along each last dimensional slice.
		  indices: The indices of `values` within the last dimension of `input`.
	**/
	static public function top_k(input:Dynamic, ?k:Dynamic, ?sorted:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a weighted cross entropy.
		
		This is like `sigmoid_cross_entropy_with_logits()` except that `pos_weight`,
		allows one to trade off recall and precision by up- or down-weighting the
		cost of a positive error relative to a negative error.
		
		The usual cross-entropy cost is defined as:
		
		    labels * -log(sigmoid(logits)) +
		        (1 - labels) * -log(1 - sigmoid(logits))
		
		A value `pos_weight > 1` decreases the false negative count, hence increasing
		the recall.
		Conversely setting `pos_weight < 1` decreases the false positive count and
		increases the precision.
		This can be seen from the fact that `pos_weight` is introduced as a
		multiplicative coefficient for the positive labels term
		in the loss expression:
		
		    labels * -log(sigmoid(logits)) * pos_weight +
		        (1 - labels) * -log(1 - sigmoid(logits))
		
		For brevity, let `x = logits`, `z = labels`, `q = pos_weight`.
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
		
		`logits` and `labels` must have the same type and shape.
		
		>>> labels = tf.constant([1., 0.5, 0.])
		>>> logits = tf.constant([1.5, -0.1, -10.])
		>>> tf.nn.weighted_cross_entropy_with_logits(
		...     labels=labels, logits=logits, pos_weight=tf.constant(1.5)).numpy()
		array([3.0211994e-01, 8.8049585e-01, 4.5776367e-05], dtype=float32)
		>>> tf.nn.weighted_cross_entropy_with_logits(
		...     labels=labels, logits=logits, pos_weight=tf.constant(0.5)).numpy()
		array([1.00706644e-01, 5.08297503e-01, 4.57763672e-05], dtype=float32)
		
		Args:
		  labels: A `Tensor` of the same type and shape as `logits`, with values
		    between 0 and 1 inclusive.
		  logits: A `Tensor` of type `float32` or `float64`, any real numbers.
		  pos_weight: A coefficient to use on the positive examples, typically a
		    scalar but otherwise broadcastable to the shape of `logits`. Its value
		    should be non-negative.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `logits` with the componentwise
		  weighted logistic losses.
		
		Raises:
		  ValueError: If `logits` and `labels` do not have the same shape.
	**/
	static public function weighted_cross_entropy_with_logits(labels:Dynamic, logits:Dynamic, pos_weight:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the frequency-weighted mean and variance of `x`.
		
		Args:
		  x: A tensor.
		  axes: 1-d tensor of int32 values; these are the axes along which
		    to compute mean and variance.
		  frequency_weights: A tensor of positive weights which can be
		    broadcast with x.
		  keepdims: Produce moments with the same dimensionality as the input.
		  name: Name used to scope the operation.
		
		Returns:
		  Two tensors: `weighted_mean` and `weighted_variance`.
	**/
	static public function weighted_moments(x:Dynamic, axes:Dynamic, frequency_weights:Dynamic, ?keepdims:Dynamic, ?name:Dynamic):Dynamic;
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
		Returns the fraction of zeros in `value`.
		
		If `value` is empty, the result is `nan`.
		
		This is useful in summaries to measure and report sparsity.  For example,
		
		```python
		    z = tf.nn.relu(...)
		    summ = tf.compat.v1.summary.scalar('sparsity', tf.nn.zero_fraction(z))
		```
		
		Args:
		  value: A tensor of numeric type.
		  name: A name for the operation (optional).
		
		Returns:
		  The fraction of zeros in `value`, with type `float32`.
	**/
	static public function zero_fraction(value:Dynamic, ?name:Dynamic):Dynamic;
}