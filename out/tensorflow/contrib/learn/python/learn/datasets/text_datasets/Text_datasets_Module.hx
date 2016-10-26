/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.datasets.text_datasets;
@:pythonImport("tensorflow.contrib.learn.python.learn.datasets.text_datasets") extern class Text_datasets_Module {
	static public var DBPEDIA_URL : Dynamic;
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
		Get DBpedia datasets from CSV files.
	**/
	static public function load_dbpedia(?size:Dynamic, ?test_with_fake_data:Dynamic):Dynamic;
	/**
		Download if DBpedia data is not present.
	**/
	static public function maybe_download_dbpedia(data_dir:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}