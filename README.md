# Sistema Agroveterinaria
# Indice
* [Personal y roles del proyecto](#roles)
* [Descripción de la metodología de trabajo](#DESCRIPCION)
    - [Introduccion](#INTRODUCCION)
    - [Proposito del proyecto](#PROPOSITO)
    - [Objetivos](#objetivos)
    - [Proposito del documento](#PROPOSITODOC)
    - [Alcance](#ALCANCE)
* [Metodologia Agil](#METODOLOGIA)
    - [En que consiste la metodologia Scrum](#SCRUM)
    - [Por que se escogio la metodologia Scrum](#PORQUE)

* [Arquitectura de Capas](#analisis)
    - [En que consiste la arquitectura de capas](#analisissec)
    - [Por que se escogio la arquitectura de capas](#analisispor)

* [Descripción General del proyecto](#GENERAL)
    - [Herramientas y Tecnologias](#herramientas)
    - [Funcionalidades del sistema](#FUNDAMENTO)
    - [Requerimientos del sistema](#requerimientos)
    - [Valores de trabajo](#VALORES)
    - [Descripcion de Usuarios](#users)
    - [Calendario de actividades](#ACTIVIDADES)
    
* [Artefactos](#Artefactos)
    - [Pila de producto](#pilaprod)
    - [Pila de sprint](#pilasprint)
* [Diseño del sistema](#DIAGRAMA)
    - [Diseño de Prototipo](#prototipo)
    - [Casos de Uso](#casos)

* [Estrategias de Pruebas](#prueba)

    

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


    
### ` `Objetivos<a name="objetivos"/>
Al momento de realizar este sistema se propuso el siguiente objetivo a cumplir:

* El objetivo general consiste en diseñar e implementar el sistema de agroveterinaria, el cual consistira con varios modulos, principalmente con ventas, citas, inventario y gestion de usuarios. El sistema se encargara de facilitar la ejecucion de las tareas asignadas a los empleados del negocio.
    
### ` `Proposito del documento<a name="PROPOSITODOC"/>

* El proposito de este documento es poder brindar la informacion necesaria para que sea de mayor facilidad tanto para los empleados como para los visistantes entender el funcionamiento de cada una de las opciones que se encuentran en el programa y que no haya ningun inconveniente al momento de utilizarla.



### ` `Alcance<a name="ALCANCE"/>

* El alcance de este proyecto es poder facilitar el manejo de productos de las agroveterinarias contando con un inventario facil de usar para el usuario y un apartado en el cual se podran realizar citas de los clientes.



## ` `Metodologia SCRUM<a name="METODOLOGIA"/>

Se selecciono la metodologia Scrum ya que tiene el beneficio de que nos aporta el ritmo de trabajo sostenible, ya que se adapta a los cambios de manera inmediata consiguiendo un ritmo constante, tanto en duración del sprint como de esfuerzo.

![](https://files.catbox.moe/thb0me.jpg)

### ` `¿En que consiste la metodologia Scrum?<a name="SCRUM"/>

Es un marco de trabajo o framework utilizado para optimizar el trabajo de equipo en proyectos complejos y monitorear la evolución del producto manteniendo como enfoque la calidad y los tiempos estipulados de entrega. Este método de trabajo se realiza por ciclos de actividades planificadas previamente, las cuales son conocidas como “sprints”, y está compuesta por una planificación de tareas y plazos establecidos de inicio y fin.


### ` `¿Porque se escogio el metodo Scrum?<a name="PORQUE"/>

La razon de elegir el metodo Scrum es por su organización ágil y conjunta del proyecto, siendo capaz de responder a posibles contratiempos que aparecen en su desarrollo. Asimismo, tiene por objetivo utilizar el producto lo antes posible, mientras se va mejorando.



## ` `Arquitectura de Capas<a name="analisis"/>

![](https://files.catbox.moe/ynzm7t.png)

### ` `¿En que consiste la Arquitectura de Capas?<a name="analisissec"/>
La arquitectura basada en capas se enfoca en la distribución de roles y responsabilidades de forma jerárquica proveyendo una forma muy efectiva de separación de responsabilidades. El rol indica el modo y tipo de interacción con otras capas, y la responsabilidad indica la funcionalidad que está siendo desarrollada.

### ` `¿Porque se escogio la Arquitectura de Capas?<a name="analisissec"/>
Se escogio debido a que es fácil testear cada capa por separado debido a la separación clara de responsabilidades que existe entre ellas. Y al momento de hacer un cambio, solo debe impactar a la capa responsable y no a todas. 
  
### **Capa de Presentacion**
  
* En esta se gestiona lo que el usuario ve, es la presentación al usuario, le comunica y captura la información del 
  usuario en el menor tiempo posible. Contiene la interfaz gráfica y debe de ser amigable y cómodo para el usuario; 
  esta capa se comunica con la capa de negocio. 

### **Capa de Negocio**
  
* Esta capa residen los programas que se ejecutan, reciben las peticiones de usuario y envían las respuestas tras el 
  proceso. Aquí se establecen todas las reglas a cumplirse. Se comunica con la capa de presentación, para recibir y 
  enviar los resultados, y con la capa de datos, para poder solicitar almacenar o recuperar datos del gestor. 

### **Capa de Datos**

* Es la encargada de residir los datos y se encarga de acceder a los mismos. Esta se encuentra formada por uno o más 
  gestores de bases de datos en los que se realizan el almacenamiento de los datos, reciben las solicitudes de 
  almacenamiento o de la recuperación de información. Es necesario contar con personal capacitado para el desarrollo 
  y construcción de los datos, ya que sin estos el sistema desarrollado no funcionara correctamente. 

## ` `Descripción General del proyecto<a name="GENERAL"/>

### ` `Herramientas y Tecnologias<a name="herramientas"/>

* **PHP:**

Es un lenguaje de programación de uso general que se adapta especialmente al desarrollo web.
![](https://files.catbox.moe/fzufjh.png)

* **MySQL:**

Es un sistema de gestión de bases de datos relacionales (RDBMS) de código abierto respaldado por Oracle y basado en el lenguaje de consulta estructurado. ![](https://files.catbox.moe/ispxlk.png)


* **Java Script:**

Es un lenguaje de programación o de secuencias de comandos que te permite implementar funciones complejas en páginas web, cada vez que una página web hace algo más que sentarse allí y mostrar información estática para que la veas, muestra oportunas actualizaciones de contenido, mapas interactivos, animación de Gráficos 2D/3D, desplazamiento de máquinas reproductoras de vídeo, etc.Es un sistema de gestión de bases de datos relacionales (RDBMS) de código abierto respaldado por Oracle y basado en el lenguaje de consulta estructurado. 
![](https://files.catbox.moe/5sp7mv.png)

* **FullCalendar:**

Es plugin jQuery que proporciona un completo calendario que se puede alimentar por AJAX (o no, si definimos los eventos en el momento de su creación), y que nos permite incluso arrastrar y soltar eventos, o incluso sincronizarlo con Google Calendar.
![](https://files.catbox.moe/4a7imq.webp)

* **JsBarcode**

Es una librería para generar códigos de barras en elementos HTML usando JavaScript.
![](https://files.catbox.moe/qtcxto.jpg)

* **Ajax**

Es una técnica de desarrollo web para crear aplicaciones web asíncronas
![](https://files.catbox.moe/xsptfm.png)

### ` `Funcionalidades del sistema<a name="FUNDAMENTO"/>

#### ` ` Template Administrador:

Desde esta interfaz el usuario podra administrar todo el sistema.

##### **1. Modulo Dashboard**

En este modulo se muestra la cantidad de usuarios y productos que estan activos en la base de datos.

##### **2. Modulo Usuarios**

En este modulo se encuentra la tabla con la informacion y CRUD de los usuarios y roles de los mismos. En el apartado de usuarios se ve, crea, edita o elimina un usuarios teniendo la posibilidad de otorgar un tipo de rol. En el apartado de roles se puede ver,crear,editar o eliminar un rol, dandoles permisos especiales a cada rol mediante una interfaz.En ambos apartado se pueden generar reportes en formato PDF.

##### **3. Modulo CLiente**

En este modulo se encuentra la tabla con la informacion y CRUD de los clientes ingresados en el sistema.

##### **4. Modulo Tienda**

En este modulo se encuentra la tabla con la informacion y CRUD de los productos y categorias de los mismos.

##### **5. Modulo Venta**

En este modulo se puede realizar las ventas de los productos que se encuentran en el sistema.

##### **6. Modulo Citas**

En este modulo se encuentra el apartado de citas agendadas y calendario. En donde citas agendadas muestra una tabla con la infomacion de las citas que ya se encuentran agendadas en el calendario. En el apartado calendario se puede vizualizar de mejor manera las citas que estan agendadas.

#### ` ` Template Cliente:

En esta interfaz se encuentran los modulos que el cliente podra visualizar.

##### **1. Modulo Inicio**

En este modulo se encuentra el inicio de la pagina con informacion de contacto en el footer y varias secciones en el navbar.

##### **2. Modulo Productos**

En este modulo se encuentran a visualizacion para los clientes de los productos que se encuentran disponibles en el sistema. Pudiendo solo visualizar ya que no se encuentra habilitado un carrito de compras para este modulo.

##### **3. Modulo Nosotros**

En este modulo se encuentra la informacion de la tienda, como su mision y vision e historia.

### ` `Requerimientos del sistema<a name="requerimientos"/>

1. Control de Inventario

* Se debe de poder mostrar los productos ingresados.
* Se debe de poder editar, agregar o eliminar un producto.
* Se puede crear un reporte en formato PDF

2. Control de Permisos

* Cada usuario tendran sus permisos de acuerdo a lo que el administrador dicte.
* El unico con control total sea el administrador.
* Se pueden modificar los permisos asignados.

3. Gestion de Roles

* Se puede agregar, eliminar o editar un rol.
* Se puede agregar o quitar privilegios de usuario.
* Los demas usuarios no podran tener privilegios que no se les hayan asignado.

4. Manejo de Reportes

* Cada modulo tendra su generacion de reporte en formato PDF.

5. Venta de Productos

* Se eliminara del stock la cantidad de productos vendidos.
* Se podra generar una factura en formato PDF.

6. Control de Citas

* Se podran agregar o eliminar citas.
* 

### ` `Valores de trabajo<a name="VALORES"/>

Los valores que deben ser practicados por todos los miembros involucrados en el desarrollo del proyecto y que hacen posible que la metodología Scrum tenga éxito son:

1. Compromiso
1. Responsabilidad 
2. Disciplina 
5. Transparencia


## ` `Tipos de Usuarios<a name="users"/>
|  No.    | Tipo de usuario  |  Descripcion  	                                                                                      |
|---	  |---	             |---	                                                                                                  |
|1	      |Administrador	 |Se encarga de gestionar los usuario y sus privilegios, asi como el control total del sistema.           |
|2	      |Cliente	         |Este usuario solo puede visualizar contenidos.                                                          |
|3	      |Empleado	         |Tiene los privilegios de poder agregar citas y gestionar los productos                                  |


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

Agroveterinaria

Sistema capaz de poder llevar el control y gestión (compra y venta) del inventario de una agro veterinaria, contara con el control de citas por medio de un calendario que se encontrara en el sistema.


¿Cómo se va realizar?

Se realizara la planificación del sistema mencionado anteriormente utilizando la metodología Scrum para el control y ejecución de actividades; se utilizara la Arquitectura de Capas para el análisis del mismo. Todo esto se trabajara mediante la plataforma GitHub.

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

#### ` `Modulo Dashboard

![Dashboard](https://files.catbox.moe/087yx9.PNG)

#### ` `Modulo Usuarios

![Usuarios](https://files.catbox.moe/cgdvw9.PNG)
![Roles](https://files.catbox.moe/kaww5s.PNG)

#### ` `Modulo Clientes

![Clientes](https://files.catbox.moe/sjulg1.PNG)

#### ` `Modulo Tienda

![Productos](https://files.catbox.moe/yvj7ua.PNG)
![Categorias](https://files.catbox.moe/qobsj3.PNG)

#### ` `Modulo Citas

![Citas](https://files.catbox.moe/dcjy4t.PNG)
![Calendario](https://files.catbox.moe/3piqz8.PNG)


### ` `Casos de Uso<a name="casos"/>
![](https://files.catbox.moe/oiglp1.png)

### ` `Diagrama de Entidad De Relacion<a name="casos"/>
![](https://files.catbox.moe/rwi87p.png)

## ` `Estrategias de Pruebas<a name="prueba"/>

