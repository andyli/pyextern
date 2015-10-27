/* This file is generated, do not edit! */
package scipy.odr;
@:native("scipy.odr.ODR") extern class ODR {
	public function restart(?iter:Dynamic = null):Dynamic;
	public function run():Dynamic;
	public function set_iprint(?init:Dynamic = null, ?so_init:Dynamic = null, ?iter:Dynamic = null, ?so_iter:Dynamic = null, ?iter_step:Dynamic = null, ?final:Dynamic = null, ?so_final:Dynamic = null):Void;
	public function set_job(?fit_type:Dynamic = null, ?deriv:Dynamic = null, ?var_calc:Dynamic = null, ?del_init:Dynamic = null, ?restart:Dynamic = null):Void;
}