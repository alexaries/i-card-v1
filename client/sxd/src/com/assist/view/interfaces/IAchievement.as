﻿//Created by Action Script Viewer - http://www.buraks.com/asv
package com.assist.view.interfaces {
    import flash.display.*;

    public interface IAchievement {

        function get content():MovieClip;
        function set onClose(_arg1:Function):void;
        function set tip(_arg1:ITip):void;
        function set drag(_arg1:IDrag):void;
        function clear():void;
        function init():void;
        function renderAchievementList(_arg1:Array):void;
        function gotoAchievementLabel(_arg1:int):void;

    }
}//package com.assist.view.interfaces 
