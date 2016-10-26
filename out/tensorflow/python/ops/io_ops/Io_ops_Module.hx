/* This file is generated, do not edit! */
package tensorflow.python.ops.io_ops;
@:pythonImport("tensorflow.python.ops.io_ops") extern class Io_ops_Module {
	/**
		Shape function for the MatchingFiles op.
	**/
	static public function _MatchingFilesShape(op:Dynamic):Dynamic;
	/**
		Shape function for the ReadFile op.
	**/
	static public function _ReadFileShape(op:Dynamic):Dynamic;
	/**
		Shape function for the ReaderBase.Read op.
	**/
	static public function _ReaderReadShape(op:Dynamic):Dynamic;
	/**
		Shape function for the ReaderBase.ReadUpTo op.
	**/
	static public function _ReaderReadUpToShape(_:Dynamic):Dynamic;
	/**
		Shape function for the ReaderBase.Reset op.
	**/
	static public function _ReaderResetShape(op:Dynamic):Dynamic;
	/**
		Shape function for the ReaderBase.Restore op.
	**/
	static public function _ReaderRestoreStateShape(op:Dynamic):Dynamic;
	/**
		Shape function for ops that transform a reader to a scalar.
	**/
	static public function _ReaderScalarShape(op:Dynamic):Dynamic;
	/**
		Shape function for Restore op.
	**/
	static public function _RestoreShape(op:Dynamic):Dynamic;
	/**
		Shape function for RestoreSlice op.
	**/
	static public function _RestoreSliceShape(op:Dynamic):Dynamic;
	/**
		Shape function for Save op.
	**/
	static public function _SaveShape(op:Dynamic):Dynamic;
	/**
		Shape function for SaveSlices op.
	**/
	static public function _SaveSlicesShape(op:Dynamic):Dynamic;
	/**
		Shape function for ShardedFilename op.
	**/
	static public function _ShardedFilenameShape(op:Dynamic):Dynamic;
	/**
		Shape function for ShardedFilespec op.
	**/
	static public function _ShardedFilespecShape(op:Dynamic):Dynamic;
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
		Returns the set of files matching a pattern.
		
		Note that this routine only supports wildcard characters in the
		basename portion of the pattern, not in the directory portion.
		
		Args:
		  pattern: A `Tensor` of type `string`. A (scalar) shell wildcard pattern.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`. A vector of matching filenames.
	**/
	static public function matching_files(pattern:Dynamic, ?name:Dynamic):Dynamic;
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
}