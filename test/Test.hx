package;

import facebook.yoga.Enums.Direction;
import facebook.yoga.Enums.Edge;
import facebook.yoga.Enums.PositionType;
import facebook.Yoga;
import facebook.yoga.*;

import facebook.yoga.Layout;

import utest.Assert;
import utest.Runner;
import utest.ui.Report;


class YogaSpec {

	public function new(){}

	public function setup(){
		
	}

	public function teardown(){
		
	}

	//Absolute positions

	public function testAbsoluteLayoutWidthHeightStartTop() {
		var config = Config.init();
		var root:Node = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);


		var root_child0:Node = Yoga.newNodeWithConfig(config);

		Yoga.nodeStyleSetPositionType(root_child0, PositionType.Absolute);
		Yoga.nodeStyleSetPosition(root_child0, Edge.Start, 10);
		Yoga.nodeStyleSetPosition(root_child0, Edge.Top, 10);
		Yoga.nodeStyleSetWidth(root_child0, 10);
		Yoga.nodeStyleSetHeight(root_child0, 10);
		Yoga.nodeInsertChild(root, root_child0, 0);

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);
		
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(10, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));	


		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);	

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(80, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);

	}

}


class Test {
	public static function main(){
		var test = new Runner();
		test.addCase(new YogaSpec());
		
		Report.create(test);
		test.run();		
	}
}