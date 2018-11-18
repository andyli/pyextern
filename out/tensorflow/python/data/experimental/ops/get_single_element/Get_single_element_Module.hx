/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.get_single_element;
@:pythonImport("tensorflow.python.data.experimental.ops.get_single_element") extern class Get_single_element_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns the single element in `dataset` as a nested structure of tensors.
		
		This function enables you to use a `tf.data.Dataset` in a stateless
		"tensor-in tensor-out" expression, without creating a `tf.data.Iterator`.
		This can be useful when your preprocessing transformations are expressed
		as a `Dataset`, and you want to use the transformation at serving time.
		For example:
		
		```python
		input_batch = tf.placeholder(tf.string, shape=[BATCH_SIZE])
		
		def preprocessing_fn(input_str):
		  # ...
		  return image, label
		
		dataset = (tf.data.Dataset.from_tensor_slices(input_batch)
		           .map(preprocessing_fn, num_parallel_calls=BATCH_SIZE)
		           .batch(BATCH_SIZE))
		
		image_batch, label_batch = tf.data.experimental.get_single_element(dataset)
		```
		
		Args:
		  dataset: A `tf.data.Dataset` object containing a single element.
		
		Returns:
		  A nested structure of `tf.Tensor` objects, corresponding to the single
		  element of `dataset`.
		
		Raises:
		  TypeError: if `dataset` is not a `tf.data.Dataset` object.
		  InvalidArgumentError (at runtime): if `dataset` does not contain exactly
		    one element.
	**/
	static public function get_single_element(dataset:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}