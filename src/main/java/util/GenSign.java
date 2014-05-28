package util;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.Signature;

public class GenSign {

    private byte[] ksfis;
    private String storePass = "1q2w3e4r";
    private String keyPass = "4r3e2w1q";
    private KeyStore ks;

    public void init(byte[] ksfis2){
        try {
            ks = KeyStore.getInstance("JKS");
            BufferedInputStream ksbufin = new BufferedInputStream(new ByteArrayInputStream(ksfis2));
            ks.load(ksbufin, storePass.toCharArray());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public byte[] getSignMess(byte [] mesBytes){
        byte[] realSig = new byte[0];
        try {
            PrivateKey priv = (PrivateKey) ks.getKey("localhost", keyPass.toCharArray());
            Signature dsa = Signature.getInstance("SHA1withDSA", "SUN");
            dsa.initSign(priv);

            BufferedInputStream bufin = new BufferedInputStream(new ByteArrayInputStream(mesBytes));
            byte[] buffer = new byte[1024];
            int len;
            while (bufin.available() != 0) {
                len = bufin.read(buffer);
                dsa.update(buffer, 0, len);
            };

            bufin.close();
            realSig = dsa.sign();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return realSig;
    }

    public byte[] getPublicKey(){
        byte[] pk = new byte[0];
        try {
            java.security.cert.Certificate cert = ks.getCertificate("localhost");
            pk = cert.getEncoded();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return pk;
    }

    public byte[] getKsfis() {
        return ksfis;
    }

    public void setKsfis(byte[] ksfis) {
        this.ksfis = ksfis;
    }

    public String getStorePass() {
        return storePass;
    }

    public void setStorePass(String storePass) {
        this.storePass = storePass;
    }

    public String getKeyPass() {
        return keyPass;
    }

    public void setKeyPass(String keyPass) {
        this.keyPass = keyPass;
    }
}
