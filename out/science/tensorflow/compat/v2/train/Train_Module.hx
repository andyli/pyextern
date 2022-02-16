/* This file is generated, do not edit! */
package tensorflow.compat.v2.train;
@:pythonImport("tensorflow.compat.v2.train") extern class Train_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Continuously yield new checkpoint files as they appear.
		
		The iterator only checks for new checkpoints when control flow has been
		reverted to it. This means it can miss checkpoints if your code takes longer
		to run between iterations than `min_interval_secs` or the interval at which
		new checkpoints are written.
		
		The `timeout` argument is the maximum number of seconds to block waiting for
		a new checkpoint.  It is used in combination with the `timeout_fn` as
		follows:
		
		* If the timeout expires and no `timeout_fn` was specified, the iterator
		  stops yielding.
		* If a `timeout_fn` was specified, that function is called and if it returns
		  a true boolean value the iterator stops yielding.
		* If the function returns a false boolean value then the iterator resumes the
		  wait for new checkpoints.  At this point the timeout logic applies again.
		
		This behavior gives control to callers on what to do if checkpoints do not
		come fast enough or stop being generated.  For example, if callers have a way
		to detect that the training has stopped and know that no new checkpoints
		will be generated, they can provide a `timeout_fn` that returns `True` when
		the training has stopped.  If they know that the training is still going on
		they return `False` instead.
		
		Args:
		  checkpoint_dir: The directory in which checkpoints are saved.
		  min_interval_secs: The minimum number of seconds between yielding
		    checkpoints.
		  timeout: The maximum number of seconds to wait between checkpoints. If left
		    as `None`, then the process will wait indefinitely.
		  timeout_fn: Optional function to call after a timeout.  If the function
		    returns True, then it means that no new checkpoints will be generated and
		    the iterator will exit.  The function is called with no arguments.
		
		Yields:
		  String paths to latest checkpoint files as they arrive.
	**/
	static public function checkpoints_iterator(checkpoint_dir:Dynamic, ?min_interval_secs:Dynamic, ?timeout:Dynamic, ?timeout_fn:Dynamic):Dynamic;
	/**
		Returns CheckpointState proto from the "checkpoint" file.
		
		If the "checkpoint" file contains a valid CheckpointState
		proto, returns it.
		
		Args:
		  checkpoint_dir: The directory of checkpoints.
		  latest_filename: Optional name of the checkpoint file.  Default to
		    'checkpoint'.
		
		Returns:
		  A CheckpointState if the state was available, None
		  otherwise.
		
		Raises:
		  ValueError: if the checkpoint read doesn't have model_checkpoint_path set.
	**/
	static public function get_checkpoint_state(checkpoint_dir:Dynamic, ?latest_filename:Dynamic):Dynamic;
	/**
		Finds the filename of latest saved checkpoint file.
		
		Gets the checkpoint state given the provided checkpoint_dir and looks for a
		corresponding TensorFlow 2 (preferred) or TensorFlow 1.x checkpoint path.
		The latest_filename argument is only applicable if you are saving checkpoint
		using `v1.train.Saver.save`
		
		
		See the [Training Checkpoints
		Guide](https://www.tensorflow.org/guide/checkpoint) for more details and
		examples.`
		
		Args:
		  checkpoint_dir: Directory where the variables were saved.
		  latest_filename: Optional name for the protocol buffer file that
		    contains the list of most recent checkpoint filenames.
		    See the corresponding argument to `v1.train.Saver.save`.
		
		Returns:
		  The full path to the latest checkpoint or `None` if no checkpoint was found.
	**/
	static public function latest_checkpoint(checkpoint_dir:Dynamic, ?latest_filename:Dynamic):Dynamic;
	/**
		Lists the checkpoint keys and shapes of variables in a checkpoint.
		
		Checkpoint keys are paths in a checkpoint graph.
		
		Example usage:
		
		  ```python
		import tensorflow as tf
		import os
		ckpt_directory = "/tmp/training_checkpoints/ckpt"
		ckpt = tf.train.Checkpoint(optimizer=optimizer, model=model)
		manager = tf.train.CheckpointManager(ckpt, ckpt_directory, max_to_keep=3)
		train_and_checkpoint(model, manager)
		tf.train.list_variables(manager.latest_checkpoint)
		```
		
		Args:
		  ckpt_dir_or_file: Directory with checkpoints file or path to checkpoint.
		
		Returns:
		  List of tuples `(key, shape)`.
	**/
	static public function list_variables(ckpt_dir_or_file:Dynamic):Dynamic;
	/**
		Returns `CheckpointReader` for checkpoint found in `ckpt_dir_or_file`.
		
		If `ckpt_dir_or_file` resolves to a directory with multiple checkpoints,
		reader for the latest checkpoint is returned.
		
		Args:
		  ckpt_dir_or_file: Directory with checkpoints file or path to checkpoint
		    file.
		
		Returns:
		  `CheckpointReader` object.
		
		Raises:
		  ValueError: If `ckpt_dir_or_file` resolves to a directory with no
		    checkpoints.
	**/
	static public function load_checkpoint(ckpt_dir_or_file:Dynamic):Dynamic;
	/**
		Returns the tensor value of the given variable in the checkpoint.
		
		Args:
		  ckpt_dir_or_file: Directory with checkpoints file or path to checkpoint.
		  name: Name of the variable to return.
		
		Returns:
		  A numpy `ndarray` with a copy of the value of this variable.
	**/
	static public function load_variable(ckpt_dir_or_file:Dynamic, name:Dynamic):Dynamic;
}