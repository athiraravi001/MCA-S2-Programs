import java.util.Scanner;
class MatrixSymmetricOrNot 
{
    static void showMatrix(int m[][], int row, int col) 
    {
        for (int i = 0; i < row; i++) 
        {
            for (int j = 0; j < col; j++) 
            {
                System.out.print(m[i][j] + "\t");
            }
            System.out.println();
        }
    }
    public static void main(String args[]) 
    {
        int r, c, i, j;
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the row and column size of the matrix:");
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
        showMatrix(matrix, r, c);
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
            if (!isSymmetric)
                break;
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