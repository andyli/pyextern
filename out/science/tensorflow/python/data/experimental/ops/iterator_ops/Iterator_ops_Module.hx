/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.iterator_ops;
@:pythonImport("tensorflow.python.data.experimental.ops.iterator_ops") extern class Iterator_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _convert_external_state_policy_to_enum(external_state_policy:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns a SaveableObject for saving/restoring iterator state using Saver. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		`make_saveable_from_iterator` is intended for use in TF1 with `tf.compat.v1.Saver`. In TF2, use `tf.train.Checkpoint` instead.
		
		Args:
		  iterator: Iterator.
		  external_state_policy: A string that identifies how to handle input
		    pipelines that depend on external state. Possible values are
		    'ignore': The external state is silently ignored.
		    'warn': The external state is ignored, logging a warning.
		    'fail': The operation fails upon encountering external state.
		    By default we set it to 'fail'.
		
		Returns:
		  A SaveableObject for saving/restoring iterator state using Saver.
		
		Raises:
		  ValueError: If iterator does not support checkpointing.
		  ValueError: If `external_state_policy` is not one of 'warn', 'ignore' or
		    'fail'.
		
		For example:
		
		```python
		with tf.Graph().as_default():
		  ds = tf.data.Dataset.range(10)
		  iterator = ds.make_initializable_iterator()
		  # Build the iterator SaveableObject.
		  saveable_obj = tf.data.experimental.make_saveable_from_iterator(iterator)
		  # Add the SaveableObject to the SAVEABLE_OBJECTS collection so
		  # it can be automatically saved using Saver.
		  tf.compat.v1.add_to_collection(tf.GraphKeys.SAVEABLE_OBJECTS, saveable_obj)
		  saver = tf.compat.v1.train.Saver()
		
		  while continue_training:
		    ... Perform training ...
		    if should_save_checkpoint:
		      saver.save()
		```
		
		Note: When restoring the iterator, the existing iterator state is completely
		discarded. This means that any changes you may have made to the Dataset
		graph will be discarded as well! This includes the new Dataset graph
		that you may have built during validation. So, while running validation,
		make sure to run the initializer for the validation input pipeline after
		restoring the checkpoint.
		
		Note: Not all iterators support checkpointing yet. Attempting to save the
		state of an unsupported iterator will throw an error.
	**/
	static public function make_saveable_from_iterator(iterator:Dynamic, ?external_state_policy:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}