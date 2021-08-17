package com.sunk.demo.common.utils.security;

import java.nio.charset.StandardCharsets;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

/**
 * SM4加解密工具类
 * @author sunk
 * @Data 2021年7月6日
 *
 */
public class Sm4Utils {

    public static final Pattern P_MATCH = Pattern.compile("\\s*|\t|\r|\n");

    /**
     * 加密
     * @param plainText 要加密的数据
     * @param secretKey 加密key
     * @return 加密后的数据
     */
    public static String encryptDatas(String plainText, String secretKey) {
        try {
            Sm4Context ctx = new Sm4Context();
            ctx.isPadding = true;
            ctx.mode = 1;
            byte[] keyBytes = secretKey.getBytes();
            Sm4 sm4 = new Sm4();
            sm4.sm4SetkeyEnc(ctx, keyBytes);
            byte[] encrypted = sm4.sm4CryptEcb(ctx, plainText.getBytes(StandardCharsets.UTF_8));
            String cipherText = (new BASE64Encoder()).encode(encrypted);
            if (cipherText != null && cipherText.trim().length() > 0) {
                Matcher m = P_MATCH.matcher(cipherText);
                cipherText = m.replaceAll("");
            }
            return cipherText;
        } catch (Exception var8) {
            var8.printStackTrace();
            return null;
        }
    }

    /**
     * 解密
     * @param cipherText 加密后数据
     * @param secretKey 解密key
     * @return 解密后的数据
     */
    public static String decryptDatas(String cipherText, String secretKey) {
        try {
            Sm4Context ctx = new Sm4Context();
            ctx.isPadding = true;
            ctx.mode = 0;
            byte[] keyBytes = secretKey.getBytes();
            Sm4 sm4 = new Sm4();
            sm4.sm4SetkeyDec(ctx, keyBytes);
            byte[] decrypted = sm4.sm4CryptEcb(ctx, (new BASE64Decoder()).decodeBuffer(cipherText));
            return new String(decrypted, StandardCharsets.UTF_8);
        } catch (Exception var6) {
            var6.printStackTrace();
            return null;
        }
    }

    public static void main(String[] args) {
        //加解密key
        String secretKey = "D4DB2Evs2T1hMkAP";
        /*//创建map对象进行原始数据封装
        Map<String, Object> map = new HashMap<>();
        map.put("name", "Marydon");
        //        map.put("model", "1555555230");
        JSONObject jsonObject = new JSONObject(map);
        String data = jsonObject.toString();
        System.out.println("传输数据:"+data);
        //调用加密方法加密
        String encrypte = encryptDatas(data, secretKey);
        System.out.println("加密后数据:"+encrypte);*/

        String encrypte = "2kcBrh0Wq9m55qA07q28Cdm/jVGgBkPKrspw8uDs3hn7fZLR151bKqlk6bcQUJT39khiKiXiZDHBLwDkgGlfMYw2VI8qe6XwOY/j0CwLYPzu/+2FIF3alt3s4XKjsm3CJalJchKV79NTfURiMXOR49wFkq6paYpNtq4inc4l61seBedKOyPizqiajIU7brcLh3FitcuE+78nO6t/uVAEOQ==";
        //数据解密
        String decryptDatas = decryptDatas(encrypte, secretKey);
        System.out.println("解密后数据：" + decryptDatas);
    }
}
