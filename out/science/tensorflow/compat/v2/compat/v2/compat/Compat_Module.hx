/* This file is generated, do not edit! */
package tensorflow.compat.v2.compat.v2.compat;
@:pythonImport("tensorflow.compat.v2.compat.v2.compat") extern class Compat_Module {
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
		Converts `bytearray`, `bytes`, or unicode python input types to `bytes`.
		
		Uses utf-8 encoding for text by default.
		
		Args:
		  bytes_or_text: A `bytearray`, `bytes`, `str`, or `unicode` object.
		  encoding: A string indicating the charset for encoding unicode.
		
		Returns:
		  A `bytes` object.
		
		Raises:
		  TypeError: If `bytes_or_text` is not a binary or unicode string.
	**/
	static public function as_bytes(bytes_or_text:Dynamic, ?encoding:Dynamic):Dynamic;
	static public function as_str(bytes_or_text:Dynamic, ?encoding:Dynamic):Dynamic;
	/**
		Converts input to `str` type.
		
		   Uses `str(value)`, except for `bytes` typed inputs, which are converted
		   using `as_str`.
		
		Args:
		  value: A object that can be converted to `str`.
		
		Returns:
		  A `str` object.
	**/
	static public function as_str_any(value:Dynamic):Dynamic;
	/**
		Converts any string-like python input types to unicode.
		
		Returns the input as a unicode string. Uses utf-8 encoding for text
		by default.
		
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
		Compatibility utility required to allow for both V1 and V2 behavior in TF.
		
		Until the release of TF 2.0, we need the legacy behavior of `TensorShape` to
		coexist with the new behavior. This utility is a bridge between the two.
		
		If you want to retrieve the Dimension instance corresponding to a certain
		index in a TensorShape instance, use this utility, like this:
		
		```
		# If you had this in your V1 code:
		dim = tensor_shape[i]
		
		# Use `dimension_at_index` as direct replacement compatible with both V1 & V2:
		dim = dimension_at_index(tensor_shape, i)
		
		# Another possibility would be this, but WARNING: it only works if the
		# tensor_shape instance has a defined rank.
		dim = tensor_shape.dims[i]  # `dims` may be None if the rank is undefined!
		
		# In native V2 code, we recommend instead being more explicit:
		if tensor_shape.rank is None:
		  dim = Dimension(None)
		else:
		  dim = tensor_shape.dims[i]
		
		# Being more explicit will save you from the following trap (present in V1):
		# you might do in-place modifications to `dim` and expect them to be reflected
		# in `tensor_shape[i]`, but they would not be (as the Dimension object was
		# instantiated on the fly.
		```
		
		Args:
		  shape: A TensorShape instance.
		  index: An integer index.
		
		Returns:
		  A dimension object.
	**/
	static public function dimension_at_index(shape:Dynamic, index:Dynamic):Dynamic;
	/**
		Compatibility utility required to allow for both V1 and V2 behavior in TF.
		
		Until the release of TF 2.0, we need the legacy behavior of `TensorShape` to
		coexist with the new behavior. This utility is a bridge between the two.
		
		When accessing the value of a TensorShape dimension,
		use this utility, like this:
		
		```
		# If you had this in your V1 code:
		value = tensor_shape[i].value
		
		# Use `dimension_value` as direct replacement compatible with both V1 & V2:
		value = dimension_value(tensor_shape[i])
		
		# This would be the V2 equivalent:
		value = tensor_shape[i]  # Warning: this will return the dim value in V2!
		```
		
		Args:
		  dimension: Either a `Dimension` instance, an integer, or None.
		
		Returns:
		  A plain value, i.e. an integer or None.
	**/
	static public function dimension_value(dimension:Dynamic):Dynamic;
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
		
		Args:
		  year:  A year (e.g., 2018). Must be an `int`.
		  month: A month (1 <= month <= 12) in year. Must be an `int`.
		  day:   A day (1 <= day <= 31, or 30, or 29, or 28) in month. Must be an
		    `int`.
		
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
		  # To maintain forward compatibility, use the old implementation.
		  return gen_math_ops.add(inputs, name)
		```
		
		Where `year`, `month`, and `day` specify the date beyond which binaries
		that consume a model are expected to have been updated to include the
		new operations. This date is typically at least 3 weeks beyond the date
		the code that adds the new operation is committed.
		
		Args:
		  year:  A year (e.g., 2018). Must be an `int`.
		  month: A month (1 <= month <= 12) in year. Must be an `int`.
		  day:   A day (1 <= day <= 31, or 30, or 29, or 28) in month. Must be an
		    `int`.
		
		Returns:
		  True if the caller can expect that serialized TensorFlow graphs produced
		  can be consumed by programs that are compiled with the TensorFlow library
		  source code after (year, month, day).
	**/
	static public function forward_compatible(year:Dynamic, month:Dynamic, day:Dynamic):Dynamic;
	static public var integral_types : Dynamic;
	/**
		Converts input which is a `PathLike` object to `str` type.
		
		Converts from any python constant representation of a `PathLike` object to
		a string. If the input is not a `PathLike` object, simply returns the input.
		
		Args:
		  path: An object that can be converted to path representation.
		
		Returns:
		  A `str` object.
		
		Usage:
		  In case a simplified `str` version of the path is needed from an
		  `os.PathLike` object
		
		Examples:
		```python
		$ tf.compat.path_to_str('C:\XYZ\tensorflow\./.././tensorflow')
		'C:\XYZ\tensorflow\./.././tensorflow' # Windows OS
		$ tf.compat.path_to_str(Path('C:\XYZ\tensorflow\./.././tensorflow'))
		'C:\XYZ\tensorflow\..\tensorflow' # Windows OS
		$ tf.compat.path_to_str(Path('./corpus'))
		'corpus' # Linux OS
		$ tf.compat.path_to_str('./.././Corpus')
		'./.././Corpus' # Linux OS
		$ tf.compat.path_to_str(Path('./.././Corpus'))
		'../Corpus' # Linux OS
		$ tf.compat.path_to_str(Path('./..////../'))
		'../..' # Linux OS
		
		```
	**/
	static public function path_to_str(path:Dynamic):Dynamic;
	static public var real_types : Dynamic;
}