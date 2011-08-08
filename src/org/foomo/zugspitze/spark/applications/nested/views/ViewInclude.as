import flash.display.DisplayObject;

import org.foomo.zugspitze.core.ZugspitzeView;
import org.foomo.zugspitze.spark.applications.nested.Application;
import org.foomo.zugspitze.spark.applications.nested.controllers.ApplicationController;
import org.foomo.zugspitze.spark.applications.nested.models.ApplicationModel;
import org.foomo.zugspitze.spark.applications.nested.views.ApplicationView;

/**
 * @private
 */
[Bindable]
public var application:org.foomo.zugspitze.spark.applications.nested.Application = org.foomo.zugspitze.spark.applications.nested.Application(ZugspitzeView.init(DisplayObject(this)));

/**
 * @private
 */
[Bindable]
public var view:org.foomo.zugspitze.spark.applications.nested.views.ApplicationView;

/**
 * @private
 */
[Bindable]
public var model:org.foomo.zugspitze.spark.applications.nested.models.ApplicationModel;

/**
 * @private
 */
[Bindable]
public var controller:org.foomo.zugspitze.spark.applications.nested.controllers.ApplicationController;