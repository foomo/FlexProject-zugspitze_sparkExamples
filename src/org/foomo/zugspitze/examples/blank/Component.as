package org.foomo.zugspitze.examples.blank
{
	import org.foomo.zugspitze.examples.blank.controllers.ComponentController;
	import org.foomo.zugspitze.examples.blank.models.ComponentModel;
	import org.foomo.zugspitze.examples.blank.views.ComponentView;
	import org.foomo.zugspitze.apps.GroupComponent;

	import flash.events.Event;

	import mx.events.FlexEvent;

	public class Component extends GroupComponent
	{
		//-----------------------------------------------------------------------------------------
		// ~ Constructor
		//-----------------------------------------------------------------------------------------

		public function Component()
		{
			super();
			this.viewClass = ComponentView;
			this.modelClass = ComponentModel;
			this.controllerClass = ComponentController;
			this.addEventListener(FlexEvent.CREATION_COMPLETE, this.creationCompleteHandler);
		}

		//-----------------------------------------------------------------------------------------
		// ~ Private Eventhandler
		//-----------------------------------------------------------------------------------------

		private function creationCompleteHandler(event:Event):void
		{
			ComponentController(this.controller).initialize();
		}
	}
}