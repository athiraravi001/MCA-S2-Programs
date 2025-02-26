import java.util.Scanner;
class ArraySum
{
    public static void main(String args[])
    {
        int a[] = new int[50];
        int n, i, sum = 0;
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the size of an array : ");
        n = sc.nextInt();
        System.out.println("Enter the elements : ");
        for (i = 0; i < n; i++)
        {
            a[i] = sc. nextInt();
        }
        for (i = 0; i < n; i++)
        {
            sum = sum + a[i];
        }
        System.out.println("Sum of array elements = "+sum);
    }
}