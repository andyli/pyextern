/* This file is generated, do not edit! */
package tensorflow.python.ops.data_flow_ops;
@:pythonImport("tensorflow.python.ops.data_flow_ops") extern class Data_flow_ops_Module {
	static public function _BarrierInsertManyShape(op:Dynamic):Dynamic;
	/**
		Shape function for data_flow_ops.dynamic_partition.
	**/
	static public function _DynamicPartitionShape(op:Dynamic):Dynamic;
	/**
		Shape function for data_flow_ops.dynamic_stitch.
	**/
	static public function _DynamicStitchShape(op:Dynamic):Dynamic;
	/**
		Shape function for data_flow_ops._hash_table.
	**/
	static public function _HashTableShape(_:Dynamic):Dynamic;
	/**
		Shape function for data_flow_ops._initialize_table.
	**/
	static public function _InitializeLookupTableShape(op:Dynamic):Dynamic;
	/**
		Shape function for lookup_ops._initialize_table_from_text_file.
	**/
	static public function _InitializeTableFromTextFileShape(op:Dynamic):Dynamic;
	/**
		Shape function for data_flow_ops._lookup_table_export_values.
	**/
	static public function _LookupTableExportShape(op:Dynamic):Dynamic;
	/**
		Shape function for data_flow_ops._lookup_table_find.
	**/
	static public function _LookupTableFindShape(op:Dynamic):Dynamic;
	/**
		Shape function for data_flow_ops._lookup_table_insert.
	**/
	static public function _LookupTableInsertShape(op:Dynamic):Dynamic;
	/**
		Shape function for data_flow_ops._lookup_table_find.
	**/
	static public function _LookupTableSizeShape(op:Dynamic):Dynamic;
	/**
		Shape function for ops that take a scalar and produce no outputs.
	**/
	static public function _ScalarToVoidShape(op:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _as_name_list(names:Dynamic, dtypes:Dynamic):Dynamic;
	/**
		Convert shapes to a list of tuples of int (or None).
	**/
	static public function _as_shape_list(shapes:Dynamic, dtypes:Dynamic, ?unknown_dim_allowed:Dynamic, ?unknown_rank_allowed:Dynamic):Dynamic;
	/**
		Convert dtypes to a list of types.
	**/
	static public function _as_type_list(dtypes:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Partitions `data` into `num_partitions` tensors using indices from `partitions`.
		
		For each index tuple `js` of size `partitions.ndim`, the slice `data[js, ...]`
		becomes part of `outputs[partitions[js]]`.  The slices with `partitions[js] = i`
		are placed in `outputs[i]` in lexicographic order of `js`, and the first
		dimension of `outputs[i]` is the number of entries in `partitions` equal to `i`.
		In detail,
		
		    outputs[i].shape = [sum(partitions == i)] + data.shape[partitions.ndim:]
		
		    outputs[i] = pack([data[js, ...] for js if partitions[js] == i])
		
		`data.shape` must start with `partitions.shape`.
		
		For example:
		
		    # Scalar partitions
		    partitions = 1
		    num_partitions = 2
		    data = [10, 20]
		    outputs[0] = []  # Empty with shape [0, 2]
		    outputs[1] = [[10, 20]]
		
		    # Vector partitions
		    partitions = [0, 0, 1, 1, 0]
		    num_partitions = 2
		    data = [10, 20, 30, 40, 50]
		    outputs[0] = [10, 20, 50]
		    outputs[1] = [30, 40]
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="../../images/DynamicPartition.png" alt>
		</div>
		
		Args:
		  data: A `Tensor`.
		  partitions: A `Tensor` of type `int32`.
		    Any shape.  Indices in the range `[0, num_partitions)`.
		  num_partitions: An `int` that is `>= 1`.
		    The number of partitions to output.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `num_partitions` `Tensor` objects of the same type as data.
	**/
	static public function dynamic_partition(data:Dynamic, partitions:Dynamic, num_partitions:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Interleave the values from the `data` tensors into a single tensor.
		
		Builds a merged tensor such that
		
		    merged[indices[m][i, ..., j], ...] = data[m][i, ..., j, ...]
		
		For example, if each `indices[m]` is scalar or vector, we have
		
		    # Scalar indices
		    merged[indices[m], ...] = data[m][...]
		
		    # Vector indices
		    merged[indices[m][i], ...] = data[m][i, ...]
		
		Each `data[i].shape` must start with the corresponding `indices[i].shape`,
		and the rest of `data[i].shape` must be constant w.r.t. `i`.  That is, we
		must have `data[i].shape = indices[i].shape + constant`.  In terms of this
		`constant`, the output shape is
		
		    merged.shape = [max(indices)] + constant
		
		Values are merged in order, so if an index appears in both `indices[m][i]` and
		`indices[n][j]` for `(m,i) < (n,j)` the slice `data[n][j]` will appear in the
		merged result.
		
		For example:
		
		    indices[0] = 6
		    indices[1] = [4, 1]
		    indices[2] = [[5, 2], [0, 3]]
		    data[0] = [61, 62]
		    data[1] = [[41, 42], [11, 12]]
		    data[2] = [[[51, 52], [21, 22]], [[1, 2], [31, 32]]]
		    merged = [[1, 2], [11, 12], [21, 22], [31, 32], [41, 42],
		              [51, 52], [61, 62]]
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="../../images/DynamicStitch.png" alt>
		</div>
		
		Args:
		  indices: A list of at least 2 `Tensor` objects of type `int32`.
		  data: A list with the same number of `Tensor` objects as `indices` of `Tensor` objects of the same type.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`.
	**/
	static public function dynamic_stitch(indices:Dynamic, data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns an Op that initializes all tables of the default graph.
		
		Args:
		  name: Optional name for the initialization op.
		
		Returns:
		  An Op that initializes all tables.  Note that if there are
		  not tables the returned Op is a NoOp.
	**/
	static public function initialize_all_tables(?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}