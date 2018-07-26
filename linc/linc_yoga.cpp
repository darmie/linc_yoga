//hxcpp include should be first
#include <hxcpp.h>
#include "./linc_yoga.h"


namespace linc {
	
	namespace yoga {

		namespace node {
			YGNodeRef NewYogaNode() {
				return new YGNode();
			}

			YGNodeRef NewYogaNodeWithConfig(const YGConfigRef newConfig) {
				return new YGNode(newConfig);
			}			
		} // node


		namespace config {
			YGConfig NewConfig(YGLogger logger) {
				return new YGConfig(logger);
			}
		} // config

		namespace style {
			YGStyle NewStyle() {
				return new YGStyle();
			}
		} // style

		namespace layout {
			YGLayout NewLayout() {
				return new YGLayout();
			} //layout
		}

		namespace floatOptional {
			YGFloatOptional NewFloatOptional() {
				return new YGFloatOptional();
			}
			YGFloatOptional NewFloatOptionalWithValue(float value){
				return new YGFloatOptional(value);
			}
		} // floatOptional	

		namespace cachedMeasurement {
			YGCachedMeasurement NewCachedMeasurement() {
				return new YGCachedMeasurement();
			}
		} // CachedMeasurement			

	} //yoga

} //linc