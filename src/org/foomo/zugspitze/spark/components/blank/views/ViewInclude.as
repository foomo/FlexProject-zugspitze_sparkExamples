import flash.display.DisplayObject;

import org.foomo.zugspitze.core.ZugspitzeView;
import org.foomo.zugspitze.spark.components.blank.Component;
import org.foomo.zugspitze.spark.components.blank.controllers.ComponentController;
import org.foomo.zugspitze.spark.components.blank.models.ComponentModel;
import org.foomo.zugspitze.spark.components.blank.views.ComponentView;

/**
 * @private
 */
[Bindable]
public var application:org.foomo.zugspitze.spark.components.blank.Component = org.foomo.zugspitze.spark.components.blank.Component(ZugspitzeView.init(DisplayObject(this)));

/**
 * @private
 */
[Bindable]
public var view:org.foomo.zugspitze.spark.components.blank.views.ComponentView;

/**
 * @private
 */
[Bindable]
public var model:org.foomo.zugspitze.spark.components.blank.models.ComponentModel;

/**
 * @private
 */
[Bindable]
public var controller:org.foomo.zugspitze.spark.components.blank.controllers.ComponentController;