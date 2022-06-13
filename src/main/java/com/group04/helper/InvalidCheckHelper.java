package com.group04.helper;

public class InvalidCheckHelper {
    public static boolean isEmpty(String[] in) {
        for (String s : in) {
            if (s.isEmpty()) return true;
        }
        return false;
    }
}
