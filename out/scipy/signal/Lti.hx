/* This file is generated, do not edit! */
package scipy.signal;
@:native("scipy.signal.lti") extern class Lti {
	public var A : Dynamic;
	public var B : Dynamic;
	public function bode(?w:Dynamic = null, ?n:Dynamic):Void;
	public var C : Dynamic;
	public var D : Dynamic;
	public var den : Dynamic;
	public function freqresp(?w:Dynamic = null, ?n:Dynamic):Void;
	public var gain : Dynamic;
	public function impulse(?X0:Dynamic = null, ?T:Dynamic = null, ?N:Dynamic = null):Void;
	public var num : Dynamic;
	public function output(U:Dynamic, T:Dynamic, ?X0:Dynamic = null):Void;
	public var poles : Dynamic;
	public function step(?X0:Dynamic = null, ?T:Dynamic = null, ?N:Dynamic = null):Void;
	public var zeros : Dynamic;
}