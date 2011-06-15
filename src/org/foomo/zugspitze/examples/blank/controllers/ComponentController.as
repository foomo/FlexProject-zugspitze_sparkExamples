package org.foomo.zugspitze.examples.blank.controllers
{
	import org.foomo.zugspitze.examples.blank.models.ComponentModel;
	import org.foomo.zugspitze.examples.blank.views.ComponentView;
	import org.foomo.zugspitze.core.ZugspitzeController;

	public class ComponentController extends ZugspitzeController
	{
		//-----------------------------------------------------------------------------------------
		// ~ Initialize application
		//-----------------------------------------------------------------------------------------

		public function initialize():void
		{
		}

		//-----------------------------------------------------------------------------------------
		// ~ Private helper methods
		//-----------------------------------------------------------------------------------------

		private function get model():ComponentModel
		{
			return this.zugspitze.model as ComponentModel
		}

		private function get view():ComponentView
		{
			return this.zugspitze.view as ComponentView
		}
	}
}