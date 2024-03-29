/*
 Copyright 2007 Misko Hevery <misko@hevery.com>

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/
package com.hevery
{
	import mx.controls.TextArea;
	import mx.logging.targets.LineFormattedTarget;
	import mx.logging.targets.TraceTarget;
	
	//import mx.core.mx_internal;
	import mx.core.mx_internal;
	use namespace mx_internal;

	public class TextAreaLineFormatedTarget extends LineFormattedTarget
	{
		public var textArea:TextArea;
		
		override mx_internal function internalLog(message:String):void
		{ 
			if (textArea != null) {
				textArea.text = message + "\n" + textArea.text;
			}
	    }
	}
}