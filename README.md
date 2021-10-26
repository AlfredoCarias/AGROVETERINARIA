# Sistema Agroveterinaria
# Indice
* [Requerimientos de software](#requerimientos)
    - [Información del Proyecto](#informacion)
    - [Proposito](#proposito)
    - [Alcance del Sistema](#alcance)
    - [Funcionalidades del sistema](#funcionalidades)
    - [Tipos de usuarios](#usuarios)
    - [Entorno de ejecucion](#ejecucion)
    - [Requerimientos funcionales](#reqfun)
    - [Requerimientos de interfaz](#reqint)
    - [Requerimientos no funcionales](#reqnofun)




# ` `Requerimientos de software<a name="requerimientos"/>

## Información del Proyecto<a name="informacion"/>

| Nombre  | Descripción  |
|---|---|
| Nombre Proyecto  | Agroveterinaria  |
| Desarrollador  | Alfredo Loyo |

## Propósito<a name="proposito"/>
Realizar un sistema que sea capaz de poder llevar el control y gestión de citas e inventario de productos, todo esto con el fin de poder ayudar a facilitar los procesos que se llevan a cabo en una agroveterinaria.

## Alcance del Sistema<a name="alcance"/>

### Objetivo general
Llevar el control de inventario y citas que se llevan a cabo en el negocio para un mejor control y manejo de los mismos.

### Beneficios
El sistema se encarga de facilitar de mejor manera toda la gestion que deben realizar los usuarios.

Algunos beneficios serian:

- Control de permisos y usuarios.
- Gestion de productos y citas.
- Venta y compra de productos.
- Notificacion Via Email.
- Sistema Multiusuarios.
- Generación de reportes en formato PDF.


### Objetivos o metas

Con la realizacion de este proyecto se tomaron en cuenta a cumplir los siguientes objetivos:

- Control de roles, permisos y usuarios.
- Control de procesos de ventas.
- Control de citas.
- Notificaion por correo.
- Manejo y control de inventario.
- Generación de reportes.

## Funcionalidades del sistema<a name="funcionalidades"/>

| No. | Funcionalidad  | Descripción  |
|---  |---             |---           |
| 1 |  Control de roles y usuarios | Administrar los privilegios de los roles para cada tipo de usuario, basandose en su funcion. |
| 2 | Gestion e inventario de Producto | Contar con control de los producto teniendo la opcion de poder agregar, vender, eliminar o comprar.|
| 3 | Gestion de Citas | Poder agregar o eliminar citas en un calendario web para poder llevar un orden de las mismas.|
| 4 | Reportes | Poder generar reportes de las diferentes funciones del sistema para tener un mayor control.|

## Tipos de usuarios<a name="usuarios"/>

|  No.    | Tipo de usuario  |  Descripcion  	                                                                                      |
|---	  |---	             |---	                                                                                                  |
|1	      |Administrador	 |Se encarga de gestionar los usuario y sus privilegios, asi como el control total del sistema.           |
|2	      |Cliente	         |Este usuario solo puede visualizar contenidos.                                                          |
|3	      |Empleado	         |Tiene los privilegios de poder agregar citas y gestionar los productos                                  |


## Entorno de ejecucion<a name="ejecucion"/>

El sistema descrito en este documento debe ser ejecutado en un ambiente web(navegadores).

## Requerimientos funcionales<a name="reqfun"/>

### 1. Control de usuario

* **Descripción:** Control de usuarios que hacen uso del sistema.
* **Prioridad:** Alta.
* **Acciones iniciadoras y comportamientos esperados:**

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
* **Prioridad:** Alta.
* **Acciones iniciadoras y comportamientos esperados:**
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
* **Prioridad:** Alta.
* **Acciones iniciadoras y comportamientos esperados:**
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
* **Prioridad:** Media.
* **Acciones iniciadoras y comportamientos esperados:**

   - Se solicita el reporte de la tabla que se requiere
   - EL sistema genera un reporte de la tabla
   - Se descarga o guarda el reporte generado

* **Requerimientos funcionales:**
  - Poder generar y guardar reportes en PDF.

## Requerimientos de interfaz<a name="reqint"/>

#### Componentes
1. Menu principal.
2. Login del sistema
3. Informacion de usuario logeado

### Interfaces de hardware

* Navegadores web en dispositivos como computadoras portatiles o de escritorio..

### Interfaces de software

- Base de datos MySQL.
- Desarrollado utilizando JavaScript y PHP.
- Servidor montado localmente utilizando XAMPP.

## Requerimientos no funcionales<a name="reqnofun"/>

### Usabilidad
* El sistema contara con un manual de usuario para poder ayudarlo y guiarlo en 
el uso apropiado del sistema, de esta manera el usuario puede consultar 
cualquier duda o inconveniente que se le presente. El manual de usuario 
contendrá lo siguiente:

- Capturas de pantalla del sistema y sus módulos
- Instrucciones para el uso del sistema
- Explicaciones señalando el componente del sistema
- Links de videos tutoriales para que el usuario pueda comprender mejor 

###  Diagnóstico y prevención de errores
* Si se produce un error, proporcionar la información necesaria para que el 
usuario entienda el fallo. Por ejemplo, en un formulario marcar en rojo un 
campo obligatorio no rellenado con un mensaje de acompañamiento que 
ayude a entender qué debe poner para poder completar correctamente el 
campo. 
