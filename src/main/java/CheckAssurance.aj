
public aspect CheckAssurance {
	
	pointcut verifyAssurance():execution(void PetStore.makeAppointment(..));
	
}
