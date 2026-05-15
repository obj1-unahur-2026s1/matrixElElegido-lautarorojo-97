// PASAJEROS DE LA NAVE
object neo{
    var energia = 100
    method esElegido() = true
    method vitalidad(){
        energia = energia / 10
    }
    method saltar(){
        energia = energia / 2
    }
}

object morfeo{
    var property vitalidad = 8
    var estaDescansado = true
    method esElegido() = false
    method saltar(){
        vitalidad -= 1 // Se cansa, o sea la variable se actualiza sin problemas
        estaDescansado = !estaDescansado // Cambia de descansado a cansado y viceversa
    }
}

object trinity{
    method esElegido() = false
    method vitalidad() = 0
    method saltar(){}
}