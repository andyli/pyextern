/* This file is generated, do not edit! */
package tensorflow.python.keras.preprocessing.dataset_utils;
@:pythonImport("tensorflow.python.keras.preprocessing.dataset_utils") extern class Dataset_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Raise errors in case of invalid argument values.
		
		Args:
		  shuffle: Whether to shuffle the data. Either True or False.
		  seed: random seed for shuffling and transformations.
		  validation_split: float between 0 and 1, fraction of data to reserve for
		    validation.
		  subset: One of "training" or "validation". Only used if `validation_split`
		    is set.
	**/
	static public function check_validation_split_arg(validation_split:Dynamic, subset:Dynamic, shuffle:Dynamic, seed:Dynamic):Dynamic;
	/**
		Potentially restict samples & labels to a training or validation split.
		
		Args:
		  samples: List of elements.
		  labels: List of corresponding labels.
		  validation_split: Float, fraction of data to reserve for validation.
		  subset: Subset of the data to return.
		    Either "training", "validation", or None. If None, we return all of the
		    data.
		
		Returns:
		  tuple (samples, labels), potentially restricted to the specified subset.
	**/
	static public function get_training_or_validation_split(samples:Dynamic, labels:Dynamic, validation_split:Dynamic, subset:Dynamic):Dynamic;
	/**
		Make list of all files in the subdirs of `directory`, with their labels.
		
		Args:
		  directory: The target directory (string).
		  labels: Either "inferred"
		      (labels are generated from the directory structure),
		      None (no labels),
		      or a list/tuple of integer labels of the same size as the number of
		      valid files found in the directory. Labels should be sorted according
		      to the alphanumeric order of the image file paths
		      (obtained via `os.walk(directory)` in Python).
		  formats: Allowlist of file extensions to index (e.g. ".jpg", ".txt").
		  class_names: Only valid if "labels" is "inferred". This is the explict
		      list of class names (must match names of subdirectories). Used
		      to control the order of the classes
		      (otherwise alphanumerical order is used).
		  shuffle: Whether to shuffle the data. Default: True.
		      If set to False, sorts the data in alphanumeric order.
		  seed: Optional random seed for shuffling.
		  follow_links: Whether to visits subdirectories pointed to by symlinks.
		
		Returns:
		  tuple (file_paths, labels, class_names).
		    file_paths: list of file paths (strings).
		    labels: list of matching integer labels (same length as file_paths)
		    class_names: names of the classes corresponding to these labels, in order.
	**/
	static public function index_directory(directory:Dynamic, labels:Dynamic, formats:Dynamic, ?class_names:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?follow_links:Dynamic):Dynamic;
	/**
		Recursively walks directory and list image paths and their class index.
		
		Args:
		  directory: string, target directory.
		  class_indices: dict mapping class names to their index.
		  follow_links: boolean, whether to recursively follow subdirectories
		    (if False, we only list top-level images in `directory`).
		  formats: Allowlist of file extensions to index (e.g. ".jpg", ".txt").
		
		Returns:
		  tuple `(filenames, labels)`. `filenames` is a list of relative file
		    paths, and `labels` is a list of integer labels corresponding to these
		    files.
	**/
	static public function index_subdirectory(directory:Dynamic, class_indices:Dynamic, follow_links:Dynamic, formats:Dynamic):Dynamic;
	static public function iter_valid_files(directory:Dynamic, follow_links:Dynamic, formats:Dynamic):Dynamic;
	/**
		Create a tf.data.Dataset from the list/tuple of labels.
		
		Args:
		  labels: list/tuple of labels to be converted into a tf.data.Dataset.
		  label_mode:
		  - 'binary' indicates that the labels (there can be only 2) are encoded as
		    `float32` scalars with values 0 or 1 (e.g. for `binary_crossentropy`).
		  - 'categorical' means that the labels are mapped into a categorical vector.
		    (e.g. for `categorical_crossentropy` loss).
		  num_classes: number of classes of labels.
	**/
	static public function labels_to_dataset(labels:Dynamic, label_mode:Dynamic, num_classes:Dynamic):Dynamic;
}