
import java.util.Scanner;

public class UserInput{

public static void main (String[]args){

	Scanner keyboard = new Scanner(System.in);

		System.out.println("What's your name ?");

			String name = keyboard.next();

		System.out.println("Hi "+name+" how old are you ?");

			int age = keyboard.nextInt();

		System.out.println("Sure you are "+age+" ?"+" That's not very old");
		
	}
}