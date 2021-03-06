/*
 * Kerneos
 * Copyright (C) 2012 Bull S.A.S.
 * Contact: jasmine AT ow2.org
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
 * USA
 *
 * $Id$
 */

package ICICI.event
{
import com.adobe.cairngorm.control.CairngormEvent;

import flash.events.Event;
/**
 * A ModuleEvent is dispatched when the associated action is triggered from the view.
 */
public class ModuleFragmentEvent extends CairngormEvent
{
    
    ////////////////////////////////////
    //                                //
    //             Event Type         //
    //                                //
    ////////////////////////////////////
    public static var MY_ACTION : String = "My action to be done";

    // Example :
    // Message send in the event
    private var message: String = "";

    /**
     * Creates a new ModuleEvent.
     */
    public function ModuleFragmentEvent(type : String)
    {
        super(type);
    }

     // Event message setting and getting
     // Example :
     public function setMessage(message:String):void 
     {
         this.message = message;
     }
     
     public function getMessage(): String
     {
         return message;
     }

    /**
     * Overrides the clone function of the CairngormEvent class.
     * returns a new ModuleEvent
     */
    override public function clone() : Event
    {
        var ev:ModuleFragmentEvent = new ModuleFragmentEvent(this.type);

        // Example:
        // Add the event message
        ev.setMessage(this.message);

        return ev;
    }

}
}
