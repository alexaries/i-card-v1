﻿//Created by Action Script Viewer - http://www.buraks.com/asv
package {
    import mx.core.*;
    import mx.binding.*;
    import task.*;

    public class _task_TaskListItemWatcherSetupUtil implements IWatcherSetupUtil2 {

        public static function init(_arg1:IFlexModuleFactory):void{
            TaskListItem.watcherSetupUtil = new (_task_TaskListItemWatcherSetupUtil)();
        }

        public function setup(_arg1:Object, _arg2:Function, _arg3:Function, _arg4:Array, _arg5:Array):void{
            _arg5[2] = new PropertyWatcher("taskComplete", {propertyChange:true}, [_arg4[2]], _arg2);
            _arg5[0] = new PropertyWatcher("maskVisibleFlag", {propertyChange:true}, [_arg4[0]], _arg2);
            _arg5[1] = new PropertyWatcher("taskName", {propertyChange:true}, [_arg4[1]], _arg2);
            _arg5[2].updateParent(_arg1);
            _arg5[0].updateParent(_arg1);
            _arg5[1].updateParent(_arg1);
        }

    }
}//package 
