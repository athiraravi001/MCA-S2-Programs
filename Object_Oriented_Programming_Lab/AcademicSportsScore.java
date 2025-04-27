import java.util.Scanner;

class Student
{
	String student_name;
	int academic_score;
	Student(String student_name, int academic_score)
	{
		this.student_name = student_name;
		this.academic_score = academic_score;
	}
}

class Sports
{
	String sports_name;
        int sports_score;
	Sports(String sports_name, int sports_score)
	{
                this.sports_name = sports_name;
		this.sports_score = sports_score;
	}
}

class Result extends Student
{
	Sports s;
	Result(String student_name,int academic_score,String sports_name,int sports_score)
	{
		super(student_name, academic_score);
                this.s = new Sports(sports_name, sports_score);
	}
	void display()
	{
                System.out.println("===== Score Details =====");
		System.out.println("Student Name : "+this.student_name);
		System.out.println("Academic Score : "+this.academic_score);
                System.out.println("Sports Name : "+this.s.sports_name);
		System.out.println("Sports Score : "+this.s.sports_score);
	}
}

class AcademicSportsScore
{
	public static void main(String args[])
	{
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter student name : ");
		String student_name = sc.nextLine();
		System.out.println("Enter academic score : ");
		int academic_score = Integer.parseInt(sc.nextLine());
                System.out.println("Enter sports name : ");
		String sports_name = sc.nextLine();
		System.out.println("Enter sports score : ");
		int sports_score = Integer.parseInt(sc.nextLine());
		Result r = new Result(student_name,academic_score,sports_name,sports_score);
		r.display();
	}
}
