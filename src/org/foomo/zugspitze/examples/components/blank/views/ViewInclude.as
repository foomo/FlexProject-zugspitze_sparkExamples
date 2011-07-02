import org.foomo.zugspitze.examples.components.blank.Component;
import org.foomo.zugspitze.examples.components.blank.controllers.ComponentController;
import org.foomo.zugspitze.examples.components.blank.models.ComponentModel;
import org.foomo.zugspitze.examples.components.blank.views.ComponentView;
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