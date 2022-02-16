/* This file is generated, do not edit! */
package tensorflow.python.training.summary_io;
@:pythonImport("tensorflow.python.training.summary_io") extern class Summary_io_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
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
}