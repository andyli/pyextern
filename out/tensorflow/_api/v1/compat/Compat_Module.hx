/* This file is generated, do not edit! */
package tensorflow._api.v1.compat;
@:pythonImport("tensorflow._api.v1.compat") extern class Compat_Module {
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
		Converts either bytes or unicode to `bytes`, using utf-8 encoding for text.
		
		Args:
		  bytes_or_text: A `bytes`, `str`, or `unicode` object.
		  encoding: A string indicating the charset for encoding unicode.
		
		Returns:
		  A `bytes` object.
		
		Raises:
		  TypeError: If `bytes_or_text` is not a binary or unicode string.
	**/
	static public function as_bytes(bytes_or_text:Dynamic, ?encoding:Dynamic):Dynamic;
	/**
		Returns the given argument as a unicode string.
		
		Args:
		  bytes_or_text: A `bytes`, `str`, or `unicode` object.
		  encoding: A string indicating the charset for decoding unicode.
		
		Returns:
		  A `unicode` (Python 2) or `str` (Python 3) object.
		
		Raises:
		  TypeError: If `bytes_or_text` is not a binary or unicode string.
	**/
	static public function as_str(bytes_or_text:Dynamic, ?encoding:Dynamic):Dynamic;
	/**
		Converts to `str` as `str(value)`, but use `as_str` for `bytes`.
		
		Args:
		  value: A object that can be converted to `str`.
		
		Returns:
		  A `str` object.
	**/
	static public function as_str_any(value:Dynamic):Dynamic;
	/**
		Returns the given argument as a unicode string.
		
		Args:
		  bytes_or_text: A `bytes`, `str`, or `unicode` object.
		  encoding: A string indicating the charset for decoding unicode.
		
		Returns:
		  A `unicode` (Python 2) or `str` (Python 3) object.
		
		Raises:
		  TypeError: If `bytes_or_text` is not a binary or unicode string.
	**/
	static public function as_text(bytes_or_text:Dynamic, ?encoding:Dynamic):Dynamic;
	static public var bytes_or_text_types : Dynamic;
	static public var complex_types : Dynamic;
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
	static public var integral_types : Dynamic;
	/**
		Returns the file system path representation of a `PathLike` object, else as it is.
		
		Args:
		  path: An object that can be converted to path representation.
		
		Returns:
		  A `str` object.
	**/
	static public function path_to_str(path:Dynamic):Dynamic;
	static public var real_types : Dynamic;
}