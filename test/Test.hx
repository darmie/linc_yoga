package;

import facebook.Yoga;
import facebook.yoga.*;

import facebook.yoga.Layout;

import utest.Assert;


class YogaSpec {

	public function new(){}

	public function setup(){
		
	}

	public function teardown(){
		
	}

	public function testComputedLayoutMargin () {
		var node:Node = Yoga.newNode();

		
	}

}


class Test {
	public static function main(){
		// var test = new Runner();
		// test.addCase(new YogaSpec());
		
		// Report.create(test);
		// test.run();

	 	var config:Config = Yoga.newConfig();

	 	var node:Node = Yoga.newNodeWithConfig(config);
		
	 	node.setLayout(Layout.init());

	 	Yoga.nodeCalculateLayout(node, 200.0, 200.0, facebook.yoga.Enums.Direction.LTR);

	 	var width:Float = node.getLayout().dimensions[0];
	 	var height:Float = node.getLayout().dimensions[1];

	 	trace('${width}, ${height}');		
	}
}