import java.util.Scanner;
import java.util.Arrays;  
import java.util.Collections;

public class SortingStrings 
{
    public static void main(String args[]) 
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the number of strings : ");
        int count = Integer.parseInt(sc.nextLine());
        String[] str_arr = new String[count];
        System.out.println("Enter the strings : ");
        
        for (int i = 0; i < count; i++) 
        {
            str_arr[i] = sc.nextLine();
        }
        
        Arrays.sort(str_arr);
        System.out.println("----- Strings after sorting in ascending order -----");
        for (int i = 0; i < count; i++) 
        {
            System.out.println(str_arr[i]);
        }
        
        Arrays.sort(str_arr, Collections.reverseOrder());
        System.out.println("----- Strings after sorting in descending order -----");
        for (int i = 0; i < count; i++) 
        {
            System.out.println(str_arr[i]);
        }

        sc.close(); 
    }
}