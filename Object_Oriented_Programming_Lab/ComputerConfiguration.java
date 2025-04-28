//Create CPU with attribute price. Create inner class Processor (no. of cores, manufacturer) and static nested class RAM (memory, manufacturer). Create an object of CPU and print information of Processor and RAM.

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
        // Create CPU object
        CPU cpu = new CPU(5000.0);
        System.out.println("CPU Price: " + cpu.price);

        // Create Processor object (non-static inner class needs CPU object)
        CPU.Processor processor = cpu.new Processor(4, "Intel");
        processor.displayProcessorInfo();

        // Create RAM object (static nested class)
        CPU.RAM ram = new CPU.RAM(16, "Samsung");
        ram.displayRAMInfo();
    }
}