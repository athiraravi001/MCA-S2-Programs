import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class FileReadWrite
{
    public static void main(String args[]) 
    {
        try 
        {
            FileWriter writer = new FileWriter("java_write.txt", true);
            writer.write("New file is created\n");
            writer.close();

            FileReader reader = new FileReader("java_write.txt");
            BufferedReader br = new BufferedReader(reader);

            String line;
            System.out.println("Data read from the file :");
            while ((line = br.readLine()) != null) 
            {
                System.out.println(line);
            }

            reader.close();
        } 
        catch (IOException e) 
        {
            System.out.println("----- Error occurred while accessing the file -----");
            e.printStackTrace();
        }
    }
}