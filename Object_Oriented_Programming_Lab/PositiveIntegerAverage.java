//Find the average of N positive integers, raising a user defined exception for each negative input.

import java.util.Scanner;

class NegativeNumberException extends Exception 
{
    public NegativeNumberException(String message) 
    {
        super(message);
    }
}

public class PositiveIntegerAverage 
{
    public static void main(String args[]) 
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the total number of integers to be calculated : ");
        int count = sc.nextInt();
        int[] numbers = new int[count];

        try 
        {
            System.out.print("Enter " + count + " numbers : ");

            for (int i = 0; i < count; i++) 
            {
                int num = sc.nextInt();
                if (num < 0) 
                {
                    throw new NegativeNumberException("Negative number entered is " + num);
                }
                numbers[i] = num;
            }

            int sum = 0;
            for (int i = 0; i < count; i++) 
            {
                sum += numbers[i];
            }
            float average = (float) sum / count;
            System.out.println("Average of the given numbers is " + average);
        } 

        catch (NegativeNumberException e) 
        {
            System.out.println("Exception Caught!!!");
            System.out.println(e.getMessage());
        }
    }
}
