/* This file is generated, do not edit! */
package tensorflow.python.distribute.cluster_resolver.slurm_cluster_resolver;
@:pythonImport("tensorflow.python.distribute.cluster_resolver.slurm_cluster_resolver") extern class Slurm_cluster_resolver_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Gets the number of NVIDIA GPUs by using CUDA_VISIBLE_DEVICES and nvidia-smi.
		
		Returns:
		  Number of GPUs available on the node
		Raises:
		  RuntimeError if executing nvidia-smi failed
	**/
	static public function _get_num_nvidia_gpus():Dynamic;
	/**
		Returns the number of SLURM tasks of the current job step.
		
		Returns:
		  The number of tasks as an int
	**/
	static public function _get_num_slurm_tasks():Dynamic;
	/**
		Gets the SLURM variable from the environment.
		
		Args:
		  name: Name of the step variable
		
		Returns:
		  SLURM_<name> from os.environ
		Raises:
		  RuntimeError if variable is not found
	**/
	static public function _get_slurm_var(name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Create a list of hosts out of a SLURM hostlist.
		
		The order of nodes is preserved and no deduplication is done
		Input: 'n[1-2],m5,o[3-4,6,7-9]')
		Output: ['n1', 'n2', 'm5', 'o3', 'o4', 'o6', 'o7', 'o8', 'o9']
	**/
	static public function expand_hostlist(hostlist:Dynamic):Dynamic;
	/**
		Expands the tasks per node expression from SLURM.
		
		The order is preserved so it can be matched to the hostlist
		Input: '3(x2),2,1'
		Output: [3, 3, 2, 1]
	**/
	static public function expand_tasks_per_node(tasks_per_node:Dynamic):Dynamic;
	static public function format_master_url(master:Dynamic, ?rpc_layer:Dynamic):Dynamic;
	/**
		Returns the number of GPUs visible on the current node.
		
		Currently only implemented for NVIDIA GPUs.
	**/
	static public function get_num_gpus():Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}