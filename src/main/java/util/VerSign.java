package util;

import entity.Order;
import service.OrderService;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.security.PublicKey;
import java.security.Signature;

public class VerSign {

    public boolean checkMessage(long order_id){
        try{
            OrderService orderService = new OrderService();
            Order order = orderService.getOrderForSign(order_id);

            InputStream is = new ByteArrayInputStream(order.getPublic_key());
            java.security.cert.CertificateFactory cf =
                    java.security.cert.CertificateFactory.getInstance("X.509");
            java.security.cert.Certificate cert =  cf.generateCertificate(is);
            PublicKey pub = cert.getPublicKey();

            byte[] signedMess = order.getSign_text();

            Signature sig = Signature.getInstance("SHA1withDSA", "SUN");
            sig.initVerify(pub);

            String input = order.getBuyer().getTelephone()+" "+order.getBuyer().getAddress();
            byte[] inputByte = input.getBytes();
            BufferedInputStream bufin = new BufferedInputStream(new ByteArrayInputStream(inputByte));
            byte[] buffer = new byte[1024];
            int len;
            while (bufin.available() != 0) {
                len = bufin.read(buffer);
                sig.update(buffer, 0, len);
            };
            bufin.close();

            boolean result = sig.verify(signedMess);
            return result;
        } catch (Exception e){
            e.printStackTrace();
        }

        return true;
    }
}
