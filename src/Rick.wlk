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
		}
	
		
	}
	
	method modificarDemencia(unNumero)
	{
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
