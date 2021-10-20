# Sistema Agroveterinaria
# Indice
* [Personal y roles del proyecto](#roles)
* [Descripción de la metodología de trabajo](#DESCRIPCION)
    - [Introduccion](#INTRODUCCION)
    - [Proposito del proyecto](#PROPOSITO)
    - [Funcionalidades del sistema](#funcio)
    - [Objetivos](#objetivos)
    - [Proposito del documento](#PROPOSITODOC)
    - [Alcance](#ALCANCE)
* [Metodologia Agil](#METODOLOGIA)
    - [En que consiste la metodologia Scrum](#SCRUM)
    - [Por que se escogio la metodologia Scrum](#PORQUE)

* [Analisis del Sistema](#analisis)
    - [En que consiste la arquitectura de capas](#analisissec)
    - [Por que se escogio la arquitectura de capas](#analisispor)

* [Descripción General del proyecto](#GENERAL)
    - [Fundamentacion](#FUNDAMENTO)
    - [Valores de trabajo](#VALORES)
* [Calendario de actividades](#ACTIVIDADES)
* [Artefactos](#Artefactos)
    - [Pila de producto](#pilaprod)
    - [Pila de sprint](#pilasprint)
* [Diseño del sistema](#DIAGRAMA)
    - [Diseño de Prototipo](#prototipo)
    - [Casos de Uso](#casos)
    

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
    En este modulo se encuentran todos los productos que se encuentran en la base de datos.

2. Funcionalidad "Reportes"
    En este modulo se generaran los reportes de las ventas y del producto en stock del inventario.
    
3. Funcionalidad "Citas"
    En este modulo se encuentran el apartado para realizar,editar o eliminar citas utilizando fullcalendar. 
    
### ` `Objetivos<a name="objetivos"/>
Al momento de realizar este sistema se propusieron los siguientes objetivos a cumplir:

* adasdas
    
### ` `Proposito del documento<a name="PROPOSITODOC"/>

* El proposito de este documento es poder brindar la informacion necesaria para que sea de mayor facilidad tanto para los empleados como para los visistantes entender el funcionamiento de cada una de las opciones que se encuentran en el programa y que no haya ningun inconveniente al momento de utilizarla.



### ` `Alcance<a name="ALCANCE"/>

* El alcance de este proyecto es poder facilitar el manejo de productos de las agroveterinarias contando con un inventario facil de usar para el usuario y un apartado en el cual se podran realizar citas de los clientes.



## ` `Metodologia seleccionada<a name="METODOLOGIA"/>

Se selecciono la metodologia Scrum ya que tiene el beneficio de que nos aporta el ritmo de trabajo sostenible, ya que se adapta a los cambios de manera inmediata consiguiendo un ritmo constante, tanto en duración del sprint como de esfuerzo.

![](https://files.catbox.moe/thb0me.jpg)

### ` `¿En que consiste la metodologia Scrum?<a name="SCRUM"/>

Es un marco de trabajo o framework utilizado para optimizar el trabajo de equipo en proyectos complejos y monitorear la evolución del producto manteniendo como enfoque la calidad y los tiempos estipulados de entrega. Este método de trabajo se realiza por ciclos de actividades planificadas previamente, las cuales son conocidas como “sprints”, y está compuesta por una planificación de tareas y plazos establecidos de inicio y fin.


### ` `¿Porque se escogio el metodo Scrum?<a name="PORQUE"/>

La razon de elegir el metodo Scrum es por su organización ágil y conjunta del proyecto, siendo capaz de responder a posibles contratiempos que aparecen en su desarrollo. Asimismo, tiene por objetivo utilizar el producto lo antes posible, mientras se va mejorando.



## ` `Analisis del Sistema<a name="analisis"/>
Para el analisis de este sistema se escogio utilizar la arquitectura de capas ya que el sistema se esta desarrollando utilizando el modelo vista controlador(MVC) para la facilidad en que se manejan los datos y tener un mejor control en si del sistema al separarlo por modulos.

![](https://files.catbox.moe/thb0me.jpg)

### ` `¿En que consiste la Arquitectura de Capas?<a name="analisissec"/>
La arquitectura basada en capas se enfoca en la distribución de roles y responsabilidades de forma jerárquica proveyendo una forma muy efectiva de separación de responsabilidades. El rol indica el modo y tipo de interacción con otras capas, y la responsabilidad indica la funcionalidad que está siendo desarrollada.

### ` `¿Porque se escogio la Arquitectura de Capas?<a name="analisissec"/>
Se escogio debido a que es fácil testear cada capa por separado debido a la separación clara de responsabilidades que existe entre ellas. Y al momento de hacer un cambio, solo debe impactar a la capa responsable y no a todas. 


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
|  Sprint#1 25/09/2021	| [Presentacion Inicial del Sistema](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/7)	|![](https://files.catbox.moe/9iqyes.png)	|
|  Sprint#1 25/09/2021	| [Planificacion de la Base de datos](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/10)	|![](https://files.catbox.moe/ovfhms.png)|
|  Sprint#1 25/09/2021	| [Planificacion de Actividades](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/9)	|![](https://files.catbox.moe/pglluh.png)	|
|  Sprint#2 02/10/2021	| [Diseñar modulo de reportes](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/6)	|![](https://files.catbox.moe/r4d7ms.png)	|
|  Sprint#1 25/09/2021	| [Realizacion del Analisis del Sistema](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/8)	|![](https://files.catbox.moe/6omezk.png)|
|  Sprint#1 25/09/2021	| [Diseño de la Base de Datos (ER)](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/5)	|![](https://files.catbox.moe/h94vsi.png)	|
|  Sprint#2 02/10/2021	| [Diseñar modulo de inventario](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/4)	|![](https://files.catbox.moe/071zkc.png)	|
|  Sprint#2 02/10/2021	| [Diseñar de Login de usuarios](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/3)	|![](https://files.catbox.moe/p7716x.png)	|
|  Sprint#1 25/09/2021	| [Diseñar Calendario para el sistema](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/2)	|![](https://files.catbox.moe/ic6mzb.png)|
|  Sprint#1 25/09/2021	| [Diseñar Menu del Sistema](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/1)	|![](https://files.catbox.moe/75yxyz.png)	|




![]()

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

## ` `Diseño del sistema<a name="DIAGRAMA"/>
### ` `Diseño de Prototipo<a name="prototipo"/>
![](https://files.catbox.moe/3gjntz.png)
![](https://files.catbox.moe/8mar2n.png)
![](https://files.catbox.moe/okzs9s.png)

### ` `Casos de Uso<a name="casos"/>
![](https://files.catbox.moe/oiglp1.png)

### ` `Diagrama de Entidad De Relacion<a name="casos"/>
![](https://files.catbox.moe/rwi87p.png)

