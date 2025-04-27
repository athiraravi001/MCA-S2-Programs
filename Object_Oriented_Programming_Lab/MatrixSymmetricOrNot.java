import java.util.Scanner;
public class MatrixSymmetricOrNot 
{
    public static void main(String args[]) 
    {
        int r, c, i, j;
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the row and column size of the matrix:");
        r = sc.nextInt();
        c = sc.nextInt();    
        if (r != c) 
        {
            System.out.println("Matrix is not square, so it cannot be symmetric.");
            return;
        }
        int matrix[][] = new int[r][c];
        System.out.println("Enter the elements of the matrix:");
        for (i = 0; i < r; i++) 
        {
            for (j = 0; j < c; j++) 
            {
                matrix[i][j] = sc.nextInt();
            }
        }
        System.out.println("----- Matrix -----");
        for (i = 0; i < r; i++) 
        {
            for (j = 0; j < c; j++) 
            {
                System.out.print(matrix[i][j] + "\t");
            }
            System.out.println();
        }
        boolean isSymmetric = true;
        for (i = 0; i < r; i++) 
        {
            for (j = 0; j < c; j++) 
            {
                if (matrix[i][j] != matrix[j][i]) 
                {
                    isSymmetric = false;
                    break;
                }
            }    
        }
        if (isSymmetric) 
        {
            System.out.println("The matrix is symmetric.");
        } 
        else 
        {
            System.out.println("The matrix is not symmetric.");
        }
    }
}