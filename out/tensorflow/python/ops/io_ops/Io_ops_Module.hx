/* This file is generated, do not edit! */
package tensorflow.python.ops.io_ops;
@:pythonImport("tensorflow.python.ops.io_ops") extern class Io_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Restore a tensor slice from a set of files with a given pattern.
		
		Example usage:
		  RestoreSlice("/foo/bar-?????-of-?????", "w", "10 10 0,2:-", DT_FLOAT)
		
		Args:
		  file_pattern: the file pattern used to match a set of checkpoint files.
		  tensor_name: the name of the tensor to restore.
		  shape_and_slice: the shape-and-slice spec of the slice.
		  tensor_type: the type of the tensor to restore.
		  name: string.  Optional name for the op.
		  preferred_shard: Int. Optional shard to open first in the checkpoint file.
		
		Returns:
		  A tensor of type "tensor_type".
	**/
	static public function _restore_slice(file_pattern:Dynamic, tensor_name:Dynamic, shape_and_slice:Dynamic, tensor_type:Dynamic, ?name:Dynamic, ?preferred_shard:Dynamic):Dynamic;
	/**
		Save a list of tensors to a file with given names.
		
		Example usage without slice info:
		  Save("/foo/bar", ["w", "b"], [w, b])
		
		Example usage with slices:
		  Save("/foo/bar", ["w", "w"], [slice0, slice1],
		       tensor_slices=["4 10 0,2:-", "4 10 2,2:-"])
		
		Args:
		  filename: the file name of the sstable.
		  tensor_names: a list of strings.
		  tensors: the list of tensors to be saved.
		  tensor_slices: Optional list of strings to specify the shape and slices of
		    a larger virtual tensor that each tensor is a part of.  If not specified
		    each tensor is saved as a full slice.
		  name: string.  Optional name for the op.
		
		Requires:
		  The length of tensors should match the size of tensor_names and of
		  tensor_slices.
		
		Returns:
		  An Operation that saves the tensors.
	**/
	static public function _save(filename:Dynamic, tensor_names:Dynamic, tensors:Dynamic, ?tensor_slices:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns the set of files matching one or more glob patterns.
		
		Note that this routine only supports wildcard characters in the
		basename portion of the pattern, not in the directory portion.
		
		Args:
		  pattern: A `Tensor` of type `string`.
		    Shell wildcard pattern(s). Scalar or vector of type string.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`. A vector of matching filenames.
	**/
	static public function matching_files(pattern:Dynamic, ?name:Dynamic):Dynamic;
	/**
		V2 format specific: merges the metadata files of sharded checkpoints.  The
		
		result is one logical checkpoint, with one physical metadata file and renamed
		data files.
		
		Intended for "grouping" multiple checkpoints in a sharded checkpoint setup.
		
		If delete_old_dirs is true, attempts to delete recursively the dirname of each
		path in the input checkpoint_prefixes.  This is useful when those paths are non
		user-facing temporary locations.
		
		Args:
		  checkpoint_prefixes: A `Tensor` of type `string`.
		    prefixes of V2 checkpoints to merge.
		  destination_prefix: A `Tensor` of type `string`.
		    scalar.  The desired final prefix.  Allowed to be the same
		    as one of the checkpoint_prefixes.
		  delete_old_dirs: An optional `bool`. Defaults to `True`. see above.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function merge_v2_checkpoints(checkpoint_prefixes:Dynamic, destination_prefix:Dynamic, ?delete_old_dirs:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Reads and outputs the entire contents of the input filename.
		
		Args:
		  filename: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function read_file(filename:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Restores tensors from a V2 checkpoint.
		
		For backward compatibility with the V1 format, this Op currently allows
		restoring from a V1 checkpoint as well:
		  - This Op first attempts to find the V2 index file pointed to by "prefix", and
		    if found proceed to read it as a V2 checkpoint;
		  - Otherwise the V1 read path is invoked.
		Relying on this behavior is not recommended, as the ability to fall back to read
		V1 might be deprecated and eventually removed.
		
		By default, restores the named tensors in full.  If the caller wishes to restore
		specific slices of stored tensors, "shape_and_slices" should be non-empty
		strings and correspondingly well-formed.
		
		Callers must ensure all the named tensors are indeed stored in the checkpoint.
		
		Args:
		  prefix: A `Tensor` of type `string`.
		    Must have a single element.  The prefix of a V2 checkpoint.
		  tensor_names: A `Tensor` of type `string`.
		    shape {N}.  The names of the tensors to be restored.
		  shape_and_slices: A `Tensor` of type `string`.
		    shape {N}.  The slice specs of the tensors to be restored.
		    Empty strings indicate that they are non-partitioned tensors.
		  dtypes: A list of `tf.DTypes` that has length `>= 1`.
		    shape {N}.  The list of expected dtype for the tensors.  Must match
		    those stored in the checkpoint.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `dtypes`.
		  shape {N}.  The restored tensors, whose shapes are read from the
		  checkpoint directly.
	**/
	static public function restore_v2(prefix:Dynamic, tensor_names:Dynamic, shape_and_slices:Dynamic, dtypes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Saves tensors in V2 checkpoint format.
		
		By default, saves the named tensors in full.  If the caller wishes to save
		specific slices of full tensors, "shape_and_slices" should be non-empty strings
		and correspondingly well-formed.
		
		Args:
		  prefix: A `Tensor` of type `string`.
		    Must have a single element. The prefix of the V2 checkpoint to which we
		    write the tensors.
		  tensor_names: A `Tensor` of type `string`.
		    shape {N}. The names of the tensors to be saved.
		  shape_and_slices: A `Tensor` of type `string`.
		    shape {N}.  The slice specs of the tensors to be saved.
		    Empty strings indicate that they are non-partitioned tensors.
		  tensors: A list of `Tensor` objects. `N` tensors to save.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function save_v2(prefix:Dynamic, tensor_names:Dynamic, shape_and_slices:Dynamic, tensors:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Writes contents to the file at input filename. Creates file if not existing.
		
		Args:
		  filename: A `Tensor` of type `string`.
		    scalar. The name of the file to which we write the contents.
		  contents: A `Tensor` of type `string`.
		    scalar. The content to be written to the output file.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function write_file(filename:Dynamic, contents:Dynamic, ?name:Dynamic):Dynamic;
}