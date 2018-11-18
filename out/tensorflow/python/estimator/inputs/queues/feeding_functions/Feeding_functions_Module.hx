/* This file is generated, do not edit! */
package tensorflow.python.estimator.inputs.queues.feeding_functions;
@:pythonImport("tensorflow.python.estimator.inputs.queues.feeding_functions") extern class Feeding_functions_Module {
	static public var HAS_PANDAS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Creates a queue filled from a numpy array or pandas `DataFrame`.
		
		  Returns a queue filled with the rows of the given (`OrderedDict` of) array
		  or `DataFrame`. In the case of a pandas `DataFrame`, the first enqueued
		  `Tensor` corresponds to the index of the `DataFrame`. For (`OrderedDict` of)
		  numpy arrays, the first enqueued `Tensor` contains the row number.
		
		Args:
		  data: a numpy `ndarray`, `OrderedDict` of numpy arrays, or a generator
		     yielding `dict`s of numpy arrays or pandas `DataFrame` that will be read
		     into the queue.
		  capacity: the capacity of the queue.
		  shuffle: whether or not to shuffle the rows of the array.
		  min_after_dequeue: minimum number of elements that can remain in the queue
		  after a dequeue operation. Only used when `shuffle` is true. If not set,
		  defaults to `capacity` / 4.
		  num_threads: number of threads used for reading and enqueueing.
		  seed: used to seed shuffling and reader starting points.
		  name: a scope name identifying the data.
		  enqueue_size: the number of rows to enqueue per step.
		  num_epochs: limit enqueuing to a specified number of epochs, if provided.
		  pad_value: default value for dynamic padding of data samples, if provided.
		
		Returns:
		  A queue filled with the rows of the given (`OrderedDict` of) array or
		    `DataFrame`.
		
		Raises:
		  TypeError: `data` is not a Pandas `DataFrame`, an `OrderedDict` of numpy
		    arrays, a numpy `ndarray`, or a generator producing these.
		  NotImplementedError: padding and shuffling data at the same time.
		  NotImplementedError: padding usage with non generator data type.
	**/
	static public function _enqueue_data(data:Dynamic, capacity:Dynamic, ?shuffle:Dynamic, ?min_after_dequeue:Dynamic, ?num_threads:Dynamic, ?seed:Dynamic, ?name:Dynamic, ?enqueue_size:Dynamic, ?num_epochs:Dynamic, ?pad_value:Dynamic):Dynamic;
	/**
		Recursively fills padded arr with elements from seq.
		
		If length of seq is less than arr padded length, fillvalue used.
		Args:
		  arr: Padded tensor of shape [batch_size, ..., max_padded_dim_len].
		  seq: Non-padded list of data samples of shape
		    [batch_size, ..., padded_dim(None)]
		  fillvalue: Default fillvalue to use.
	**/
	static public function _fill_array(arr:Dynamic, seq:Dynamic, ?fillvalue:Dynamic):Dynamic;
	/**
		Returns the integer indices for next batch.
		
		If total epochs is not None and current epoch is the final epoch, the end
		index of the next batch should not exceed the `epoch_end` (i.e., the final
		batch might not have size `batch_size` to avoid overshooting the last epoch).
		
		Args:
		  batch_indices_start: Integer, the index to start next batch.
		  batch_size: Integer, size of batches to return.
		  epoch_end: Integer, the end index of the epoch. The epoch could start from a
		    random position, so `epoch_end` provides the end index for that.
		  array_length: Integer, the length of the array.
		  current_epoch: Integer, the epoch number has been emitted.
		  total_epochs: Integer or `None`, the total number of epochs to emit. If
		    `None` will run forever.
		
		Returns:
		  A tuple of a list with integer indices for next batch and `current_epoch`
		  value after the next batch.
		
		Raises:
		  OutOfRangeError if `current_epoch` is not less than `total_epochs`.
	**/
	static public function _get_integer_indices_for_next_batch(batch_indices_start:Dynamic, batch_size:Dynamic, epoch_end:Dynamic, array_length:Dynamic, current_epoch:Dynamic, total_epochs:Dynamic):Dynamic;
	/**
		Returns padded batch.
		
		Args:
		  batch_key_item: List of data samples of any type with shape
		    [batch_size, ..., padded_dim(None)].
		  fillvalue: Default fillvalue to use.
		
		Returns:
		  Padded with zeros tensor of same type and shape
		    [batch_size, ..., max_padded_dim_len].
		
		Raises:
		  ValueError if data samples have different shapes (except last padded dim).
	**/
	static public function _pad_if_needed(batch_key_item:Dynamic, ?fillvalue:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}