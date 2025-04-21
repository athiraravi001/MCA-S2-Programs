import java.util.Scanner;

class Person
{
	String name,gender,address;
	int age;
	Person(String name, String gender, String address, int age)
	{
	    this.name = name;
		this.gender = gender;
		this.address = address;
		this.age = age;
	}
}

class Employee extends Person
{
	String empid,companyname,qualification;
	int salary;
	Employee(String name, String gender, String address, int age, String empid, String companyname, String qualification, int salary)
	{
		super(name,gender,address,age);
		this.empid = empid;
		this.companyname = companyname;
		this.qualification = qualification;
		this.salary = salary;
	}
}

class Teacher extends Employee
{
	String subject,department,teacherid;
	Teacher(String name,String gender,String address,int age,String empid,String companyname,String qualification,int salary,String subject,String department,String teacherid)
	{
		super(name, gender, address, age, empid, companyname, qualification, salary);
		this.subject = subject;
		this.department = department;
		this.teacherid = teacherid;
	}
	public void display()
	{
		System.out.println("\n===== Teacher Profile =====");
		System.out.println("Name           : " + this.name);
		System.out.println("Age            : " + this.age);
		System.out.println("Gender         : " + this.gender); 
		System.out.println("Address        : " + this.address);
		System.out.println("Employee ID    : " + this.empid);
		System.out.println("Company Name   : " + this.companyname);
		System.out.println("Qualification  : " + this.qualification);
		System.out.println("Salary         : " + this.salary);
		System.out.println("Teacher ID     : " + this.teacherid);
		System.out.println("Subject        : " + this.subject);
		System.out.println("Department     : " + this.department);
    }
}

class TeacherDetails
{
	public static void main(String args[])
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Input the number of teachers required : ");
		int count = Integer.parseInt(sc.nextLine());
		Teacher[] t = new Teacher[count];
		for (int i =0; i < count; i++)
		{
			int j = i + 1;
			sc.nextLine();

			System.out.println("----- Enter details for teacher " + j +" -----");

			System.out.print("Enter name of teacher : ");
			String name = sc.nextLine();
			System.out.print("Enter address of teacher : ");
			String address = sc.nextLine();
			System.out.print("Enter gender of teacher : ");
			String gender = sc.nextLine();
			System.out.print("Enter age of teacher : ");
			int age = Integer.parseInt(sc.nextLine());
			
			System.out.print("Enter employee id : ");
			String empid = sc.nextLine();
			System.out.print("Enter companyname : ");
			String companyname = sc.nextLine();
			System.out.print("Enter qualification : ");
			String qualification = sc.nextLine();
			System.out.print("Enter salary : ");
			int salary = Integer.parseInt(sc.nextLine());
			
			System.out.print("Enter department of teacher : ");
			String department = sc.nextLine();
			System.out.print("Enter subject of teacher : ");
			String subject = sc.nextLine();
			System.out.print("Enter ID of teacher : ");
			String teacherid = sc.nextLine();
		
			t[i] = new Teacher(name, gender, address, age, empid, companyname, qualification, salary, subject, department, teacherid);
		}
		System.out.println("***** Teacher's List *****");
		for (int i = 0; i < count; i++)
		{
			t[i].display();
		}	
	}
}