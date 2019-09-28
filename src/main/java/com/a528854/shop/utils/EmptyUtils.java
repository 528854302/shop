package com.a528854.shop.utils;

public class EmptyUtils {
    public static boolean isNull(Object obj){
        if (obj==null || obj.equals("")){
            return true;
        }else {
            return false;
        }
    }
}
