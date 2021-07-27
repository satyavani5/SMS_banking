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

package ICICI.model
{
import com.adobe.cairngorm.model.ModelLocator;
import ICICI.business.IModuleFragmentDelegate;

import ICICI.business.ModuleFragmentDelegate;

 /**
  * The model locator for the Module.
  */
[Bindable]
public class ModuleFragmentModelLocator implements ModelLocator
{

    ////////////////////////////////////
    //                                //
    //             Variables          //
    //                                //
    ////////////////////////////////////
    
    ////////////////////////////////////////////
    //                                        //
    //             Variables Delegate         //
    //                                        //
    ////////////////////////////////////////////

    // Put here the delegate instances of your model.
    // Example :
    private var myDelegate : IModuleFragmentDelegate = null;


    ////////////////////////////////////////////////
    //                                            //
    //             Variables Of the model         //
    //                                            //
    ////////////////////////////////////////////////
    

    // Put here all the variables of the model
    // Example :
    private var _myDataObj : String = null;

    
    ////////////////////////////////////
    //                                //
    //             Functions          //
    //                                //
    ////////////////////////////////////

    public function ModuleFragmentModelLocator()
    {
        super();
    }

    ////////////////////////////////////
    //                                //
    //             Setters            //
    //                                //
    ////////////////////////////////////


    // Put here all the setters for the model update.
    // Example :
    public function set myDataObj(_myData : String) : void {
        this._myDataObj = _myData;
    }


    ////////////////////////////////////
    //                                //
    //             Getters            //
    //                                //
    ////////////////////////////////////
    

    // Put here all the getters to access the model variables
    // Example :
    public function get myDataObj() : String {
        return this._myDataObj;
    }



    ////////////////////////////////////////////
    //                                        //
    //            Delegate Getters            //
    //                                        //
    ////////////////////////////////////////////


    // Put here the getters to access all the delegates of the created module
    // Example :
    public function getMyDelegate() : IModuleFragmentDelegate {
        if (this.myDelegate == null) {
            this.myDelegate = new ModuleFragmentDelegate();
        }
        return this.myDelegate;
    }

}
}
