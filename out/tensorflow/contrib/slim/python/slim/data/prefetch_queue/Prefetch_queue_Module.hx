/* This file is generated, do not edit! */
package tensorflow.contrib.slim.python.slim.data.prefetch_queue;
@:pythonImport("tensorflow.contrib.slim.python.slim.data.prefetch_queue") extern class Prefetch_queue_Module {
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
		Creates a queue to prefetech tensors from `tensors`.
		
		A queue runner for enqueing tensors into the prefetch_queue is automatically
		added to the TF QueueRunners collection.
		
		Example:
		This is for example useful to pre-assemble input batches read with
		`tf.train.batch()` and enqueue the pre-assembled batches.  Ops that dequeue
		from the pre-assembled queue will not pay the cost of assembling the batch.
		
		images, labels = tf.train.batch([image, label], batch_size=32, num_threads=4)
		batch_queue = prefetch_queue([images, labels])
		images, labels = batch_queue.dequeue()
		logits = Net(images)
		loss = Loss(logits, labels)
		
		Args:
		  tensors: A list or dictionary of `Tensors` to enqueue in the buffer.
		  capacity: An integer. The maximum number of elements in the queue.
		  shared_name: (optional). If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A queue from which you can dequeue tensors with the same type and shape
		  as `tensors`.
	**/
	static public function prefetch_queue(tensors:Dynamic, ?capacity:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}