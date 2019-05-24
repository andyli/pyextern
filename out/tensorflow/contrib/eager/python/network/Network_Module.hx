/* This file is generated, do not edit! */
package tensorflow.contrib.eager.python.network;
@:pythonImport("tensorflow.contrib.eager.python.network") extern class Network_Module {
	static public var _NETWORK_DEPRECATION_MESSAGE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Add a deferred restoration to this Layer and all children.
		
		Restorations which are requested later have higher priority, and the highest
		priority matching restoration is applied to a variable when it is created.
		
		Args:
		  layer: The Layer (may not be a Network) to operate on.
		  deferred_restoration: A _DeferredRestoration object.
	**/
	static public function _add_deferred_restoration(layer:Dynamic, deferred_restoration:Dynamic):Dynamic;
	static public function _default_naming_conflict_error_message(mapped_name:Dynamic, first_variable:Dynamic, second_variable:Dynamic, network_name:Dynamic, network_scope_name:Dynamic):Dynamic;
	/**
		Returns a custom getter which searches `deferred_restorations`.
		
		Returns: A tuple of (_custom_getter, deferred_restorations)
		  _custom_getter: The getter which should be added to variable_scopes where
		    variables will be created.
		  deferred_restorations: A list for _DeferredRestoration objects. Typically
		    empty when the getter is set, and expanded as deferred restorations are
		    requested. All new deferred restorations should be appended to the end of
		    the list, where they will have priority over older deferred restorations.
	**/
	static public function _make_custom_getter_for_deferred_restorations():Dynamic;
	/**
		Closure for stripping the scope name of a Network.
		
		Implemented as a closure rather than a member function to avoid reference
		cycles in deferred restorations (this function should not have a reference to
		the Network which created it).
		
		Args:
		  scope_name: The Network.scope_name to strip from variables.
		Returns:
		  A scope_name-stripping default `map_fn` for the Network.
	**/
	static public function _make_prefix_stripping_map_fn(scope_name:Dynamic):Dynamic;
	/**
		Name scope naming to match operation names to variable names.
		
		Used in Networks and also applied to non-Network Layers which are added to
		Networks before being built.
		
		Args:
		  current_variable_scope: A VariableScope object.
		Returns:
		  A name scope name.
	**/
	static public function _network_name_scope_naming(current_variable_scope:Dynamic):Dynamic;
	static public function _restore_custom_map_func_error_message(mapped_name:Dynamic, first_variable:Dynamic, second_variable:Dynamic, network_name:Dynamic, network_scope_name:Dynamic):Dynamic;
	/**
		Use a standard Saver to restore existing variables from a checkpoint.
		
		Args:
		  network: A Network object to restore.
		  save_path: The checkpoint prefix or directory to read from.
		  map_func: The function to use when mapping from variable names to
		    checkpoint names.
		  user_map_func: The original map_func passed by the user, for error
		    checking.
		Returns:
		  A dictionary mapping from checkpoint names to variable objects which have
		  been restored (for bookkeeping to avoid deferred restorations on these
		  variables).
		Raises:
		  ValueError: If there is a name collision.
	**/
	static public function _restore_existing_variables(network:Dynamic, save_path:Dynamic, map_func:Dynamic, user_map_func:Dynamic):Dynamic;
	/**
		If necessary, request deferred restorations of variables.
	**/
	static public function _set_restore_on_create(network:Dynamic, save_path:Dynamic, map_func:Dynamic, user_map_func:Dynamic, existing_variables_by_checkpoint_name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Restore the Network from a checkpoint. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please inherit from tf.keras.Model instead of tfe.Network, and use tf.keras.Model.load_weights.
		
		If variables have already been created (typically when some or all of the
		`Network` is built), they are assigned values from the checkpoint immediately,
		overwriting any existing values (in graph mode the default session is used for
		the assignments).
		
		If there are checkpoint entries which do not correspond to any existing
		variables in the `Network`, these values are saved for deferred restoration;
		their initial values will be the checkpointed values once they are
		created. Requests for multiple deferred restorations behave the same way as
		immediate restorations, in that later requests will take priority over earlier
		requests relevant to the same variable.
		
		If this `Network` shares `Layer`s with another network, those `Layer`s will
		also have their variables restored from the checkpoint.
		
		Args:
		  network: A Network object to restore.
		  save_path: The return value of `tfe.save_network_checkpoint`, or a directory
		    to search for a checkpoint.
		  map_func: A function mapping fully qualified variable names
		    (e.g. 'my_network_1/dense_1/kernel') to names in the checkpoint. By
		    default (if `map_func=None`), the variable prefix for the network being
		    restored (`Network.scope_name + '/'`, e.g. 'my_network_1/') is stripped
		    and all other variable names (shared with other Networks) are left
		    unchanged. Note that this is the _same_ map_func as
		    `tfe.save_network_checkpoint`, not an inverse mapping.
	**/
	static public function restore_network_checkpoint(network:Dynamic, save_path:Dynamic, ?map_func:Dynamic):Dynamic;
	/**
		Save variables from the Network to a checkpoint. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please inherit from tf.keras.Model instead of tfe.Network, and use tf.keras.Model.save_weights.
		
		Args:
		  network: A Network object to save.
		  save_path: Either a checkpoint prefix or the name of a directory to save
		    the checkpoint in (in which case the checkpoint will be named based on
		    the Network name).
		  global_step: The global step to use when naming the checkpoint. If None
		    (default), we will first try to get the default global step. If that
		    fails because no default global step exists, then the checkpoint is
		    created without a global step suffix.
		  map_func: A function mapping fully qualified variable names
		    (e.g. 'my_network_1/dense_1/kernel') to names in the checkpoint. By
		    default (if `map_func=None`), the variable prefix for the network being
		    restored (`Network.scope_name + '/'`, e.g. 'my_network_1/') is stripped
		    and all other variable names (shared with other Networks) are left
		    unchanged.
		Returns:
		  The checkpoint prefix for the saved checkpoint, which may be passed to
		  `Network.restore`.
		Raises:
		  ValueError: If the Network has not yet been called, or if map_func results
		    in a name collision.
	**/
	static public function save_network_checkpoint(network:Dynamic, save_path:Dynamic, ?global_step:Dynamic, ?map_func:Dynamic):Dynamic;
}