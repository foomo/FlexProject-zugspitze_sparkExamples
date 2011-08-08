import flash.display.DisplayObject;

import org.foomo.zugspitze.core.ZugspitzeView;
import org.foomo.zugspitze.spark.applications.simple.Application;
import org.foomo.zugspitze.spark.applications.simple.controllers.ApplicationController;
import org.foomo.zugspitze.spark.applications.simple.models.ApplicationModel;
import org.foomo.zugspitze.spark.applications.simple.views.ApplicationView;

/**
 * @private
 */
[Bindable]
public var application:org.foomo.zugspitze.spark.applications.simple.Application = org.foomo.zugspitze.spark.applications.simple.Application(ZugspitzeView.init(DisplayObject(this)));

/**
 * @private
 */
[Bindable]
public var view:org.foomo.zugspitze.spark.applications.simple.views.ApplicationView;

/**
 * @private
 */
[Bindable]
public var model:org.foomo.zugspitze.spark.applications.simple.models.ApplicationModel;

/**
 * @private
 */
[Bindable]
public var controller:org.foomo.zugspitze.spark.applications.simple.controllers.ApplicationController;