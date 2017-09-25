import NoPuedeIrDeAventuras.*
import Rick.*
class Familiar
{
	method afectarDemencia(unRick, unNumero)
	{
		if(unRick.demencia() + unNumero > 100)
			throw new NoPuedeIrDeAventuras("Rick esta muy loco")	
		unRick.modificarDemencia(unNumero)
		
	}
	
	method puedeIrDeAventuras()
	{
		return true
	}
	method irseDeAventura(unRick)
	{
		if(!self.puedeIrDeAventuras())
			throw new NoPuedeIrDeAventuras("No se puede ir de aventuras")
		self.sufrirEfectoDeAventuras(unRick)
	}
	
	method sufrirEfectoDeAventuras(unRick)
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
		self.afectarDemencia(unRick, 50)
		saludMental -= 30
		
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
		self.afectarDemencia(unRick, -20)
		afectoDelPadre += 10
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
}