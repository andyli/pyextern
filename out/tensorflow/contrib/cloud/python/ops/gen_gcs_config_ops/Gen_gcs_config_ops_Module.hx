/* This file is generated, do not edit! */
package tensorflow.contrib.cloud.python.ops.gen_gcs_config_ops;
@:pythonImport("tensorflow.contrib.cloud.python.ops.gen_gcs_config_ops") extern class Gen_gcs_config_ops_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Re-configures the GCS block cache with the new configuration values.
		
		If the values are the same as already configured values, this op is a no-op. If
		they are different, the current contents of the block cache is dropped, and a
		new block cache is created fresh.
		
		Args:
		  max_cache_size: A `Tensor` of type `uint64`.
		  block_size: A `Tensor` of type `uint64`.
		  max_staleness: A `Tensor` of type `uint64`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function gcs_configure_block_cache(max_cache_size:Dynamic, block_size:Dynamic, max_staleness:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function gcs_configure_block_cache
	**/
	static public function gcs_configure_block_cache_eager_fallback(max_cache_size:Dynamic, block_size:Dynamic, max_staleness:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Configures the credentials used by the GCS client of the local TF runtime.
		
		The json input can be of the format:
		
		1. Refresh Token:
		{
		  "client_id": "<redacted>",
		  "client_secret": "<redacted>",
		  "refresh_token: "<redacted>",
		  "type": "authorized_user",
		}
		
		2. Service Account:
		{
		  "type": "service_account",
		  "project_id": "<redacted>",
		  "private_key_id": "<redacted>",
		  "private_key": "------BEGIN PRIVATE KEY-----\n<REDACTED>\n-----END PRIVATE KEY------\n",
		  "client_email": "<REDACTED>@<REDACTED>.iam.gserviceaccount.com",
		  "client_id": "<REDACTED>",
		  # Some additional fields elided
		}
		
		Note the credentials established through this method are shared across all
		sessions run on this runtime.
		
		Note be sure to feed the inputs to this op to ensure the credentials are not
		stored in a constant op within the graph that might accidentally be checkpointed
		or in other ways be persisted or exfiltrated.
		
		Args:
		  json: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function gcs_configure_credentials(json:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function gcs_configure_credentials
	**/
	static public function gcs_configure_credentials_eager_fallback(json:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}