package;

import kha.System;

class Main {
	public static function main() {
		System.init({title: "Kha TMX Map Example", width: 480, height: 360}, function () {
			new Project();
		});
	}
}
