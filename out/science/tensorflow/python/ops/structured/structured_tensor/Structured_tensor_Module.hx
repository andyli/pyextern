/* This file is generated, do not edit! */
package tensorflow.python.ops.structured.structured_tensor;
@:pythonImport("tensorflow.python.ops.structured.structured_tensor") extern class Structured_tensor_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _FIELD_NAME_RE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Converts `value` to a Tensor, RaggedTensor, or StructuredTensor.
	**/
	static public function _convert_to_structured_field_value(value:Dynamic):Dynamic;
	/**
		Replaces dictionaries zeros in a pylist.
	**/
	static public function _dicts_to_zeros(pyval:Dynamic):Dynamic;
	/**
		Returns a python list of empty dicts from the given row partitions.
		
		Args:
		  row_partitions: The row-partitions describing the ragged shape of the
		    result.
		  nrows: The number of rows in the outermost row-partition.  (Or if
		    `len(row_partitions)==0`, then the number of empty dicts to return.)
		
		Returns:
		  A nested python list whose leaves (if any) are empty python dicts.
	**/
	static public function _empty_dict_pylist_from_row_partitions(row_partitions:Dynamic, nrows:Dynamic):Dynamic;
	/**
		Return a consistent dtype for fields, nrows, & row_partitions.
	**/
	static public function _find_shape_dtype(fields:Dynamic, nrows:Dynamic, row_partitions:Dynamic):Dynamic;
	/**
		Merges `outer_axis...inner_axis` of `value` into a single dimension.
	**/
	static public function _merge_dims(value:Dynamic, outer_axis:Dynamic, inner_axis:Dynamic):Dynamic;
	/**
		Merges outer_axis...inner_axis into a single dimension.
		
		If outer == inner, this is a NOOP. If inner < outer, then this fials.
		If inner >= source.shape.rank, then the behavior is undefined.
		
		Args:
		  source: a tensor, ragged tensor, or structured tensor.
		  outer: a python int, indicating the first dimension to compress (must be
		    nonnegative).
		  inner: a python int, indicating the first dimension to keep (of the tail)
		    (must be nonnegative).
		
		Returns:
		  source with outer_axis...inner_axis merged into a single dimension.
	**/
	static public function _merge_dims_generic(source:Dynamic, outer:Dynamic, inner:Dynamic):Dynamic;
	/**
		Merges `nrows` with `nrows(value)`.
		
		Checks that `value` has the expected number of rows (`nrows`), and returns
		`nrows`.  If `validate` is true, then add validation ops that check that
		the `nrows` values match.
		
		Args:
		  nrows: scalar integer Tensor.
		  static_nrows: tf.Dimension: static value of nrows, if known.
		  value: Tensor or RaggedTensor or StructuredTensor
		  dtype: dtype for `nrows`.
		  validate: bool -- whether to add validation ops.
		
		Returns:
		  A tuple `(nrows, static_nrows)`.
	**/
	static public function _merge_nrows(nrows:Dynamic, static_nrows:Dynamic, value:Dynamic, dtype:Dynamic, validate:Dynamic):Dynamic;
	/**
		Merges `row_partitions` with `row_partitions(value)`.
	**/
	static public function _merge_row_partitions(row_partitions:Dynamic, value:Dynamic, rank:Dynamic, dtype:Dynamic, validate:Dynamic):Dynamic;
	/**
		FieldName can be given also as string, this normalizes it to a tuple.
	**/
	static public function _normalize_field_name_to_tuple(name:Dynamic):Dynamic;
	/**
		Partitions the outer dimension of `value` using `row_partitions`.
		
		Examples:
		
		  >>> partition = RowPartition.from_row_lengths([2, 0, 1])
		  >>> _partition_outer_dimension(tf.constant([1, 2, 3]), partition)
		  <tf.RaggedTensor [[1, 2], [], [3]]>
		
		  >>> struct_value = StructuredTensor.from_pyval(
		  ...     [{'x': 1}, {'x': 2}, {'x': 3}])
		  >>> _partition_outer_dimension(struct_value, partition)
		  <StructuredTensor(
		    fields={
		      "x": <tf.RaggedTensor [[1, 2], [], [3]]>},
		    shape=(3, None))>
		
		Args:
		  value: Tensor, RaggedTensor, or StructuredTensor
		  row_partition: RowPartition
		
		Returns:
		  A value with the same type as `value`, where
		  `result.rank = value.rank + 1`.
	**/
	static public function _partition_outer_dimension(value:Dynamic, row_partition:Dynamic):Dynamic;
	/**
		Find the max depth for nested empty lists.
		
		Args:
		  pyval: A nested python list.
		
		Returns:
		  The maximum depth of empty lists in `pyval`, or None if `pyval` contains
		  anything other than nested empty lists.
	**/
	static public function _pyval_empty_list_depth(pyval:Dynamic):Dynamic;
	/**
		Regroup each field (k, v) from dict-of-list to list-of-dict.
		
		Given a "field-major" encoding of the StructuredTensor (which maps each key to
		a single nested list containing the values for all structs), return a
		corresponding "node-major" encoding, consisting of a nested list of dicts.
		
		Args:
		  keys: The field names (list of string).  Must not be empty.
		  values: The field values (list of python values).  Must have the same length
		    as `keys`.
		  depth: The list depth at which dictionaries should be created.
		
		Returns:
		  A nested list of dict, with depth `depth`.
	**/
	static public function _pyval_field_major_to_node_major(keys:Dynamic, values:Dynamic, depth:Dynamic):Dynamic;
	/**
		Finds the keys & depth of nested dictionaries in `pyval`.
		
		Args:
		  pyval: A nested structure of lists, tuples, and dictionaries.
		  keys: (output parameter) A set, which will be updated with any keys that are
		    found in the nested dictionaries.
		
		Returns:
		  The nesting depth of dictionaries in `pyval`, or `None` if `pyval` does
		  not contain any dictionaries.
		Raises:
		  ValueError: If dictionaries have inconsistent depth.
	**/
	static public function _pyval_find_struct_keys_and_depth(pyval:Dynamic, keys:Dynamic):Dynamic;
	/**
		Append the field values from `pyval` to `fields`.
		
		Args:
		  pyval: A python `dict`, or nested list/tuple of `dict`, whose value(s)
		    should be appended to `fields`.
		  fields: A dictionary mapping string keys to field values.  Field values
		    extracted from `pyval` are appended to this dictionary's values.
		  depth: The depth at which `pyval` should be appended to the field values.
	**/
	static public function _pyval_update_fields(pyval:Dynamic, fields:Dynamic, depth:Dynamic):Dynamic;
	/**
		Updates `value` to use `new_partitions` as its (outer) row partitions.
		
		This is used to ensure that all fields in a `StructuredTensor` use identical
		`RowPartition` objects for the shared dimensions.  In particular,
		`StructuredTensor.from_fields` first merges all of the row partitions from
		any fields, and then replaces the outer row partitions of all fields with
		the merged row partitions (using this function).
		
		Args:
		  value: A `Tensor`, `RaggedTensor`, or `StructuredTensor`.
		  new_partitions: A list of row-partitions that should be used by `value`.
		    Must be equivalent to `value`'s current row partitions.
		
		Returns:
		  A value that is equivalent to `value`, where outer row partitions have been
		  replaced by `new_partitions`.
	**/
	static public function _replace_row_partitions(value:Dynamic, new_partitions:Dynamic):Dynamic;
	/**
		Returns the row partitions for a tf.RaggedTensor.
	**/
	static public function _row_partitions_for_ragged_tensor(value:Dynamic, rank:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Returns the row partitions for a tf.Tensor.
	**/
	static public function _row_partitions_for_tensor(value:Dynamic, rank:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Returns row partitions for the given shape Tensor.
		
		Args:
		  shape: A vector describing a uniform shape.
		  rank: The number of dimensions to generate row partitions for
		
		Returns:
		  A list of (rank-1) `RowPartition`s with uniform row length.
	**/
	static public function _row_partitions_for_uniform_shape(shape:Dynamic, rank:Dynamic):Dynamic;
	static public var _structured_tensor_factory_key : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}