/* This file is generated, do not edit! */
package scipy.integrate;
@:native("scipy.integrate.complex_ode") extern class Complex_ode {
	public function integrate(t:Dynamic, ?step:Dynamic, ?relax:Dynamic):Void;
	public function set_f_params(args:haxe.extern.Rest<Dynamic>):Void;
	public function set_initial_value(y:Dynamic, ?t:Dynamic):Void;
	public function set_integrator(args:haxe.extern.Rest<Dynamic>):Void;
	public function set_jac_params(args:haxe.extern.Rest<Dynamic>):Void;
	public function set_solout(solout:Dynamic):Void;
	public function successful():Void;
	public var y : Dynamic;
}