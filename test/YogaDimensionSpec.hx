/**
 * Copyright (c) 2014-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

// @Generated by gentest/gentest.rb from gentest/fixtures/YogaDimensionSpec.html


using facebook.yoga.Enums;

import facebook.Yoga;

import facebook.yoga.*;

import utest.Assert;

class YogaDimensionSpec {

  public function new(){}
  public function test_wrap_child() {
    var config = Config.init();

    var root = Yoga.newNodeWithConfig(config);

    var root_child0 = Yoga.newNodeWithConfig(config);
    Yoga.nodeStyleSetWidth(root_child0, 100);
    Yoga.nodeStyleSetHeight(root_child0, 100);
    Yoga.nodeInsertChild(root, root_child0, 0);
    Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

    Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
    Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
    Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
    Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

    Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
    Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
    Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root_child0));
    Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root_child0));

    Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

    Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
    Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
    Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
    Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

    Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
    Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
    Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root_child0));
    Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root_child0));

    Yoga.nodeFreeRecursive(root);

    Yoga.configFree(config);
  }

  public function test_wrap_grandchild() {
    var config = Config.init();

    var root = Yoga.newNodeWithConfig(config);

    var root_child0 = Yoga.newNodeWithConfig(config);
    Yoga.nodeInsertChild(root, root_child0, 0);

    var root_child0_child0 = Yoga.newNodeWithConfig(config);
    Yoga.nodeStyleSetWidth(root_child0_child0, 100);
    Yoga.nodeStyleSetHeight(root_child0_child0, 100);
    Yoga.nodeInsertChild(root_child0, root_child0_child0, 0);
    Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.LTR);

    Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
    Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
    Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
    Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

    Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
    Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
    Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root_child0));
    Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root_child0));

    Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0));
    Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
    Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root_child0_child0));
    Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root_child0_child0));

    Yoga.nodeCalculateLayout(root, Constants.Undefined, Constants.Undefined, Direction.RTL);

    Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root));
    Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root));
    Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root));
    Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root));

    Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0));
    Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0));
    Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root_child0));
    Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root_child0));

    Assert.floatEquals(0, Yoga.nodeLayoutGetLeft(root_child0_child0));
    Assert.floatEquals(0, Yoga.nodeLayoutGetTop(root_child0_child0));
    Assert.floatEquals(100, Yoga.nodeLayoutGetWidth(root_child0_child0));
    Assert.floatEquals(100, Yoga.nodeLayoutGetHeight(root_child0_child0));

    Yoga.nodeFreeRecursive(root);

    Yoga.configFree(config);
  }

}
