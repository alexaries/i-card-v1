﻿//Created by Action Script Viewer - http://www.buraks.com/asv
package com.assist.server {

    public class StudyStuntType {

        private static var StudyStunt:Array = [[1, 1, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000], [1, 2, 3000, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000], [1, 3, 3000, 0, 30, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1000], [1, 4, 3000, 0, 30, 0, 0, 2, 0, 0, 2, 0, 0, 0, 1000], [1, 5, 3000, 0, 30, 30, 0, 2, 0, 0, 2, 0, 0, 0, 1000], [1, 6, 3000, 0, 30, 30, 0, 2, 2, 0, 2, 0, 0, 0, 1000], [1, 7, 3000, 0, 30, 30, 0, 2, 2, 2, 2, 0, 0, 0, 1000], [1, 8, 3000, 0, 30, 30, 30, 2, 2, 2, 2, 0, 0, 0, 1000], [1, 9, 3000, 0, 30, 30, 30, 2, 2, 2, 2, 2, 0, 0, 1000], [2, 1, 3000, 0, 30, 30, 30, 2, 4, 2, 2, 2, 0, 0, 2000], [2, 2, 3000, 0, 60, 30, 30, 2, 4, 2, 2, 2, 0, 0, 2000], [2, 3, 3000, 0, 60, 30, 30, 2, 4, 4, 2, 2, 0, 0, 2000], [2, 4, 3000, 0, 60, 30, 60, 2, 4, 4, 2, 2, 0, 0, 2000], [2, 5, 3000, 0, 60, 30, 60, 4, 4, 4, 2, 2, 0, 0, 2000], [2, 6, 6000, 0, 60, 30, 60, 4, 4, 4, 2, 2, 0, 0, 2000], [2, 7, 6000, 0, 60, 60, 60, 4, 4, 4, 2, 2, 0, 0, 2000], [2, 8, 6000, 0, 60, 60, 60, 4, 4, 4, 2, 4, 0, 0, 2000], [2, 9, 6000, 0, 60, 60, 60, 4, 4, 4, 4, 4, 0, 0, 2000], [3, 1, 6000, 0, 60, 60, 60, 4, 4, 4, 4, 4, 2, 0, 3000], [3, 2, 6000, 0, 60, 90, 60, 4, 4, 4, 4, 4, 2, 0, 3000], [3, 3, 6000, 0, 60, 90, 60, 6, 4, 4, 4, 4, 2, 0, 3000], [3, 4, 6000, 0, 60, 90, 60, 6, 6, 4, 4, 4, 2, 0, 3000], [3, 5, 6000, 0, 60, 90, 60, 6, 6, 4, 4, 6, 2, 0, 3000], [3, 6, 6000, 0, 60, 90, 90, 6, 6, 4, 4, 6, 2, 0, 3000], [3, 7, 6000, 0, 90, 90, 90, 6, 6, 4, 4, 6, 2, 0, 3000], [3, 8, 6000, 0, 90, 90, 90, 6, 6, 6, 4, 6, 2, 0, 3000], [3, 9, 6000, 0, 90, 90, 90, 6, 6, 6, 4, 6, 2, 2, 3000], [4, 1, 6000, 0, 120, 90, 90, 6, 6, 6, 4, 6, 2, 2, 4000], [4, 2, 6000, 0, 120, 90, 90, 6, 6, 6, 4, 6, 2, 4, 4000], [4, 3, 6000, 0, 120, 90, 120, 6, 6, 6, 4, 6, 2, 4, 4000], [4, 4, 6000, 0, 120, 90, 120, 8, 6, 6, 4, 6, 2, 4, 4000], [4, 5, 6000, 0, 120, 90, 120, 8, 8, 6, 4, 6, 2, 4, 4000], [4, 6, 6000, 0, 120, 90, 120, 8, 8, 8, 4, 6, 2, 4, 4000], [4, 7, 6000, 0, 120, 90, 120, 8, 8, 8, 6, 6, 2, 4, 4000], [4, 8, 6000, 0, 120, 90, 120, 8, 8, 8, 6, 6, 4, 4, 4000], [4, 9, 6000, 0, 120, 120, 120, 8, 8, 8, 6, 6, 4, 4, 4000], [5, 1, 6000, 0, 120, 120, 120, 8, 8, 10, 6, 6, 4, 4, 5000], [5, 2, 6000, 0, 120, 120, 120, 8, 8, 10, 6, 8, 4, 4, 5000], [5, 3, 6000, 0, 120, 120, 120, 10, 8, 10, 6, 8, 4, 4, 5000], [5, 4, 6000, 0, 120, 120, 120, 10, 10, 10, 6, 8, 4, 4, 5000], [5, 5, 6000, 0, 120, 120, 120, 10, 10, 10, 8, 8, 4, 4, 5000], [5, 6, 6000, 0, 120, 120, 120, 10, 10, 10, 8, 8, 4, 6, 5000], [5, 7, 6000, 0, 120, 120, 120, 10, 10, 10, 8, 8, 6, 6, 5000], [5, 8, 6000, 0, 120, 150, 120, 10, 10, 10, 8, 8, 6, 6, 5000], [5, 9, 6000, 0, 120, 150, 150, 10, 10, 10, 8, 8, 6, 6, 5000], [6, 1, 9000, 0, 120, 150, 150, 10, 10, 10, 8, 8, 6, 6, 6000], [6, 2, 9000, 0, 120, 150, 150, 10, 10, 10, 8, 8, 6, 8, 6000], [6, 3, 9000, 0, 120, 180, 150, 10, 10, 10, 8, 8, 6, 8, 6000], [6, 4, 9000, 0, 120, 180, 150, 10, 10, 12, 8, 8, 6, 8, 6000], [6, 5, 9000, 0, 120, 180, 150, 10, 10, 12, 10, 8, 6, 8, 6000], [6, 6, 9000, 0, 120, 180, 150, 10, 10, 12, 10, 10, 6, 8, 6000], [6, 7, 9000, 0, 120, 180, 180, 10, 10, 12, 10, 10, 6, 8, 6000], [6, 8, 9000, 0, 120, 180, 180, 10, 10, 12, 10, 10, 8, 8, 6000], [6, 9, 9000, 0, 150, 180, 180, 10, 10, 12, 10, 10, 8, 8, 6000], [7, 1, 9000, 0, 150, 180, 180, 10, 10, 12, 10, 12, 8, 8, 7000], [7, 2, 9000, 0, 150, 180, 210, 10, 10, 12, 10, 12, 8, 8, 7000], [7, 3, 9000, 0, 150, 180, 210, 12, 10, 12, 10, 12, 8, 8, 7000], [7, 4, 9000, 0, 150, 180, 210, 12, 12, 12, 10, 12, 8, 8, 7000], [7, 5, 9000, 0, 150, 210, 210, 12, 12, 12, 10, 12, 8, 8, 7000], [7, 6, 9000, 0, 150, 210, 210, 12, 12, 12, 10, 12, 8, 10, 7000], [7, 7, 9000, 0, 150, 210, 210, 12, 12, 12, 10, 12, 10, 10, 7000], [7, 8, 9000, 0, 150, 210, 210, 12, 12, 12, 12, 12, 10, 10, 7000], [7, 9, 9000, 0, 150, 210, 210, 12, 12, 14, 12, 12, 10, 10, 7000], [8, 1, 12000, 0, 150, 210, 210, 12, 12, 14, 12, 12, 10, 10, 8000], [8, 2, 12000, 0, 180, 210, 210, 12, 12, 14, 12, 12, 10, 10, 8000], [8, 3, 12000, 0, 180, 210, 210, 12, 12, 14, 12, 12, 10, 12, 8000], [8, 4, 12000, 0, 180, 210, 240, 12, 12, 14, 12, 12, 10, 12, 8000], [8, 5, 12000, 0, 180, 210, 240, 14, 12, 14, 12, 12, 10, 12, 8000], [8, 6, 12000, 0, 180, 210, 240, 14, 14, 14, 12, 12, 10, 12, 8000], [8, 7, 12000, 0, 180, 210, 240, 14, 14, 14, 14, 12, 10, 12, 8000], [8, 8, 12000, 0, 180, 210, 240, 14, 14, 14, 14, 12, 12, 12, 8000], [8, 9, 12000, 0, 180, 240, 240, 14, 14, 14, 14, 12, 12, 12, 8000], [9, 1, 12000, 0, 180, 240, 240, 14, 14, 14, 16, 12, 12, 12, 9000], [9, 2, 12000, 0, 180, 240, 240, 16, 14, 14, 16, 12, 12, 12, 9000], [9, 3, 12000, 0, 180, 240, 240, 16, 16, 14, 16, 12, 12, 12, 9000], [9, 4, 12000, 0, 180, 240, 240, 16, 16, 16, 16, 12, 12, 12, 9000], [9, 5, 15000, 0, 180, 240, 240, 16, 16, 16, 16, 12, 12, 12, 9000], [9, 6, 15000, 0, 180, 240, 240, 16, 16, 16, 16, 14, 12, 12, 9000], [9, 7, 15000, 0, 180, 240, 240, 16, 16, 16, 16, 14, 12, 14, 9000], [9, 8, 15000, 0, 180, 240, 240, 16, 16, 16, 16, 14, 14, 14, 9000], [9, 9, 15000, 0, 210, 240, 240, 16, 16, 16, 16, 14, 14, 14, 9000], [10, 1, 15000, 0, 210, 240, 240, 16, 18, 16, 16, 14, 14, 14, 10000], [10, 2, 15000, 0, 210, 240, 240, 16, 18, 18, 16, 14, 14, 14, 10000], [10, 3, 18000, 0, 210, 240, 240, 16, 18, 18, 16, 14, 14, 14, 10000], [10, 4, 18000, 0, 210, 240, 240, 18, 18, 18, 16, 14, 14, 14, 10000], [10, 5, 18000, 0, 210, 240, 240, 18, 18, 18, 18, 14, 14, 14, 10000], [10, 6, 18000, 0, 240, 240, 240, 18, 18, 18, 18, 14, 14, 14, 10000], [10, 7, 18000, 0, 240, 240, 240, 18, 18, 18, 18, 16, 14, 14, 10000], [10, 8, 18000, 0, 240, 240, 240, 18, 18, 18, 18, 16, 14, 16, 10000], [10, 9, 18000, 0, 240, 240, 240, 18, 18, 18, 18, 16, 16, 16, 10000], [11, 1, 21000, 0, 240, 240, 240, 18, 18, 18, 18, 16, 16, 16, 11000], [11, 2, 21000, 0, 270, 240, 240, 18, 18, 18, 18, 16, 16, 16, 11000], [11, 3, 21000, 0, 270, 240, 240, 18, 18, 18, 18, 18, 16, 16, 11000], [11, 4, 21000, 0, 270, 240, 240, 18, 18, 18, 18, 18, 16, 18, 11000], [11, 5, 21000, 0, 270, 270, 240, 18, 18, 18, 18, 18, 16, 18, 11000], [11, 6, 21000, 0, 270, 270, 270, 18, 18, 18, 18, 18, 16, 18, 11000], [11, 7, 21000, 0, 270, 270, 270, 20, 18, 18, 18, 18, 16, 18, 11000], [11, 8, 21000, 0, 270, 270, 270, 20, 20, 18, 18, 18, 16, 18, 11000], [11, 9, 21000, 0, 270, 270, 270, 20, 20, 18, 18, 18, 18, 18, 11000], [12, 1, 21000, 0, 270, 300, 270, 20, 20, 18, 18, 18, 18, 18, 12000], [12, 2, 21000, 0, 270, 300, 270, 20, 20, 20, 18, 18, 18, 18, 12000], [12, 3, 21000, 0, 270, 300, 270, 20, 20, 20, 18, 18, 18, 20, 12000], [12, 4, 21000, 0, 270, 300, 300, 20, 20, 20, 18, 18, 18, 20, 12000], [12, 5, 21000, 0, 270, 300, 300, 20, 20, 20, 18, 20, 18, 20, 12000], [12, 6, 21000, 0, 300, 300, 300, 20, 20, 20, 18, 20, 18, 20, 12000], [12, 7, 24000, 0, 300, 300, 300, 20, 20, 20, 18, 20, 18, 20, 12000], [12, 8, 24000, 0, 300, 300, 300, 20, 20, 20, 20, 20, 18, 20, 12000], [12, 9, 24000, 0, 300, 300, 300, 20, 20, 20, 20, 20, 20, 20, 12000]];
        private static var StudyStuntType:Object = {
            1:["火", 39, "天火燎原", "TianHuoLiaoYuan", "绝技攻击+1000，施放绝技后剩余20气势"],
            2:["土", 51, "陨石裂地", "YunShiLieDi", "绝技攻击+1500，施放绝技后剩余25气势"],
            3:["金", 61, "千钧怒击", "QianJunNuJi", "绝技攻击+2000，施放绝技后剩余30气势"],
            4:["水", 71, "水幕天华", "ShuiMuTianHua", "绝技攻击+2500，施放绝技后剩余35气势"],
            5:["木", 81, "叶舞飞刃", "YeWuFeiRen", "绝技攻击+3000，施放绝技后剩余40气势"],
            6:["风", 91, "风卷残云", "FengJuanCanYun", "绝技攻击+4000，施放绝技后剩余45气势"],
            7:["冰", 101, "绝对零度", "JueDuiLingDu", "绝技攻击+5000，施放绝技后剩余50气势"],
            8:["雷", 111, "雷霆一击", "LeiTingYiJi", "绝技攻击+6000，施放绝技后剩余55气势"],
            9:["暗", 121, "魔影黯灭", "MoYingAnMie", "绝技攻击+7000，施放绝技后剩余60气势"],
            10:["光", 131, "紫电神光", "ZiDianShenGuang", "绝技攻击+8000，施放绝技后剩余65气势"],
            11:["时间", 141, "刹那芳华", "ChaNaFangHua", "绝技攻击+9000，施放绝技后剩余70气势，概率横向攻击"],
            12:["空间", 151, "混沌之力", "HunDunZhiLi", "绝技攻击+10000，施放绝技后剩余75气势，概率横向攻击和晕敌1回合"]
        };

        public static function getHealthAdditional(_arg1:int, _arg2:int):int{
            return (getStudyStuntValue(_arg1, _arg2, 2));
        }
        public static function getAttackAdditional(_arg1:int, _arg2:int):int{
            return (getStudyStuntValue(_arg1, _arg2, 3));
        }
        public static function getStengthAdditional(_arg1:int, _arg2:int):int{
            return (getStudyStuntValue(_arg1, _arg2, 4));
        }
        public static function getAgileAdditional(_arg1:int, _arg2:int):int{
            return (getStudyStuntValue(_arg1, _arg2, 5));
        }
        public static function getIntellectAdditional(_arg1:int, _arg2:int):int{
            return (getStudyStuntValue(_arg1, _arg2, 6));
        }
        public static function getHitAdditional(_arg1:int, _arg2:int):int{
            return (getStudyStuntValue(_arg1, _arg2, 7));
        }
        public static function getCriticalAdditional(_arg1:int, _arg2:int):int{
            return (getStudyStuntValue(_arg1, _arg2, 8));
        }
        public static function getDodgeAdditional(_arg1:int, _arg2:int):int{
            return (getStudyStuntValue(_arg1, _arg2, 9));
        }
        public static function getBlockAdditional(_arg1:int, _arg2:int):int{
            return (getStudyStuntValue(_arg1, _arg2, 10));
        }
        public static function getBreakCriticalAdditional(_arg1:int, _arg2:int):int{
            return (getStudyStuntValue(_arg1, _arg2, 11));
        }
        public static function getKillAdditional(_arg1:int, _arg2:int):int{
            return (getStudyStuntValue(_arg1, _arg2, 12));
        }
        public static function getBreakBlockAdditional(_arg1:int, _arg2:int):int{
            return (getStudyStuntValue(_arg1, _arg2, 13));
        }
        public static function getNeedAura(_arg1:int, _arg2:int):int{
            var _local3:Array;
            for each (_local3 in StudyStunt) {
                if ((((_local3[0] == _arg1)) && ((_local3[1] == _arg2)))){
                    return (_local3[14]);
                };
            };
            return (0);
        }
        private static function getStudyStuntValue(_arg1:int, _arg2:int, _arg3:int):int{
            var _local6:Array;
            var _local7:Array;
            var _local4:int;
            var _local5:int;
            while (_local5 < StudyStunt.length) {
                _local6 = (StudyStunt[_local5] as Array);
                if ((((_local6[0] == _arg1)) && ((_local6[1] == _arg2)))){
                    _local4 = _local6[_arg3];
                    if (_local5 > 0){
                        _local7 = (StudyStunt[(_local5 - 1)] as Array);
                        _local4 = (_local4 - _local7[_arg3]);
                    };
                    return (_local4);
                };
                _local5++;
            };
            return (_local4);
        }
        public static function getElement(_arg1:int):String{
            return ((StudyStuntType[_arg1]) ? StudyStuntType[_arg1][0] : "");
        }
        public static function getLevel(_arg1:int):int{
            return ((StudyStuntType[_arg1]) ? StudyStuntType[_arg1][1] : 0);
        }
        public static function getName(_arg1:int):String{
            return ((StudyStuntType[_arg1]) ? StudyStuntType[_arg1][2] : "");
        }
        public static function getSign(_arg1:int):String{
            return ((StudyStuntType[_arg1]) ? StudyStuntType[_arg1][3] : "");
        }
        public static function getDescription(_arg1:int):String{
            return ((StudyStuntType[_arg1]) ? StudyStuntType[_arg1][4] : "");
        }

    }
}//package com.assist.server 