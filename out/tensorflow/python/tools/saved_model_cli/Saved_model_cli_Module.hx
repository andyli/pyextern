/* This file is generated, do not edit! */
package tensorflow.python.tools.saved_model_cli;
@:pythonImport("tensorflow.python.tools.saved_model_cli") extern class Saved_model_cli_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Gets TensorInfo for all inputs of the SignatureDef.
		
		Returns a dictionary that maps each input key to its TensorInfo for the given
		signature_def_key in the meta_graph_def
		
		Args:
		  meta_graph_def: MetaGraphDef protocol buffer with the SignatureDef map to
		      look up SignatureDef key.
		  signature_def_key: A SignatureDef key string.
		
		Returns:
		  A dictionary that maps input tensor keys to TensorInfos.
	**/
	static public function _get_inputs_tensor_info_from_meta_graph_def(meta_graph_def:Dynamic, signature_def_key:Dynamic):Dynamic;
	/**
		Gets TensorInfos for all outputs of the SignatureDef.
		
		Returns a dictionary that maps each output key to its TensorInfo for the given
		signature_def_key in the meta_graph_def.
		
		Args:
		  meta_graph_def: MetaGraphDef protocol buffer with the SignatureDefmap to
		  look up signature_def_key.
		  signature_def_key: A SignatureDef key string.
		
		Returns:
		  A dictionary that maps output tensor keys to TensorInfos.
	**/
	static public function _get_outputs_tensor_info_from_meta_graph_def(meta_graph_def:Dynamic, signature_def_key:Dynamic):Dynamic;
	/**
		Prints details of the given tensor_info.
		
		Args:
		  tensor_info: TensorInfo object to be printed.
	**/
	static public function _print_tensor_info(tensor_info:Dynamic):Dynamic;
	/**
		Prints tag-set, SignatureDef and Inputs/Outputs information in SavedModel.
		
		Prints all tag-set, SignatureDef and Inputs/Outputs information stored in
		SavedModel directory.
		
		Args:
		  saved_model_dir: Directory containing the SavedModel to inspect.
	**/
	static public function _show_all(saved_model_dir:Dynamic):Dynamic;
	/**
		Prints input and output TensorInfos.
		
		Prints the details of input and output TensorInfos for the SignatureDef mapped
		by the given signature_def_key.
		
		Args:
		  saved_model_dir: Directory containing the SavedModel to inspect.
		  tag_set: Group of tag(s) of the MetaGraphDef, in string format, separated by
		      ','. For tag-set contains multiple tags, all tags must be passed in.
		  signature_def_key: A SignatureDef key string.
	**/
	static public function _show_inputs_outputs(saved_model_dir:Dynamic, tag_set:Dynamic, signature_def_key:Dynamic):Dynamic;
	/**
		Prints the keys for each SignatureDef in the SignatureDef map.
		
		Prints the list of SignatureDef keys from the SignatureDef map specified by
		the given tag-set and SavedModel directory.
		
		Args:
		  saved_model_dir: Directory containing the SavedModel to inspect.
		  tag_set: Group of tag(s) of the MetaGraphDef to get SignatureDef map from,
		      in string format, separated by ','. For tag-set contains multiple tags,
		      all tags must be passed in.
	**/
	static public function _show_signature_def_map_keys(saved_model_dir:Dynamic, tag_set:Dynamic):Dynamic;
	/**
		Prints the tag-sets stored in SavedModel directory.
		
		Prints all the tag-sets for MetaGraphs stored in SavedModel directory.
		
		Args:
		  saved_model_dir: Directory containing the SavedModel to inspect.
	**/
	static public function _show_tag_sets(saved_model_dir:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates a parser that parse the command line arguments.
		
		Returns:
		  A namespace parsed from command line arguments.
	**/
	static public function create_parser():Dynamic;
	static public var division : Dynamic;
	/**
		Gets MetaGraphDef from SavedModel.
		
		Returns the MetaGraphDef for the given tag-set and SavedModel directory.
		
		Args:
		  saved_model_dir: Directory containing the SavedModel to inspect or execute.
		  tag_set: Group of tag(s) of the MetaGraphDef to load, in string format,
		      separated by ','. For tag-set contains multiple tags, all tags must be
		      passed in.
		
		Raises:
		  RuntimeError: An error when the given tag-set does not exist in the
		      SavedModel.
		
		Returns:
		  A MetaGraphDef corresponding to the tag-set.
	**/
	static public function get_meta_graph_def(saved_model_dir:Dynamic, tag_set:Dynamic):Dynamic;
	/**
		Gets SignatureDef map from a MetaGraphDef in a SavedModel.
		
		Returns the SignatureDef map for the given tag-set in the SavedModel
		directory.
		
		Args:
		  saved_model_dir: Directory containing the SavedModel to inspect or execute.
		  tag_set: Group of tag(s) of the MetaGraphDef with the SignatureDef map, in
		      string format, separated by ','. For tag-set contains multiple tags, all
		      tags must be passed in.
		
		Returns:
		  A SignatureDef map that maps from string keys to SignatureDefs.
	**/
	static public function get_signature_def_map(saved_model_dir:Dynamic, tag_set:Dynamic):Dynamic;
	/**
		Parses input arg strings and create inputs feed_dict.
		
		Parses '--inputs' string for inputs to be loaded from file, and parses
		'--input_exprs' string for inputs to be evaluated from python expression.
		
		Args:
		  inputs_str: A string that specified where to load inputs. Each input is
		      separated by semicolon.
		      * For each input key:
		          '<input_key>=<filename>' or
		          '<input_key>=<filename>[<variable_name>]'
		      * The optional 'variable_name' key will be set to None if not specified.
		      * File specified by 'filename' will be loaded using numpy.load. Inputs
		          can be loaded from only .npy, .npz or pickle files.
		      * The "[variable_name]" key is optional depending on the input file type
		          as descripted in more details below.
		      When loading from a npy file, which always contains a numpy ndarray, the
		      content will be directly assigned to the specified input tensor. If a
		      variable_name is specified, it will be ignored and a warning will be
		      issued.
		      When loading from a npz zip file, user can specify which variable within
		      the zip file to load for the input tensor inside the square brackets. If
		      nothing is specified, this function will check that only one file is
		      included in the zip and load it for the specified input tensor.
		      When loading from a pickle file, if no variable_name is specified in the
		      square brackets, whatever that is inside the pickle file will be passed
		      to the specified input tensor, else SavedModel CLI will assume a
		      dictionary is stored in the pickle file and the value corresponding to
		      the variable_name will be used.
		  input_exprs_str: A string that specified python expressions for inputs.
		      * In the format of: '<input_key>=<python expression>'.
		      * numpy module is available as np.
		
		Returns:
		  A dictionary that maps input tensor keys to numpy ndarrays.
		
		Raises:
		  RuntimeError: An error when a key is specified, but the input file contains
		      multiple numpy ndarrays, none of which matches the given key.
		  RuntimeError: An error when no key is specified, but the input file contains
		      more than one numpy ndarrays.
	**/
	static public function load_inputs_from_input_arg_string(inputs_str:Dynamic, input_exprs_str:Dynamic):Dynamic;
	static public function main():Dynamic;
	/**
		Parses input arg into dictionary that maps input key to python expression.
		
		Parses input string in the format of 'input_key=<python expression>' into a
		dictionary that maps each input_key to its python expression.
		
		Args:
		  input_exprs_str: A string that specifies python expression for input keys.
		  Each input is separated by semicolon. For each input key:
		      'input_key=<python expression>'
		
		Returns:
		  A dictionary that maps input keys to python expressions.
		
		Raises:
		  RuntimeError: An error when the given input string is in a bad format.
	**/
	static public function preprocess_input_exprs_arg_string(input_exprs_str:Dynamic):Dynamic;
	/**
		Parses input arg into dictionary that maps input to file/variable tuple.
		
		Parses input string in the format of, for example,
		"input1=filename1[variable_name1],input2=filename2" into a
		dictionary looks like
		{'input_key1': (filename1, variable_name1),
		 'input_key2': (file2, None)}
		, which maps input keys to a tuple of file name and variable name(None if
		empty).
		
		Args:
		  inputs_str: A string that specified where to load inputs. Inputs are
		  separated by semicolons.
		      * For each input key:
		          '<input_key>=<filename>' or
		          '<input_key>=<filename>[<variable_name>]'
		      * The optional 'variable_name' key will be set to None if not specified.
		
		Returns:
		  A dictionary that maps input keys to a tuple of file name and variable name.
		
		Raises:
		  RuntimeError: An error when the given input string is in a bad format.
	**/
	static public function preprocess_inputs_arg_string(inputs_str:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Function triggered by run command.
		
		Args:
		  args: A namespace parsed from command line.
		
		Raises:
		  AttributeError: An error when neither --inputs nor --input_exprs is passed
		  to run command.
	**/
	static public function run(args:Dynamic):Dynamic;
	/**
		Runs SavedModel and fetch all outputs.
		
		Runs the input dictionary through the MetaGraphDef within a SavedModel
		specified by the given tag_set and SignatureDef. Also save the outputs to file
		if outdir is not None.
		
		Args:
		  saved_model_dir: Directory containing the SavedModel to execute.
		  tag_set: Group of tag(s) of the MetaGraphDef with the SignatureDef map, in
		      string format, separated by ','. For tag-set contains multiple tags, all
		      tags must be passed in.
		  signature_def_key: A SignatureDef key string.
		  input_tensor_key_feed_dict: A dictionary maps input keys to numpy ndarrays.
		  outdir: A directory to save the outputs to. If the directory doesn't exist,
		      it will be created.
		  overwrite_flag: A boolean flag to allow overwrite output file if file with
		      the same name exists.
		  tf_debug: A boolean flag to use TensorFlow Debugger (TFDBG) to observe the
		      intermediate Tensor values and runtime GraphDefs while running the
		      SavedModel.
		
		Raises:
		  RuntimeError: An error when output file already exists and overwrite is not
		  enabled.
	**/
	static public function run_saved_model_with_feed_dict(saved_model_dir:Dynamic, tag_set:Dynamic, signature_def_key:Dynamic, input_tensor_key_feed_dict:Dynamic, outdir:Dynamic, overwrite_flag:Dynamic, ?tf_debug:Dynamic):Dynamic;
	/**
		Function triggered by show command.
		
		Args:
		  args: A namespace parsed from command line.
	**/
	static public function show(args:Dynamic):Dynamic;
}