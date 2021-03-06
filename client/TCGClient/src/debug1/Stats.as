﻿//Created by Action Script Viewer - http://www.buraks.com/asv
package debug1 {
    import flash.display.*;
    import flash.geom.*;
    import flash.events.*;
    import flash.text.*;
    import flash.system.*;
    import flash.utils.*;

    public class Stats extends Sprite {

        protected const WIDTH:uint = 70;
        protected const HEIGHT:uint = 100;

        protected var xml:XML;
        protected var text:TextField;
        protected var style:StyleSheet;
        protected var timer:uint;
        protected var fps:uint;
        protected var ms:uint;
        protected var ms_prev:uint;
        protected var mem:Number;
        protected var mem_max:Number;
        protected var graph:Bitmap;
        protected var rectangle:Rectangle;
        protected var fps_graph:uint;
        protected var mem_graph:uint;
        protected var mem_max_graph:uint;
        protected var theme:Object;

        public function Stats(_arg1:Object=null):void{
            this.theme = {
                bg:0x222222,
                fps:0xFFFF00,
                ms:0xFF00,
                mem:0xFFFF,
                memmax:0xFF0070
            };
            super();
            if (_arg1){
                if (_arg1.bg != null){
                    this.theme.bg = _arg1.bg;
                };
                if (_arg1.fps != null){
                    this.theme.fps = _arg1.fps;
                };
                if (_arg1.ms != null){
                    this.theme.ms = _arg1.ms;
                };
                if (_arg1.mem != null){
                    this.theme.mem = _arg1.mem;
                };
                if (_arg1.memmax != null){
                    this.theme.memmax = _arg1.memmax;
                };
            };
            this.mem_max = 0;
            this.xml = <xml><fps>FPS:</fps><ms>MS:</ms><mem>MEM:</mem><memMax>MAX:</memMax></xml>
            ;
            this.style = new StyleSheet();
            this.style.setStyle("xml", {
                fontSize:"9px",
                fontFamily:"_sans",
                leading:"-2px"
            });
            this.style.setStyle("fps", {color:this.hex2css(this.theme.fps)});
            this.style.setStyle("ms", {color:this.hex2css(this.theme.ms)});
            this.style.setStyle("mem", {color:this.hex2css(this.theme.mem)});
            this.style.setStyle("memMax", {color:this.hex2css(this.theme.memmax)});
            this.text = new TextField();
            this.text.width = this.WIDTH;
            this.text.height = 50;
            this.text.styleSheet = this.style;
            this.text.condenseWhite = true;
            this.text.selectable = false;
            this.text.mouseEnabled = false;
            this.graph = new Bitmap();
            this.graph.y = 50;
            this.rectangle = new Rectangle((this.WIDTH - 1), 0, 1, (this.HEIGHT - 50));
            addEventListener(Event.ADDED_TO_STAGE, this.init, false, 0, true);
            addEventListener(Event.REMOVED_FROM_STAGE, this.destroy, false, 0, true);
        }
        private function init(_arg1:Event):void{
            graphics.beginFill(this.theme.bg);
            graphics.drawRect(0, 0, this.WIDTH, this.HEIGHT);
            graphics.endFill();
            addChild(this.text);
            this.graph.bitmapData = new BitmapData(this.WIDTH, (this.HEIGHT - 50), false, this.theme.bg);
            addChild(this.graph);
            addEventListener(MouseEvent.CLICK, this.onClick);
            addEventListener(Event.ENTER_FRAME, this.update);
        }
        private function destroy(_arg1:Event):void{
            graphics.clear();
            while (numChildren > 0) {
                removeChildAt(0);
            };
            this.graph.bitmapData.dispose();
            removeEventListener(MouseEvent.CLICK, this.onClick);
            removeEventListener(Event.ENTER_FRAME, this.update);
        }
        private function update(_arg1:Event):void{
            this.timer = getTimer();
            if ((this.timer - 1000) > this.ms_prev){
                this.ms_prev = this.timer;
                this.mem = Number((System.totalMemory * 9.54E-7).toFixed(3));
                this.mem_max = ((this.mem_max > this.mem)) ? this.mem_max : this.mem;
                this.fps_graph = Math.min(this.graph.height, ((this.fps / stage.frameRate) * this.graph.height));
                this.mem_graph = (Math.min(this.graph.height, Math.sqrt(Math.sqrt((this.mem * 5000)))) - 2);
                this.mem_max_graph = (Math.min(this.graph.height, Math.sqrt(Math.sqrt((this.mem_max * 5000)))) - 2);
                this.graph.bitmapData.scroll(-1, 0);
                this.graph.bitmapData.fillRect(this.rectangle, this.theme.bg);
                this.graph.bitmapData.setPixel((this.graph.width - 1), (this.graph.height - this.fps_graph), this.theme.fps);
                this.graph.bitmapData.setPixel((this.graph.width - 1), (this.graph.height - ((this.timer - this.ms) >> 1)), this.theme.ms);
                this.graph.bitmapData.setPixel((this.graph.width - 1), (this.graph.height - this.mem_graph), this.theme.mem);
                this.graph.bitmapData.setPixel((this.graph.width - 1), (this.graph.height - this.mem_max_graph), this.theme.memmax);
                this.xml.fps = ((("FPS: " + this.fps) + " / ") + stage.frameRate);
                this.xml.mem = ("MEM: " + this.mem);
                this.xml.memMax = ("MAX: " + this.mem_max);
                this.fps = 0;
            };
            this.fps++;
            this.xml.ms = ("MS: " + (this.timer - this.ms));
            this.ms = this.timer;
            this.text.htmlText = this.xml;
        }
        private function onClick(_arg1:MouseEvent):void{
        }
        private function hex2css(_arg1:int):String{
            return (("#" + _arg1.toString(16)));
        }

    }
}//package debug 
