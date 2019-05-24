import haxe.macro.*;

class Test {
    static var packages(default, never) =
        switch(Sys.getEnv("GENLIBS")) {
            case null:
                "docutils,pkgutil,inspect,importlib,textwrap,numpy,scipy,pandas,matplotlib,seaborn,tensorflow,torch,theano,keras".split(",");
            case libs:
                [for (p in libs.split(",")) p.split(".").map(pyextern.Utils.lowerCaseFirstLetter).join(".")];
        };
    macro static function importPackages() {
        for (p in packages) {
            Sys.println('Trying to include $p...');
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