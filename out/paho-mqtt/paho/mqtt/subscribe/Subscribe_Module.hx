/* This file is generated, do not edit! */
package paho.mqtt.subscribe;
@:pythonImport("paho.mqtt.subscribe") extern class Subscribe_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Internal v5 callback
	**/
	static public function _on_connect(client:Dynamic, userdata:Dynamic, flags:Dynamic, rc:Dynamic):Dynamic;
	/**
		Internal callback
	**/
	static public function _on_connect_v5(client:Dynamic, userdata:Dynamic, flags:Dynamic, rc:Dynamic, properties:Dynamic):Dynamic;
	/**
		Internal callback
	**/
	static public function _on_message_callback(client:Dynamic, userdata:Dynamic, message:Dynamic):Dynamic;
	/**
		Internal callback
	**/
	static public function _on_message_simple(client:Dynamic, userdata:Dynamic, message:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Subscribe to a list of topics and process them in a callback function.
		
		This function creates an MQTT client, connects to a broker and subscribes
		to a list of topics. Incoming messages are processed by the user provided
		callback.  This is a blocking function and will never return.
		
		callback : function of the form "on_message(client, userdata, message)" for
		           processing the messages received.
		
		topics : either a string containing a single topic to subscribe to, or a
		         list of topics to subscribe to.
		
		qos : the qos to use when subscribing. This is applied to all topics.
		
		userdata : passed to the callback
		
		hostname : a string containing the address of the broker to connect to.
		           Defaults to localhost.
		
		port : the port to connect to the broker on. Defaults to 1883.
		
		client_id : the MQTT client id to use. If "" or None, the Paho library will
		            generate a client id automatically.
		
		keepalive : the keepalive timeout value for the client. Defaults to 60
		            seconds.
		
		will : a dict containing will parameters for the client: will = {'topic':
		       "<topic>", 'payload':"<payload">, 'qos':<qos>, 'retain':<retain>}.
		       Topic is required, all other parameters are optional and will
		       default to None, 0 and False respectively.
		       Defaults to None, which indicates no will should be used.
		
		auth : a dict containing authentication parameters for the client:
		       auth = {'username':"<username>", 'password':"<password>"}
		       Username is required, password is optional and will default to None
		       if not provided.
		       Defaults to None, which indicates no authentication is to be used.
		
		tls : a dict containing TLS configuration parameters for the client:
		      dict = {'ca_certs':"<ca_certs>", 'certfile':"<certfile>",
		      'keyfile':"<keyfile>", 'tls_version':"<tls_version>",
		      'ciphers':"<ciphers">, 'insecure':"<bool>"}
		      ca_certs is required, all other parameters are optional and will
		      default to None if not provided, which results in the client using
		      the default behaviour - see the paho.mqtt.client documentation.
		      Alternatively, tls input can be an SSLContext object, which will be
		      processed using the tls_set_context method.
		      Defaults to None, which indicates that TLS should not be used.
		
		transport : set to "tcp" to use the default setting of transport which is
		      raw TCP. Set to "websockets" to use WebSockets as the transport.
		
		clean_session : a boolean that determines the client type. If True,
		                the broker will remove all information about this client
		                when it disconnects. If False, the client is a persistent
		                client and subscription information and queued messages
		                will be retained when the client disconnects.
		                Defaults to True.
		
		proxy_args: a dictionary that will be given to the client.
	**/
	static public function callback(callback:Dynamic, topics:Dynamic, ?qos:Dynamic, ?userdata:Dynamic, ?hostname:Dynamic, ?port:Dynamic, ?client_id:Dynamic, ?keepalive:Dynamic, ?will:Dynamic, ?auth:Dynamic, ?tls:Dynamic, ?protocol:Dynamic, ?transport:Dynamic, ?clean_session:Dynamic, ?proxy_args:Dynamic):Dynamic;
	/**
		Subscribe to a list of topics and return msg_count messages.
		
		This function creates an MQTT client, connects to a broker and subscribes
		to a list of topics. Once "msg_count" messages have been received, it
		disconnects cleanly from the broker and returns the messages.
		
		topics : either a string containing a single topic to subscribe to, or a
		         list of topics to subscribe to.
		
		qos : the qos to use when subscribing. This is applied to all topics.
		
		msg_count : the number of messages to retrieve from the broker.
		            if msg_count == 1 then a single MQTTMessage will be returned.
		            if msg_count > 1 then a list of MQTTMessages will be returned.
		
		retained : If set to True, retained messages will be processed the same as
		           non-retained messages. If set to False, retained messages will
		           be ignored. This means that with retained=False and msg_count=1,
		           the function will return the first message received that does
		           not have the retained flag set.
		
		hostname : a string containing the address of the broker to connect to.
		           Defaults to localhost.
		
		port : the port to connect to the broker on. Defaults to 1883.
		
		client_id : the MQTT client id to use. If "" or None, the Paho library will
		            generate a client id automatically.
		
		keepalive : the keepalive timeout value for the client. Defaults to 60
		            seconds.
		
		will : a dict containing will parameters for the client: will = {'topic':
		       "<topic>", 'payload':"<payload">, 'qos':<qos>, 'retain':<retain>}.
		       Topic is required, all other parameters are optional and will
		       default to None, 0 and False respectively.
		       Defaults to None, which indicates no will should be used.
		
		auth : a dict containing authentication parameters for the client:
		       auth = {'username':"<username>", 'password':"<password>"}
		       Username is required, password is optional and will default to None
		       if not provided.
		       Defaults to None, which indicates no authentication is to be used.
		
		tls : a dict containing TLS configuration parameters for the client:
		      dict = {'ca_certs':"<ca_certs>", 'certfile':"<certfile>",
		      'keyfile':"<keyfile>", 'tls_version':"<tls_version>",
		      'ciphers':"<ciphers">, 'insecure':"<bool>"}
		      ca_certs is required, all other parameters are optional and will
		      default to None if not provided, which results in the client using
		      the default behaviour - see the paho.mqtt.client documentation.
		      Alternatively, tls input can be an SSLContext object, which will be
		      processed using the tls_set_context method.
		      Defaults to None, which indicates that TLS should not be used.
		
		transport : set to "tcp" to use the default setting of transport which is
		      raw TCP. Set to "websockets" to use WebSockets as the transport.
		
		clean_session : a boolean that determines the client type. If True,
		                the broker will remove all information about this client
		                when it disconnects. If False, the client is a persistent
		                client and subscription information and queued messages
		                will be retained when the client disconnects.
		                Defaults to True.
		
		proxy_args: a dictionary that will be given to the client.
	**/
	static public function simple(topics:Dynamic, ?qos:Dynamic, ?msg_count:Dynamic, ?retained:Dynamic, ?hostname:Dynamic, ?port:Dynamic, ?client_id:Dynamic, ?keepalive:Dynamic, ?will:Dynamic, ?auth:Dynamic, ?tls:Dynamic, ?protocol:Dynamic, ?transport:Dynamic, ?clean_session:Dynamic, ?proxy_args:Dynamic):Dynamic;
}