import java.util.Scanner;

class Employee
{
	String eNo, eName;
	int eSalary;
	Employee(String eNo, String eName, int eSalary)
	{
		this.eNo = eNo;
		this.eName = eName;
		this.eSalary = eSalary;
	}
}

public class EmployeeSearch
{
	public static void main(String args[])
	{
	        int count, i;
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter number of employeees : ");
		count = Integer.parseInt(sc.nextLine()); 
		Employee[] emp = new Employee[count];
		for (i = 0; i < count; i++)
		{
			System.out.println("----- Enter details for employee " + (i + 1) + " -----");
			System.out.print("Employee number : ");
			String eNo = sc.nextLine();
			System.out.print("Employee name : ");
			String eName = sc.nextLine();
			System.out.print("Employee salary : ");
			int eSalary = Integer.parseInt(sc.nextLine());
			emp[i] = new Employee(eNo,eName,eSalary);
		}
		System.out.print("Enter the employee number to be filtered out : ");
		String search_empnum = sc.nextLine();
		for (i = 0; i < count; i++)
		{
			if(emp[i].eNo.equals(search_empnum))
			{
			    System.out.println("-------- Employee Details --------");
				System.out.println("Employee number : "+emp[i].eNo);
				System.out.println("Employee name : "+emp[i].eName);
				System.out.println("Employee salary : "+emp[i].eSalary);
				break;
			}
		}
		if (i == count)
		{
			System.out.println("Employee not found");
		}
                sc.close();
	}
}   
