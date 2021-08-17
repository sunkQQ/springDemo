package com.sunk.demo.common.utils.security;

/**
 * 
 * @author sunk
 * @Data 2021年7月6日
 *
 */

public class Sm4Context {
    public int     mode      = 1;
    public long[]  sk        = new long[32];
    public boolean isPadding = true;

    public Sm4Context() {
    }
}
