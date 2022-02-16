/* This file is generated, do not edit! */
package tensorflow.python.keras.losses;
@:pythonImport("tensorflow.python.keras.losses") extern class Losses_Module {
	/**
		Computes the binary crossentropy loss.
		
		Standalone usage:
		
		>>> y_true = [[0, 1], [0, 0]]
		>>> y_pred = [[0.6, 0.4], [0.4, 0.6]]
		>>> loss = tf.keras.losses.binary_crossentropy(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> loss.numpy()
		array([0.916 , 0.714], dtype=float32)
		
		Args:
		  y_true: Ground truth values. shape = `[batch_size, d0, .. dN]`.
		  y_pred: The predicted values. shape = `[batch_size, d0, .. dN]`.
		  from_logits: Whether `y_pred` is expected to be a logits tensor. By default,
		    we assume that `y_pred` encodes a probability distribution.
		  label_smoothing: Float in [0, 1]. If > `0` then smooth the labels by
		    squeezing them towards 0.5 That is, using `1. - 0.5 * label_smoothing`
		    for the target class and `0.5 * label_smoothing` for the non-target class.
		  axis: The axis along which the mean is computed. Defaults to -1.
		
		Returns:
		  Binary crossentropy loss value. shape = `[batch_size, d0, .. dN-1]`.
	**/
	static public function BCE(y_true:Dynamic, y_pred:Dynamic, ?from_logits:Dynamic, ?label_smoothing:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Computes Kullback-Leibler divergence loss between `y_true` and `y_pred`.
		
		`loss = y_true * log(y_true / y_pred)`
		
		See: https://en.wikipedia.org/wiki/Kullback%E2%80%93Leibler_divergence
		
		Standalone usage:
		
		>>> y_true = np.random.randint(0, 2, size=(2, 3)).astype(np.float64)
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.kullback_leibler_divergence(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> y_true = tf.keras.backend.clip(y_true, 1e-7, 1)
		>>> y_pred = tf.keras.backend.clip(y_pred, 1e-7, 1)
		>>> assert np.array_equal(
		...     loss.numpy(), np.sum(y_true * np.log(y_true / y_pred), axis=-1))
		
		Args:
		  y_true: Tensor of true targets.
		  y_pred: Tensor of predicted targets.
		
		Returns:
		  A `Tensor` with loss.
		
		Raises:
		  TypeError: If `y_true` cannot be cast to the `y_pred.dtype`.
	**/
	static public function KLD(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public var LABEL_DTYPES_FOR_LOSSES : Dynamic;
	/**
		Computes the mean absolute error between labels and predictions.
		
		`loss = mean(abs(y_true - y_pred), axis=-1)`
		
		Standalone usage:
		
		>>> y_true = np.random.randint(0, 2, size=(2, 3))
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.mean_absolute_error(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> assert np.array_equal(
		...     loss.numpy(), np.mean(np.abs(y_true - y_pred), axis=-1))
		
		Args:
		  y_true: Ground truth values. shape = `[batch_size, d0, .. dN]`.
		  y_pred: The predicted values. shape = `[batch_size, d0, .. dN]`.
		
		Returns:
		  Mean absolute error values. shape = `[batch_size, d0, .. dN-1]`.
	**/
	static public function MAE(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Computes the mean absolute percentage error between `y_true` and `y_pred`.
		
		`loss = 100 * mean(abs((y_true - y_pred) / y_true), axis=-1)`
		
		Standalone usage:
		
		>>> y_true = np.random.random(size=(2, 3))
		>>> y_true = np.maximum(y_true, 1e-7)  # Prevent division by zero
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.mean_absolute_percentage_error(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> assert np.array_equal(
		...     loss.numpy(),
		...     100. * np.mean(np.abs((y_true - y_pred) / y_true), axis=-1))
		
		Args:
		  y_true: Ground truth values. shape = `[batch_size, d0, .. dN]`.
		  y_pred: The predicted values. shape = `[batch_size, d0, .. dN]`.
		
		Returns:
		  Mean absolute percentage error values. shape = `[batch_size, d0, .. dN-1]`.
	**/
	static public function MAPE(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Computes the mean squared error between labels and predictions.
		
		After computing the squared distance between the inputs, the mean value over
		the last dimension is returned.
		
		`loss = mean(square(y_true - y_pred), axis=-1)`
		
		Standalone usage:
		
		>>> y_true = np.random.randint(0, 2, size=(2, 3))
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.mean_squared_error(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> assert np.array_equal(
		...     loss.numpy(), np.mean(np.square(y_true - y_pred), axis=-1))
		
		Args:
		  y_true: Ground truth values. shape = `[batch_size, d0, .. dN]`.
		  y_pred: The predicted values. shape = `[batch_size, d0, .. dN]`.
		
		Returns:
		  Mean squared error values. shape = `[batch_size, d0, .. dN-1]`.
	**/
	static public function MSE(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Computes the mean squared logarithmic error between `y_true` and `y_pred`.
		
		`loss = mean(square(log(y_true + 1) - log(y_pred + 1)), axis=-1)`
		
		Standalone usage:
		
		>>> y_true = np.random.randint(0, 2, size=(2, 3))
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.mean_squared_logarithmic_error(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> y_true = np.maximum(y_true, 1e-7)
		>>> y_pred = np.maximum(y_pred, 1e-7)
		>>> assert np.allclose(
		...     loss.numpy(),
		...     np.mean(
		...         np.square(np.log(y_true + 1.) - np.log(y_pred + 1.)), axis=-1))
		
		Args:
		  y_true: Ground truth values. shape = `[batch_size, d0, .. dN]`.
		  y_pred: The predicted values. shape = `[batch_size, d0, .. dN]`.
		
		Returns:
		  Mean squared logarithmic error values. shape = `[batch_size, d0, .. dN-1]`.
	**/
	static public function MSLE(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Converts binary labels into -1/1.
	**/
	static public function _maybe_convert_labels(y_true:Dynamic):Dynamic;
	/**
		Apply a loss function on a per batch basis.
		
		Args:
		  loss_fn: The loss function
		  y_true: truth values (RaggedTensor)
		  y_pred: predicted values (RaggedTensor)
		  y_pred_extra_dim: whether y_pred has an additional dimension compared to
		    y_true
		
		Returns:
		  Loss-function result. A dense tensor if the output has a single dimension
		  (per-batch loss value); a ragged tensor otherwise.
	**/
	static public function _ragged_tensor_apply_loss(loss_fn:Dynamic, y_true:Dynamic, y_pred:Dynamic, ?y_pred_extra_dim:Dynamic):Dynamic;
	/**
		Implements support for handling RaggedTensors.
		
		Args:
		  y_true: Tensor of one-hot true targets.
		  y_pred: Tensor of predicted targets.
		  from_logits: Whether `y_pred` is expected to be a logits tensor. By default,
		    we assume that `y_pred` encodes a probability distribution.
		  label_smoothing: Float in [0, 1]. If > `0` then smooth the labels. For
		    example, if `0.1`, use `0.1 / num_classes` for non-target labels
		    and `0.9 + 0.1 / num_classes` for target labels.
		  axis: Axis along which to compute crossentropy.
		
		Returns:
		  Binary crossentropy loss value.
		
		Expected shape: (batch, sequence_len) with sequence_len being variable
		per batch.
		Return shape: (batch,); returns the per batch mean of the loss values.
		
		When used by BinaryCrossentropy() with the default reduction
		(SUM_OVER_BATCH_SIZE), the reduction averages the per batch losses over
		the number of batches.
	**/
	static public function _ragged_tensor_binary_crossentropy(y_true:Dynamic, y_pred:Dynamic, ?from_logits:Dynamic, ?label_smoothing:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Implements support for handling RaggedTensors.
		
		Args:
		  y_true: Tensor of one-hot true targets.
		  y_pred: Tensor of predicted targets.
		  from_logits: Whether `y_pred` is expected to be a logits tensor. By default,
		    we assume that `y_pred` encodes a probability distribution.
		  label_smoothing: Float in [0, 1]. If > `0` then smooth the labels. For
		    example, if `0.1`, use `0.1 / num_classes` for non-target labels
		    and `0.9 + 0.1 / num_classes` for target labels.
		  axis: The axis along which to compute crossentropy (the features axis).
		      Defaults to -1.
		
		Returns:
		  Categorical crossentropy loss value.
		
		Expected shape: (batch, sequence_len, n_classes) with sequence_len
		being variable per batch.
		Return shape: (batch, sequence_len).
		
		When used by CategoricalCrossentropy() with the default reduction
		(SUM_OVER_BATCH_SIZE), the reduction averages the loss over the
		number of elements independent of the batch. E.g. if the RaggedTensor
		has 2 batches with [2, 1] values respectivly the resulting loss is
		the sum of the individual loss values divided by 3.
	**/
	static public function _ragged_tensor_categorical_crossentropy(y_true:Dynamic, y_pred:Dynamic, ?from_logits:Dynamic, ?label_smoothing:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		RaggedTensor adapter for mean_absolute_error.
	**/
	static public function _ragged_tensor_mae(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Support RaggedTensors.
	**/
	static public function _ragged_tensor_mape(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Implements support for handling RaggedTensors.
		
		Args:
		  y_true: RaggedTensor truth values. shape = `[batch_size, d0, .. dN]`.
		  y_pred: RaggedTensor predicted values. shape = `[batch_size, d0, .. dN]`.
		
		Returns:
		  Mean squared error values. shape = `[batch_size, d0, .. dN-1]`.
		  When the number of dimensions of the batch feature vector [d0, .. dN] is
		  greater than one the return value is a RaggedTensor. Otherwise a Dense
		  tensor with dimensions [batch_size] is returned.
	**/
	static public function _ragged_tensor_mse(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Implements support for handling RaggedTensors.
	**/
	static public function _ragged_tensor_msle(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Implements support for handling RaggedTensors.
		
		Expected y_pred shape: (batch, sequence_len, n_classes) with sequence_len
		being variable per batch.
		Return shape: (batch, sequence_len).
		
		When used by SparseCategoricalCrossentropy() with the default reduction
		(SUM_OVER_BATCH_SIZE), the reduction averages the loss over the
		number of elements independent of the batch. E.g. if the RaggedTensor
		has 2 batches with [2, 1] values respectively, the resulting loss is
		the sum of the individual loss values divided by 3.
	**/
	static public function _ragged_tensor_sparse_categorical_crossentropy(y_true:Dynamic, y_pred:Dynamic, ?from_logits:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Computes the binary crossentropy loss.
		
		Standalone usage:
		
		>>> y_true = [[0, 1], [0, 0]]
		>>> y_pred = [[0.6, 0.4], [0.4, 0.6]]
		>>> loss = tf.keras.losses.binary_crossentropy(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> loss.numpy()
		array([0.916 , 0.714], dtype=float32)
		
		Args:
		  y_true: Ground truth values. shape = `[batch_size, d0, .. dN]`.
		  y_pred: The predicted values. shape = `[batch_size, d0, .. dN]`.
		  from_logits: Whether `y_pred` is expected to be a logits tensor. By default,
		    we assume that `y_pred` encodes a probability distribution.
		  label_smoothing: Float in [0, 1]. If > `0` then smooth the labels by
		    squeezing them towards 0.5 That is, using `1. - 0.5 * label_smoothing`
		    for the target class and `0.5 * label_smoothing` for the non-target class.
		  axis: The axis along which the mean is computed. Defaults to -1.
		
		Returns:
		  Binary crossentropy loss value. shape = `[batch_size, d0, .. dN-1]`.
	**/
	static public function bce(y_true:Dynamic, y_pred:Dynamic, ?from_logits:Dynamic, ?label_smoothing:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Computes the binary crossentropy loss.
		
		Standalone usage:
		
		>>> y_true = [[0, 1], [0, 0]]
		>>> y_pred = [[0.6, 0.4], [0.4, 0.6]]
		>>> loss = tf.keras.losses.binary_crossentropy(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> loss.numpy()
		array([0.916 , 0.714], dtype=float32)
		
		Args:
		  y_true: Ground truth values. shape = `[batch_size, d0, .. dN]`.
		  y_pred: The predicted values. shape = `[batch_size, d0, .. dN]`.
		  from_logits: Whether `y_pred` is expected to be a logits tensor. By default,
		    we assume that `y_pred` encodes a probability distribution.
		  label_smoothing: Float in [0, 1]. If > `0` then smooth the labels by
		    squeezing them towards 0.5 That is, using `1. - 0.5 * label_smoothing`
		    for the target class and `0.5 * label_smoothing` for the non-target class.
		  axis: The axis along which the mean is computed. Defaults to -1.
		
		Returns:
		  Binary crossentropy loss value. shape = `[batch_size, d0, .. dN-1]`.
	**/
	static public function binary_crossentropy(y_true:Dynamic, y_pred:Dynamic, ?from_logits:Dynamic, ?label_smoothing:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Computes the categorical crossentropy loss.
		
		Standalone usage:
		
		>>> y_true = [[0, 1, 0], [0, 0, 1]]
		>>> y_pred = [[0.05, 0.95, 0], [0.1, 0.8, 0.1]]
		>>> loss = tf.keras.losses.categorical_crossentropy(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> loss.numpy()
		array([0.0513, 2.303], dtype=float32)
		
		Args:
		  y_true: Tensor of one-hot true targets.
		  y_pred: Tensor of predicted targets.
		  from_logits: Whether `y_pred` is expected to be a logits tensor. By default,
		    we assume that `y_pred` encodes a probability distribution.
		  label_smoothing: Float in [0, 1]. If > `0` then smooth the labels. For
		    example, if `0.1`, use `0.1 / num_classes` for non-target labels
		    and `0.9 + 0.1 / num_classes` for target labels.
		  axis: Defaults to -1. The dimension along which the entropy is
		    computed.
		
		Returns:
		  Categorical crossentropy loss value.
	**/
	static public function categorical_crossentropy(y_true:Dynamic, y_pred:Dynamic, ?from_logits:Dynamic, ?label_smoothing:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Computes the categorical hinge loss between `y_true` and `y_pred`.
		
		`loss = maximum(neg - pos + 1, 0)`
		where `neg=maximum((1-y_true)*y_pred) and pos=sum(y_true*y_pred)`
		
		Standalone usage:
		
		>>> y_true = np.random.randint(0, 3, size=(2,))
		>>> y_true = tf.keras.utils.to_categorical(y_true, num_classes=3)
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.categorical_hinge(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> pos = np.sum(y_true * y_pred, axis=-1)
		>>> neg = np.amax((1. - y_true) * y_pred, axis=-1)
		>>> assert np.array_equal(loss.numpy(), np.maximum(0., neg - pos + 1.))
		
		Args:
		  y_true: The ground truth values. `y_true` values are expected to be
		  either `{-1, +1}` or `{0, 1}` (i.e. a one-hot-encoded tensor).
		  y_pred: The predicted values.
		
		Returns:
		  Categorical hinge loss values.
	**/
	static public function categorical_hinge(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Computes the cosine similarity between labels and predictions.
		
		Note that it is a number between -1 and 1. When it is a negative number
		between -1 and 0, 0 indicates orthogonality and values closer to -1
		indicate greater similarity. The values closer to 1 indicate greater
		dissimilarity. This makes it usable as a loss function in a setting
		where you try to maximize the proximity between predictions and
		targets. If either `y_true` or `y_pred` is a zero vector, cosine
		similarity will be 0 regardless of the proximity between predictions
		and targets.
		
		`loss = -sum(l2_norm(y_true) * l2_norm(y_pred))`
		
		Standalone usage:
		
		>>> y_true = [[0., 1.], [1., 1.], [1., 1.]]
		>>> y_pred = [[1., 0.], [1., 1.], [-1., -1.]]
		>>> loss = tf.keras.losses.cosine_similarity(y_true, y_pred, axis=1)
		>>> loss.numpy()
		array([-0., -0.999, 0.999], dtype=float32)
		
		Args:
		  y_true: Tensor of true targets.
		  y_pred: Tensor of predicted targets.
		  axis: Axis along which to determine similarity.
		
		Returns:
		  Cosine similarity tensor.
	**/
	static public function cosine_similarity(y_true:Dynamic, y_pred:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Deserializes a serialized loss class/function instance.
		
		Args:
		    name: Loss configuration.
		    custom_objects: Optional dictionary mapping names (strings) to custom
		      objects (classes and functions) to be considered during deserialization.
		
		Returns:
		    A Keras `Loss` instance or a loss function.
	**/
	static public function deserialize(name:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Turns the serialized form of a Keras object back into an actual object.
		
		This function is for mid-level library implementers rather than end users.
		
		Importantly, this utility requires you to provide the dict of `module_objects`
		to use for looking up the object config; this is not populated by default.
		If you need a deserialization utility that has preexisting knowledge of
		built-in Keras objects, use e.g. `keras.layers.deserialize(config)`,
		`keras.metrics.deserialize(config)`, etc.
		
		Calling `deserialize_keras_object` while underneath the
		`SharedObjectLoadingScope` context manager will cause any already-seen shared
		objects to be returned as-is rather than creating a new object.
		
		Args:
		  identifier: the serialized form of the object.
		  module_objects: A dictionary of built-in objects to look the name up in.
		    Generally, `module_objects` is provided by midlevel library implementers.
		  custom_objects: A dictionary of custom objects to look the name up in.
		    Generally, `custom_objects` is provided by the end user.
		  printable_module_name: A human-readable string representing the type of the
		    object. Printed in case of exception.
		
		Returns:
		  The deserialized object.
		
		Example:
		
		A mid-level library implementer might want to implement a utility for
		retrieving an object from its config, as such:
		
		```python
		def deserialize(config, custom_objects=None):
		   return deserialize_keras_object(
		     identifier,
		     module_objects=globals(),
		     custom_objects=custom_objects,
		     name="MyObjectType",
		   )
		```
		
		This is how e.g. `keras.layers.deserialize()` is implemented.
	**/
	static public function deserialize_keras_object(identifier:Dynamic, ?module_objects:Dynamic, ?custom_objects:Dynamic, ?printable_module_name:Dynamic):Dynamic;
	/**
		Retrieves a Keras loss as a `function`/`Loss` class instance.
		
		The `identifier` may be the string name of a loss function or `Loss` class.
		
		>>> loss = tf.keras.losses.get("categorical_crossentropy")
		>>> type(loss)
		<class 'function'>
		>>> loss = tf.keras.losses.get("CategoricalCrossentropy")
		>>> type(loss)
		<class '...keras.losses.CategoricalCrossentropy'>
		
		You can also specify `config` of the loss to this function by passing dict
		containing `class_name` and `config` as an identifier. Also note that the
		`class_name` must map to a `Loss` class
		
		>>> identifier = {"class_name": "CategoricalCrossentropy",
		...               "config": {"from_logits": True}}
		>>> loss = tf.keras.losses.get(identifier)
		>>> type(loss)
		<class '...keras.losses.CategoricalCrossentropy'>
		
		Args:
		  identifier: A loss identifier. One of None or string name of a loss
		    function/class or loss configuration dictionary or a loss function or a
		    loss class instance.
		
		Returns:
		  A Keras loss as a `function`/ `Loss` class instance.
		
		Raises:
		  ValueError: If `identifier` cannot be interpreted.
	**/
	static public function get(identifier:Dynamic):Dynamic;
	/**
		Computes the hinge loss between `y_true` and `y_pred`.
		
		`loss = mean(maximum(1 - y_true * y_pred, 0), axis=-1)`
		
		Standalone usage:
		
		>>> y_true = np.random.choice([-1, 1], size=(2, 3))
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.hinge(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> assert np.array_equal(
		...     loss.numpy(),
		...     np.mean(np.maximum(1. - y_true * y_pred, 0.), axis=-1))
		
		Args:
		  y_true: The ground truth values. `y_true` values are expected to be -1 or 1.
		    If binary (0 or 1) labels are provided they will be converted to -1 or 1.
		    shape = `[batch_size, d0, .. dN]`.
		  y_pred: The predicted values. shape = `[batch_size, d0, .. dN]`.
		
		Returns:
		  Hinge loss values. shape = `[batch_size, d0, .. dN-1]`.
	**/
	static public function hinge(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Computes Huber loss value.
		
		For each value x in `error = y_true - y_pred`:
		
		```
		loss = 0.5 * x^2                  if |x| <= d
		loss = d * |x| - 0.5 * d^2        if |x| > d
		```
		where d is `delta`. See: https://en.wikipedia.org/wiki/Huber_loss
		
		Args:
		  y_true: tensor of true targets.
		  y_pred: tensor of predicted targets.
		  delta: A float, the point where the Huber loss function changes from a
		    quadratic to linear.
		
		Returns:
		  Tensor with one scalar loss entry per sample.
	**/
	static public function huber(y_true:Dynamic, y_pred:Dynamic, ?delta:Dynamic):Dynamic;
	/**
		Computes Huber loss value.
		
		For each value x in `error = y_true - y_pred`:
		
		```
		loss = 0.5 * x^2                  if |x| <= d
		loss = d * |x| - 0.5 * d^2        if |x| > d
		```
		where d is `delta`. See: https://en.wikipedia.org/wiki/Huber_loss
		
		Args:
		  y_true: tensor of true targets.
		  y_pred: tensor of predicted targets.
		  delta: A float, the point where the Huber loss function changes from a
		    quadratic to linear.
		
		Returns:
		  Tensor with one scalar loss entry per sample.
	**/
	static public function huber_loss(y_true:Dynamic, y_pred:Dynamic, ?delta:Dynamic):Dynamic;
	static public function is_categorical_crossentropy(loss:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Computes Kullback-Leibler divergence loss between `y_true` and `y_pred`.
		
		`loss = y_true * log(y_true / y_pred)`
		
		See: https://en.wikipedia.org/wiki/Kullback%E2%80%93Leibler_divergence
		
		Standalone usage:
		
		>>> y_true = np.random.randint(0, 2, size=(2, 3)).astype(np.float64)
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.kullback_leibler_divergence(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> y_true = tf.keras.backend.clip(y_true, 1e-7, 1)
		>>> y_pred = tf.keras.backend.clip(y_pred, 1e-7, 1)
		>>> assert np.array_equal(
		...     loss.numpy(), np.sum(y_true * np.log(y_true / y_pred), axis=-1))
		
		Args:
		  y_true: Tensor of true targets.
		  y_pred: Tensor of predicted targets.
		
		Returns:
		  A `Tensor` with loss.
		
		Raises:
		  TypeError: If `y_true` cannot be cast to the `y_pred.dtype`.
	**/
	static public function kl_divergence(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Computes Kullback-Leibler divergence loss between `y_true` and `y_pred`.
		
		`loss = y_true * log(y_true / y_pred)`
		
		See: https://en.wikipedia.org/wiki/Kullback%E2%80%93Leibler_divergence
		
		Standalone usage:
		
		>>> y_true = np.random.randint(0, 2, size=(2, 3)).astype(np.float64)
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.kullback_leibler_divergence(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> y_true = tf.keras.backend.clip(y_true, 1e-7, 1)
		>>> y_pred = tf.keras.backend.clip(y_pred, 1e-7, 1)
		>>> assert np.array_equal(
		...     loss.numpy(), np.sum(y_true * np.log(y_true / y_pred), axis=-1))
		
		Args:
		  y_true: Tensor of true targets.
		  y_pred: Tensor of predicted targets.
		
		Returns:
		  A `Tensor` with loss.
		
		Raises:
		  TypeError: If `y_true` cannot be cast to the `y_pred.dtype`.
	**/
	static public function kld(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Computes Kullback-Leibler divergence loss between `y_true` and `y_pred`.
		
		`loss = y_true * log(y_true / y_pred)`
		
		See: https://en.wikipedia.org/wiki/Kullback%E2%80%93Leibler_divergence
		
		Standalone usage:
		
		>>> y_true = np.random.randint(0, 2, size=(2, 3)).astype(np.float64)
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.kullback_leibler_divergence(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> y_true = tf.keras.backend.clip(y_true, 1e-7, 1)
		>>> y_pred = tf.keras.backend.clip(y_pred, 1e-7, 1)
		>>> assert np.array_equal(
		...     loss.numpy(), np.sum(y_true * np.log(y_true / y_pred), axis=-1))
		
		Args:
		  y_true: Tensor of true targets.
		  y_pred: Tensor of predicted targets.
		
		Returns:
		  A `Tensor` with loss.
		
		Raises:
		  TypeError: If `y_true` cannot be cast to the `y_pred.dtype`.
	**/
	static public function kullback_leibler_divergence(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Logarithm of the hyperbolic cosine of the prediction error.
		
		`log(cosh(x))` is approximately equal to `(x ** 2) / 2` for small `x` and
		to `abs(x) - log(2)` for large `x`. This means that 'logcosh' works mostly
		like the mean squared error, but will not be so strongly affected by the
		occasional wildly incorrect prediction.
		
		Standalone usage:
		
		>>> y_true = np.random.random(size=(2, 3))
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.logcosh(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> x = y_pred - y_true
		>>> assert np.allclose(
		...     loss.numpy(),
		...     np.mean(x + np.log(np.exp(-2. * x) + 1.) - math_ops.log(2.), axis=-1),
		...     atol=1e-5)
		
		Args:
		  y_true: Ground truth values. shape = `[batch_size, d0, .. dN]`.
		  y_pred: The predicted values. shape = `[batch_size, d0, .. dN]`.
		
		Returns:
		  Logcosh error values. shape = `[batch_size, d0, .. dN-1]`.
	**/
	static public function log_cosh(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Logarithm of the hyperbolic cosine of the prediction error.
		
		`log(cosh(x))` is approximately equal to `(x ** 2) / 2` for small `x` and
		to `abs(x) - log(2)` for large `x`. This means that 'logcosh' works mostly
		like the mean squared error, but will not be so strongly affected by the
		occasional wildly incorrect prediction.
		
		Standalone usage:
		
		>>> y_true = np.random.random(size=(2, 3))
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.logcosh(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> x = y_pred - y_true
		>>> assert np.allclose(
		...     loss.numpy(),
		...     np.mean(x + np.log(np.exp(-2. * x) + 1.) - math_ops.log(2.), axis=-1),
		...     atol=1e-5)
		
		Args:
		  y_true: Ground truth values. shape = `[batch_size, d0, .. dN]`.
		  y_pred: The predicted values. shape = `[batch_size, d0, .. dN]`.
		
		Returns:
		  Logcosh error values. shape = `[batch_size, d0, .. dN-1]`.
	**/
	static public function logcosh(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Computes the mean absolute error between labels and predictions.
		
		`loss = mean(abs(y_true - y_pred), axis=-1)`
		
		Standalone usage:
		
		>>> y_true = np.random.randint(0, 2, size=(2, 3))
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.mean_absolute_error(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> assert np.array_equal(
		...     loss.numpy(), np.mean(np.abs(y_true - y_pred), axis=-1))
		
		Args:
		  y_true: Ground truth values. shape = `[batch_size, d0, .. dN]`.
		  y_pred: The predicted values. shape = `[batch_size, d0, .. dN]`.
		
		Returns:
		  Mean absolute error values. shape = `[batch_size, d0, .. dN-1]`.
	**/
	static public function mae(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Computes the mean absolute percentage error between `y_true` and `y_pred`.
		
		`loss = 100 * mean(abs((y_true - y_pred) / y_true), axis=-1)`
		
		Standalone usage:
		
		>>> y_true = np.random.random(size=(2, 3))
		>>> y_true = np.maximum(y_true, 1e-7)  # Prevent division by zero
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.mean_absolute_percentage_error(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> assert np.array_equal(
		...     loss.numpy(),
		...     100. * np.mean(np.abs((y_true - y_pred) / y_true), axis=-1))
		
		Args:
		  y_true: Ground truth values. shape = `[batch_size, d0, .. dN]`.
		  y_pred: The predicted values. shape = `[batch_size, d0, .. dN]`.
		
		Returns:
		  Mean absolute percentage error values. shape = `[batch_size, d0, .. dN-1]`.
	**/
	static public function mape(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Computes the mean absolute error between labels and predictions.
		
		`loss = mean(abs(y_true - y_pred), axis=-1)`
		
		Standalone usage:
		
		>>> y_true = np.random.randint(0, 2, size=(2, 3))
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.mean_absolute_error(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> assert np.array_equal(
		...     loss.numpy(), np.mean(np.abs(y_true - y_pred), axis=-1))
		
		Args:
		  y_true: Ground truth values. shape = `[batch_size, d0, .. dN]`.
		  y_pred: The predicted values. shape = `[batch_size, d0, .. dN]`.
		
		Returns:
		  Mean absolute error values. shape = `[batch_size, d0, .. dN-1]`.
	**/
	static public function mean_absolute_error(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Computes the mean absolute percentage error between `y_true` and `y_pred`.
		
		`loss = 100 * mean(abs((y_true - y_pred) / y_true), axis=-1)`
		
		Standalone usage:
		
		>>> y_true = np.random.random(size=(2, 3))
		>>> y_true = np.maximum(y_true, 1e-7)  # Prevent division by zero
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.mean_absolute_percentage_error(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> assert np.array_equal(
		...     loss.numpy(),
		...     100. * np.mean(np.abs((y_true - y_pred) / y_true), axis=-1))
		
		Args:
		  y_true: Ground truth values. shape = `[batch_size, d0, .. dN]`.
		  y_pred: The predicted values. shape = `[batch_size, d0, .. dN]`.
		
		Returns:
		  Mean absolute percentage error values. shape = `[batch_size, d0, .. dN-1]`.
	**/
	static public function mean_absolute_percentage_error(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Computes the mean squared error between labels and predictions.
		
		After computing the squared distance between the inputs, the mean value over
		the last dimension is returned.
		
		`loss = mean(square(y_true - y_pred), axis=-1)`
		
		Standalone usage:
		
		>>> y_true = np.random.randint(0, 2, size=(2, 3))
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.mean_squared_error(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> assert np.array_equal(
		...     loss.numpy(), np.mean(np.square(y_true - y_pred), axis=-1))
		
		Args:
		  y_true: Ground truth values. shape = `[batch_size, d0, .. dN]`.
		  y_pred: The predicted values. shape = `[batch_size, d0, .. dN]`.
		
		Returns:
		  Mean squared error values. shape = `[batch_size, d0, .. dN-1]`.
	**/
	static public function mean_squared_error(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Computes the mean squared logarithmic error between `y_true` and `y_pred`.
		
		`loss = mean(square(log(y_true + 1) - log(y_pred + 1)), axis=-1)`
		
		Standalone usage:
		
		>>> y_true = np.random.randint(0, 2, size=(2, 3))
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.mean_squared_logarithmic_error(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> y_true = np.maximum(y_true, 1e-7)
		>>> y_pred = np.maximum(y_pred, 1e-7)
		>>> assert np.allclose(
		...     loss.numpy(),
		...     np.mean(
		...         np.square(np.log(y_true + 1.) - np.log(y_pred + 1.)), axis=-1))
		
		Args:
		  y_true: Ground truth values. shape = `[batch_size, d0, .. dN]`.
		  y_pred: The predicted values. shape = `[batch_size, d0, .. dN]`.
		
		Returns:
		  Mean squared logarithmic error values. shape = `[batch_size, d0, .. dN-1]`.
	**/
	static public function mean_squared_logarithmic_error(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Computes the mean squared error between labels and predictions.
		
		After computing the squared distance between the inputs, the mean value over
		the last dimension is returned.
		
		`loss = mean(square(y_true - y_pred), axis=-1)`
		
		Standalone usage:
		
		>>> y_true = np.random.randint(0, 2, size=(2, 3))
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.mean_squared_error(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> assert np.array_equal(
		...     loss.numpy(), np.mean(np.square(y_true - y_pred), axis=-1))
		
		Args:
		  y_true: Ground truth values. shape = `[batch_size, d0, .. dN]`.
		  y_pred: The predicted values. shape = `[batch_size, d0, .. dN]`.
		
		Returns:
		  Mean squared error values. shape = `[batch_size, d0, .. dN-1]`.
	**/
	static public function mse(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Computes the mean squared logarithmic error between `y_true` and `y_pred`.
		
		`loss = mean(square(log(y_true + 1) - log(y_pred + 1)), axis=-1)`
		
		Standalone usage:
		
		>>> y_true = np.random.randint(0, 2, size=(2, 3))
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.mean_squared_logarithmic_error(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> y_true = np.maximum(y_true, 1e-7)
		>>> y_pred = np.maximum(y_pred, 1e-7)
		>>> assert np.allclose(
		...     loss.numpy(),
		...     np.mean(
		...         np.square(np.log(y_true + 1.) - np.log(y_pred + 1.)), axis=-1))
		
		Args:
		  y_true: Ground truth values. shape = `[batch_size, d0, .. dN]`.
		  y_pred: The predicted values. shape = `[batch_size, d0, .. dN]`.
		
		Returns:
		  Mean squared logarithmic error values. shape = `[batch_size, d0, .. dN-1]`.
	**/
	static public function msle(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Computes the Poisson loss between y_true and y_pred.
		
		The Poisson loss is the mean of the elements of the `Tensor`
		`y_pred - y_true * log(y_pred)`.
		
		Standalone usage:
		
		>>> y_true = np.random.randint(0, 2, size=(2, 3))
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.poisson(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> y_pred = y_pred + 1e-7
		>>> assert np.allclose(
		...     loss.numpy(), np.mean(y_pred - y_true * np.log(y_pred), axis=-1),
		...     atol=1e-5)
		
		Args:
		  y_true: Ground truth values. shape = `[batch_size, d0, .. dN]`.
		  y_pred: The predicted values. shape = `[batch_size, d0, .. dN]`.
		
		Returns:
		   Poisson loss value. shape = `[batch_size, d0, .. dN-1]`.
		
		Raises:
		  InvalidArgumentError: If `y_true` and `y_pred` have incompatible shapes.
	**/
	static public function poisson(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Serializes loss function or `Loss` instance.
		
		Args:
		  loss: A Keras `Loss` instance or a loss function.
		
		Returns:
		  Loss configuration dictionary.
	**/
	static public function serialize(loss:Dynamic):Dynamic;
	/**
		Serialize a Keras object into a JSON-compatible representation.
		
		Calls to `serialize_keras_object` while underneath the
		`SharedObjectSavingScope` context manager will cause any objects re-used
		across multiple layers to be saved with a special shared object ID. This
		allows the network to be re-created properly during deserialization.
		
		Args:
		  instance: The object to serialize.
		
		Returns:
		  A dict-like, JSON-compatible representation of the object's config.
	**/
	static public function serialize_keras_object(instance:Dynamic):Dynamic;
	/**
		Computes the sparse categorical crossentropy loss.
		
		Standalone usage:
		
		>>> y_true = [1, 2]
		>>> y_pred = [[0.05, 0.95, 0], [0.1, 0.8, 0.1]]
		>>> loss = tf.keras.losses.sparse_categorical_crossentropy(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> loss.numpy()
		array([0.0513, 2.303], dtype=float32)
		
		Args:
		  y_true: Ground truth values.
		  y_pred: The predicted values.
		  from_logits: Whether `y_pred` is expected to be a logits tensor. By default,
		    we assume that `y_pred` encodes a probability distribution.
		  axis: Defaults to -1. The dimension along which the entropy is
		    computed.
		
		Returns:
		  Sparse categorical crossentropy loss value.
	**/
	static public function sparse_categorical_crossentropy(y_true:Dynamic, y_pred:Dynamic, ?from_logits:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Computes the squared hinge loss between `y_true` and `y_pred`.
		
		`loss = mean(square(maximum(1 - y_true * y_pred, 0)), axis=-1)`
		
		Standalone usage:
		
		>>> y_true = np.random.choice([-1, 1], size=(2, 3))
		>>> y_pred = np.random.random(size=(2, 3))
		>>> loss = tf.keras.losses.squared_hinge(y_true, y_pred)
		>>> assert loss.shape == (2,)
		>>> assert np.array_equal(
		...     loss.numpy(),
		...     np.mean(np.square(np.maximum(1. - y_true * y_pred, 0.)), axis=-1))
		
		Args:
		  y_true: The ground truth values. `y_true` values are expected to be -1 or 1.
		    If binary (0 or 1) labels are provided we will convert them to -1 or 1.
		    shape = `[batch_size, d0, .. dN]`.
		  y_pred: The predicted values. shape = `[batch_size, d0, .. dN]`.
		
		Returns:
		   Squared hinge loss values. shape = `[batch_size, d0, .. dN-1]`.
	**/
	static public function squared_hinge(y_true:Dynamic, y_pred:Dynamic):Dynamic;
}