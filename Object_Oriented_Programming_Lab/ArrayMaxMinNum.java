import java.util.Scanner;
class ArrayMaxMinNum
{
    public static void main(String args[])
    {
        int a[] = new int[50];
        int n, i, max, min;
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the size of an array : ");
        n = sc.nextInt();
        System.out.println("Enter the elements : ");
        for (i = 0; i < n; i++)
        {
            a[i] = sc. nextInt();
        }
        max = a[0];
        for (i = 1; i < n; i++)
        {
            if (max < a[i])
            {
                max = a[i];
                System.out.println("Maximum number in an array "+max);
            }
        }
        min = a[0];
        for (i = 1; i < n; i++)
        {
            if (min > a[i])
            {
                min = a[i];
                System.out.println("Minimum number in an array "+min);
            }
        }
    }
}