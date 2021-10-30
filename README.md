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
* [Planificacion de Actividades](#planificacion)
    - [Metodologia Seleccionada](#SCRUM)
    - [Roles](#rolesscrum)
    - [Cronograma de Actividades](#ACTIVIDADES)
    - [Calendario de Revisiones](#revisiones)
* [Plan de Pruebas](#pruebas)
* [Temas Relacionados con el Proyecto](#temas)




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
| 2 | Gestion e inventario de Producto | Contar con control de los producto teniendo la opcion de poder agregar o eliminar.|
| 3 | Gestion de Citas | Poder agregar o eliminar citas en un calendario web para poder llevar un orden de las mismas.|
| 4 | Area de notificaciones | Poder notificar mediante correr electronico.|
| 5 | Reportes | Poder generar reportes de las diferentes funciones del sistema para tener un mayor control.|
| 6 | Compra y Venta | Poder realizar una venta  un cliente o comprar producto para abastecer stock.|


## ` `Tipos de usuarios<a name="usuarios"/>

|  No.    | Tipo de usuario  |  Descripcion  	                                                                                      |
|---	  |---	             |---	                                                                                                  |
|1	      |Administrador	 |Se encarga de gestionar los usuario y sus privilegios, asi como el control total del sistema.           |
|2	      |Cliente	 |Este usuario solo es para poder ingresarlo en el registro de ventas.           |
|3        |Vendedor	         |Tiene los privilegios de poder gestionar las citas y gestionar los productos pudiendo realizar ventas o compra               |


## ` `Entorno de ejecucion<a name="ejecucion"/>

El sistema descrito en este documento debe ser ejecutado en un ambiente web(navegadores) de manera local.

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

### 3. Gestion de citas

* **Descripción:** Manejo de las citas que se encuentran en el sistema.
   - Ingresar nueva cita
   - Se llena un formulario que solicita los datos a ingresar
   - Se llenan los datos
   - Se validadn los datos y se guardan
   - Se muestran los datos en una tabla

* **Requerimientos funcionales:**

   - Poder ingresar citas nuevas
   - Buscar citas
   - Poder eliminar citas existentes

### 4. Generar de notificacion

* **Descripción:** Enviar notificacion al correo electronico

   - Se ingresa el correo de la persona en un formulario para el envio.
   - Se envia el correo a la persona de destino.

* **Requerimientos funcionales:**
  - Poder notificar por correo electronico.

### 5. Generar reportes

* **Descripción:** Generación de reportes en formato PDF

   - Se solicita el reporte de la tabla que se requiere
   - EL sistema genera un reporte de la tabla
   - Se descarga o guarda el reporte generado

* **Requerimientos funcionales:**
  - Poder generar y guardar reportes en PDF.

### 6. Compra y Venta

* **Descripción:** Vender productos

   - Se solicitan los datos del cliente a vender
   - Se selecciona el producto y la cantidad a vender
   - Se descarga o guarda la factura
   - Se genera la venta.

* **Requerimientos funcionales:**
  - Actualizar stock del producto al vender.
  - Generar el recibo de venta

* **Descripción:** Comprar productos

   - Se selecciona el producto a actualizar stock
   - Se ingresa la cantidad a agregar
   - Se actualiza el stock

* **Requerimientos funcionales:**
  - Actualizar el stock del producto

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

###  ` `Diagnóstico y prevención de errores<a name="errores"/>
* Si se produce un error, proporcionar la información necesaria para que el 
usuario entienda el fallo. Por ejemplo, en un formulario marcar en un 
campo obligatorio no rellenado con un mensaje de acompañamiento que 
ayude a entender qué debe poner para poder completar correctamente el 
campo. 

# ` `Análisis de requerimientos<a name="analisisreq"/>

## ` `Implementación del Analisis<a name="implementacion"/>

### ` `Arquitectura de Capas<a name="arquitectura"/>

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

![descomposición funcional](https://files.catbox.moe/vhbno2.png)

### ` `Diagramas de casos de uso<a name="casos"/>

Se muestran los casos de uso de los diferentes modulos del sistema.

![sistema](https://files.catbox.moe/iodw42.png)

![gestion](https://files.catbox.moe/w6qdnc.png)

![gestion](https://files.catbox.moe/l9tupo.png)

![gestion](https://files.catbox.moe/psalnx.png)

### ` `Mapa de navegación<a name="navmap"/>

En esta grafica se muestra las diferentes funciones que contiene cada modulo.

![mapa de navegacion](https://files.catbox.moe/4pgh0w.png)

## ` ` **Capa de Datos**<a name="datos"/>

### ` `Diagrama de entidad de relacion<a name="er"/>

Se muestra el modelo de entidad de relacion de las diferentes tablas de la base de datos que conforma el sistema

![er](https://files.catbox.moe/ydyno2.png)


## ` ` **Capa de Interfaz(Prototipo UI)**<a name="ui"/>

Se presentan los bocetos de los conceptos de las interfaces gráficas del sistema

#### ` `Modulo Login

![Login](https://files.catbox.moe/shw3de.png)

#### ` `Modulo Dashboard

![Dashboard](https://files.catbox.moe/zgj06u.png)

#### ` `Modulo Usuarios

![Usuarios](https://files.catbox.moe/c0szoy.png)
![Roles](https://files.catbox.moe/j6spyu.png)
![Clientes](https://files.catbox.moe/rol955.png)

#### ` `Modulo Bodega

![Productos](https://files.catbox.moe/vbzjxk.png)
![Categorias](https://files.catbox.moe/k6vlfm.png)

#### ` `Modulo Tienda

![Venta](https://files.catbox.moe/fpw5bd.png)
![Compra](https://files.catbox.moe/7gbnuf.png)


#### ` `Modulo Citas

![Citas](https://files.catbox.moe/37uimw.png)
![Calendario](https://files.catbox.moe/se796j.png)
![Notificacion](https://files.catbox.moe/kp95m6.png)

#### ` `Modulo Reportes

![ReporteV](https://files.catbox.moe/5fn45z.png)
![ReporteB](https://files.catbox.moe/79w6ci.png)
![REporteU](https://files.catbox.moe/89rdzh.png)
![ReporteC](https://files.catbox.moe/lu97do.png)
![ReporteCT](https://files.catbox.moe/qrnz9p.png)
![Bitacora](https://files.catbox.moe/f1zfxk.png)



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

## ` `Personal y roles del proyecto<a name="rolesscrum"/>


|  Integrante       | Carnet  	    | Rol  	        |
|---	            |---	        |---	        |
|  Alfredo Loyo 	| 18-3306 	    | Product Owner/Scrum Master	|
|  "        	|    	"        | Desarrollador |
|  "        	|  	     "       | Desarrollador	|
|  "       	|    	 "       | Desarrollador |
|  "      	|    	 "       | Diseño        |

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


## ` `Cronograma de actividades<a name="ACTIVIDADES"/>




|  Sprints 	    | Actividad  |  Screenshot  	|
|---	        |---	     |---	            |
|  Sprint#1 25/09/2021	| [Presentacion Inicial del Sistema](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/7)	|![](https://files.catbox.moe/9iqyes.png)	|
|  Sprint#1 25/09/2021	| [Planificacion de la Base de datos](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/10)	|![](https://files.catbox.moe/ovfhms.png)|
|  Sprint#1 25/09/2021	| [Diseño de la Base de Datos (ER)](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/5)	|![](https://files.catbox.moe/h94vsi.png)	|
|  Sprint#1 25/09/2021	| [Diseñar Menu del Sistema](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/1)	|![](https://files.catbox.moe/75yxyz.png)	|
|  Sprint#1 25/09/2021	| [Planificacion de Actividades](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/9)	|![](https://files.catbox.moe/pglluh.png)	|
|  Sprint#2 02/10/2021	| [Diseñar y Desarrollar Dashboard](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/15)	|![](https://files.catbox.moe/12n6ju.png)	|
|  Sprint#2 02/10/2021	| [Desarrollo permisos de usuarios](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/16)	|![](https://files.catbox.moe/bkkgr7.png)	|
|  Sprint#2 02/10/2021	| [Desarrollo del modulo reportes](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/6)	|![](https://files.catbox.moe/y9qmm9.png)	|
|  Sprint#2 02/10/2021	| [Desarrollo login de usuarios](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/3)	|![](https://files.catbox.moe/ttiynd.png)	|
|  Sprint#3 09/10/2021	| [Desarrollo modulo usuarios](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/21)|![](https://files.catbox.moe/retktx.png)	|
|  Sprint#3 09/10/2021	| [Desarrollo Modulo Clientes](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/22)|![](https://files.catbox.moe/omx770.png)	|
|  Sprint#3 09/10/2021	| [Diseñar modulos de interfaz](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/4)|![](https://files.catbox.moe/rgijsf.png)	|
|  Sprint#3 09/10/2021	| [Diseñar Calendario para el sistema](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/2)|![](https://files.catbox.moe/d7c6wg.png)	|
|  Sprint#4 16/10/2021	| [Desarrollo modulo productos](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/30)|![](https://files.catbox.moe/sotnse.png)	|
|  Sprint#4 16/10/2021	| [Desarrollo modulo roles](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/29)|![](https://files.catbox.moe/hjglmy.png)	|
|  Sprint#4 16/10/2021	| [Desarrollo modulo categorias](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/31)|![](https://files.catbox.moe/0x7wdo.png)	|
|  Sprint#4 16/10/2021	| [Segunda Presentacion Avances](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/11)|![](https://files.catbox.moe/ys9d3m.png)	|
|  Sprint#5 23/10/2021	| [Desarrollo modulo citas](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/32)|![](https://files.catbox.moe/qc7ytp.png)	|
|  Sprint#5 23/10/2021	| [Desarrollo Venta de producto](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/26)|![](https://files.catbox.moe/36c0q6.png)	|
|  Sprint#5 23/10/2021	| [Desarrollo funcion Eliminar](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/19)|![](https://files.catbox.moe/97rrf6.png)	|
|  Sprint#6 30/10/2021	| [Finalizacion Analisis del Sistema](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/8)|![](https://files.catbox.moe/u1wzfe.png)	|
|  Sprint#6 30/10/2021	| [Desarrollo Notificacion por Correo](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/27)|![](https://files.catbox.moe/5bh5ta.png)	|
|  Sprint#6 30/10/2021	| [Desarrollo de Compras ](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/28)|![](https://files.catbox.moe/essi1u.png)	|
|  Sprint#6 30/10/2021	| [Presentacion Final del Proyecto](https://github.com/AlfredoCarias/AGROVETERINARIA/issues/34)|![](https://files.catbox.moe/qdj10q.png)	|


##  ` `Calendario de revisiones<a name="revisiones"/>

| Fase| Descripcion| Fecha Entrega|
|---|---|---|
|  Fase 1 |  Propuesta de Proyecto Final| 08/09/2021|
| Fase 2  |Primera Presentación de Avances Proyecto Final| 02/10/2021|
| Fase 3  |Segunda Presentación de Avances Proyecto Final| 26/10/2021|
| Fase 4  | Presentación Proyecto Final| 30/10/2021|

# ` `Plan de Pruebas<a name="pruebas"/>
## ` `Tipo de Prueba
Se realizaron las pruebas de tipo manual e interfaz para la correcta integridad y funcionalidad de los diferentes modulos.

|**NOMBRE**|**Iniciar sesión**|PRUEBAS|**P1**|
| :- | :- | :- | :- |
|**PROPÓSITO**|Verificar si la integridad de los datos y la seguridad del login del sistema.|
|**PRERREQUISITOS**|- Haber creado un usuario para pruebas|
|**UBICACIÓN**|Base de datos MySQL y módulo de login del sistema|
|**ENTRADA**|<p>- Creación o Modificación de algún requerimiento</p><p>- Datos solicitados del historial</p><p>&emsp;- Responsable</p><p>&emsp;- Justificación</p>|
|**RESULTADO**|El sistema no me dejo ingresar con datos incorrectos|
|**PASOS**|<p>1. Ingresar al sistema de login http://localhost/agroveterinaria/login</p><p>2. Ingresar los datos incorrectos</p><p>3. Clic en “modificar”.</p>|
|**Módulos Asociados**|- Login|


|NOMBRE|**Creacion y eliminacion de datos**|PRUEBAS|**P2**|
| :- | :- | :- | :- |
|PROPÓSITO|Verificar que si es posible crear, eliminar en los modulos: usuarios, clientes, roles, productos, categorias y citas.|
|PRERREQUISITOS|- Existen requerimientos en la base de datos.|
|UBICACIÓN|Base de datos MySQL, pantalla de modulos antes mencionados|
|ENTRADA|- Seleccionar un requerimiento|
|	|<p>- Selección de la acción que desea hacer</p><p>&emsp;- Crear</p><p>&emsp;- Eliminar</p><p></p>|
|RESULTADO|<p>Cambio en la tabla de informacion</p><p></p><p>- (PARA CREAR) La base de datos se encuentra actualizada con el nuevo ingreso</p><p>- ` `(PARA ELIMINAR)La base de datos se encuentra actualizada con la creacion y eliminación del dato. El sistema no genera algunas notificaciones de la ejecucion pero la integridad se cumple</p>|
|PASOS|<p>**PARA CREAR**</p><p>1. Visitar la pantalla de usuarios, clientes o roles.</p><p>2. Seleccionar nuevo.</p><p>3. Llenar los datos</p><p>4. Clic en crear.</p><p>**PARA ELIMINAR**</p><p>1. Visitar la pantalla de usuarios.</p><p>2. Seleccionar eliminar.</p><p>3. Clic en “eliminar”.</p><p>4. Clic en “aceptar”</p>|
|**Módulos Asociados**|- Módulo de reportes|

|NOMBRE|**Generar Reportes en PDF**|PRUEBAS|**P3**|
| :- | :- | :- | :- |
|PROPÓSITO|<p>Verificar que la generación de reportes se realiza con la información</p><p>correspondiente al proyecto.</p>|
|PRERREQUISITOS|<p>- Requerimientos previamente creados</p><p></p>|
|UBICACIÓN|Base de datos MySQL y Pantalla Reportes|
|ENTRADA|Reporte seleccionado.|
|RESULTADO|El usuario puede acceder al archivo de PDF, debe contener la misma información que se  muestra en la aplicación.|
|PASOS|<p>1. Visitar la pantalla de “Reportes”.</p><p>**GENERAL**</p><p>2. Seleccionar el tipo de reporte</p><p>3. Esperar que abra el archivo.</p><p>4. Verificar información (que coincida con la que se muestra en el sistema.</p><p>5. Guardar o imprimir el archivo</p><p></p><p>**REQUERIMIENTOS SELECCIONADOS**</p><p>2. Seleccionar los requerimientos que desea en el informe.</p><p>3. Clic en “Guardar”.</p><p>4. Esperar que abra el archivo.</p><p>5. Verificar información (que coincida con la que se muestra en el sistema.</p><p></p><p></p>|
|**Módulos Asociados**|- Módulo de reportes|

|**NOMBRE**|**Venta de producto**|PRUEBAS|**P4**|
| :- | :- | :- | :- |
|**PROPÓSITO**|Verificar la integridad de los datos|
|**PRERREQUISITOS**|- Contar con clients y productos para la prueba|
|**UBICACIÓN**|Base de datos MySQL y módulo de venta|
|**ENTRADA**|<p>- Seleccionar un cliente</p><p>- Seleccionar los productos</p><p>- Ingresar cantidad a comprar</p><p>- Clic en “Agregar”</p><p>- Clic en “Guardar”</p><p></p>|
|**RESULTADO**|El sistema genero la venta y el stock del producto se resto|
|**PASOS**|<p>1. Ingresar en el modulo venta</p><p>2. Llenar los campos de datos</p><p>3. Agregar product y cantidad</p><p>4. Guardar la venta</p>|
|**Módulos Asociados**|<p>- Venta</p><p>- Reportes</p>|

|**NOMBRE**|**Compra de producto**|PRUEBAS|**P5**|
| :- | :- | :- | :- |
|**PROPÓSITO**|Verificar la integridad de los datos|
|**PRERREQUISITOS**|- Contar con clients y productos para la prueba|
|**UBICACIÓN**|Base de datos MySQL y módulo de venta|
|**ENTRADA**|<p>- Seleccionar el producto</p><p>- Ingresar cantidad a comprar</p><p>- Clic en “Guardar”</p><p></p>|
|**RESULTADO**|El Sistema genero la compra y se sumo la cantidad al stock del producto|
|**PASOS**|<p>1. Ingresar en el modulo compra</p><p>2. Llenar los campos de datos</p><p>3. Agregar product y cantidad</p><p>4. Guardar la compra</p>|
|**Módulos Asociados**|<p>- Compra</p><p>- Reportes</p>|

|**NOMBRE**|**Notificacion**|PRUEBAS|**P6**|
| :- | :- | :- | :- |
|**PROPÓSITO**|Verificar el envoi de la notificacion|
|**PRERREQUISITOS**|- Ninguno|
|**UBICACIÓN**|Modulo notificacion|
|**ENTRADA**|<p>- Ingresar un correo</p><p>- Clic en “Enviar”</p><p></p>|
|**RESULTADO**|El Sistema genero el correo y se lo envoi al usuario|
|**PASOS**|<p>1. Ingresar en el modulo notificaion</p><p>2. Llenar los campos de datos</p><p>3. Enviar la notifiacion</p>|
|**Módulos Asociados**|- Notificacion|


# ` `Temas Relacionados con el Proyecto<a name="temas"/>

| Tema |  Descripcion|
|---|---|
|  UI/UX |  En la capa de interfaz se tomó como referencia el tema visto de D.C.U (Diseño Centrado en el Usuario) aplicando la simplicidad y facilidad de uso para el usuario.| 
| Usabilidad  |El sistema cuenta con un manual de usuario |
| Servicios REST  |Se utilizo el servicio REST en el sistema para la ejecucion de las funciones de mostra, eliminar y crear, que al momento de no ejecutar ninguna de esas funciones mandara un mensaje de error|
| Diagramas de Casos de Uso | Presentación Proyecto Final|
| Enfoque Estrategico | En el entorno de pruebas se tomó en cuenta el tema visto de Enfoque Estratégico para la ejecución de las pruebas realizadas al sistema.|


