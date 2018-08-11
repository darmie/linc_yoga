package;

import facebook.Yoga;
import facebook.yoga.*;


class Test {
        
    public static function main() {

		var config:Config = Yoga.newConfig();

		var node:Node = Yoga.newNodeWithConfig(config);
		
		node.setLayout(Layout.init());

		Yoga.nodeCalculateLayout(node, 200.0, 200.0, facebook.yoga.Enums.Direction.LTR);

		var width:Float = node.getLayout().dimensions[0];
		var height:Float = node.getLayout().dimensions[1];

		trace('${width}, ${height}');
    }	

}