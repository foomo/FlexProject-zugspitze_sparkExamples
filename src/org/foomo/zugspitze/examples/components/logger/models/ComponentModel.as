/*
 * This file is part of the foomo Opensource Framework.
 *
 * The foomo Opensource Framework is free software: you can redistribute it
 * and/or modify it under the terms of the GNU Lesser General Public License as
 * published  by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * The foomo Opensource Framework is distributed in the hope that it will
 * be useful, but WITHOUT ANY WARRANTY; without even the implied warranty
 * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License along with
 * the foomo Opensource Framework. If not, see <http://www.gnu.org/licenses/>.
 */
package org.foomo.zugspitze.examples.components.logger.models
{
	import mx.collections.ArrayCollection;

	import org.foomo.flash.logging.ILoggingTarget;
	import org.foomo.flash.managers.LogManager;
	import org.foomo.flash.utils.ArrayUtil;
	import org.foomo.zugspitze.core.ZugspitzeModel;

	[Bindable]

	/**
	 * @link    http://www.foomo.org
	 * @license http://www.gnu.org/licenses/lgpl.txt
	 * @author  franklin <franklin@weareinteractive.com>
	 */
	public class ComponentModel extends ZugspitzeModel
	{
		//-----------------------------------------------------------------------------------------
		// ~ Variables
		//-----------------------------------------------------------------------------------------

		public var enabledLoggingTargets:Vector.<int>;

		public var availableLoggingTargets:ArrayCollection;

		//-----------------------------------------------------------------------------------------
		// ~ Public methods
		//-----------------------------------------------------------------------------------------

		public function setLoggingTargets(available:Array, enabled:Vector.<int>):void
		{
			this.availableLoggingTargets = new ArrayCollection(available);
			this.enabledLoggingTargets = enabled;
		}

		public function updateLoggingTargets():void
		{
			var target:Class
			for each (target in this.availableLoggingTargets)  {
				LogManager.removeLoggingTarget(target);
			}
			for each (var i:int in this.enabledLoggingTargets)  {
				target = this.availableLoggingTargets.getItemAt(i) as Class;
				LogManager.addLoggingTarget(new target);
			}
		}
	}
}