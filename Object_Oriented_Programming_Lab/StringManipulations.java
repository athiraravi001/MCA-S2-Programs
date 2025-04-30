import java.util.Scanner;

public class StringManipulations
{
	public static void main(String arg[])
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter the first string : ");
		String str1 = sc.nextLine();
		System.out.print("Enter the second string : ");
		String str2 = sc.nextLine();
		
		//Length of string
		System.out.println("Length of 1st string : "+str1.length());
		System.out.println("Length of 2nd string : "+str2.length());

        //Change lettercase
        System.out.println("Lowercase : " + str1.toLowerCase());
        System.out.println("Uppercase : " + str1.toUpperCase());

		//String concatenation
		String concatenated = str1.concat(str2);
		System.out.println("Concatenated string : "+concatenated);
		
		//String comparison
		if (str1.equalsIgnoreCase(str2))
		{
			System.out.println("Both are equal(case insentitive)");
		}
		else
		{
			System.out.println("Both are different");
		} 

        //Number to string
        int number = 12345;
        String numStr = Integer.toString(number);
        System.out.println("Number as string : " + numStr);

        //Trim the leading and trailing blank spaces
        String trimmed = concatenated.trim();
        System.out.println("Trimmed string : \"" + trimmed + "\"");

        //Index of a character in a string
        System.out.println("Index of character 'a' in first string : " + str1.indexOf('a'));

		//Extracting a substring
		System.out.println("Substring of first string(0 to 3) : "+str1.substring(0,3));
		
		//Replacing characters
		System.out.println("Replacing 'a' with 'o' in 1st string : "+str1.replace('a','o'));
		
		//Character at an index
		System.out.println("Character at index 3 of the string : "+str1.charAt(3));
		
		//Substring available in the string or not
		System.out.println(str1.contains("str"));
		
		//Split string into words
		String[] s = new String[2];
		s = str1.split(" ");
		System.out.println(s[0]);
		System.out.println(s[1]);
	}
}