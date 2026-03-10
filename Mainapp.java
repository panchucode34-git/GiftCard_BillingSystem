package giftcards;
	import java.util.Scanner;

	public class Mainapp {

	    public static void main(String[] args) {

	        Scanner sc = new Scanner(System.in);
	        GiftCard card = new GiftCard();

	                while(true) {

	                    System.out.println("\n--- Gift Card Billing System ---");
	                    System.out.println("1. Add Gift Card");
	                    System.out.println("2. View Gift Cards");
	                    System.out.println("3. Delete Gift Card");
	                    System.out.println("4. Exit");

	                    System.out.print("Enter choice: ");
	                    int choice = sc.nextInt();

	                    switch(choice) {

	                    case 1:
	                        sc.nextLine();
	                        System.out.print("Enter Card Name: ");
	                        String name = sc.nextLine();

	                        System.out.print("Enter Amount: ");
	                        double amount = sc.nextDouble();

	                        card.addCard(name, amount);
	                        break;

	                    case 2:
	                        card.viewCards();
	                        break;
	                    case 3:
	                        System.out.print("Enter ID to delete: ");
	                        int id = sc.nextInt();
	                        card.deleteCard(id);
	                        break;

	                    case 4:
	                        System.out.println("Thank you! Visit Again");
	                        System.exit(0);

	                    default:
	                        System.out.println("Invalid Choice");
	                    }}
	    }
	                }