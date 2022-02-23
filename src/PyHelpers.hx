import python.*;
import haxe.macro.*;
import haxe.macro.Expr;

class KwCall {
	@:noUsing
	macro static public function kw(exprs:Array<Expr>):Expr {
		var objd = {
			expr: EObjectDecl([for(e in exprs) switch (e) {
				case macro $i{k} => $v:
					{
						field: k,
						expr: v
					}
				case _:
					Context.error("Invalid expr. Should be in the form of `key => value`.", e.pos);
			}]),
			pos: Context.currentPos()
		};
		return macro ($objd:python.KwArgs<Dynamic>);
	}

	macro static public function call(func:ExprOf<haxe.Constraints.Function>, args:Array<Expr>):Expr {
		var realArgs:Array<Expr> = [];
		var buildKwArgs:Array<Expr> = [macro var kwArgs = new python.Dict<String,Dynamic>()];
		var kwAppeared = false;
		for (e in args) switch (e) {
			case macro $i{k} => $v:
				kwAppeared = true;
				buildKwArgs.push(macro kwArgs.set($v{k}, $v));
			case _:
				if (kwAppeared)
					Context.error("Invalid expr. Should be in the form of `key => value`.", e.pos);
				else
					realArgs.push(e);
		};
		buildKwArgs.push(macro kwArgs);
		realArgs.push(macro ($b{buildKwArgs}:python.KwArgs<Dynamic>));
		switch (Context.typeof(func)) {
			case TFun(args, ret):
				return macro ($func:haxe.Constraints.Function)($a{realArgs});
			case _:
				Context.error("should be a TFun", func.pos);
		}
		return macro {};
	}
}

#if !macro
class IterableAdaptor {
	static public function iterator<T>(it:NativeIterable<T>)
		return Lib.toHaxeIterable(it).iterator();
}

class IteratorAdaptor {
	static public function iterator<T>(it:NativeIterator<T>)
		return Lib.toHaxeIterator(it);
}

class DynamicIterationAdaptor {
	static public function iterator<T>(it:Dynamic)
		return Lib.toHaxeIterable(it).iterator();
}
#end
