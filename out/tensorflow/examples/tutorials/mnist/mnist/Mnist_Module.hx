/* This file is generated, do not edit! */
package tensorflow.examples.tutorials.mnist.mnist;
@:pythonImport("tensorflow.examples.tutorials.mnist.mnist") extern class Mnist_Module {
	static public var IMAGE_PIXELS : Dynamic;
	static public var IMAGE_SIZE : Dynamic;
	static public var NUM_CLASSES : Dynamic;
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
		Evaluate the quality of the logits at predicting the label.
		
		Args:
		  logits: Logits tensor, float - [batch_size, NUM_CLASSES].
		  labels: Labels tensor, int32 - [batch_size], with values in the
		    range [0, NUM_CLASSES).
		
		Returns:
		  A scalar int32 tensor with the number of examples (out of batch_size)
		  that were predicted correctly.
	**/
	static public function evaluation(logits:Dynamic, labels:Dynamic):Dynamic;
	/**
		Build the MNIST model up to where it may be used for inference.
		
		Args:
		  images: Images placeholder, from inputs().
		  hidden1_units: Size of the first hidden layer.
		  hidden2_units: Size of the second hidden layer.
		
		Returns:
		  softmax_linear: Output tensor with the computed logits.
	**/
	static public function inference(images:Dynamic, hidden1_units:Dynamic, hidden2_units:Dynamic):Dynamic;
	/**
		Calculates the loss from the logits and the labels.
		
		Args:
		  logits: Logits tensor, float - [batch_size, NUM_CLASSES].
		  labels: Labels tensor, int32 - [batch_size].
		
		Returns:
		  loss: Loss tensor of type float.
	**/
	static public function loss(logits:Dynamic, labels:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Sets up the training Ops.
		
		Creates a summarizer to track the loss over time in TensorBoard.
		
		Creates an optimizer and applies the gradients to all trainable variables.
		
		The Op returned by this function is what must be passed to the
		`sess.run()` call to cause the model to train.
		
		Args:
		  loss: Loss tensor, from loss().
		  learning_rate: The learning rate to use for gradient descent.
		
		Returns:
		  train_op: The Op for training.
	**/
	static public function training(loss:Dynamic, learning_rate:Dynamic):Dynamic;
}