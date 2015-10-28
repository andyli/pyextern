/* This file is generated, do not edit! */
package scipy.integrate;
@:pythonImport("scipy.integrate", "ode") extern class Ode {
	public function integrate(t:Dynamic, ?step:Dynamic, ?relax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_f_params(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_initial_value(y:Dynamic, ?t:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_integrator(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_jac_params(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_solout(solout:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function successful(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var y : Dynamic;
}