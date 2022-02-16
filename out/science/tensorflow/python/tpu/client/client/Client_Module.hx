/* This file is generated, do not edit! */
package tensorflow.python.tpu.client.client;
@:pythonImport("tensorflow.python.tpu.client.client") extern class Client_Module {
	static public function FLAGS(argv:Dynamic, ?known_only:Dynamic):Dynamic;
	static public var _DEFAULT_ENDPOINT_PORT : Dynamic;
	static public var _DEFAULT_ENV_VARIABLE : Dynamic;
	static public var _DISCOVERY_SERVICE_URL_ENV_VARIABLE : Dynamic;
	static public var _ENDPOINTS_SEPARATOR : Dynamic;
	static public var _GCE_METADATA_URL_ENV_VARIABLE : Dynamic;
	static public var _GKE_ENV_VARIABLE : Dynamic;
	static public var _GOOGLE_API_CLIENT_INSTALLED : Dynamic;
	static public var _OOM_EVENT_COOL_TIME_SEC : Dynamic;
	static public var _VERSION_SWITCHER_ENDPOINT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _as_text(s:Dynamic):Dynamic;
	static public function _environment_discovery_url():Dynamic;
	/**
		Yields a dict with ip address and port.
	**/
	static public function _environment_var_to_network_endpoints(endpoints:Dynamic):Dynamic;
	static public function _gce_metadata_endpoint():Dynamic;
	static public function _get_tpu_name(tpu:Dynamic):Dynamic;
	static public function _request_compute_metadata(path:Dynamic):Dynamic;
	/**
		A wrapper function around datetime.datetime.utcnow.
		
		This function is created for unit testing purpose. It's not easy to do
		StubOutWithMock with datetime.datetime package.
		
		Returns:
		  datetime.datetime
	**/
	static public function _utcnow():Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}