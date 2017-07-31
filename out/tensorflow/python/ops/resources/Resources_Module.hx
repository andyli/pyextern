/* This file is generated, do not edit! */
package tensorflow.python.ops.resources;
@:pythonImport("tensorflow.python.ops.resources") extern class Resources_Module {
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
		Initializes the resources in the given list.
		
		Args:
		 resource_list: list of resources to initialize.
		 name: name of the initialization op.
		
		Returns:
		 op responsible for initializing all resources.
		
		
		**NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	static public function initialize_resources(resource_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns resources intended to be local to this session.
	**/
	static public function local_resources():Dynamic;
	static public var print_function : Dynamic;
	/**
		Registers a resource into the appropriate collections.
		
		This makes the resource findable in either the shared or local resources
		collection.
		
		Args:
		 handle: op which returns a handle for the resource.
		 create_op: op which initializes the resource.
		 is_initialized_op: op which returns a scalar boolean tensor of whether
		  the resource has been initialized.
		 is_shared: if True, the resource gets added to the shared resource
		  collection; otherwise it gets added to the local resource collection.
	**/
	static public function register_resource(handle:Dynamic, create_op:Dynamic, is_initialized_op:Dynamic, ?is_shared:Dynamic):Dynamic;
	/**
		Returns the names of all uninitialized resources in resource_list.
		
		If the returned tensor is empty then all resources have been initialized.
		
		Args:
		 resource_list: resources to check. If None, will use shared_resources() +
		  local_resources().
		 name: name for the resource-checking op.
		
		Returns:
		 Tensor containing names of the handles of all resources which have not
		 yet been initialized.
	**/
	static public function report_uninitialized_resources(?resource_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns resources visible to all tasks in the cluster.
	**/
	static public function shared_resources():Dynamic;
}