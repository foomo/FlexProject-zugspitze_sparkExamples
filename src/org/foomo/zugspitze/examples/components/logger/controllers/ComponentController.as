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
package org.foomo.zugspitze.examples.components.logger.controllers
{
	import org.foomo.flash.logging.ConsoleTarget;
	import org.foomo.flash.logging.TerminalTarget;
	import org.foomo.flash.logging.TraceTarget;
	import org.foomo.flash.managers.LogManager;
	import org.foomo.zugspitze.core.ZugspitzeController;
	import org.foomo.zugspitze.examples.components.logger.models.ComponentModel;
	import org.foomo.zugspitze.examples.components.logger.views.ComponentView;

	/**
	 * @link    http://www.foomo.org
	 * @license http://www.gnu.org/licenses/lgpl.txt
	 * @author  franklin <franklin@weareinteractive.com>
	 */
	public class ComponentController extends ZugspitzeController
	{
		//-----------------------------------------------------------------------------------------
		// ~ Initialize application
		//-----------------------------------------------------------------------------------------

		public function initialize():void
		{
			this.model.setLoggingTargets([TraceTarget, TerminalTarget, ConsoleTarget], new <int>[0]);
		}

		public function setLogLevel(level:int):void
		{
			LogManager.level = level;
		}

		public function logDebug():void
		{
			LogManager.debug(this, 'Loggin debug from controller');
		}

		public function logInfo():void
		{
			LogManager.info(this, 'Loggin info from controller');
		}

		public function logWarning():void
		{
			LogManager.warn(this, 'Loggin warning from controller');
		}

		public function logError():void
		{
			LogManager.error(this, 'Loggin error from controller');
		}

		public function logFatal():void
		{
			LogManager.fatal(this, 'Loggin fatal from controller');
		}

		public function updateLoggingTargets():void
		{
			this.model.updateLoggingTargets();
		}

		/*
		public function dumpModel():void
		{
			LogUtils.getLogger(this).debug(DebugUtils.export(this.model));
		}

		public function throwException():void
		{
			throw new Error('Unhandled controller exception');
		}

		public function suppressErrors(value:Boolean):void
		{
			this.app.suppressUncaughtErrors = value;
		}
		*/

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