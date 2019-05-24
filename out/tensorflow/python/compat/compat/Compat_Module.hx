/* This file is generated, do not edit! */
package tensorflow.python.compat.compat;
@:pythonImport("tensorflow.python.compat.compat") extern class Compat_Module {
	static public var _FORWARD_COMPATIBILITY_HORIZON : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Disables TensorFlow 2.x behaviors.
		
		This function can be called at the beginning of the program (before `Tensors`,
		`Graphs` or other structures have been created, and before devices have been
		initialized. It switches all global behaviors that are different between
		TensorFlow 1.x and 2.x to behave as intended for 1.x.
		
		User can call this function to disable 2.x behavior during complex migrations.
	**/
	static public function disable_v2_behavior():Dynamic;
	static public var division : Dynamic;
	/**
		Enables TensorFlow 2.x behaviors.
		
		This function can be called at the beginning of the program (before `Tensors`,
		`Graphs` or other structures have been created, and before devices have been
		initialized. It switches all global behaviors that are different between
		TensorFlow 1.x and 2.x to behave as intended for 2.x.
		
		This function is called in the main TensorFlow `__init__.py` file, user should
		not need to call it, except during complex migrations.
	**/
	static public function enable_v2_behavior():Dynamic;
	/**
		Context manager for testing forward compatibility of generated graphs.
		
		See [Version
		compatibility](https://tensorflow.org/guide/version_compat#backward_forward).
		
		To ensure forward compatibility of generated graphs (see `forward_compatible`)
		with older binaries, new features can be gated with:
		
		```python
		if compat.forward_compatible(year=2018, month=08, date=01):
		  generate_graph_with_new_features()
		else:
		  generate_graph_so_older_binaries_can_consume_it()
		```
		
		However, when adding new features, one may want to unittest it before
		the forward compatibility window expires. This context manager enables
		such tests. For example:
		
		```python
		from tensorflow.python.compat import compat
		
		def testMyNewFeature(self):
		  with compat.forward_compatibility_horizon(2018, 08, 02):
		     # Test that generate_graph_with_new_features() has an effect
		```
		
		Args :
		  year:  A year (e.g. 2018).
		  month: A month (1 <= month <= 12) in year.
		  day:   A day (1 <= day <= 31, or 30, or 29, or 28) in month.
		
		Yields:
		  Nothing.
	**/
	static public function forward_compatibility_horizon(year:Dynamic, month:Dynamic, day:Dynamic):Dynamic;
	/**
		Return true if the forward compatibility window has expired.
		
		See [Version
		compatibility](https://tensorflow.org/guide/version_compat#backward_forward).
		
		Forward-compatibility refers to scenarios where the producer of a TensorFlow
		model (a GraphDef or SavedModel) is compiled against a version of the
		TensorFlow library newer than what the consumer was compiled against. The
		"producer" is typically a Python program that constructs and trains a model
		while the "consumer" is typically another program that loads and serves the
		model.
		
		TensorFlow has been supporting a 3 week forward-compatibility window for
		programs compiled from source at HEAD.
		
		For example, consider the case where a new operation `MyNewAwesomeAdd` is
		created with the intent of replacing the implementation of an existing Python
		wrapper - `tf.add`.  The Python wrapper implementation should change from
		something like:
		
		```python
		def add(inputs, name=None):
		  return gen_math_ops.add(inputs, name)
		```
		
		to:
		
		```python
		from tensorflow.python.compat import compat
		
		def add(inputs, name=None):
		  if compat.forward_compatible(year, month, day):
		    # Can use the awesome new implementation.
		    return gen_math_ops.my_new_awesome_add(inputs, name)
		  # To maintain forward compatibiltiy, use the old implementation.
		  return gen_math_ops.add(inputs, name)
		```
		
		Where `year`, `month`, and `day` specify the date beyond which binaries
		that consume a model are expected to have been updated to include the
		new operations. This date is typically at least 3 weeks beyond the date
		the code that adds the new operation is committed.
		
		Args:
		  year:  A year (e.g., 2018).
		  month: A month (1 <= month <= 12) in year.
		  day:   A day (1 <= day <= 31, or 30, or 29, or 28) in month.
		
		Returns:
		  True if the caller can expect that serialized TensorFlow graphs produced
		  can be consumed by programs that are compiled with the TensorFlow library
		  source code after (year, month, day).
	**/
	static public function forward_compatible(year:Dynamic, month:Dynamic, day:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}