import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class FileOddEvenSeparator 
{
    public static void main(String args[]) 
    {
        try 
        {
            FileReader reader = new FileReader("source.txt");
            BufferedReader br = new BufferedReader(reader);
            
            FileWriter writerOdd = new FileWriter("odd.txt");
            BufferedWriter wrOdd = new BufferedWriter(writerOdd);

            FileWriter writerEven = new FileWriter("even.txt");
            BufferedWriter wrEven = new BufferedWriter(writerEven);

            // BufferedReader br = new BufferedReader(new FileReader("source.txt"));
            // BufferedWriter wrOdd = new BufferedWriter(new FileWriter("odd.txt"));
            // BufferedWriter wrEven = new BufferedWriter(new FileWriter("even.txt"));

            String line;
            while ((line = br.readLine()) != null) 
            {
                line = line.trim();
                if (line.isEmpty()) 
                {
                    continue;
                }
                int num = Integer.parseInt(line);
                if (num % 2 == 0) 
                {
                    wrEven.write(String.valueOf(num));
                    wrEven.newLine();
                } 
                else 
                {
                    wrOdd.write(String.valueOf(num));
                    wrOdd.newLine();
                }
            }
            br.close();
            wrOdd.close();
            wrEven.close();

            System.out.println("Even and odd numbers successfully copied.");
        } 
        catch (IOException e) 
        {
            System.out.println("----- Error occurred -----");
        }
    }
}