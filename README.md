# Sistema Agroveterinaria

# Indice

* [Requerimientos de software](#requerimientos)
    - [Información del Proyecto](#informacion)
    - [Proposito](#proposito)
    - [Alcance del Sistema](#alcance)
        - [Objetivo General](#objgen)
        - [Beneficios](#beneficios)
        - [Objetivos o metas](#metas)
    - [Funcionalidades del sistema](#funcionalidades)
    - [Tipos de usuarios](#usuarios)
    - [Entorno de ejecucion](#ejecucion)
    - [Requerimientos funcionales](#reqfun)
    - [Requerimientos de interfaz](#reqint)
        - [Interfaz de Hardware](#interfazhard)
        - [Interfaz de Software](#interfazsoft)
    - [Requerimientos no funcionales](#reqnofun)
        - [Usabilidad](#usabilidad)
        - [Facilidad de aprendizaje](#facilidad)
        - [Diagnóstico y prevención de errores](#errores)
        - [Facil Acceso](#facilacces)
* [Analisis de Requerimientos](#analisisreq)
    - [Implementacion del Analisis](#implementacion)
        - [Arquitectura](#arquitectura)
    - [Capa de Negocio](#modellogica)
        - [Descomposición funcional](#descomposicion)   
        - [Diagramas de Casos de Uso](#casos)
        - [Mapa de navegación](#navmap)
    - [Capa de Datos](#datos)
        - [Diagrama de Entidad de Relacion](#er)
    - [Capa de Interfaz](#ui)
    - [Herramientas y Tecnologias](#herrramientas)
         - [Tecnologias](#tec)
         - [Herramientas](#herr)
* [Planificacion de Acividades](#planificacion)
    - [Metodologia Seleccionada](#SCRUM)
    - [Cronograma de Actividades](#ACTIVIDADES)




# ` `Requerimientos de software<a name="requerimientos"/>

## ` `Información del Proyecto<a name="informacion"/>

| Nombre  | Descripción  |
|---|---|
| Nombre Proyecto  | Agroveterinaria  |
| Desarrollador  | Alfredo Loyo |

## ` `Propósito<a name="proposito"/>
Realizar un sistema que sea capaz de poder llevar el control y gestión de citas e inventario de productos, todo esto con el fin de poder ayudar a facilitar los procesos que se llevan a cabo en una agroveterinaria.

## ` `Alcance del Sistema<a name="alcance"/>

### Objetivo general<a name="objgen"/>
Desarrollar un sistema capaz de llevar el control de inventario y citas que se llevan a cabo en el negocio de una agroveterinaria para un mejor control y manejo de los mismos.

### Beneficios<a name="beneficios"/>
El sistema se encarga de facilitar de mejor manera toda la gestion que deben realizar los usuarios.

Algunos beneficios serian:

- Control de permisos y usuarios.
- Gestion de productos y citas.
- Venta y compra de productos.
- Notificacion Via Email.
- Sistema Multiusuarios.
- Generación de reportes en formato PDF.


### ` `Objetivos o metas<a name="metas"/>

Con la realizacion de este proyecto se tomaron en cuenta a cumplir los siguientes objetivos:

- Desarrollar un control de roles, permisos y usuarios.
- Desarrollar un control de procesos de ventas.
- Desarrollar un control de citas.
- Desarrollar un area de notificaion por correo.
- Desarrollar un manejo y control de inventario.
- Desarrollar generación de reportes.

## ` `Funcionalidades del sistema<a name="funcionalidades"/>

| No. | Funcionalidad  | Descripción  |
|---  |---             |---           |
| 1 |  Control de roles y usuarios | Administrar los privilegios de los roles para cada tipo de usuario, basandose en su funcion. |
| 2 | Gestion e inventario de Producto | Contar con control de los producto teniendo la opcion de poder agregar, vender, eliminar o comprar.|
| 3 | Gestion de Citas | Poder agregar o eliminar citas en un calendario web para poder llevar un orden de las mismas.|
| 4 | Reportes | Poder generar reportes de las diferentes funciones del sistema para tener un mayor control.|

## ` `Tipos de usuarios<a name="usuarios"/>

|  No.    | Tipo de usuario  |  Descripcion  	                                                                                      |
|---	  |---	             |---	                                                                                                  |
|1	      |Administrador	 |Se encarga de gestionar los usuario y sus privilegios, asi como el control total del sistema.           |
|2	      |Cliente	         |Este usuario solo puede visualizar contenidos.                                                          |
|3	      |Empleado	         |Tiene los privilegios de poder agregar citas y gestionar los productos                                  |


## ` `Entorno de ejecucion<a name="ejecucion"/>

El sistema descrito en este documento debe ser ejecutado en un ambiente web(navegadores).

## ` `Requerimientos funcionales<a name="reqfun"/>

### 1. Control de usuario

* **Descripción:** Control de usuarios que hacen uso del sistema.

   - Se crea llenando un formulario con los datos solicitados
   - Consulta de usuarios registrados
   - Poder eliminar un usuario del sistema

* **Requerimientos funcionales:**

   - Se registra el usuario con los datos personales y se asigna un rol predeterminado en el sistema
   - Validar los privilegios del usuario dependiendo el rol asignado
   - Dar baja un usuario eliminandolo del sistema
   - Generar reporte de usuarios
   - Busqueda de usuarios
   - Acceso al sistema mediante usuario y contraseña

### 2. Gestion e inventario de producto

* **Descripción:** Manejo de los productos que se encuentran en el sistema.
   - Ingreso de un producto nuevo
   - Se genera un modal con los datos solicitados
   - Se llenan los datos
   - Se validadn los datos y se guardan
   - Se muestran los datos en una tabla

* **Requerimientos funcionales:**

   - Poder ingresar nuevo producto
   - Buscar por producto
   - Poder ingresar nuevo stock de producto
   - Poder eliminar productos existentes

### 3. Gestion e inventario de producto

* **Descripción:** Manejo de los productos que se encuentran en el sistema.
   - Ingreso de un producto nuevo
   - Se genera un modal con los datos solicitados
   - Se llenan los datos
   - Se validadn los datos y se guardan
   - Se muestran los datos en una tabla

* **Requerimientos funcionales:**

   - Poder ingresar nuevo producto
   - Buscar por producto
   - Poder ingresar nuevo stock de producto
   - Poder eliminar productos existentes

### 4. Generar reportes

* **Descripción:** Generación de reportes en formato PDF

   - Se solicita el reporte de la tabla que se requiere
   - EL sistema genera un reporte de la tabla
   - Se descarga o guarda el reporte generado

* **Requerimientos funcionales:**
  - Poder generar y guardar reportes en PDF.

## ` `Requerimientos de interfaz<a name="reqint"/>

#### ` `Componentes<a name="componentes"/>
1. Menu principal.
2. Login del sistema
3. Brindar informacion de usuario logeado

### ` `Interfaces de hardware<a name="interfazhard"/>

* Navegadores web en dispositivos como computadoras portatiles o de escritorio..

### ` `Interfaces de software<a name="interfazsoft"/>

- Base de datos MySQL.
- Desarrollado utilizando JavaScript y PHP.
- Servidor montado localmente utilizando XAMPP.

## ` `Requerimientos no funcionales<a name="reqnofun"/>

### ` `Usabilidad<a name="usabilidad"/>
El sistema contara con un manual de usuario para poder ayudarlo y guiarlo en 
el uso apropiado del sistema, de esta manera el usuario puede consultar 
cualquier duda o inconveniente que se le presente. El manual de usuario 
contendrá lo siguiente:

- Capturas de pantalla del sistema y sus módulos
- Instrucciones para el uso del sistema
- Explicaciones señalando el componente del sistema
- Links de videos tutoriales para que el usuario pueda comprender mejor 

### ` `Facilidad de aprendizaje<a name="facilidad"/>
El sistema está enfocado en ser sencillo para que el usuario pueda aprenderlo a 
utilizar de manera rápida y sencilla., para lograr esto el sistema cumplirá lo 
siguiente:

- Sistema de controles simples
- Interfaz amigable 
- Fácil acceso

###  ` `Diagnóstico y prevención de errores<a name="errores"/>
* Si se produce un error, proporcionar la información necesaria para que el 
usuario entienda el fallo. Por ejemplo, en un formulario marcar en rojo un 
campo obligatorio no rellenado con un mensaje de acompañamiento que 
ayude a entender qué debe poner para poder completar correctamente el 
campo. 

### ` `Fácil acceso<a name="facilacces"/>
Para garantizar la calidad del sistema se tomaran los siguientes aspectos para 
tomar en cuenta:

- __Eficiencia:__ Se reducirá el uso de recursos para tener una mayor 
rapidez al momento de utilizar el sistema.

- __Confiabilidad:__ El sistema mantendrá su rendimiento en cualquier 
circunstancia y con cualquier número de usuarios conectados.

- __Portabilidad:__ Este software será multiplataforma por lo que podrá ser 
utilizado en computadoras o cualquier dispositivo móvil


# ` `Análisis de requerimientos<a name="analisisreq"/>

## ` `Implementación del Analisis<a name="implementacion"/>

### ` `Arquitectura<a name="arquitectura"/>

La arquitectura que será implementada será la arquitectura en 3 capas, se enfoca en la distribución de roles y responsabilidades de forma jerárquica proveyendo una forma muy efectiva de separación de responsabilidades. El rol indica el modo y tipo de interacción con otras capas, y la responsabilidad indica la funcionalidad que está siendo desarrollada.

![arquitectura](https://files.catbox.moe/ynzm7t.png)

#### **Capa de Presentacion**
  
* En esta se gestiona lo que el usuario ve, es la presentación al usuario, le comunica y captura la información del 
  usuario en el menor tiempo posible. Contiene la interfaz gráfica y debe de ser amigable y cómodo para el usuario; 
  esta capa se comunica con la capa de negocio. 

#### **Capa de Negocio**
  
* Esta capa residen los programas que se ejecutan, reciben las peticiones de usuario y envían las respuestas tras el 
  proceso. Aquí se establecen todas las reglas a cumplirse. Se comunica con la capa de presentación, para recibir y 
  enviar los resultados, y con la capa de datos, para poder solicitar almacenar o recuperar datos del gestor. 

#### **Capa de Datos**

* Es la encargada de residir los datos y se encarga de acceder a los mismos. Esta se encuentra formada por uno o más 
  gestores de bases de datos en los que se realizan el almacenamiento de los datos, reciben las solicitudes de 
  almacenamiento o de la recuperación de información. Es necesario contar con personal capacitado para el desarrollo 
  y construcción de los datos, ya que sin estos el sistema desarrollado no funcionara correctamente. 

## ` ` **Capa de Negocio**<a name="modellogica"/>
## ` `Descomposición funcional<a name="descomposicion"/>

Diagrama en donde se descomponen los componentes de los modulos del sistema

![descomposición funcional](https://files.catbox.moe/d01dem.png)

### ` `Diagramas de casos de uso<a name="casos"/>

Se muestran los casos de uso de los diferentes modulos del sistema.

![sistema](https://files.catbox.moe/jccvr6.png)

![gestion](https://files.catbox.moe/u1nquz.png)

![gestion](https://files.catbox.moe/59nuxf.png)

![gestion](https://files.catbox.moe/535tpy.png)

### ` `Mapa de navegación<a name="navmap"/>

En esta grafica se muestra las diferentes funciones que contiene cada modulo.

![mapa de navegacion](https://files.catbox.moe/gd0nti.png)

## ` ` **Capa de Datos**<a name="datos"/>

### ` `Diagrama de entidad de relacion<a name="er"/>

Se muestra el modelo de entidad de relacion de las diferentes tablas de la base de datos que conforma el sistema

![er](https://files.catbox.moe/nswc1p.PNG)


## ` ` **Capa de Interfaz(Prototipo UI)**<a name="ui"/>

Se presentan los bocetos de los conceptos de las interfaces gráficas del sistema

#### ` `Modulo Login

![Login](https://files.catbox.moe/shw3de.png)

#### ` `Modulo Dashboard

![Dashboard](https://files.catbox.moe/087yx9.PNG)

#### ` `Modulo Usuarios

![Usuarios](https://files.catbox.moe/cgdvw9.PNG)
![Roles](https://files.catbox.moe/kaww5s.PNG)

#### ` `Modulo Clientes

![Clientes](https://files.catbox.moe/sjulg1.PNG)

#### ` `Modulo Tienda

![Productos](https://files.catbox.moe/yvj7ua.PNG)
![Categorias](https://files.catbox.moe/mmv0da.PNG)

#### ` `Modulo Citas

![Citas](https://files.catbox.moe/dcjy4t.PNG)
![Calendario](https://files.catbox.moe/3piqz8.PNG)


### ` `Herramientas y Tecnologias<a name="herrramientas"/>

Se detallan las herramientas y tecnologías a usar para el desarrollo del proyecto.

#### ` `Tecnologías<a name="tec"/>

#### Capa de interfaz

- **Vali Admin**

  Vali es un tema de administración gratuito, modular y fácil de personalizar creado con Bootstrap 4, SASS y Pug.js.

![presentacion](https://files.catbox.moe/dr996p.gif)

#### Capa de negocio

- **PHP y JavaScript**

PHPH es un lenguaje de programación de uso general que se adapta especialmente al desarrollo web. JavaScript es un lenguaje de programación o de secuencias de comandos que te permite implementar funciones complejas en páginas web

![presentacion](https://files.catbox.moe/xwyf11.webp)

#### Capa de datos

- **MySQL**

  Es un sistema de gestión de bases de datos relacionales (RDBMS) de código abierto respaldado por Oracle y basado en el lenguaje de consulta estructurado. 
  
  ![mysql](https://files.catbox.moe/omdk3w.jpg)


#### ` `Herramientas<a name="herr"/>

- **Visual Studio Code para editar el código de la app web con angular**

 Es un editor de código fuente desarrollado por Microsoft para Windows, Linux y macOS.
 
  ![visual](https://files.catbox.moe/xbu5dd.png)
 
- **SQLyog**

 Es una herramienta GUI para RDBMS MySQL.
 
 ![sqlyog](https://files.catbox.moe/wak2au.jpg)
 
- **XAMPP**
Paquete de software libre, que consiste principalmente en el sistema de gestión de bases de datos MySQL, el servidor web Apache y los intérpretes para lenguajes de script PHP y Perl.

 ![xampp](https://files.catbox.moe/nqehcn.webp)

# ` `**Planificacion de Actividades**<a name="planificacion"/>
## ` `**Metodologia Seleccionada**<a name="SCRUM"/>
Se selecciono la metodologia Scrum ya que tiene el beneficio de que nos aporta el ritmo de trabajo sostenible, ya que se adapta a los cambios de manera inmediata consiguiendo un ritmo constante, tanto en duración del sprint como de esfuerzo.

![](https://files.catbox.moe/thb0me.jpg)

### ` `¿En que consiste la metodologia Scrum?

Es un marco de trabajo o framework utilizado para optimizar el trabajo de equipo en proyectos complejos y monitorear la evolución del producto manteniendo como enfoque la calidad y los tiempos estipulados de entrega. Este método de trabajo se realiza por ciclos de actividades planificadas previamente, las cuales son conocidas como “sprints”, y está compuesta por una planificación de tareas y plazos establecidos de inicio y fin.


### ` `¿Porque se escogio el metodo Scrum?

La razon de elegir el metodo Scrum es por su organización ágil y conjunta del proyecto, siendo capaz de responder a posibles contratiempos que aparecen en su desarrollo. Asimismo, tiene por objetivo utilizar el producto lo antes posible, mientras se va mejorando.

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
