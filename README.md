# GUIDeterministicModel
Este repositorio contiene la interfaz gráfica y el modelo por balance de masas de Sigma32 de la E. Coli para simular la dinámica del choque térmico


Para ejecutar la interfaz debe ser abierta con MatLab y se debe tener el módulo de AppDesigner instalado en la plataforma. 
Deberá establecer el current folder en la carpeta donde se encuentra el archivo, una vez allí puede abrir y ejecutar el programa e interactuar con la interfaz.

Tnega en cuenta que el archivo que debe cargar debe ser *.xlsx* y debe contener dos hojas, una con el nombre de *react* que contiene las constantes cinéticas de las reacciones del modelo, la otra se debe llamar *ConInic* que contiene las concentraciones iniciales de las especies involucradas.


Deben quedar así las hojas:

Hoja *react*:

cte | Reaction  
K1  | <value>  
k2  | <value>  
k3  | <value>  
k4  | <value>  
.   | <value>  
.   | <value>  
.   | <value>  
Kn  | <value>  
  
  
  
  Hoja *ConInic*

  
Especie | Concinic  
Sigma32 | <value>  
S32     | <value>  
.       | <value>  
.       | <value>  
.       | <value>  
Especien| <value>  
  
