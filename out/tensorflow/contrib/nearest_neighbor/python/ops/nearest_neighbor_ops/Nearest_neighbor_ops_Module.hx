/* This file is generated, do not edit! */
package tensorflow.contrib.nearest_neighbor.python.ops.nearest_neighbor_ops;
@:pythonImport("tensorflow.contrib.nearest_neighbor.python.ops.nearest_neighbor_ops") extern class Nearest_neighbor_ops_Module {
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
		Computes probes for the hyperplane hash.
		
		The op supports multiprobing, i.e., the number of requested probes can be
		larger than the number of tables. In that case, the same table can be probed
		multiple times.
		
		The first `num_tables` probes are always the primary hashes for each table.
		
		Args:
		  point_hyperplane_product: a matrix of inner products between the hyperplanes
		    and the points to be hashed. These values should not be quantized so that
		    we can correctly compute the probing sequence. The expected shape is
		    `batch_size` times `num_tables * num_hyperplanes_per_table`, i.e., each
		    element of the batch corresponds to one row of the matrix.
		  num_tables: the number of tables to compute probes for.
		  num_hyperplanes_per_table: the number of hyperplanes per table.
		  num_probes: the requested number of probes per table.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  probes: the output matrix of probes. Size `batch_size` times `num_probes`.
		  table_ids: the output matrix of tables ids. Size `batch_size` times
		    `num_probes`.
	**/
	static public function hyperplane_lsh_probes(point_hyperplane_product:Dynamic, num_tables:Dynamic, num_hyperplanes_per_table:Dynamic, num_probes:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}