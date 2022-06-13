package com.group04.properties;

import java.io.IOException;
import java.util.Properties;

public class AssetsProperties {
    private static Properties prop = new Properties();

    static {
        try {
            prop.load(AssetsProperties.class.getClassLoader().getResourceAsStream("momo.properties"));
        } catch (IOException ioException) {
            ioException.printStackTrace();
        }
    }

    public static String getMomoUrl() {
        return prop.get("momoPaymentUrl").toString();
    }

    public static String getOrderInfo() {
        return prop.get("orderInfo").toString();
    }

    public static String getPartnerCode() {
        return prop.get("partnerCode").toString();
    }

    public static String getPublicKey() {
        return prop.get("publicKey").toString();
    }

    public static String getSecretKey() {
        return prop.get("secretKey").toString();
    }

    public static String getAccessKey() {
        return prop.get("accessKey").toString();
    }
}
