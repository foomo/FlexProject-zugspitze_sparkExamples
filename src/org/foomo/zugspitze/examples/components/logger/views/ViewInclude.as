import org.foomo.zugspitze.examples.components.logger.Component;
import org.foomo.zugspitze.examples.components.logger.controllers.ComponentController;
import org.foomo.zugspitze.examples.components.logger.models.ComponentModel;
import org.foomo.zugspitze.examples.components.logger.views.ComponentView;
import org.foomo.zugspitze.core.ZugspitzeView;

import flash.display.DisplayObject;

/**
 * @private
 */
[Bindable]
public var application:Component = Component(ZugspitzeView.init(DisplayObject(this)));

/**
 * @private
 */
[Bindable]
public var view:ComponentView;

/**
 * @private
 */
[Bindable]
public var model:ComponentModel;

/**
 * @private
 */
[Bindable]
public var controller:ComponentController;