/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.dataframe.queues.feeding_functions;
@:pythonImport("tensorflow.contrib.learn.python.learn.dataframe.queues.feeding_functions") extern class Feeding_functions_Module {
	static public var HAS_PANDAS : Dynamic;
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
		Creates a queue filled from a numpy array or pandas `DataFrame`.
		
		  Returns a queue filled with the rows of the given array or `DataFrame`. In
		  the case of a pandas `DataFrame`, the first enqueued `Tensor` corresponds to
		  the index of the `DataFrame`. For numpy arrays, the first enqueued `Tensor`
		  contains the row number.
		
		Args:
		  data: a numpy `ndarray or` pandas `DataFrame` that will be read into the
		    queue.
		  capacity: the capacity of the queue.
		  shuffle: whether or not to shuffle the rows of the array.
		  min_after_dequeue: minimum number of elements that can remain in the queue
		  after a dequeue operation. Only used when `shuffle` is true. If not set,
		  defaults to `capacity` / 4.
		  num_threads: number of threads used for reading and enqueueing.
		  seed: used to seed shuffling and reader starting points.
		  name: a scope name identifying the data.
		  enqueue_size: the number of rows to enqueue per step.
		
		Returns:
		  A queue filled with the rows of the given array or `DataFrame`.
		
		Raises:
		  TypeError: `data` is not a Pandas `DataFrame` or a numpy `ndarray`.
	**/
	static public function enqueue_data(data:Dynamic, capacity:Dynamic, ?shuffle:Dynamic, ?min_after_dequeue:Dynamic, ?num_threads:Dynamic, ?seed:Dynamic, ?name:Dynamic, ?enqueue_size:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}