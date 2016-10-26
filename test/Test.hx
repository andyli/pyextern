import haxe.macro.*;

class Test {
    static var packages(default, never) = "docutils,pkgutil,inspect,importlib,textwrap,numpy,scipy,pandas,matplotlib,seaborn,tensorflow".split(",");
    macro static function importPackages() {
        for (p in packages) {
            #if (haxe_ver >= 3.3)
                Compiler.include(p, true, null, null, true);
            #else
                Compiler.include(p, true);
            #end
        }
        return macro {};
    }

    static function main():Void {
        importPackages();
    }
}