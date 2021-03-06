﻿//Created by Action Script Viewer - http://www.buraks.com/asv
package task_guide {
    import custom_effect.*;
    
    import flash.accessibility.*;
    import flash.debugger.*;
    import flash.display.*;
    import flash.errors.*;
    import flash.events.*;
    import flash.external.*;
    import flash.geom.*;
    import flash.media.*;
    import flash.net.*;
    import flash.printing.*;
    import flash.profiler.*;
    import flash.system.*;
    import flash.text.*;
    import flash.ui.*;
    import flash.utils.*;
    import flash.xml.*;
    
    import mx.binding.*;
    import mx.core.*;
//    import mx.effects.*;
	import mx.effects.Sequence;
    import mx.events.*;
    import mx.filters.*;
    import mx.styles.*;
    
    import spark.components.*;
    import spark.effects.*;

	
    public class GuidePrologueWindow1 extends GuidePrologueWindowBase implements IBindingClient {
		use namespace mx_internal;
        private static var _watcherSetupUtil:IWatcherSetupUtil2;

        public var _GuidePrologueWindow1_Fade1:Fade;
        public var _GuidePrologueWindow1_Fade2:Fade;
		public var __slot1;
        private var _3233ef:Sequence;
        private var _1977519450headerText:Label;
        private var __moduleFactoryInitialized:Boolean = false;
        mx_internal var _bindings:Array;
        mx_internal var _watchers:Array;
        mx_internal var _bindingsByDestination:Object;
        mx_internal var _bindingsBeginWithWord:Object;

        public function GuidePrologueWindow1(){
            var target:* = null;
            var watcherSetupUtilClass:* = null;
            this._bindings = [];
            this._watchers = [];
            this._bindingsByDestination = {};
            this._bindingsBeginWithWord = {};
            super();
            var bindings:* = this._GuidePrologueWindow1_bindingsSetup();
            var watchers:* = [];
            target = this;
            if (_watcherSetupUtil == null){
                watcherSetupUtilClass = getDefinitionByName("_task_guide_GuidePrologueWindow1WatcherSetupUtil");
                var _local2 = watcherSetupUtilClass;
                _local2["init"](null);
            };
            _watcherSetupUtil.setup(this, function (_arg1:String){
                return (target[_arg1]);
            }, function (_arg1:String){
                return (__slot1[_arg1]);
            }, bindings, watchers);
            mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
            mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
            this._GuidePrologueWindow1_Sequence1_i();
            this._GuidePrologueWindow1_Label1_i();
            var i:* = 0;
            while (i < bindings.length) {
                Binding(bindings[i]).execute();
                i = (i + 1);
            };
        }
        public static function set watcherSetupUtil(_arg1:IWatcherSetupUtil2):void{
            GuidePrologueWindow1._watcherSetupUtil = _arg1;
        }

        override public function set moduleFactory(_arg1:IFlexModuleFactory):void{
            super.moduleFactory = _arg1;
            if (this.__moduleFactoryInitialized){
                return;
            };
            this.__moduleFactoryInitialized = true;
        }
        override public function initialize():void{
            super.initialize();
        }
        override protected function creationCompleteHandler():void{
            bodyText.text = ((((((((((((((((("话说天下大势，\n" + "分久必合，合久必分。\n") + "\n") + "东汉末年，\n") + "皇帝昏庸，宦官专权。\n") + "\n") + "朝政混乱不堪，\n") + "百姓民不聊生。\n") + "\n") + "公元一八四年，\n") + "黄巾起义爆发。\n") + "\n") + "号称：\n") + "\n") + "苍天已死，\n") + "黄天当立。\n") + "岁在甲子，\n") + "天下大吉。");
        }
        override protected function fadeIn_effectEndHandler(_arg1:EffectEvent):void{
            super.fadeIn_effectEndHandler(_arg1);
            addElement(this.headerText);
            this.ef.play();
        }
        protected function playMoveEffect():void{
            var m:* = null;
            var moveEffectEndHandler:* = null;
            moveEffectEndHandler = function (_arg1:CustomEffectEvent):void{
                m.removeEventListener(CustomEffectEvent.END, removeSelf);
                removeSelf();
            };
            m = new MoveEffect(bodyText);
            m.duration = 25000;
            m.yTo = -450;
            m.xTo = bodyText.x;
            m.play();
            m.addEventListener(CustomEffectEvent.END, moveEffectEndHandler);
        }
        override protected function group1_removeHandler():void{
            var _local1:FakeFadeEffect = new FakeFadeEffect(this, 1500, 1, 0);
            _local1.play();
        }
        private function _GuidePrologueWindow1_Sequence1_i():Sequence{
            var _local1:Sequence = new Sequence();
            _local1.children = [this._GuidePrologueWindow1_Fade1_i(), this._GuidePrologueWindow1_Fade2_i()];
            _local1.addEventListener("effectEnd", this.__ef_effectEnd);
            this.ef = _local1;
            BindingManager.executeBindings(this, "ef", this.ef);
            return (_local1);
        }
        private function _GuidePrologueWindow1_Fade1_i():spark.effects.Fade{
            var _local1:Fade = new Fade();
            _local1.duration = 2000;
            _local1.alphaFrom = 0;
            _local1.alphaTo = 1;
            this._GuidePrologueWindow1_Fade1 = _local1;
            BindingManager.executeBindings(this, "_GuidePrologueWindow1_Fade1", this._GuidePrologueWindow1_Fade1);
            return (_local1);
        }
        private function _GuidePrologueWindow1_Fade2_i():Fade{
            var _local1:Fade = new Fade();
            _local1.duration = 2000;
            _local1.alphaFrom = 1;
            _local1.alphaTo = 0;
            this._GuidePrologueWindow1_Fade2 = _local1;
            BindingManager.executeBindings(this, "_GuidePrologueWindow1_Fade2", this._GuidePrologueWindow1_Fade2);
            return (_local1);
        }
        public function __ef_effectEnd(_arg1:EffectEvent):void{
            this.playMoveEffect();
        }
        private function _GuidePrologueWindow1_Label1_i():Label{
            var _local1:Label = new Label();
            _local1.visible = false;
            _local1.horizontalCenter = 0;
            _local1.verticalCenter = 0;
            _local1.text = "序曲  黄巾之乱";
            _local1.setStyle("color", 0xFFFFFF);
            _local1.setStyle("fontSize", 60);
            _local1.id = "headerText";
            if (!_local1.document){
                _local1.document = this;
            };
            this.headerText = _local1;
            BindingManager.executeBindings(this, "headerText", this.headerText);
            return (_local1);
        }
        private function _GuidePrologueWindow1_bindingsSetup():Array{
            var _local1:Array = [];
            _local1[0] = new Binding(this, null, null, "_GuidePrologueWindow1_Fade1.target", "headerText");
            _local1[1] = new Binding(this, null, null, "_GuidePrologueWindow1_Fade2.target", "headerText");
            return (_local1);
        }
        public function get ef():Sequence{
            return (this._3233ef);
        }
        public function set ef(_arg1:Sequence):void{
            var _local2:Object = this._3233ef;
            if (_local2 !== _arg1){
                this._3233ef = _arg1;
                if (this.hasEventListener("propertyChange")){
                    this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "ef", _local2, _arg1));
                };
            };
        }
        public function get headerText():Label{
            return (this._1977519450headerText);
        }
        public function set headerText(_arg1:Label):void{
            var _local2:Object = this._1977519450headerText;
            if (_local2 !== _arg1){
                this._1977519450headerText = _arg1;
                if (this.hasEventListener("propertyChange")){
                    this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "headerText", _local2, _arg1));
                };
            };
        }

    }
}//package task_guide 
