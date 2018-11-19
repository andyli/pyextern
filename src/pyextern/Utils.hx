package pyextern;

class Utils {
	static public function upperCaseFirstLetter(str:String):String {
		var re_letter = ~/[A-Za-z]/;
		if (!re_letter.match(str)) throw "no letter in " + str;
		return re_letter.matchedLeft() + re_letter.matched(0).toUpperCase() + re_letter.matchedRight();
	}

	static public function lowerCaseFirstLetter(str:String):String {
		var re_letter = ~/[A-Za-z]/;
		if (!re_letter.match(str)) throw "no letter in " + str;
		return re_letter.matchedLeft() + re_letter.matched(0).toLowerCase() + re_letter.matchedRight();
	}
}