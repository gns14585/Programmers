import java.util.*;
public class Main{
    public static void main(String[] args) {
        Scanner sc =new Scanner(System.in);

        int N =sc.nextInt();
        int M=sc.nextInt();

        int[] Basket=new int[N];
        for(int i=0;i<N;i++){
            Basket[i]=i+1;  
        }

        for(int n=0;n<M;n++) {
            int i = sc.nextInt();
            int j = sc.nextInt();     

            int num;//잉여번수
            num=Basket[i-1];
            Basket[i-1]=Basket[j-1];
            Basket[j-1]=num;    

        }

        for(int n=0;n<N;n++){
        System.out.print(Basket[n]+" ");
        }
    }
}
