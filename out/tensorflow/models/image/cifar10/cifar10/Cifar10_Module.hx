/* This file is generated, do not edit! */
package tensorflow.models.image.cifar10.cifar10;
@:pythonImport("tensorflow.models.image.cifar10.cifar10") extern class Cifar10_Module {
	static public var DATA_URL : Dynamic;
	static public var FLAGS : Dynamic;
	static public var IMAGE_SIZE : Dynamic;
	static public var INITIAL_LEARNING_RATE : Dynamic;
	static public var LEARNING_RATE_DECAY_FACTOR : Dynamic;
	static public var MOVING_AVERAGE_DECAY : Dynamic;
	static public var NUM_CLASSES : Dynamic;
	static public var NUM_EPOCHS_PER_DECAY : Dynamic;
	static public var NUM_EXAMPLES_PER_EPOCH_FOR_EVAL : Dynamic;
	static public var NUM_EXAMPLES_PER_EPOCH_FOR_TRAIN : Dynamic;
	static public var TOWER_NAME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper to create summaries for activations.
		
		Creates a summary that provides a histogram of activations.
		Creates a summary that measure the sparsity of activations.
		
		Args:
		  x: Tensor
		Returns:
		  nothing
	**/
	static public function _activation_summary(x:Dynamic):Dynamic;
	/**
		Add summaries for losses in CIFAR-10 model.
		
		Generates moving average for all losses and associated summaries for
		visualizing the performance of the network.
		
		Args:
		  total_loss: Total loss from loss().
		Returns:
		  loss_averages_op: op for generating moving averages of losses.
	**/
	static public function _add_loss_summaries(total_loss:Dynamic):Dynamic;
	/**
		Helper to create a Variable stored on CPU memory.
		
		Args:
		  name: name of the variable
		  shape: list of ints
		  initializer: initializer for Variable
		
		Returns:
		  Variable Tensor
	**/
	static public function _variable_on_cpu(name:Dynamic, shape:Dynamic, initializer:Dynamic):Dynamic;
	/**
		Helper to create an initialized Variable with weight decay.
		
		Note that the Variable is initialized with a truncated normal distribution.
		A weight decay is added only if one is specified.
		
		Args:
		  name: name of the variable
		  shape: list of ints
		  stddev: standard deviation of a truncated Gaussian
		  wd: add L2Loss weight decay multiplied by this float. If None, weight
		      decay is not added for this Variable.
		
		Returns:
		  Variable Tensor
	**/
	static public function _variable_with_weight_decay(name:Dynamic, shape:Dynamic, stddev:Dynamic, wd:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Construct distorted input for CIFAR training using the Reader ops.
		
		Returns:
		  images: Images. 4D tensor of [batch_size, IMAGE_SIZE, IMAGE_SIZE, 3] size.
		  labels: Labels. 1D tensor of [batch_size] size.
		
		Raises:
		  ValueError: If no data_dir
	**/
	static public function distorted_inputs():Dynamic;
	static public var division : Dynamic;
	/**
		Build the CIFAR-10 model.
		
		Args:
		  images: Images returned from distorted_inputs() or inputs().
		
		Returns:
		  Logits.
	**/
	static public function inference(images:Dynamic):Dynamic;
	/**
		Construct input for CIFAR evaluation using the Reader ops.
		
		Args:
		  eval_data: bool, indicating if one should use the train or eval data set.
		
		Returns:
		  images: Images. 4D tensor of [batch_size, IMAGE_SIZE, IMAGE_SIZE, 3] size.
		  labels: Labels. 1D tensor of [batch_size] size.
		
		Raises:
		  ValueError: If no data_dir
	**/
	static public function inputs(eval_data:Dynamic):Dynamic;
	/**
		Add L2Loss to all the trainable variables.
		
		Add summary for "Loss" and "Loss/avg".
		Args:
		  logits: Logits from inference().
		  labels: Labels from distorted_inputs or inputs(). 1-D tensor
		          of shape [batch_size]
		
		Returns:
		  Loss tensor of type float.
	**/
	static public function loss(logits:Dynamic, labels:Dynamic):Dynamic;
	/**
		Download and extract the tarball from Alex's website.
	**/
	static public function maybe_download_and_extract():Dynamic;
	static public var print_function : Dynamic;
	/**
		Train CIFAR-10 model.
		
		Create an optimizer and apply to all trainable variables. Add moving
		average for all trainable variables.
		
		Args:
		  total_loss: Total loss from loss().
		  global_step: Integer Variable counting the number of training steps
		    processed.
		Returns:
		  train_op: op for training.
	**/
	static public function train(total_loss:Dynamic, global_step:Dynamic):Dynamic;
}