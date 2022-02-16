/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.data_adapter;
@:pythonImport("tensorflow.python.keras.engine.data_adapter") extern class Data_adapter_Module {
	static public var ALL_ADAPTER_CLS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_data_cardinality(data:Dynamic):Dynamic;
	static public function _get_tensor_types():Dynamic;
	static public function _is_distributed_dataset(ds:Dynamic):Dynamic;
	static public function _is_scipy_sparse(x:Dynamic):Dynamic;
	/**
		Applies class weighting to a `Dataset`.
		
		The `Dataset` is assumed to be in format `(x, y)` or `(x, y, sw)`, where
		`y` must be a single `Tensor`.
		
		Args:
		  class_weight: A map where the keys are integer class ids and values are
		    the class weights, e.g. `{0: 0.2, 1: 0.6, 2: 0.3}`
		
		Returns:
		  A function that can be used with `tf.data.Dataset.map` to apply class
		  weighting.
	**/
	static public function _make_class_weight_map_fn(class_weight:Dynamic):Dynamic;
	/**
		Process tensor-like inputs.
		
		This function:
		
		(1) Converts `Numpy` arrays to `Tensor`s.
		(2) Converts `Scipy` sparse matrices to `SparseTensor`s.
		(2) Converts `list`s to `tuple`s (for `tf.data` support).
		
		Args:
		  inputs: Structure of `Tensor`s, `NumPy` arrays, or tensor-like.
		
		Returns:
		  Structure of `Tensor`s or tensor-like.
	**/
	static public function _process_tensorlike(inputs:Dynamic):Dynamic;
	/**
		Converts a SciPy sparse matrix to a SparseTensor.
	**/
	static public function _scipy_sparse_to_sparse_tensor(t:Dynamic):Dynamic;
	/**
		Generates a description of the type of an object.
	**/
	static public function _type_name(x:Dynamic):Dynamic;
	/**
		Match sample_weight_modes structure with output structure.
	**/
	static public function broadcast_sample_weight_modes(target_structure:Dynamic, sample_weight_modes:Dynamic):Dynamic;
	/**
		Expands 1-dimensional `Tensor`s into 2-dimensional `Tensor`s.
	**/
	static public function expand_1d(data:Dynamic):Dynamic;
	static public function get_data_handler(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_none_or_empty(inputs:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Packs user-provided data into a tuple.
		
		This is a convenience utility for packing data into the tuple formats
		that `Model.fit` uses.
		
		Standalone usage:
		
		>>> x = tf.ones((10, 1))
		>>> data = tf.keras.utils.pack_x_y_sample_weight(x)
		>>> isinstance(data, tf.Tensor)
		True
		>>> y = tf.ones((10, 1))
		>>> data = tf.keras.utils.pack_x_y_sample_weight(x, y)
		>>> isinstance(data, tuple)
		True
		>>> x, y = data
		
		Args:
		  x: Features to pass to `Model`.
		  y: Ground-truth targets to pass to `Model`.
		  sample_weight: Sample weight for each element.
		
		Returns:
		  Tuple in the format used in `Model.fit`.
	**/
	static public function pack_x_y_sample_weight(x:Dynamic, ?y:Dynamic, ?sample_weight:Dynamic):Dynamic;
	/**
		Selects a data adapter than can handle a given x and y.
	**/
	static public function select_data_adapter(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Creates a single-batch dataset.
	**/
	static public function single_batch_iterator(strategy:Dynamic, x:Dynamic, ?y:Dynamic, ?sample_weight:Dynamic, ?class_weight:Dynamic):Dynamic;
	/**
		Split arrays into train and validation subsets in deterministic order.
		
		The last part of data will become validation data.
		
		Args:
		  arrays: Tensors to split. Allowed inputs are arbitrarily nested structures
		    of Tensors and NumPy arrays.
		  validation_split: Float between 0 and 1. The proportion of the dataset to
		    include in the validation split. The rest of the dataset will be included
		    in the training split.
		Returns:
		  `(train_arrays, validation_arrays)`
	**/
	static public function train_validation_split(arrays:Dynamic, validation_split:Dynamic):Dynamic;
	/**
		Unpacks user-provided data tuple.
		
		This is a convenience utility to be used when overriding
		`Model.train_step`, `Model.test_step`, or `Model.predict_step`.
		This utility makes it easy to support data of the form `(x,)`,
		`(x, y)`, or `(x, y, sample_weight)`.
		
		Standalone usage:
		
		>>> features_batch = tf.ones((10, 5))
		>>> labels_batch = tf.zeros((10, 5))
		>>> data = (features_batch, labels_batch)
		>>> # `y` and `sample_weight` will default to `None` if not provided.
		>>> x, y, sample_weight = tf.keras.utils.unpack_x_y_sample_weight(data)
		>>> sample_weight is None
		True
		
		Example in overridden `Model.train_step`:
		
		```python
		class MyModel(tf.keras.Model):
		
		  def train_step(self, data):
		    # If `sample_weight` is not provided, all samples will be weighted
		    # equally.
		    x, y, sample_weight = tf.keras.utils.unpack_x_y_sample_weight(data)
		
		    with tf.GradientTape() as tape:
		      y_pred = self(x, training=True)
		      loss = self.compiled_loss(
		        y, y_pred, sample_weight, regularization_losses=self.losses)
		      trainable_variables = self.trainable_variables
		      gradients = tape.gradient(loss, trainable_variables)
		      self.optimizer.apply_gradients(zip(gradients, trainable_variables))
		
		    self.compiled_metrics.update_state(y, y_pred, sample_weight)
		    return {m.name: m.result() for m in self.metrics}
		```
		
		Args:
		  data: A tuple of the form `(x,)`, `(x, y)`, or `(x, y, sample_weight)`.
		
		Returns:
		  The unpacked tuple, with `None`s for `y` and `sample_weight` if they are not
		  provided.
	**/
	static public function unpack_x_y_sample_weight(data:Dynamic):Dynamic;
}