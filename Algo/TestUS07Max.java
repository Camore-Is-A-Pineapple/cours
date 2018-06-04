import java.util.Scanner;

public class US03Max{

public static void main(String[] args) {



	Scanner keyboard = new Scanner(System.in);

		System.out.println("-> 1) Pour Choisir une recette 2) Pour choisir le temps de la recette 3) Pour Choisir la complexité de la recette");
			String undeuxtrois = keyboard.nextString();
				System.out.println("");


		if (undeuxtrois = 1) {
				System.out.println("-> Choisisez une recette");
			System.out.println(recetteList);
					String recette = keyboard.nextString();
				
				System.out.println("");
			}
			
			else if(undeuxtrois = 2){
				System.out.println("-> Choisisez le temps de la recette");

					String temps = keyboard.nextString();
				
				System.out.println("");
			}
			else if(undeuxtrois = 3){
				System.out.println("-> Choisisez la complexité de la recette");
					String complexity = keyboard.nextString();
				
				System.out.println("");
			}



		String [] recetteList = {"Paella Valenciana","autres1","autres2"};
		
		String [] recetteList= newString [4]; 
		
		recetteList[3]= "recette 3"










				int complexity = 0;

			complexity = (temps < 30) && (ingredients < 5) ;

		System.out.println(+complexity);




			if (complexity < 30) {
			System.out.println("easy");
				System.out.println("");
			}
			
			else if(complexity >= 30 && complexity < 60) {
				System.out.println("medium");
					System.out.println("");
			}

			else if(complexity >= 60) {
				System.out.println("hard");
					System.out.println("");
			}








easy = preparation time is less than 30 minutes and we have less than 5 ingredients.
medium = preparation time is between 30 minutes and 60 mins and we have until 10  ingredients.
hard = time greater than 60 minutes or ingredients > 10 
