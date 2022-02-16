/* This file is generated, do not edit! */
package tensorflow.python.distribute.cross_device_utils;
@:pythonImport("tensorflow.python.distribute.cross_device_utils") extern class Cross_device_utils_Module {
	static public var INSTANCE_KEY_START_NUMBER : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Pad the `input_tensor`'s first dimension to be `full_axis_dim`.
	**/
	static public function _pad_util(input_tensor:Dynamic, full_axis_dim:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Aggregate gradients using hierarchical copies.
		
		Args:
		  avail_devices: available GPU devices.
		  replica_grads: List of lists of (gradient, variable) tuples. The outer list
		    is over replicas. The inner list is over individual gradients.
		
		Returns:
		  The list of (aggregated_gradient, variable), where the gradient has been
		    summed across all replicas and the variable is chosen from the first
		    replica.
	**/
	static public function aggregate_gradients_using_hierarchical_copy(avail_devices:Dynamic, replica_grads:Dynamic):Dynamic;
	/**
		Aggregate gradients using nccl allreduce.
	**/
	static public function aggregate_gradients_using_nccl(replica_grads:Dynamic):Dynamic;
	/**
		Calculate the average gradient for a shared variable across all replicas.
		
		Note that this function provides a synchronization point across all replicas.
		
		Args:
		  grad_and_vars: A list or tuple of (gradient, variable) tuples. Each
		    (gradient, variable) pair within the outer list represents the gradient
		    of the variable calculated for a single replica, and the number of pairs
		    equals the number of replicas.
		  use_mean: if True, mean is taken, else sum of gradients is taken.
		  check_inf_nan: check grads for nans and infs.
		
		Returns:
		  The tuple ([(average_gradient, variable),], has_nan_or_inf) where the
		    gradient has been averaged across all replicas. The variable is chosen
		    from the first replica. The has_nan_or_inf indicates the grads has nan or
		    inf.
	**/
	static public function aggregate_single_gradient_using_copy(grad_and_vars:Dynamic, use_mean:Dynamic, check_inf_nan:Dynamic):Dynamic;
	/**
		Aggregate tensors using `accumulation_fn` and IndexedSlices via concat.
	**/
	static public function aggregate_tensors_or_indexed_slices(values:Dynamic, ?accumulation_fn:Dynamic):Dynamic;
	/**
		Copies a tensor or IndexedSlices to a device.
	**/
	static public function copy_tensor_or_indexed_slices_to_device(value:Dynamic, device:Dynamic):Dynamic;
	static public function divide_by_n_tensors_or_indexed_slices(value:Dynamic, n:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Groups `input_tensors` into chunks of `bytes_per_pack`.
		
		The method preserves the original order of `input_tensors`. The grouping is
		best effort, each pack could have more or less bytes than `bytes_per_pack`.
		It only groups values with known shape.
		
		Args:
		  input_tensors: a list of Tensor.
		  bytes_per_pack: an integer.
		
		Returns:
		  A list of packs of Tensor. All values are grouped into one pack if
		  `bytes_per_pack` is zero or any of the value has unknown shape.
	**/
	static public function group_by_size(input_tensors:Dynamic, bytes_per_pack:Dynamic):Dynamic;
	static public function is_indexed_slices(value:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Split values into dense and sparse values.
		
		Args:
		  values: a list of tensors or `PerReplica`s.
		
		Returns:
		  Four lists:
		    a list of dense values, a list of their indices in `values` and
		    a list of sparse values, a list of their indices in `values`.
	**/
	static public function split_by_sparsity(values:Dynamic):Dynamic;
	/**
		Stitch values together according to their indices.
		
		Args:
		  values_and_indices_list: a list of tuples of values and indices indicating
		    the values and positions in the returned list.
		
		Returns:
		  a stitched list of values.
	**/
	static public function stitch_values(values_and_indices_list:Dynamic):Dynamic;
}