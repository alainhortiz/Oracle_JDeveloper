# Hacer proyecto SOA.
# Hacer un XSD dentro de ese proyecto que tenga un element( seria el request) con los campos de entrada que necesita ese servicio nuevo del jhonny mas un campo quantity y un element(sería el response) que tenga un campo de tipo int, por ejemplo, y otro campo que sea codigo de respuesta y otro que sea descripción.
# luego arrastran un elemento BPEL para el composite, y en el mensaje input selecionan el request del XSD, y en el outout seleccionan el response del XSD, y listo se crean el BPEL.
# luego en ese mismo composite arrastran el componente para conectarse a un servicio externo y le pasan la URL del WSDL de ese servicio y se crean el parnertlink.
# luego se meten en el BPEL, ponen los siguientes componentes:

-  assign para que en el mapeen los datos de entrada del input a los datos de entrada de la variable de entrada del invoke
-  invoke para invocar al endpoint de jhonny que ya tienen en el composite, seria solo enlazar el parnetlink(ojo, esto se debe hacer primero para que puedan crear las variables de entrada y salida y usarlas en los mapeos)
-  assign para obtener el resultado de la invocación y el campo donde viene la cantidad asignarlo a una variable que se creen ustedes.


# dentro del BPEL ponen un assign luego un invoke, luego un if donde se valida si el valor del quantity entrado en el mensaje del BPEL es mayor que el valor almacenado en la variable que crearon.
-	si se cumple devuelven codigo = -1 y descripción = un texto que explique lo que paso con los valores de las 2 variables, como se hace en los BPEL del cliente.
-	si no se cumple entonces se devuelve codigo = 0, descripción = operacion exitosa y en el numero se retorna el valor de la variable que es el resultado de la invocacion del servicio de jhonny
