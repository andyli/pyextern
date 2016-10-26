/* This file is generated, do not edit! */
package tensorflow.models.image.cifar10.cifar10_input;
@:pythonImport("tensorflow.models.image.cifar10.cifar10_input") extern class Cifar10_input_Module {
	static public var IMAGE_SIZE : Dynamic;
	static public var NUM_CLASSES : Dynamic;
	static public var NUM_EXAMPLES_PER_EPOCH_FOR_EVAL : Dynamic;
	static public var NUM_EXAMPLES_PER_EPOCH_FOR_TRAIN : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Construct a queued batch of images and labels.
		
		Args:
		  image: 3-D Tensor of [height, width, 3] of type.float32.
		  label: 1-D Tensor of type.int32
		  min_queue_examples: int32, minimum number of samples to retain
		    in the queue that provides of batches of examples.
		  batch_size: Number of images per batch.
		  shuffle: boolean indicating whether to use a shuffling queue.
		
		Returns:
		  images: Images. 4D tensor of [batch_size, height, width, 3] size.
		  labels: Labels. 1D tensor of [batch_size] size.
	**/
	static public function _generate_image_and_label_batch(image:Dynamic, label:Dynamic, min_queue_examples:Dynamic, batch_size:Dynamic, shuffle:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Construct distorted input for CIFAR training using the Reader ops.
		
		Args:
		  data_dir: Path to the CIFAR-10 data directory.
		  batch_size: Number of images per batch.
		
		Returns:
		  images: Images. 4D tensor of [batch_size, IMAGE_SIZE, IMAGE_SIZE, 3] size.
		  labels: Labels. 1D tensor of [batch_size] size.
	**/
	static public function distorted_inputs(data_dir:Dynamic, batch_size:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Construct input for CIFAR evaluation using the Reader ops.
		
		Args:
		  eval_data: bool, indicating if one should use the train or eval data set.
		  data_dir: Path to the CIFAR-10 data directory.
		  batch_size: Number of images per batch.
		
		Returns:
		  images: Images. 4D tensor of [batch_size, IMAGE_SIZE, IMAGE_SIZE, 3] size.
		  labels: Labels. 1D tensor of [batch_size] size.
	**/
	static public function inputs(eval_data:Dynamic, data_dir:Dynamic, batch_size:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Reads and parses examples from CIFAR10 data files.
		
		Recommendation: if you want N-way read parallelism, call this function
		N times.  This will give you N independent Readers reading different
		files & positions within those files, which will give better mixing of
		examples.
		
		Args:
		  filename_queue: A queue of strings with the filenames to read from.
		
		Returns:
		  An object representing a single example, with the following fields:
		    height: number of rows in the result (32)
		    width: number of columns in the result (32)
		    depth: number of color channels in the result (3)
		    key: a scalar string Tensor describing the filename & record number
		      for this example.
		    label: an int32 Tensor with the label in the range 0..9.
		    uint8image: a [height, width, depth] uint8 Tensor with the image data
	**/
	static public function read_cifar10(filename_queue:Dynamic):Dynamic;
}