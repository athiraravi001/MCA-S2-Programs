//Create CPU with attribute price. Create inner class Processor (no. of cores, manufacturer) and static nested class RAM (memory, manufacturer). Create an object of CPU and print information of Processor and RAM.

class CPU 
{
    int price;
    Processor processor = new Processor();
    RAM ram = new RAM();
    
    class Processor
    {
        int cores;
        String manufacturer;
    }
    
    static class RAM
    {
        int memory;
        String manufacturer;
    }

    void display()
    {
        System.out.println("---------- CPU Specifications ----------");
        System.out.println("CPU price : " + this.price);
        System.out.println("Processor cores : " + this.processor.cores);
        System.out.println("Processor manufacturer : " + this.processor.manufacturer);
        System.out.println("RAM memory : " + this.ram.memory);
        System.out.println("RAM manufacturer : " + this.ram.manufacturer);
     }
 
    CPU(int price, int cores, String processorManufacturer, int memory, String ramManufacturer)
    {
        this.price = price;
        this.processor.cores = cores;
        this.processor.manufacturer = processorManufacturer;
        this.ram.memory = memory;
        this.ram.manufacturer = ramManufacturer;
    }
}

public class ComputerConfiguration  
{
    public static void main(String args[]) 
    {
        CPU c = new CPU(50000, 8, "INTEL", 8000, "ADATA");
        c.display();
    }
}


//-------------------------------------------------------------------------- OR --------------------------------------------------------------------------


class CPU 
{
    double price;
    CPU(double price) 
	{
        this.price = price;
    }
    class Processor 
	{
        int cores;
        String manufacturer;
        Processor(int cores, String manufacturer) 
		{
            this.cores = cores;
            this.manufacturer = manufacturer;
        }
        void displayProcessorInfo() 
		{
            System.out.println("Processor Cores: " + cores);
            System.out.println("Processor Manufacturer: " + manufacturer);
        }
    }
    static class RAM 
	{
        int memory;
        String manufacturer;
        RAM(int memory, String manufacturer) 
		{
            this.memory = memory;
            this.manufacturer = manufacturer;
        }
        void displayRAMInfo()
		{
            System.out.println("RAM Memory: " + memory + "GB");
            System.out.println("RAM Manufacturer: " + manufacturer);
        }
    }
}

public class ComputerConfiguration 
{
    public static void main(String[] args) 
	{
        CPU cpu = new CPU(5000.0);
        System.out.println("CPU Price: " + cpu.price);

        CPU.Processor processor = cpu.new Processor(4, "Intel");
        processor.displayProcessorInfo();

        CPU.RAM ram = new CPU.RAM(16, "Samsung");
       ram.displayRAMInfo();
    }
}