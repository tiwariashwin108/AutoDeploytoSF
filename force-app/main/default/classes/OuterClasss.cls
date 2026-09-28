public class OuterClasss {

    public String outerName = 'Vinod';

    private class InnerClass {

        public String city = 'Hyderabad';

        private String secretCode = 'ABC123';
    }

    public void test() {

        InnerClass obj = new InnerClass();

        System.debug(obj.city);

        System.debug(obj.secretCode);
    }
}