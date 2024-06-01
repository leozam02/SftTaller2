
public aspect CheckAssurance {
	
	pointcut verifyAssurance():execution(void PetStore.makeAppointment(..));
	
	before(): verifyAssurance() {
        String petName = PetStore.readConsole("Ingrese el nombre de la mascota para la cita:");
        System.out.println("¡Bienvenido! Agendando una cita para " + petName + ".");
    }
	
}