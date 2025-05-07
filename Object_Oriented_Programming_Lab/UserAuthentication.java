import java.util.Scanner;

class InvalidUserException extends Exception
{
    public InvalidUserException(String message)
    {
        super(message);
    }
}

class User
{
    private String username = "John";
    private String password = "password";
    public void authenticate(String username, String password) throws InvalidUserException
    {
        if(!this.username.equals(username) || !this.password.equals(password))
        {
            throw new InvalidUserException("Invalid username and password");
        }
    }
}

public class UserAuthentication
{
    public static void main(String args[])
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter username : ");
        String username = sc.nextLine();
        System.out.print("Enter password : ");
        String password = sc.nextLine();
        User u = new User();

        try
        {
            u.authenticate(username, password);
            System.out.println("Authentication successful.");
        }

        catch(InvalidUserException e)
        {
            System.out.println("Authentication failed. "+e.getMessage());
        }
    }
}