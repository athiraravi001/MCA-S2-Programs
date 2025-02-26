import java.util.Scanner;
class MatrixTranspose 
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
        int matrix[][] = new int[r][c];
        int transpose[][] = new int[c][r];
        System.out.println("Enter the elements of the matrix:");
        for (i = 0; i < r; i++) 
        {
            for (j = 0; j < c; j++) 
            {
                matrix[i][j] = sc.nextInt();
            }
        }
        System.out.println("----- Original matrix -----");
        showMatrix(matrix, r, c);
        for (i = 0; i < r; i++) 
        {
            for (j = 0; j < c; j++) 
            {
                transpose[j][i] = matrix[i][j];
            }
        }
        System.out.println("----- Transposed matrix -----");
        showMatrix(transpose, c, r);
    }
}
