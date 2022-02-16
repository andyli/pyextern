/* This file is generated, do not edit! */
package tensorflow.python.summary.summary_iterator;
@:pythonImport("tensorflow.python.summary.summary_iterator") extern class Summary_iterator_Module {
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
		Returns a iterator for reading `Event` protocol buffers from an event file.
		
		You can use this function to read events written to an event file. It returns
		a Python iterator that yields `Event` protocol buffers.
		
		Example: Print the contents of an events file.
		
		```python
		for e in tf.compat.v1.train.summary_iterator(path to events file):
		    print(e)
		```
		
		Example: Print selected summary values.
		
		```python
		# This example supposes that the events file contains summaries with a
		# summary value tag 'loss'.  These could have been added by calling
		# `add_summary()`, passing the output of a scalar summary op created with
		# with: `tf.compat.v1.summary.scalar('loss', loss_tensor)`.
		for e in tf.compat.v1.train.summary_iterator(path to events file):
		    for v in e.summary.value:
		        if v.tag == 'loss':
		            print(v.simple_value)
		```
		Example: Continuously check for new summary values.
		
		```python
		summaries = tf.compat.v1.train.summary_iterator(path to events file)
		while True:
		  for e in summaries:
		      for v in e.summary.value:
		          if v.tag == 'loss':
		              print(v.simple_value)
		  # Wait for a bit before checking the file for any new events
		  time.sleep(wait time)
		```
		
		See the protocol buffer definitions of
		[Event](https://www.tensorflow.org/code/tensorflow/core/util/event.proto)
		and
		[Summary](https://www.tensorflow.org/code/tensorflow/core/framework/summary.proto)
		for more information about their attributes.
		
		Args:
		  path: The path to an event file created by a `SummaryWriter`.
		
		Returns:
		  A iterator that yields `Event` protocol buffers
	**/
	static public function summary_iterator(path:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}