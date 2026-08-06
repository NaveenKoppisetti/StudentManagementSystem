package util;

public class TestPassword {

    public static void main(String[] args) {

        String password = "12345678";

        String hash = PasswordUtil.hashPassword(password);

        System.out.println("Original Password : " + password);
        System.out.println("SHA-256 Hash      : " + hash);

    }

}