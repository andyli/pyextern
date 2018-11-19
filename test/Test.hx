import haxe.macro.*;

class Test {
    static var packages(default, never) =
        switch(Sys.getEnv("GENLIBS")) {
            case null:
                "docutils,pkgutil,inspect,importlib,textwrap,numpy,scipy,pandas,matplotlib,seaborn,tensorflow,torch,theano,keras".split(",");
            case libs:
                libs.split(",").map(pyextern.Utils.lowerCaseFirstLetter);
        };
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