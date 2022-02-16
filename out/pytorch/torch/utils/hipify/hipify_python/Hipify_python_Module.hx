/* This file is generated, do not edit! */
package torch.utils.hipify.hipify_python;
@:pythonImport("torch.utils.hipify.hipify_python") extern class Hipify_python_Module {
	static public var CAFFE2_MAP : Dynamic;
	static public var CAFFE2_TRIE : Dynamic;
	static public var CUDA_TO_HIP_MAPPINGS : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var HIPIFY_C_BREADCRUMB : Dynamic;
	static public var HIPIFY_FINAL_RESULT : Dynamic;
	static public function HipifyFinalResult(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function HipifyResult(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var MATH_TRANSPILATIONS : Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var PYTORCH_MAP : Dynamic;
	static public var PYTORCH_TEMPLATE_MAP : Dynamic;
	static public var PYTORCH_TRIE : Dynamic;
	static public var RE_ANGLE_HEADER : Dynamic;
	static public var RE_ASSERT : Dynamic;
	static public var RE_CAFFE2_PREPROCESSOR : Dynamic;
	static public var RE_CU_SUFFIX : Dynamic;
	static public var RE_EXTERN_SHARED : Dynamic;
	static public var RE_INCLUDE : Dynamic;
	static public var RE_KERNEL_LAUNCH : Dynamic;
	static public var RE_PYTORCH_PREPROCESSOR : Dynamic;
	static public var RE_QUOTE_HEADER : Dynamic;
	static public var RE_SYNCTHREADS : Dynamic;
	static public var RE_THC_GENERIC_FILE : Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		adds dim3() to the second and third arguments in the kernel launch
	**/
	static public function add_dim3(kernel_string:Dynamic, cuda_kernel:Dynamic):Dynamic;
	static public function compute_stats(stats:Dynamic):Dynamic;
	static public var dst : Dynamic;
	/**
		Return the list of arguments in the upcoming function parameter closure.
		Example:
		string (input): '(blocks, threads, 0, THCState_getCurrentStream(state))'
		arguments (output):
		    '[{'start': 1, 'end': 7},
		    {'start': 8, 'end': 16},
		    {'start': 17, 'end': 19},
		    {'start': 20, 'end': 53}]'
	**/
	static public function extract_arguments(start:Dynamic, string:Dynamic):Dynamic;
	static public function file_add_header(filepath:Dynamic, header:Dynamic):Dynamic;
	static public function file_specific_replacement(filepath:Dynamic, search_string:Dynamic, replace_string:Dynamic, ?strict:Dynamic):Dynamic;
	/**
		Finds the first balanced parantheses.
	**/
	static public function find_bracket_group(input_string:Dynamic, start:Dynamic):Dynamic;
	/**
		Generalization for finding a balancing closure group
		
		     if group = ["(", ")"], then finds the first balanced parentheses.
		     if group = ["{", "}"], then finds the first balanced bracket.
		
		Given an input string, a starting position in the input string, and the group type,
		find_closure_group returns the positions of group[0] and group[1] as a tuple.
		
		Example:
		    find_closure_group("(hi)", 0, ["(", ")"])
		
		Returns:
		    0, 3
	**/
	static public function find_closure_group(input_string:Dynamic, start:Dynamic, group:Dynamic):Dynamic;
	/**
		Finds the first balanced bracket.
	**/
	static public function find_parentheses_group(input_string:Dynamic, start:Dynamic):Dynamic;
	/**
		Static global kernels in HIP results in a compilation error.
	**/
	static public function fix_static_global_kernels(in_txt:Dynamic):Dynamic;
	/**
		Returns the new name of the hipified file
	**/
	static public function get_hip_file_path(filepath:Dynamic, ?is_pytorch_extension:Dynamic):Dynamic;
	/**
		If the file makes kernel builtin calls and does not include the cuda_runtime.h header,
		then automatically add an #include to match the "magic" includes provided by NVCC.
		TODO:
		    Update logic to ignore cases where the cuda_runtime.h is included by another file.
	**/
	static public function hip_header_magic(input_string:Dynamic):Dynamic;
	static public function hipify(project_directory:Dynamic, ?show_detailed:Dynamic, ?extensions:Dynamic, ?output_directory:Dynamic, ?includes:Dynamic, ?extra_files:Dynamic, ?out_of_place_only:Dynamic, ?ignores:Dynamic, ?show_progress:Dynamic, ?hip_clang_launch:Dynamic, ?is_pytorch_extension:Dynamic, ?clean_ctx:Dynamic):Dynamic;
	static public function is_caffe2_gpu_file(filepath:Dynamic):Dynamic;
	static public function is_out_of_place(filepath:Dynamic):Dynamic;
	static public function is_pytorch_file(filepath:Dynamic):Dynamic;
	static public var mapping : Dynamic;
	/**
		Helper method to see if filename ends with certain extension
	**/
	static public function match_extensions(filename:Dynamic, extensions:Dynamic):Dynamic;
	static public function matched_files_iter(root_path:Dynamic, ?includes:Dynamic, ?ignores:Dynamic, ?extensions:Dynamic, ?out_of_place_only:Dynamic, ?is_pytorch_extension:Dynamic):Dynamic;
	static public var meta_data : Dynamic;
	static public function openf(filename:Dynamic, mode:Dynamic):Dynamic;
	/**
		Call preprocessor on selected files.
		
		Arguments)
		    show_detailed - Show a detailed summary of the transpilation process.
	**/
	static public function preprocess(output_directory:Dynamic, all_files:Dynamic, includes:Dynamic, ?show_detailed:Dynamic, ?show_progress:Dynamic, ?hip_clang_launch:Dynamic, ?is_pytorch_extension:Dynamic, ?clean_ctx:Dynamic):Dynamic;
	static public function preprocess_file_and_save_result(output_directory:Dynamic, filepath:Dynamic, all_files:Dynamic, includes:Dynamic, stats:Dynamic, hip_clang_launch:Dynamic, is_pytorch_extension:Dynamic, clean_ctx:Dynamic, show_progress:Dynamic):Dynamic;
	/**
		Executes the CUDA -> HIP conversion on the specified file. 
	**/
	static public function preprocessor(output_directory:Dynamic, filepath:Dynamic, all_files:Dynamic, includes:Dynamic, stats:Dynamic, hip_clang_launch:Dynamic, is_pytorch_extension:Dynamic, clean_ctx:Dynamic, show_progress:Dynamic):Dynamic;
	/**
		Replace the CUDA style Kernel launches with the HIP style kernel launches.
	**/
	static public function processKernelLaunches(string:Dynamic, stats:Dynamic):Dynamic;
	/**
		Match extern __shared__ type foo[]; syntax and use HIP_DYNAMIC_SHARED() MACRO instead.
		   https://github.com/ROCm-Developer-Tools/HIP/blob/master/docs/markdown/hip_kernel_language.md#__shared__
		Example:
		    "extern __shared__ char smemChar[];" => "HIP_DYNAMIC_SHARED( char, smemChar)"
		    "extern __shared__ unsigned char smem[];" => "HIP_DYNAMIC_SHARED( unsigned char, my_smem)"
	**/
	static public function replace_extern_shared(input_string:Dynamic):Dynamic;
	/**
		FIXME: Temporarily replace std:: invocations of math functions
		with non-std:: versions to prevent linker errors NOTE: This
		can lead to correctness issues when running tests, since the
		correct version of the math function (exp/expf) might not get
		called.  Plan is to remove this function once HIP supports
		std:: math function calls inside device code
	**/
	static public function replace_math_functions(input_string:Dynamic):Dynamic;
	static public var src : Dynamic;
	/**
		ArgumentParser doesn't support type=bool. Thus, this helper method will convert
		from possible string types to True / False.
	**/
	static public function str2bool(v:Dynamic):Dynamic;
	static public var value : Dynamic;
}