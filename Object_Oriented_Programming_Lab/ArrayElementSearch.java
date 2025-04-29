import java.util.Scanner;

class ArrayElementSearch
{
    public static void main(String args[])
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the array size : ");
        int n = sc.nextInt();
        int[] arr = new int[n];
        System.out.print("Enter the array elements : ");
        for (int i = 0; i < n; i++) 
        {
            arr[i] = sc.nextInt();
        }
        System.out.print("Enter the element to be searched : ");
        int key = sc.nextInt();

        boolean flag = false;
        for (int i = 0; i < n; i++)
        {
            if (arr[i] == key)
            {
                flag = true;
                break;
            }
        }
        
        if (flag)
        {
            System.out.print("Element is found");
        }
        else 
        {
            System.out.print("Element is not found");
        }
        sc.close();
    }
}
