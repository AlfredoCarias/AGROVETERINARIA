# Sistema Agroveterinaria
# Indice
* [Personal y roles del proyecto](#roles)
* [Descripción de la metodología de trabajo](#DESCRIPCION)
    - [Introduccion](#INTRODUCCION)
    - [Proposito del proyecto](#PROPOSITO)
    - [Funcionalidades del sistema](#funcio)
    - [Diagrama Relacional del sistema](#relacion)
    - [Proposito del documento](#PROPOSITODOC)
    - [Alcance](#ALCANCE)
* [Metodologia seleccionada](#METODOLOGIA)
    - [En que consiste la metodologia Scrum](#SCRUM)
    - [Por que se escogio la metodologia Scrum](#PORQUE)
* [Descripción General del proyecto](#GENERAL)
    - [Fundamentacion](#FUNDAMENTO)
    - [Valores de trabajo](#VALORES)
* [Calendario de actividades](#ACTIVIDADES)
* [Artefactos](#Artefactos)
    - [Pila de producto](#pilaprod)
    - [Pila de sprint](#pilasprint)
* [Cuadros sobre el desarrollo del proyecto](#CUADROS)
* [Desarrollo de sprint](#DESPRINT)
* [Diseño del sistema](#DIAGRAMA)
    - [Diseño Cliente](#cliente)
    - [Diseño Administrador](#admin)

## ` `Personal y roles del proyecto<a name="roles"/>


|  Integrante       | Carnet  	    | Rol  	        |
|---	            |---	        |---	        |
|  Alfredo Loyo 	| 18-3306 	    | Product Owner/Scrum Master	|
|  "        	|    	"        | Desarrollador |
|  "        	|  	     "       | Desarrollador	|
|  "       	|    	 "       | Desarrollador |
|  "      	|    	 "       | Diseño        |


## ` `Descripción de la metodología de trabajo<a name="DESCRIPCION"/>


### ` `Introduccion<a name="INTRODUCCION"/>

El presente documento se redacta el desarrollo del proyecto de un sistema para una agroveterinaria en donde se presenta el desarrollo del mismo de forma interactiva e incremental, las herramientas y softwares utilizados, el seguimiento y las responsabilidades de los roles.


### ` `Proposito del proyecto<a name="PROPOSITO"/>

* Realizar un sistema capaz de poder llevar el control y gestión (compra y venta) del inventario de una agro veterinaria, contara con el control de citas por medio de un calendario que se encontrara en el sistema. También tendrá la posibilidad de generar reportes de ventas y productos en formato pdf.



### ` `Funcionalidades del sistema<a name="funcio"/>

* Funcionalidad del sistema

1. Funcionalidad "Inventario"
    En este modulo se encuentran la cantidad de tokens que tiene el usuario, tambien cuenta con la opcion de poder escanear ek codigo QR de los juegos para poder entrar, ademas de poder comprar mas tokens cuando a este se le acaben.

2. Funcionalidad "Reportes"
    En este modulo se encuentran los paquetes que el usuario puede comprar para poder adquirir los tokens, contando con 3 tipos de paquetes: 10, 20 tokens y un paquete sin limite. Al momento de comprar el sistema te redirecciona al modulo de compra.
    
3. Funcionalidad "Citas"
    En este modulo se encuentra el ingreso de las tarjetas de credito o debito para la compra de los paquetes de tokens. El usuario puede comprar los paquetes cuantas veces quiera.   
    
### ` `Diagrama Relacional del sistema<a name="relacion"/>

![]()
    
### ` `Proposito del documento<a name="PROPOSITODOC"/>

El proposito de este documento es poder brindar la informacion necesaria para que sea de mayor facilidad tanto para los empleados como para los visistantes entender el funcionamiento de cada una de las opciones que se encuentran en el programa y que no haya ningun inconveniente al momento de utilizarla.



### ` `Alcance<a name="ALCANCE"/>

* El alcance de este proyecto es poder facilitar el manejo de productos de las agroveterinarias contando con un inventario facil de usar para el usuario y un apartado en el cual se podran realizar citas de los clientes.



## ` `Metodologia seleccionada<a name="METODOLOGIA"/>

Se selecciono la metodologia Scrum ya que tiene el beneficio de que nos aporta el ritmo de trabajo sostenible, ya que se adapta a los cambios de manera inmediata consiguiendo un ritmo constante, tanto en duración del sprint como de esfuerzo.

### ` `¿En que consiste la metodologia Scrum?<a name="SCRUM"/>

Es un marco de trabajo o framework utilizado para optimizar el trabajo de equipo en proyectos complejos y monitorear la evolución del producto manteniendo como enfoque la calidad y los tiempos estipulados de entrega. Este método de trabajo se realiza por ciclos de actividades planificadas previamente, las cuales son conocidas como “sprints”, y está compuesta por una planificación de tareas y plazos establecidos de inicio y fin.

![](https://files.catbox.moe/thb0me.jpg)





### ` `¿Porque se escogio el metodo Scrum?<a name="PORQUE"/>

La razon de elegir el metodo Scrum es por su organización ágil y conjunta del proyecto, siendo capaz de responder a posibles contratiempos que aparecen en su desarrollo. Asimismo, tiene por objetivo utilizar el producto lo antes posible, mientras se va mejorando.


## ` `Descripción General del proyecto<a name="GENERAL"/>
### ` `Fundamentación<a name="FUNDAMENTO"/>

1. Sistema Inventario

Poder llevar el control y gestión (compra y venta) del inventario de una agro veterinaria.

2. Sistema de Citas

Poder llevar el control de las citas agendadas y poder agregarse o dar de baja cuando sea necesario.

### ` `Valores de trabajo<a name="VALORES"/>

Los valores que deben ser practicados por todos los miembros involucrados en el desarrollo del proyecto y que hacen posible que la metodología Scrum tenga éxito son:

1. Compromiso
1. Responsabilidad 
2. Disciplina 
5. Transparencia


## ` `Cronograma de actividades<a name="ACTIVIDADES"/>




|  Sprints 	    | Actividad  |  Screenshot  	|
|---	        |---	     |---	            |
|  Sprint#1 13/06/2021	| [Realizacion del documento del sistema](https://github.com/AlfredoCarias/Examen-Final-Analisis-de-sistemas/issues/10)	|![](https://files.catbox.moe/0vq85s.png)	|




![](https://files.catbox.moe/zixbmv.png)

## ` `Artefactos<a name="Artefactos"/>


Se detalla las fases en que se divide esta seccion del documento.

Informacion

  * Pila de producto
  * Pila de sprint


 Sprints
 
 Incremento del desarrollo
 
 Graficas del registro y seguimiento del avance
 
 Comunicacion de los integrantes
 
### ` `Pila de producto<a name="pilaprod"/>

Es donde se presenta los requisitos del sistema o del usuarion en esta metodologia

Billetera electronica

Sistema en el que un visitante pueda comprar tokens de manera electronica con tarjetas de credito o debito. Pudiendo escoger los paquetes que se presentan.


Sistema Administracion de ingresos y estadisticas de juegos

Programa que sea capaz de llevar el control de los ingresos, cortes de caja diarios y llevar una estadística de los juegos utilizados.


¿Cómo se va realizar?

Por medio del lenguaje de programacion PHP se realizaran los sistemas de billetera electronica y el control de ingresos y estadistica, utilizando a su vez una base de datos realizada en Mysql, en la cual tendra el registro de los datos de usuarios y los ingresos.

### ` `Pila de Sprint<a name="pilasprint"/>

Es donde se presenta los requisitos y las actividades desarrolladas por el equipo del proyecto y donde se detalla los implicados y las responsabilidades

Responsabilidades del Product Owner

 - Presencia la supervicion del proyecto y de los avances durante las faces del proyecto
 - Realiza las instrucciones necesarias para el desarrollo del proyecto

Resposabilidades del Scrum Manager

 - Supervisa y recibe las instrucciones del gestor del producto para el desarrollo del proyecto
 - Asigna las instrucciones a los demas integrantes del proyecto
 - Supervisa el cumplimiento de actividades del proyecto

Responsabilidades del equipo de desarrollo

 - Elabora las instrucciones proporcionadas en el sprint
 - Resolucion de dudas entre el cliente y el Scrum Manager
 - Desarrolla las actividades presentadas

Responsabilidades del equipo de diseño

 - Realiza las actividades presentadas
 - Resolucion de dudas entre el equipo de desarrollo

