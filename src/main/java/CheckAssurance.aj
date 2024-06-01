import main.PetStore;

public aspect CheckAssurance {
	
	pointcut verifyAssurance():execution(void PetStore.makeAppointment(..));
	
	before(): verifyAssurance() {
		
	System.out.println("Verifying assurance.....");
    String petName = PetStore.readConsole("Ingrese el nombre de la mascota para la cita:");
    System.out.println("¡Bienvenido! Agendando una cita para " + petName + ".");
    
    }
    
    after(): verifyAssurance() {
        System.out.println("La cita fue agendada exitosamente.");
    }
	
}