
import cpp.Callable;

import facebook.yoga.Enums.Align;

import facebook.yoga.Enums.Direction;
import facebook.yoga.Enums.FlexDirection;

import facebook.Yoga;
import facebook.yoga.*;
import cpp.Float32;

import utest.Assert;


/**
    AlignBaseLineTest
**/
class YogaAlignBaselineSpec {

    public function new(){}

    @:unreflective
    public static function _baselineFunc(node:Node, width:Float32, height:Float32):Float32 {
        return height/ 2;
    }

    public function testAlignBaselineWithNoParentHt(){
        var config:Config = Config.init();

        var root:Node = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetFlexDirection(root, FlexDirection.Row);
        Yoga.nodeStyleSetAlignItems(root, Align.Baseline);
        Yoga.nodeStyleSetWidth(root, 150);  

        var root_child0:Node = Yoga.newNodeWithConfig(config); 
        Yoga.nodeStyleSetWidth(root_child0, 50);
        Yoga.nodeStyleSetHeight(root_child0, 50);
        Yoga.nodeInsertChild(root, root_child0, 0);  

        var root_child1:Node = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child1, 50);
        Yoga.nodeStyleSetHeight(root_child1, 40);
        Yoga.nodeSetBaselineFunc(root_child1, Callable.fromStaticFunction(_baselineFunc));
        Yoga.nodeInsertChild(root, root_child1, 1);  

        Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);   

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
        Assert.floatEquals(150, Yoga.nodeLayoutGetWidth(root));
        Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
        Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child0));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child1));
        Assert.floatEquals(10, Yoga.nodeLayoutGetTop(root_child1));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
        Assert.floatEquals(40, Yoga.nodeLayoutGetHeight(root_child1));

        Yoga.nodeFreeRecursive(root);

        Yoga.configFree(config);

    }


    public function testAlignBaselineWithNoBaselineFuncAndNoParentHt(){
        var config:Config = Config.init();

        var root:Node = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetFlexDirection(root, FlexDirection.Row);
        Yoga.nodeStyleSetAlignItems(root, Align.Baseline);
        Yoga.nodeStyleSetWidth(root, 150);  

        var root_child0:Node = Yoga.newNodeWithConfig(config); 
        Yoga.nodeStyleSetWidth(root_child0, 50);
        Yoga.nodeStyleSetHeight(root_child0, 80);
        Yoga.nodeInsertChild(root, root_child0, 0);  

        var root_child1:Node = Yoga.newNodeWithConfig(config);
        Yoga.nodeStyleSetWidth(root_child1, 50);
        Yoga.nodeStyleSetHeight(root_child1, 50);
        Yoga.nodeInsertChild(root, root_child1, 1);  

        Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);   

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
        Assert.floatEquals(150, Yoga.nodeLayoutGetWidth(root));
        Assert.floatEquals(80, Yoga.nodeLayoutGetHeight(root));

        Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
        Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child0));
        Assert.floatEquals(80, Yoga.nodeLayoutGetHeight(root_child0));

        Assert.floatEquals(50, Yoga.nodeLayoutGetLeft(root_child1));
        Assert.floatEquals(30, Yoga.nodeLayoutGetTop(root_child1));
        Assert.floatEquals(50, Yoga.nodeLayoutGetWidth(root_child1));
        Assert.floatEquals(50, Yoga.nodeLayoutGetHeight(root_child1));

        Yoga.nodeFreeRecursive(root);

        Yoga.configFree(config);

    }
}