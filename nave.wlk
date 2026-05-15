import pasajeros.*

object nave{
    
    const pasajeros = #{} // [] a chequear si esta coleccion es conjunto o lista

    method subirPasajero(unPasajero) = pasajeros.add(unPasajero)
    method bajarPasajero(unPasajero) = pasajeros.remove(unPasajero)
    method cantidadPasajeros() = pasajeros.size()
    method pasajeroDeMayorVitalidad() = pasajeros.max({p => p.vitalidad()})
    method estaEquilibrada() {
        return self.vitalidadMaxima() <= self.vitalidadMinima() * 2
     }
    method vitalidadMaxima() = pasajeros.map({ p => p.vitalidad() }).max()
    method vitalidadMinima() = pasajeros.map({ p => p.vitalidad() }).min()
    
    method chocarNave(){
        pasajeros.forEach({p => p.saltar()})
        pasajeros.clear()
    }
    method acelerarNave(){
        pasajeros.filter({p => !p.esElegido()}).forEach({p => p.saltar()})
    }
}