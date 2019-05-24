/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.segment_id_ops;
@:pythonImport("tensorflow.python.ops.ragged.segment_id_ops") extern class Segment_id_ops_Module {
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
	static public var print_function : Dynamic;
	/**
		Generates the segmentation corresponding to a RaggedTensor `row_splits`.
		
		Returns an integer vector `segment_ids`, where `segment_ids[i] == j` if
		`splits[j] <= i < splits[j+1]`.  Example:
		
		```python
		>>> ragged.row_splits_to_segment_ids([0, 3, 3, 5, 6, 9]).eval()
		[ 0 0 0 2 2 3 4 4 4 ]
		```
		
		Args:
		  splits: A sorted 1-D int64 Tensor.  `splits[0]` must be zero.
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A sorted 1-D int64 Tensor, with `shape=[splits[-1]]`
		
		Raises:
		  ValueError: If `splits` is invalid.
	**/
	static public function row_splits_to_segment_ids(splits:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates the RaggedTensor `row_splits` corresponding to a segmentation.
		
		Returns an integer vector `splits`, where `splits[0] = 0` and
		`splits[i] = splits[i-1] + count(segment_ids==i)`.  Example:
		
		```python
		>>> ragged.segment_ids_to_row_splits([0, 0, 0, 2, 2, 3, 4, 4, 4]).eval()
		[ 0 3 3 5 6 9 ]
		```
		
		Args:
		  segment_ids: A 1-D integer Tensor.
		  num_segments: A scalar integer indicating the number of segments.  Defaults
		    to `max(segment_ids) + 1` (or zero if `segment_ids` is empty).
		  name: A name prefix for the returned tensor (optional).
		
		Returns:
		  A sorted 1-D int64 Tensor, with `shape=[num_segments + 1]`.
	**/
	static public function segment_ids_to_row_splits(segment_ids:Dynamic, ?num_segments:Dynamic, ?name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}