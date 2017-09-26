import NoPuedeIrDeAventuras.*
import Rick.*
class Familiar
{

	method afectarDemencia(unRick)
	{

		unRick.modificarDemencia(self.demenciaAfectada())
		
	}
	
	method puedeIrDeAventuras()
	{
		return true
	}
	method irseDeAventura(unRick)
	{
		if(!self.puedeIrDeAventuras())
			throw new NoPuedeIrDeAventuras("el familiar no se puede ir de aventuras")
		self.sufrirEfectoDeAventuras(unRick)
	}
	
	method sufrirEfectoDeAventuras(unRick)
	method demenciaAfectada()
}


class Morty inherits Familiar
{
	var saludMental
	
	constructor(unaSaludMental)
	{
		saludMental = unaSaludMental
	}
	
	override method sufrirEfectoDeAventuras(unRick)
	{
		self.afectarDemencia(unRick)
		saludMental -= 30
		
	}
	
	override method demenciaAfectada()
	{
		return 50
	}
}

class Beth inherits Familiar
{
	var afectoDelPadre
	
	constructor(afecto)
	{
		afectoDelPadre = afecto
	}
	
	override method sufrirEfectoDeAventuras(unRick)
	{
		self.afectarDemencia(unRick)
		afectoDelPadre += 10
	}
	
	override method demenciaAfectada()
	{
		return -20
	}
}

class Summer inherits Beth
{
	constructor(afecto) = super(afecto)
	override method puedeIrDeAventuras()
	{
		return new Date().dayOfWeek() == 3;
	}
}

class Jerry inherits Familiar
{
	override method puedeIrDeAventuras()
	{
		return false;
	}
	override method sufrirEfectoDeAventuras(unRick)
	{
		
	}
	
	override method demenciaAfectada()
	{
		return 0
	}
}