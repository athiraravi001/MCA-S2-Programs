import java.util.Scanner;
class ArraySort
{
    public static void main(String args[])
    {
        int a[] = new int[50];
        int n, i, j;
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Enter the size of an array : ");
        n = sc.nextInt();
        
        System.out.println("Enter the elements : ");
        for (i = 0; i < n; i++)
        {
            a[i] = sc. nextInt();
        }
        
        System.out.println("----- Array before sorting -----");
        for (i = 0; i < n; i++)
        {
            System.out.print(a[i]+" ");
        }
        System.out.println();
        
        for (i = 0; i < n; i++)
        {
            for (j = i+1; j < n; j++)
            {
                if (a[i] > a[j])
                {
                    int t = a[i];
                    a[i] = a[j];
                    a[j] =t;
                }
            }
        }
        System.out.println("----- Array sorting in ascending order -----");
        for (i = 0; i < n; i++)
        {
            System.out.print(a[i]+" ");
        }
        System.out.println();
        
        for (i = 0; i < n; i++)
        {
            for (j = i+1; j < n; j++)
            {
                if (a[i] < a[j])
                {
                    int t = a[i];
                    a[i] = a[j];
                    a[j] =t;
                }
            }
        }
        System.out.println("----- Array sorting in descending order -----");
        for (i = 0; i < n; i++) 
        {
            System.out.print(a[i]+" ");
        }
        System.out.println();
    }
}
