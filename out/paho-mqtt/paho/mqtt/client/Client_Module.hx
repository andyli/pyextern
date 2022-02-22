/* This file is generated, do not edit! */
package paho.mqtt.client;
@:pythonImport("paho.mqtt.client") extern class Client_Module {
	static public var AUTH : Dynamic;
	static public var CONNACK : Dynamic;
	static public var CONNACK_ACCEPTED : Dynamic;
	static public var CONNACK_REFUSED_BAD_USERNAME_PASSWORD : Dynamic;
	static public var CONNACK_REFUSED_IDENTIFIER_REJECTED : Dynamic;
	static public var CONNACK_REFUSED_NOT_AUTHORIZED : Dynamic;
	static public var CONNACK_REFUSED_PROTOCOL_VERSION : Dynamic;
	static public var CONNACK_REFUSED_SERVER_UNAVAILABLE : Dynamic;
	static public var CONNECT : Dynamic;
	static public var DISCONNECT : Dynamic;
	static public var EAGAIN : Dynamic;
	static public var HAVE_DNS : Dynamic;
	static public var LOGGING_LEVEL : Dynamic;
	static public var MQTT_BRIDGE : Dynamic;
	static public var MQTT_CLEAN_START_FIRST_ONLY : Dynamic;
	static public var MQTT_CLIENT : Dynamic;
	static public var MQTT_ERR_ACL_DENIED : Dynamic;
	static public var MQTT_ERR_AGAIN : Dynamic;
	static public var MQTT_ERR_AUTH : Dynamic;
	static public var MQTT_ERR_CONN_LOST : Dynamic;
	static public var MQTT_ERR_CONN_REFUSED : Dynamic;
	static public var MQTT_ERR_ERRNO : Dynamic;
	static public var MQTT_ERR_INVAL : Dynamic;
	static public var MQTT_ERR_KEEPALIVE : Dynamic;
	static public var MQTT_ERR_NOMEM : Dynamic;
	static public var MQTT_ERR_NOT_FOUND : Dynamic;
	static public var MQTT_ERR_NOT_SUPPORTED : Dynamic;
	static public var MQTT_ERR_NO_CONN : Dynamic;
	static public var MQTT_ERR_PAYLOAD_SIZE : Dynamic;
	static public var MQTT_ERR_PROTOCOL : Dynamic;
	static public var MQTT_ERR_QUEUE_SIZE : Dynamic;
	static public var MQTT_ERR_SUCCESS : Dynamic;
	static public var MQTT_ERR_TLS : Dynamic;
	static public var MQTT_ERR_UNKNOWN : Dynamic;
	static public var MQTT_LOG_DEBUG : Dynamic;
	static public var MQTT_LOG_ERR : Dynamic;
	static public var MQTT_LOG_INFO : Dynamic;
	static public var MQTT_LOG_NOTICE : Dynamic;
	static public var MQTT_LOG_WARNING : Dynamic;
	static public var MQTTv31 : Dynamic;
	static public var MQTTv311 : Dynamic;
	static public var MQTTv5 : Dynamic;
	static public var PINGREQ : Dynamic;
	static public var PINGRESP : Dynamic;
	static public var PUBACK : Dynamic;
	static public var PUBCOMP : Dynamic;
	static public var PUBLISH : Dynamic;
	static public var PUBREC : Dynamic;
	static public var PUBREL : Dynamic;
	static public var SUBACK : Dynamic;
	static public var SUBSCRIBE : Dynamic;
	static public var UNSUBACK : Dynamic;
	static public var UNSUBSCRIBE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		TCP/IP socketpair including Windows support
	**/
	static public function _socketpair_compat():Dynamic;
	/**
		Convert a number to base-62 representation.
	**/
	static public function base62(num:Dynamic, ?base:Dynamic, ?padding:Dynamic):Dynamic;
	/**
		Return the string associated with a CONNACK result.
	**/
	static public function connack_string(connack_code:Dynamic):Dynamic;
	/**
		Return the error string associated with an mqtt error number.
	**/
	static public function error_string(mqtt_errno:Dynamic):Dynamic;
	static public var mqtt_cs_connect_async : Dynamic;
	static public var mqtt_cs_connected : Dynamic;
	static public var mqtt_cs_disconnecting : Dynamic;
	static public var mqtt_cs_new : Dynamic;
	static public var mqtt_ms_invalid : Dynamic;
	static public var mqtt_ms_publish : Dynamic;
	static public var mqtt_ms_queued : Dynamic;
	static public var mqtt_ms_resend_pubcomp : Dynamic;
	static public var mqtt_ms_resend_pubrel : Dynamic;
	static public var mqtt_ms_send_pubrec : Dynamic;
	static public var mqtt_ms_wait_for_puback : Dynamic;
	static public var mqtt_ms_wait_for_pubcomp : Dynamic;
	static public var mqtt_ms_wait_for_pubrec : Dynamic;
	static public var mqtt_ms_wait_for_pubrel : Dynamic;
	static public var sockpair_data : Dynamic;
	static public var socks : Dynamic;
	/**
		monotonic() -> float
		
		Monotonic clock, cannot go backward.
	**/
	static public function time_func(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether a topic matches a subscription.
		
		For example:
		
		foo/bar would match the subscription foo/# or +/bar
		non/matching would not match the subscription non/+/+
	**/
	static public function topic_matches_sub(sub:Dynamic, topic:Dynamic):Dynamic;
}