import NoPuedeIrDeAventuras.*
import Familiar.*
class Rick
{
	var acompaniante
	var familiares
	var demencia

	constructor(unosFamiliares, unaDemencia)
	{
		familiares = unosFamiliares
		demencia = unaDemencia
	}
	method irseDeAventura()
	{
		if(acompaniante == null)
			acompaniante = familiares.anyOne()
		
		try {
			acompaniante.irseDeAventura(self)
		}
		catch e : NoPuedeIrDeAventuras {
			self.tomarUnTrago()
			// No es necesario pero para mostrar que se puede acceder al mensaje de la excepcion
			console.println("Se capturo una excepcion: " + e.getMessage())
		}
	
		
	}
	
	method modificarDemencia(unNumero)
	{
		if(demencia + unNumero > 100)
			throw new NoPuedeIrDeAventuras("Rick esta muy loco")
		demencia += unNumero
	}
	
	method tomarUnTrago()
	{
		demencia = demencia/2
	}
	
	method demencia()
	{
		return demencia
	}
}
