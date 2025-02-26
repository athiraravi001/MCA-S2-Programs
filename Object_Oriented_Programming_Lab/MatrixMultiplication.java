import java.util.Scanner;
class MatrixMultiplication 
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
        int r1, c1, r2, c2, i, j, k;
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the row and column size of 1st matrix:");
        r1 = sc.nextInt();
        c1 = sc.nextInt();    
        System.out.println("Enter the row and column size of 2nd matrix:");
        r2 = sc.nextInt();
        c2 = sc.nextInt();
        if (c1 == r2) 
        { 
            int m1[][] = new int[r1][c1];
            int m2[][] = new int[r2][c2];
            int result[][] = new int[r1][c2];
            System.out.println("Enter the elements of 1st matrix:");
            for (i = 0; i < r1; i++) 
            {
                for (j = 0; j < c1; j++) 
                {
                    m1[i][j] = sc.nextInt();
                }
            }
            System.out.println("Enter the elements of 2nd matrix:");
            for (i = 0; i < r2; i++) 
            {
                for (j = 0; j < c2; j++) 
                {
                    m2[i][j] = sc.nextInt();
                }
            }
            System.out.println("----- First matrix -----");
            showMatrix(m1, r1, c1);
            System.out.println("----- Second matrix -----");
            showMatrix(m2, r2, c2);
            for (i = 0; i < r1; i++) 
            {
                for (j = 0; j < c2; j++) 
                {
                    result[i][j] = 0;
                    for (k = 0; k < c1; k++) 
                    {
                        result[i][j] += m1[i][k] * m2[k][j];
                    }
                }
            }
            System.out.println("----- Product of two matrices -----");
            showMatrix(result, r1, c2);
        } 
        else 
        {
            System.out.println("Matrix multiplication is not possible! The number of columns of the first matrix must equal the number of rows of the second matrix.");
        }
    }
}
