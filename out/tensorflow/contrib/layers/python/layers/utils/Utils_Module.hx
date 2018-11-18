/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.layers.utils;
@:pythonImport("tensorflow.contrib.layers.python.layers.utils") extern class Utils_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns the `dim` dimension of `shape`, while checking it has `min_rank`.
		
		Args:
		  shape: A `TensorShape`.
		  dim: Integer, which dimension to return.
		  min_rank: Integer, minimum rank of shape.
		
		Returns:
		  The value of the `dim` dimension.
		
		Raises:
		  ValueError: if inputs don't have at least min_rank dimensions, or if the
		    first dimension value is not defined.
	**/
	static public function _get_dimension(shape:Dynamic, dim:Dynamic, ?min_rank:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Append an alias to the list of aliases of the tensor.
		
		Args:
		  tensor: A `Tensor`.
		  alias: String, to add to the list of aliases of the tensor.
		
		Returns:
		  The tensor with a new alias appended to its list of aliases.
	**/
	static public function append_tensor_alias(tensor:Dynamic, alias:Dynamic):Dynamic;
	/**
		Returns the channel dimension of shape, while checking it has min_rank.
		
		Args:
		  shape: A `TensorShape`.
		  data_format: `channels_first` or `channels_last`.
		  min_rank: Integer, minimum rank of shape.
		
		Returns:
		  The value of the first dimension.
		
		Raises:
		  ValueError: if inputs don't have at least min_rank dimensions, or if the
		    first dimension value is not defined.
	**/
	static public function channel_dimension(shape:Dynamic, data_format:Dynamic, ?min_rank:Dynamic):Dynamic;
	/**
		Add `Tensor` outputs tagged with alias to collections.
		
		It is useful to collect end-points or tags for summaries. Example of usage:
		
		logits = collect_named_outputs('end_points', 'inception_v3/logits', logits)
		assert 'inception_v3/logits' in logits.aliases
		
		Args:
		  collections: A collection or list of collections. If None skip collection.
		  alias: String to append to the list of aliases of outputs, for example,
		         'inception_v3/conv1'.
		  outputs: Tensor, an output tensor to collect
		
		Returns:
		  The outputs Tensor to allow inline call.
	**/
	static public function collect_named_outputs(collections:Dynamic, alias:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Returns value if value_or_tensor_or_var has a constant value.
		
		Args:
		  value_or_tensor_or_var: A value, a `Tensor` or a `Variable`.
		  dtype: Optional `tf.dtype`, if set it would check it has the right
		    dtype.
		
		Returns:
		  The constant value or None if it not constant.
		
		Raises:
		  ValueError: if value_or_tensor_or_var is None or the tensor_variable has the
		  wrong dtype.
	**/
	static public function constant_value(value_or_tensor_or_var:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Returns an OrderedDict of Tensors with their aliases as keys.
		
		Args:
		  collection: A collection.
		  clear_collection: When True, it clears the collection after converting to
		    OrderedDict.
		
		Returns:
		  An OrderedDict of {alias: tensor}
	**/
	static public function convert_collection_to_dict(collection:Dynamic, ?clear_collection:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Given a list of tensors, gather their aliases.
		
		Args:
		  tensors: A list of `Tensors`.
		
		Returns:
		  A list of strings with the aliases of all tensors.
	**/
	static public function gather_tensors_aliases(tensors:Dynamic):Dynamic;
	/**
		Get a list with the aliases of the input tensor.
		
		If the tensor does not have any alias, it would default to its its op.name or
		its name.
		
		Args:
		  tensor: A `Tensor`.
		
		Returns:
		  A list of strings with the aliases of the tensor.
	**/
	static public function get_tensor_aliases(tensor:Dynamic):Dynamic;
	static public function get_variable_collections(variables_collections:Dynamic, name:Dynamic):Dynamic;
	/**
		Returns the last dimension of shape while checking it has min_rank.
		
		Args:
		  shape: A `TensorShape`.
		  min_rank: Integer, minimum rank of shape.
		
		Returns:
		  The value of the last dimension.
		
		Raises:
		  ValueError: if inputs don't have at least min_rank dimensions, or if the
		    last dimension value is not defined.
	**/
	static public function last_dimension(shape:Dynamic, ?min_rank:Dynamic):Dynamic;
	/**
		Converts `value` to a sequence of `n` positive integers.
		
		`value` may be either be a sequence of values convertible to `int`, or a
		single value convertible to `int`, in which case the resulting integer is
		duplicated `n` times.  It may also be a TensorShape of rank `n`.
		
		Args:
		  n: Length of sequence to return.
		  value: Either a single value convertible to a positive `int` or an
		    `n`-element sequence of values convertible to a positive `int`.
		
		Returns:
		  A tuple of `n` positive integers.
		
		Raises:
		  TypeError: If `n` is not convertible to an integer.
		  ValueError: If `n` or `value` are invalid.
	**/
	static public function n_positive_integers(n:Dynamic, value:Dynamic):Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic, ?module:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return either fn1() or fn2() based on the boolean predicate/value `pred`.
		
		If `pred` is bool or has a constant value it would use `static_cond`,
		otherwise it would use `tf.cond`.
		
		Args:
		  pred: A scalar determining whether to return the result of `fn1` or `fn2`.
		  fn1: The callable to be performed if pred is true.
		  fn2: The callable to be performed if pred is false.
		  name: Optional name prefix when using tf.cond
		Returns:
		  Tensors returned by the call to either `fn1` or `fn2`.
	**/
	static public function smart_cond(pred:Dynamic, fn1:Dynamic, fn2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return either fn1() or fn2() based on the boolean value of `pred`.
		
		Same signature as `control_flow_ops.cond()` but requires pred to be a bool.
		
		Args:
		  pred: A value determining whether to return the result of `fn1` or `fn2`.
		  fn1: The callable to be performed if pred is true.
		  fn2: The callable to be performed if pred is false.
		
		Returns:
		  Tensors returned by the call to either `fn1` or `fn2`.
		
		Raises:
		  TypeError: if `fn1` or `fn2` is not callable.
	**/
	static public function static_cond(pred:Dynamic, fn1:Dynamic, fn2:Dynamic):Dynamic;
	/**
		Converts `int_or_tuple` to height, width.
		
		Several of the functions that follow accept arguments as either
		a tuple of 2 integers or a single integer.  A single integer
		indicates that the 2 values of the tuple are the same.
		
		This functions normalizes the input value by always returning a tuple.
		
		Args:
		  int_or_tuple: A list of 2 ints, a single int or a `TensorShape`.
		
		Returns:
		  A tuple with 2 values.
		
		Raises:
		  ValueError: If `int_or_tuple` it not well formed.
	**/
	static public function two_element_tuple(int_or_tuple:Dynamic):Dynamic;
}