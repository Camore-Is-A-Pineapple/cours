import java.util.Scanner;

public class US02Max{

public static void main(String[] args) {


	Scanner keyboard = new Scanner(System.in);

		System.out.println("Poids(kg) ?");
			double poids = keyboard.nextDouble();
				System.out.println("");

		System.out.println("Taille(m) ?");
			double taille = keyboard.nextDouble();
				System.out.println("");


		double bmi = 0;

			bmi = poids / (taille * taille);

		System.out.println("IMS = "+bmi);


		if (bmi < 16.5) {
			System.out.println("Undernutrition");
				System.out.println("");
			}

			else if(bmi > 16.5 && bmi < 18.5){
				System.out.println("Thin");
					System.out.println("");
			}

			else if(bmi > 18.5 && bmi < 25){
				System.out.println("Normale corpulence");
					System.out.println("");
			}

			else if(bmi > 25 && bmi < 30){
				System.out.println("Overweight");
					System.out.println("");
			}

			else if(bmi > 30 && bmi < 35){
				System.out.println("Moderate obesity");
					System.out.println("");			
			}

			else if(bmi > 35 && bmi < 40){
				System.out.println("Severe obesity");
					System.out.println("");				
			}
			else if(bmi < 40){
				System.out.println("Morbid obesity");
					System.out.println("");				
			}

			

   
    }
}

	
