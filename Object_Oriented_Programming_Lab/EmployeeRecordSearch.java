import java.util.Scanner;

class Employee
{
	String eNo;
	String eName;
	int eSalary;
	Employee(String eNo,String eName,int eSalary)
	{
		this.eNo = eNo;
		this.eName = eName;
		this.eSalary = eSalary;
	}
}

class EmployeeRecordSearch
{
	public static void main(String args[])
	{
		int i, count;
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter count of employee list : ");
		count = Integer.parseInt(sc.nextLine()); 
		Employee[] emp = new Employee[count];
		for (i = 0; i < count; i++)
		{
                        System.out.println("----- Enter details of employee " + (i + 1) + " -----");
			System.out.print("Employee number :");
			String eNo = sc.nextLine();
			System.out.print("Employee name :");
			String eName = sc.nextLine();
			System.out.print("Employee salary :");
			int eSalary = Integer.parseInt(sc.nextLine());
			emp[i] = new Employee(eNo,eName,eSalary);
		}
		System.out.println("Enter the number of employee to be filtered out : ");
		String search = sc.nextLine();
		for (i = 0; i<count; i++)
		{
			if(emp[i].eNo.equals(search))
			{
                                System.out.println("Employee found");
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
	}
}
