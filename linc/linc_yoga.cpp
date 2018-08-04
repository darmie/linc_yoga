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
			YGConfigRef NewConfig(int logger) {
				return new YGConfig((YGLogger)logger);
			}
		} // config

		namespace style {
			YGStyle NewStyle() {
				return YGStyle();
			}
		} // style

		namespace layout {
			YGLayout NewLayout() {
				return YGLayout();
			} //layout
		}

		namespace floatOptional {
			YGFloatOptional NewFloatOptional() {
				return YGFloatOptional();
			}
			YGFloatOptional NewFloatOptionalWithValue(float value){
				return YGFloatOptional(value);
			}
		} // floatOptional	

		namespace cachedMeasurement {
			YGCachedMeasurement NewCachedMeasurement() {
				return YGCachedMeasurement();
			}
		} // CachedMeasurement			

	} //yoga

} //linc