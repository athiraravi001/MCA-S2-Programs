import java.util.Scanner;

class Publisher
{
	String publisher_name;
	Publisher(String publisher_name)
	{
		this.publisher_name = publisher_name;
	}
	void display()
	{
		System.out.println("Publisher name : "+publisher_name);
	}
}

class Book extends Publisher
{
	String title,author;
	Book(String publisher_name,String title,String author)
	{
		super(publisher_name);
		this.title = title;
		this.author = author;
	}
    void display()
	{
		super.display();
		System.out.println("Title : "+title);
		System.out.println("Author : "+author);
	}
}

class Literature extends Book
{
	String genre;
	Literature(String publisher_name,String title,String author,String genre)
	{
		super(publisher_name,title,author);
		this.genre = genre;
	}
	void display()
	{
		super.display();
		System.out.println("Genre : "+genre);
	}
}

class Fiction extends Book
{
	String genre;
	Fiction(String publisher_name,String title,String author,String genre)
	{
		super(publisher_name,title,author);
		this.genre = genre;
	}
	void display()
	{
		super.display();
		System.out.println("Genre : "+genre);
	}
}

class BookCategoryDetails
{
	public static void main(String args[])
	{
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter book title : ");
		String title = sc.nextLine();
		System.out.println("Enter publisher name : ");
		String publisher_name = sc.nextLine();
		System.out.println("Enter author name : ");
		String author = sc.nextLine();
		System.out.println("Enter category(Literature/Fiction) : ");
		String category = sc.nextLine();
		System.out.println("===== Book Details =====");
        if (category.equalsIgnoreCase("Literature")) 
        {
            Literature literatureBook = new Literature(publisher_name, title, author, category);
            literatureBook.display();
        } 
        else if (category.equalsIgnoreCase("Fiction")) 
        {
            Fiction fictionBook = new Fiction(publisher_name, title, author, category);
            fictionBook.display();
        } 
        else 
        {
            System.out.println("Invalid category! Please enter either 'Literature' or 'Fiction'.");
        }
    }
}		