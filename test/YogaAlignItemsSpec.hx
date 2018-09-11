import facebook.yoga.Enums.Edge;
import facebook.yoga.Enums.Justify;
import facebook.yoga.Enums.FlxWrap;
import facebook.yoga.Enums.Align;
import facebook.yoga.Enums.Direction;
import facebook.yoga.Enums.FlexDirection;
import facebook.Yoga;
import facebook.yoga.*;
import utest.Assert;

class YogaAlignItemsSpec {
	public function new() {}

	public function setup() {}

	public function teardown() {}
    
	public function testAlignItems_stretch() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetHeight(root_child0, 10);
		Yoga.nodeInsertChild(root, root_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignItems_center() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetAlignItems(root, Align.Center);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child0, 10);
		Yoga.nodeStyleSetHeight(root_child0, 10);
		Yoga.nodeInsertChild(root, root_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(45, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(45, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignItems_flex_start() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetAlignItems(root, Align.FlexStart);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child0, 10);
		Yoga.nodeStyleSetHeight(root_child0, 10);
		Yoga.nodeInsertChild(root, root_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(90, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignItems_flex_end() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetAlignItems(root, Align.FlexEnd);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child0, 10);
		Yoga.nodeStyleSetHeight(root_child0, 10);
		Yoga.nodeInsertChild(root, root_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(90, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignBaseline() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexDirection(root, FlexDirection.Row);
		Yoga.nodeStyleSetAlignItems(root, Align.Baseline);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child0, 50);
		Yoga.nodeStyleSetHeight(root_child0, 50);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child1 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1, 50);
		Yoga.nodeStyleSetHeight(root_child1, 20);
		Yoga.nodeInsertChild(root, root_child1, 1);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(30, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(30, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignBaseline_child() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexDirection(root, FlexDirection.Row);
		Yoga.nodeStyleSetAlignItems(root, Align.Baseline);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child0, 50);
		Yoga.nodeStyleSetHeight(root_child0, 50);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child1 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1, 50);
		Yoga.nodeStyleSetHeight(root_child1, 20);
		Yoga.nodeInsertChild(root, root_child1, 1);

		var root_child1_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1_child0, 50);
		Yoga.nodeStyleSetHeight(root_child1_child0, 10);
		Yoga.nodeInsertChild(root_child1, root_child1_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(40, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(40, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignBaseline_child_multiline() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexDirection(root, FlexDirection.Row);
		Yoga.nodeStyleSetAlignItems(root, Align.Baseline);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child0, 50);
		Yoga.nodeStyleSetHeight(root_child0, 60);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child1 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexDirection(root_child1, FlexDirection.Row);
		Yoga.nodeStyleSetFlexWrap(root_child1, FlxWrap.Wrap);
		Yoga.nodeStyleSetWidth(root_child1, 50);
		Yoga.nodeStyleSetHeight(root_child1, 25);
		Yoga.nodeInsertChild(root, root_child1, 1);

		var root_child1_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1_child0, 25);
		Yoga.nodeStyleSetHeight(root_child1_child0, 20);
		Yoga.nodeInsertChild(root_child1, root_child1_child0, 0);

		var root_child1_child1 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1_child1, 25);
		Yoga.nodeStyleSetHeight(root_child1_child1, 10);
		Yoga.nodeInsertChild(root_child1, root_child1_child1, 1);

		var root_child1_child2 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1_child2, 25);
		Yoga.nodeStyleSetHeight(root_child1_child2, 20);
		Yoga.nodeInsertChild(root_child1, root_child1_child2, 2);

		var root_child1_child3 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1_child3, 25);
		Yoga.nodeStyleSetHeight(root_child1_child3, 10);
		Yoga.nodeInsertChild(root_child1, root_child1_child3, 3);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(40, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(25, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child1_child1));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child1));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child1));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child1));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child2));
		Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child1_child2));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child2));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1_child2));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child1_child3));
		Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child1_child3));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child3));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child3));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(40, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(25, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child1));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child1));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child1));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child1));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child1_child2));
		Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child1_child2));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child2));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1_child2));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child3));
		Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child1_child3));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child3));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child3));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignBaseline_child_multiline_override() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexDirection(root, FlexDirection.Row);
		Yoga.nodeStyleSetAlignItems(root, Align.Baseline);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child0, 50);
		Yoga.nodeStyleSetHeight(root_child0, 60);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child1 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexDirection(root_child1, FlexDirection.Row);
		Yoga.nodeStyleSetFlexWrap(root_child1, FlxWrap.Wrap);
		Yoga.nodeStyleSetWidth(root_child1, 50);
		Yoga.nodeStyleSetHeight(root_child1, 25);
		Yoga.nodeInsertChild(root, root_child1, 1);

		var root_child1_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1_child0, 25);
		Yoga.nodeStyleSetHeight(root_child1_child0, 20);
		Yoga.nodeInsertChild(root_child1, root_child1_child0, 0);

		var root_child1_child1 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetAlignSelf(root_child1_child1, Align.Baseline);
		Yoga.nodeStyleSetWidth(root_child1_child1, 25);
		Yoga.nodeStyleSetHeight(root_child1_child1, 10);
		Yoga.nodeInsertChild(root_child1, root_child1_child1, 1);

		var root_child1_child2 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1_child2, 25);
		Yoga.nodeStyleSetHeight(root_child1_child2, 20);
		Yoga.nodeInsertChild(root_child1, root_child1_child2, 2);

		var root_child1_child3 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetAlignSelf(root_child1_child3, Align.Baseline);
		Yoga.nodeStyleSetWidth(root_child1_child3, 25);
		Yoga.nodeStyleSetHeight(root_child1_child3, 10);
		Yoga.nodeInsertChild(root_child1, root_child1_child3, 3);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(25, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child1_child1));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child1));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child1));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child1));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child2));
		Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child1_child2));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child2));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1_child2));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child1_child3));
		Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child1_child3));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child3));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child3));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(25, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child1));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child1));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child1));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child1));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child1_child2));
		Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child1_child2));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child2));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1_child2));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child3));
		Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child1_child3));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child3));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child3));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignBaseline_child_multiline_no_override_on_secondline() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexDirection(root, FlexDirection.Row);
		Yoga.nodeStyleSetAlignItems(root, Align.Baseline);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child0, 50);
		Yoga.nodeStyleSetHeight(root_child0, 60);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child1 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexDirection(root_child1, FlexDirection.Row);
		Yoga.nodeStyleSetFlexWrap(root_child1, FlxWrap.Wrap);
		Yoga.nodeStyleSetWidth(root_child1, 50);
		Yoga.nodeStyleSetHeight(root_child1, 25);
		Yoga.nodeInsertChild(root, root_child1, 1);

		var root_child1_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1_child0, 25);
		Yoga.nodeStyleSetHeight(root_child1_child0, 20);
		Yoga.nodeInsertChild(root_child1, root_child1_child0, 0);

		var root_child1_child1 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1_child1, 25);
		Yoga.nodeStyleSetHeight(root_child1_child1, 10);
		Yoga.nodeInsertChild(root_child1, root_child1_child1, 1);

		var root_child1_child2 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1_child2, 25);
		Yoga.nodeStyleSetHeight(root_child1_child2, 20);
		Yoga.nodeInsertChild(root_child1, root_child1_child2, 2);

		var root_child1_child3 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetAlignSelf(root_child1_child3, Align.Baseline);
		Yoga.nodeStyleSetWidth(root_child1_child3, 25);
		Yoga.nodeStyleSetHeight(root_child1_child3, 10);
		Yoga.nodeInsertChild(root_child1, root_child1_child3, 3);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(40, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(25, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child1_child1));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child1));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child1));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child1));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child2));
		Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child1_child2));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child2));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1_child2));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child1_child3));
		Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child1_child3));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child3));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child3));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(60, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(40, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(25, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child1));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child1));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child1));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child1));

		Assert.floatEquals(25, Yoga.nodeLayoutGetLeft(root_child1_child2));
		Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child1_child2));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child2));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1_child2));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child3));
		Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root_child1_child3));
		Assert.floatEquals(25, Yoga.nodeLayoutGetWidth(root_child1_child3));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child3));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignBaseline_child_top() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexDirection(root, FlexDirection.Row);
		Yoga.nodeStyleSetAlignItems(root, Align.Baseline);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetPosition(root_child0, Edge.Top, 10);
		Yoga.nodeStyleSetWidth(root_child0, 50);
		Yoga.nodeStyleSetHeight(root_child0, 50);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child1 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1, 50);
		Yoga.nodeStyleSetHeight(root_child1, 20);
		Yoga.nodeInsertChild(root, root_child1, 1);

		var root_child1_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1_child0, 50);
		Yoga.nodeStyleSetHeight(root_child1_child0, 10);
		Yoga.nodeInsertChild(root_child1, root_child1_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(40, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(40, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignBaseline_child_top2() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexDirection(root, FlexDirection.Row);
		Yoga.nodeStyleSetAlignItems(root, Align.Baseline);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child0, 50);
		Yoga.nodeStyleSetHeight(root_child0, 50);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child1 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetPosition(root_child1, Edge.Top, 5);
		Yoga.nodeStyleSetWidth(root_child1, 50);
		Yoga.nodeStyleSetHeight(root_child1, 20);
		Yoga.nodeInsertChild(root, root_child1, 1);

		var root_child1_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1_child0, 50);
		Yoga.nodeStyleSetHeight(root_child1_child0, 10);
		Yoga.nodeInsertChild(root_child1, root_child1_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(45, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(45, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignBaseline_double_nested_child() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexDirection(root, FlexDirection.Row);
		Yoga.nodeStyleSetAlignItems(root, Align.Baseline);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child0, 50);
		Yoga.nodeStyleSetHeight(root_child0, 50);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child0_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child0_child0, 50);
		Yoga.nodeStyleSetHeight(root_child0_child0, 20);
		Yoga.nodeInsertChild(root_child0, root_child0_child0, 0);

		var root_child1 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1, 50);
		Yoga.nodeStyleSetHeight(root_child1, 20);
		Yoga.nodeInsertChild(root, root_child1, 1);

		var root_child1_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1_child0, 50);
		Yoga.nodeStyleSetHeight(root_child1_child0, 15);
		Yoga.nodeInsertChild(root_child1, root_child1_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0_child0));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(5, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(15, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(5, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(15, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignBaseline_column() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetAlignItems(root, Align.Baseline);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child0, 50);
		Yoga.nodeStyleSetHeight(root_child0, 50);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child1 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1, 50);
		Yoga.nodeStyleSetHeight(root_child1, 20);
		Yoga.nodeInsertChild(root, root_child1, 1);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignBaseline_child_margin() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexDirection(root, FlexDirection.Row);
		Yoga.nodeStyleSetAlignItems(root, Align.Baseline);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetMargin(root_child0, Edge.Left, 5);
		Yoga.nodeStyleSetMargin(root_child0, Edge.Top, 5);
		Yoga.nodeStyleSetMargin(root_child0, Edge.Right, 5);
		Yoga.nodeStyleSetMargin(root_child0, Edge.Bottom, 5);
		Yoga.nodeStyleSetWidth(root_child0, 50);
		Yoga.nodeStyleSetHeight(root_child0, 50);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child1 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1, 50);
		Yoga.nodeStyleSetHeight(root_child1, 20);
		Yoga.nodeInsertChild(root, root_child1, 1);

		var root_child1_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetMargin(root_child1_child0, Edge.Left, 1);
		Yoga.nodeStyleSetMargin(root_child1_child0, Edge.Top, 1);
		Yoga.nodeStyleSetMargin(root_child1_child0, Edge.Right, 1);
		Yoga.nodeStyleSetMargin(root_child1_child0, Edge.Bottom, 1);
		Yoga.nodeStyleSetWidth(root_child1_child0, 50);
		Yoga.nodeStyleSetHeight(root_child1_child0, 10);
		Yoga.nodeInsertChild(root_child1, root_child1_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(5, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(5, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(60, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(44, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(1, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(1, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(45, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(5, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(-10, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(44, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(-1, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(1, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignBaseline_child_padding() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexDirection(root, FlexDirection.Row);
		Yoga.nodeStyleSetAlignItems(root, Align.Baseline);
		Yoga.nodeStyleSetPadding(root, Edge.Left, 5);
		Yoga.nodeStyleSetPadding(root, Edge.Top, 5);
		Yoga.nodeStyleSetPadding(root, Edge.Right, 5);
		Yoga.nodeStyleSetPadding(root, Edge.Bottom, 5);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child0, 50);
		Yoga.nodeStyleSetHeight(root_child0, 50);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child1 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetPadding(root_child1, Edge.Left, 5);
		Yoga.nodeStyleSetPadding(root_child1, Edge.Top, 5);
		Yoga.nodeStyleSetPadding(root_child1, Edge.Right, 5);
		Yoga.nodeStyleSetPadding(root_child1, Edge.Bottom, 5);
		Yoga.nodeStyleSetWidth(root_child1, 50);
		Yoga.nodeStyleSetHeight(root_child1, 20);
		Yoga.nodeInsertChild(root, root_child1, 1);

		var root_child1_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1_child0, 50);
		Yoga.nodeStyleSetHeight(root_child1_child0, 10);
		Yoga.nodeInsertChild(root_child1, root_child1_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(5, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(5, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(55, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(40, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(5, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(5, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(45, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(5, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(-5, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(40, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(-5, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(5, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignBaseline_multiline() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexDirection(root, FlexDirection.Row);
		Yoga.nodeStyleSetAlignItems(root, Align.Baseline);
		Yoga.nodeStyleSetFlexWrap(root, FlxWrap.Wrap);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child0, 50);
		Yoga.nodeStyleSetHeight(root_child0, 50);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child1 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1, 50);
		Yoga.nodeStyleSetHeight(root_child1, 20);
		Yoga.nodeInsertChild(root, root_child1, 1);

		var root_child1_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1_child0, 50);
		Yoga.nodeStyleSetHeight(root_child1_child0, 10);
		Yoga.nodeInsertChild(root_child1, root_child1_child0, 0);

		var root_child2 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child2, 50);
		Yoga.nodeStyleSetHeight(root_child2, 20);
		Yoga.nodeInsertChild(root, root_child2, 2);

		var root_child2_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child2_child0, 50);
		Yoga.nodeStyleSetHeight(root_child2_child0, 10);
		Yoga.nodeInsertChild(root_child2, root_child2_child0, 0);

		var root_child3 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child3, 50);
		Yoga.nodeStyleSetHeight(root_child3, 50);
		Yoga.nodeInsertChild(root, root_child3, 3);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(40, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child2));
		Assert.floatEquals(100, Yoga.nodeLayoutGetTop(root_child2));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child2));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child2_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child2_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child2_child0));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child3));
		Assert.floatEquals(60, Yoga.nodeLayoutGetTop(root_child3));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child3));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(40, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child2));
		Assert.floatEquals(100, Yoga.nodeLayoutGetTop(root_child2));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child2));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child2_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child2_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child2_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child3));
		Assert.floatEquals(60, Yoga.nodeLayoutGetTop(root_child3));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child3));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignBaseline_multiline_column() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetAlignItems(root, Align.Baseline);
		Yoga.nodeStyleSetFlexWrap(root, FlxWrap.Wrap);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child0, 50);
		Yoga.nodeStyleSetHeight(root_child0, 50);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child1 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1, 30);
		Yoga.nodeStyleSetHeight(root_child1, 50);
		Yoga.nodeInsertChild(root, root_child1, 1);

		var root_child1_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1_child0, 20);
		Yoga.nodeStyleSetHeight(root_child1_child0, 20);
		Yoga.nodeInsertChild(root_child1, root_child1_child0, 0);

		var root_child2 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child2, 40);
		Yoga.nodeStyleSetHeight(root_child2, 70);
		Yoga.nodeInsertChild(root, root_child2, 2);

		var root_child2_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child2_child0, 10);
		Yoga.nodeStyleSetHeight(root_child2_child0, 10);
		Yoga.nodeInsertChild(root_child2, root_child2_child0, 0);

		var root_child3 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child3, 50);
		Yoga.nodeStyleSetHeight(root_child3, 20);
		Yoga.nodeInsertChild(root, root_child3, 3);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(30, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child2));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child2));
		Assert.floatEquals(40, Yoga.nodeLayoutGetWidth(root_child2));
		Assert.floatEquals(70, Yoga.nodeLayoutGetHeight(root_child2));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child2_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child2_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child2_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child2_child0));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child3));
		Assert.floatEquals(70, Yoga.nodeLayoutGetTop(root_child3));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child3));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(70, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(30, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(10, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Assert.floatEquals(10, Yoga.nodeLayoutGetLeft(root_child2));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child2));
		Assert.floatEquals(40, Yoga.nodeLayoutGetWidth(root_child2));
		Assert.floatEquals(70, Yoga.nodeLayoutGetHeight(root_child2));

		Assert.floatEquals(30, Yoga.nodeLayoutGetLeft(root_child2_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child2_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child2_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child2_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child3));
		Assert.floatEquals(70, Yoga.nodeLayoutGetTop(root_child3));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child3));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignBaseline_multiline_column2() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetAlignItems(root, Align.Baseline);
		Yoga.nodeStyleSetFlexWrap(root, FlxWrap.Wrap);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child0, 50);
		Yoga.nodeStyleSetHeight(root_child0, 50);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child1 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1, 30);
		Yoga.nodeStyleSetHeight(root_child1, 50);
		Yoga.nodeInsertChild(root, root_child1, 1);

		var root_child1_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1_child0, 20);
		Yoga.nodeStyleSetHeight(root_child1_child0, 20);
		Yoga.nodeInsertChild(root_child1, root_child1_child0, 0);

		var root_child2 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child2, 40);
		Yoga.nodeStyleSetHeight(root_child2, 70);
		Yoga.nodeInsertChild(root, root_child2, 2);

		var root_child2_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child2_child0, 10);
		Yoga.nodeStyleSetHeight(root_child2_child0, 10);
		Yoga.nodeInsertChild(root_child2, root_child2_child0, 0);

		var root_child3 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child3, 50);
		Yoga.nodeStyleSetHeight(root_child3, 20);
		Yoga.nodeInsertChild(root, root_child3, 3);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(30, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child2));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child2));
		Assert.floatEquals(40, Yoga.nodeLayoutGetWidth(root_child2));
		Assert.floatEquals(70, Yoga.nodeLayoutGetHeight(root_child2));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child2_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child2_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child2_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child2_child0));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child3));
		Assert.floatEquals(70, Yoga.nodeLayoutGetTop(root_child3));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child3));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(70, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(30, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(10, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Assert.floatEquals(10, Yoga.nodeLayoutGetLeft(root_child2));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child2));
		Assert.floatEquals(40, Yoga.nodeLayoutGetWidth(root_child2));
		Assert.floatEquals(70, Yoga.nodeLayoutGetHeight(root_child2));

		Assert.floatEquals(30, Yoga.nodeLayoutGetLeft(root_child2_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child2_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetWidth(root_child2_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child2_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child3));
		Assert.floatEquals(70, Yoga.nodeLayoutGetTop(root_child3));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child3));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignBaseline_multiline_row_and_column() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexDirection(root, FlexDirection.Row);
		Yoga.nodeStyleSetAlignItems(root, Align.Baseline);
		Yoga.nodeStyleSetFlexWrap(root, FlxWrap.Wrap);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child0, 50);
		Yoga.nodeStyleSetHeight(root_child0, 50);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child1 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1, 50);
		Yoga.nodeStyleSetHeight(root_child1, 50);
		Yoga.nodeInsertChild(root, root_child1, 1);

		var root_child1_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child1_child0, 50);
		Yoga.nodeStyleSetHeight(root_child1_child0, 10);
		Yoga.nodeInsertChild(root_child1, root_child1_child0, 0);

		var root_child2 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child2, 50);
		Yoga.nodeStyleSetHeight(root_child2, 20);
		Yoga.nodeInsertChild(root, root_child2, 2);

		var root_child2_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child2_child0, 50);
		Yoga.nodeStyleSetHeight(root_child2_child0, 10);
		Yoga.nodeInsertChild(root_child2, root_child2_child0, 0);

		var root_child3 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child3, 50);
		Yoga.nodeStyleSetHeight(root_child3, 20);
		Yoga.nodeInsertChild(root, root_child3, 3);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(40, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child2));
		Assert.floatEquals(100, Yoga.nodeLayoutGetTop(root_child2));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child2));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child2_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child2_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child2_child0));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child3));
		Assert.floatEquals(90, Yoga.nodeLayoutGetTop(root_child3));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child3));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1));
		Assert.floatEquals(40, Yoga.nodeLayoutGetTop(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
		Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child1));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child1_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child1_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child1_child0));

		Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child2));
		Assert.floatEquals(100, Yoga.nodeLayoutGetTop(root_child2));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child2));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child2_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child2_child0));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child2_child0));
		Assert.floatEquals(10, Yoga.nodeLayoutGetHeight(root_child2_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child3));
		Assert.floatEquals(90, Yoga.nodeLayoutGetTop(root_child3));
		Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child3));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child3));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignItems_center_child_with_margin_bigger_than_parent() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetJustifyContent(root, Justify.Center);
		Yoga.nodeStyleSetAlignItems(root, Align.Center);
		Yoga.nodeStyleSetWidth(root, 52);
		Yoga.nodeStyleSetHeight(root, 52);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetAlignItems(root_child0, Align.Center);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child0_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetMargin(root_child0_child0, Edge.Left, 10);
		Yoga.nodeStyleSetMargin(root_child0_child0, Edge.Right, 10);
		Yoga.nodeStyleSetWidth(root_child0_child0, 52);
		Yoga.nodeStyleSetHeight(root_child0_child0, 52);
		Yoga.nodeInsertChild(root_child0, root_child0_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(52, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(52, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(-10, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(72, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(52, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(10, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(52, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(52, Yoga.nodeLayoutGetHeight(root_child0_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(52, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(52, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(-10, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(72, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(52, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(10, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(52, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(52, Yoga.nodeLayoutGetHeight(root_child0_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignItems_flex_end_child_with_margin_bigger_than_parent() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetJustifyContent(root, Justify.Center);
		Yoga.nodeStyleSetAlignItems(root, Align.Center);
		Yoga.nodeStyleSetWidth(root, 52);
		Yoga.nodeStyleSetHeight(root, 52);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetAlignItems(root_child0, Align.FlexEnd);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child0_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetMargin(root_child0_child0, Edge.Left, 10);
		Yoga.nodeStyleSetMargin(root_child0_child0, Edge.Right, 10);
		Yoga.nodeStyleSetWidth(root_child0_child0, 52);
		Yoga.nodeStyleSetHeight(root_child0_child0, 52);
		Yoga.nodeInsertChild(root_child0, root_child0_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(52, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(52, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(-10, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(72, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(52, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(10, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(52, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(52, Yoga.nodeLayoutGetHeight(root_child0_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(52, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(52, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(-10, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(72, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(52, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(10, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(52, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(52, Yoga.nodeLayoutGetHeight(root_child0_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignItems_center_child_without_margin_bigger_than_parent() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetJustifyContent(root, Justify.Center);
		Yoga.nodeStyleSetAlignItems(root, Align.Center);
		Yoga.nodeStyleSetWidth(root, 52);
		Yoga.nodeStyleSetHeight(root, 52);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetAlignItems(root_child0, Align.Center);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child0_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child0_child0, 72);
		Yoga.nodeStyleSetHeight(root_child0_child0, 72);
		Yoga.nodeInsertChild(root_child0, root_child0_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(52, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(52, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(-10, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(-10, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(72, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(72, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(72, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(72, Yoga.nodeLayoutGetHeight(root_child0_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(52, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(52, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(-10, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(-10, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(72, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(72, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(72, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(72, Yoga.nodeLayoutGetHeight(root_child0_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignItems_flex_end_child_without_margin_bigger_than_parent() {
		var config = Config.init();

		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetJustifyContent(root, Justify.Center);
		Yoga.nodeStyleSetAlignItems(root, Align.Center);
		Yoga.nodeStyleSetWidth(root, 52);
		Yoga.nodeStyleSetHeight(root, 52);

		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetAlignItems(root_child0, Align.FlexEnd);
		Yoga.nodeInsertChild(root, root_child0, 0);

		var root_child0_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child0_child0, 72);
		Yoga.nodeStyleSetHeight(root_child0_child0, 72);
		Yoga.nodeInsertChild(root_child0, root_child0_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(52, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(52, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(-10, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(-10, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(72, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(72, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(72, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(72, Yoga.nodeLayoutGetHeight(root_child0_child0));

		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(52, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(52, Yoga.nodeLayoutGetHeight(root));

		Assert.floatEquals(-10, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(-10, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(72, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(72, Yoga.nodeLayoutGetHeight(root_child0));

		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(72, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(72, Yoga.nodeLayoutGetHeight(root_child0_child0));

		Yoga.nodeFreeRecursive(root);

		Yoga.configFree(config);
	}

	public function testAlignCenter_should_size_based_on_content() {
		var config = Config.init();
		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetAlignItems(root, Align.Center);
		Yoga.nodeStyleSetMargin(root, Edge.Top, 20);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);
		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetJustifyContent(root_child0, Justify.Center);
		Yoga.nodeStyleSetFlexShrink(root_child0, 1);
		Yoga.nodeInsertChild(root, root_child0, 0);
		var root_child0_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexGrow(root_child0_child0, 1);
		Yoga.nodeStyleSetFlexShrink(root_child0_child0, 1);
		Yoga.nodeInsertChild(root_child0, root_child0_child0, 0);
		var root_child0_child0_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root_child0_child0_child0, 20);
		Yoga.nodeStyleSetHeight(root_child0_child0_child0, 20);
		Yoga.nodeInsertChild(root_child0_child0, root_child0_child0_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));
		Assert.floatEquals(40, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetWidth(root_child0_child0_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0_child0_child0));
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));
		Assert.floatEquals(40, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetWidth(root_child0_child0_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0_child0_child0));
		Yoga.nodeFreeRecursive(root);
		Yoga.configFree(config);
	}

	public function testAlignStretch_should_size_based_on_parent() {
		var config = Config.init();
		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetMargin(root, Edge.Top, 20);
		Yoga.nodeStyleSetWidth(root, 100);
		Yoga.nodeStyleSetHeight(root, 100);
		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetJustifyContent(root_child0, Justify.Center);
		Yoga.nodeStyleSetFlexShrink(root_child0, 1);
		Yoga.nodeInsertChild(root, root_child0, 0);
		var root_child0_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexGrow(root_child0_child0, 1);
		Yoga.nodeStyleSetFlexShrink(root_child0_child0, 1);
		Yoga.nodeInsertChild(root_child0, root_child0_child0, 0);
		var root_child0_child0_child0 = Yoga.newNodeWithConfig(config);

		Yoga.nodeStyleSetWidth(root_child0_child0_child0, 20);
		Yoga.nodeStyleSetHeight(root_child0_child0_child0, 20);
		Yoga.nodeInsertChild(root_child0_child0, root_child0_child0_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetWidth(root_child0_child0_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0_child0_child0));
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(20, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0_child0));
		Assert.floatEquals(80, Yoga.nodeLayoutGetLeft(root_child0_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetWidth(root_child0_child0_child0));
		Assert.floatEquals(20, Yoga.nodeLayoutGetHeight(root_child0_child0_child0));
		Yoga.nodeFreeRecursive(root);
		Yoga.configFree(config);
	}

	public function testAlignFlexStart_with_shrinking_children() {
		var config = Config.init();
		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root, 500);
		Yoga.nodeStyleSetHeight(root, 500);
		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetAlignItems(root_child0, Align.FlexStart);
		Yoga.nodeInsertChild(root, root_child0, 0);
		var root_child0_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexGrow(root_child0_child0, 1);
		Yoga.nodeStyleSetFlexShrink(root_child0_child0, 1);
		Yoga.nodeInsertChild(root_child0, root_child0_child0, 0);
		var root_child0_child0_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexGrow(root_child0_child0_child0, 1);
		Yoga.nodeStyleSetFlexShrink(root_child0_child0_child0, 1);
		Yoga.nodeInsertChild(root_child0_child0, root_child0_child0_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(500, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(500, Yoga.nodeLayoutGetHeight(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(500, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetWidth(root_child0_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0_child0_child0));
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(500, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(500, Yoga.nodeLayoutGetHeight(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(500, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0));
		Assert.floatEquals(500, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetWidth(root_child0_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0_child0_child0));
		Yoga.nodeFreeRecursive(root);
		Yoga.configFree(config);
	}

	public function testAlignFlexStart_with_stretching_children() {
		var config = Config.init();
		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root, 500);
		Yoga.nodeStyleSetHeight(root, 500);
		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeInsertChild(root, root_child0, 0);
		var root_child0_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexGrow(root_child0_child0, 1);
		Yoga.nodeStyleSetFlexShrink(root_child0_child0, 1);
		Yoga.nodeInsertChild(root_child0, root_child0_child0, 0);
		var root_child0_child0_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexGrow(root_child0_child0_child0, 1);
		Yoga.nodeStyleSetFlexShrink(root_child0_child0_child0, 1);
		Yoga.nodeInsertChild(root_child0_child0, root_child0_child0_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(500, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(500, Yoga.nodeLayoutGetHeight(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(500, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(500, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0_child0));
		Assert.floatEquals(500, Yoga.nodeLayoutGetWidth(root_child0_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0_child0_child0));
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(500, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(500, Yoga.nodeLayoutGetHeight(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(500, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(500, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0_child0));
		Assert.floatEquals(500, Yoga.nodeLayoutGetWidth(root_child0_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0_child0_child0));
		Yoga.nodeFreeRecursive(root);
		Yoga.configFree(config);
	}

	public function testAlignFlexStart_with_shrinking_children_with_stretch() {
		var config = Config.init();
		var root = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetWidth(root, 500);
		Yoga.nodeStyleSetHeight(root, 500);
		var root_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetAlignItems(root_child0, Align.FlexStart);
		Yoga.nodeInsertChild(root, root_child0, 0);
		var root_child0_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexGrow(root_child0_child0, 1);
		Yoga.nodeStyleSetFlexShrink(root_child0_child0, 1);
		Yoga.nodeInsertChild(root_child0, root_child0_child0, 0);
		var root_child0_child0_child0 = Yoga.newNodeWithConfig(config);
		Yoga.nodeStyleSetFlexGrow(root_child0_child0_child0, 1);
		Yoga.nodeStyleSetFlexShrink(root_child0_child0_child0, 1);
		Yoga.nodeInsertChild(root_child0_child0, root_child0_child0_child0, 0);
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(500, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(500, Yoga.nodeLayoutGetHeight(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(500, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetWidth(root_child0_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0_child0_child0));
		Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
		Assert.floatEquals(500, Yoga.nodeLayoutGetWidth(root));
		Assert.floatEquals(500, Yoga.nodeLayoutGetHeight(root));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
		Assert.floatEquals(500, Yoga.nodeLayoutGetWidth(root_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0));
		Assert.floatEquals(500, Yoga.nodeLayoutGetLeft(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetWidth(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetWidth(root_child0_child0_child0));
		Assert.floatEquals(0, Yoga.nodeLayoutGetHeight(root_child0_child0_child0));
		Yoga.nodeFreeRecursive(root);
		Yoga.configFree(config);
	}
}
