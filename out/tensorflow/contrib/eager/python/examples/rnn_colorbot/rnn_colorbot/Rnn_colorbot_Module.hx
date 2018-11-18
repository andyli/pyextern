/* This file is generated, do not edit! */
package tensorflow.contrib.eager.python.examples.rnn_colorbot.rnn_colorbot;
@:pythonImport("tensorflow.contrib.eager.python.examples.rnn_colorbot.rnn_colorbot") extern class Rnn_colorbot_Module {
	static public var HAS_MATPLOTLIB : Dynamic;
	static public var SOURCE_TEST_URL : Dynamic;
	static public var SOURCE_TRAIN_URL : Dynamic;
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
		Loads the colors data at path into a PaddedDataset.
	**/
	static public function load_dataset(data_dir:Dynamic, url:Dynamic, batch_size:Dynamic):Dynamic;
	/**
		Computes mean squared loss.
	**/
	static public function loss(labels:Dynamic, predictions:Dynamic):Dynamic;
	static public function main(_:Dynamic):Dynamic;
	/**
		Download the data from source url, unless it's already here.
		
		Args:
		  filename: string, name of the file in the directory.
		  work_directory: string, path to working directory.
		  source_url: url to download from if file doesn't exist.
		
		Returns:
		  Path to resulting file.
	**/
	static public function maybe_download(filename:Dynamic, work_directory:Dynamic, source_url:Dynamic):Dynamic;
	/**
		Parse a line from the colors dataset.
	**/
	static public function parse(line:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Computes the average loss on eval_data, which should be a Dataset.
	**/
	static public function test(model:Dynamic, eval_data:Dynamic):Dynamic;
	/**
		Trains model on train_data using optimizer.
	**/
	static public function train_one_epoch(model:Dynamic, optimizer:Dynamic, train_data:Dynamic, ?log_interval:Dynamic):Dynamic;
}