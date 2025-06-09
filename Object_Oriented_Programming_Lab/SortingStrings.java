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


// ----------------------------------------------- OR ----------------------------------------------- 


import java.util.Scanner;

public class SortingStrings 
{
    public static void main(String args[]) 
    {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Enter the number of strings : ");
        int count = Integer.parseInt(sc.nextLine());
        
        String[] str_arr = new String[count];
        System.out.println("Enter the strings: ");
        for (int i = 0; i < count; i++) 
        {
            str_arr[i] = sc.nextLine();
        }

        System.out.print("Enter sorting order (asc or desc) : ");
        String order = sc.nextLine().trim().toLowerCase();

        if (order.equals("asc")) 
        {
            // Ascending order
            for (int i = 0; i < count; i++) 
            {
                for (int j = i + 1; j < count; j++) 
                {
                    if (str_arr[i].compareTo(str_arr[j]) > 0) 
                    {
                        String temp = str_arr[i];
                        str_arr[i] = str_arr[j];
                        str_arr[j] = temp;
                    }
                }
            }
        } 
        else if (order.equals("desc")) 
        {
            // Descending order
            for (int i = 0; i < count; i++) 
            {
                for (int j = i + 1; j < count; j++) 
                {
                    if (str_arr[i].compareTo(str_arr[j]) < 0) 
                    {
                        String temp = str_arr[i];
                        str_arr[i] = str_arr[j];
                        str_arr[j] = temp;
                    }
                }
            }
        } 
        else 
        {
            System.out.println("Invalid sorting order. Please enter 'asc' or 'desc'.");
            sc.close();
            return;
        }

        System.out.println("----- Strings after sorting in " + order + " order -----");
        for (int i = 0; i < count; i++) 
        {
            System.out.println(str_arr[i]);
        }

        sc.close();
    }
}
