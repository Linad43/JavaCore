public class Program {
    public static void main(String[] args) {
        int a=3, b=3;
        int result = Calkul.add(a, b);
        System.out.println(Decor.decorate(a, b, "+", result));
        result = Calkul.sub(a, b);
        System.out.println(Decor.decorate(a, b, "-", result));
        result = Calkul.mul(a, b);
        System.out.println(Decor.decorate(a, b, "*", result));
        result = Calkul.div(a, b);
        System.out.println(Decor.decorate(a, b, "/", result));
    }
}
