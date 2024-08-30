## SpeciesApp

 <image src="https://ibb.co/q54ygsB" alt="Descripción de la imagen">


### Descripción del Proyecto 

**SpeciesApp** es una aplicación desarrollada en **SwiftUI**, un framework del lenguaje Swift. Esta aplicación proporciona información detallada sobre cada especie de la saga de películas de Star Wars. Los datos se consumen desde una API educativa cuyo endpoint es "https://swapi.dev/api/species". 

#### Pasos de Desarrollo

**Paso 1:** Comencé el desarrollo de la aplicación agregando dos imágenes a la carpeta Assets. Una imagen se utiliza como ícono de la aplicación y la otra como launchscreen, que se muestra durante el inicio de la aplicación. Luego, configuré estos elementos en el Project Editor, luego elige el Targets> Pestaña Info, para poder configurar de manera fácil el archivo info.plist. También agregué otros assets como imágenes.

**Paso 2:** Seguí el patrón de diseño MVVM, que busca la independencia de la parte visual del proyecto. El primer archivo SwiftUI que creé fue SpeciesListView, que muestra las diferentes especies que aparecen en Star Wars. Para tener una idea del tipo de datos que utilizaría, creé un modelo llamado Species, donde definí un struct con las propiedades que necesitaría de los datos provenientes de SWAPI.

**Paso 3:** Creé el ViewModel, que se encarga de enlazar los datos del Model y notificar a la vista los cambios de estado mediante eventos de notificación de cambios. Para esto, creé otro archivo Swift llamado SpeciesViewModel con su respectiva clase bajo el protocolo @ObservableObject. Este protocolo permite que se pueda usar como punto de partida para todo tipo de objetos que necesiten admitir notificaciones de cambio de propiedad.

**Paso 4:** Creé un método getData dentro de SpeciesViewModel y modifiqué SpeciesListView para que este último pudiera ver la propiedad speciesArray del SpeciesViewModel.

**Paso 5:** Creé un SwiftUI View llamado DetailView para mostrar los detalles de cada especie seleccionada.

**Paso 6:** Agregué un NavigationLink al SpeciesListView, para que al hacer clic en cualquier especie de la lista, se muestren los detalles de esa especie en el DetailView.

**Paso 7:** Agregué una imagen al DetailView y un método que buscará esa imagen de manera asíncrona.

**Paso 8:** Creé un Progress View en el SpeciesListView y un mensaje de estado en el SpeciesViewModel. Este último se encargará de enviar el mensaje de carga del Progress View hasta que se obtenga la información de la API. En caso de error, mostrará un mensaje de estado indicando el problema al buscar dicha información.

**Paso 9:** Implementé la paginación del JSON, para que al desplazarse hacia abajo, la aplicación solicite un nuevo array de datos a la API si es necesario.

**Paso 10:** Agregué un botón para cargar todas las especies.

**Paso 11:** Implementé un botón para reproducir diferentes alocuciones de Yoda de manera aleatoria, obteniéndolas de los recursos guardados en la carpeta Assets.

**Paso 12:** Acentué todos los botones con el color que identifica al pequeño Grogu. Para ello, cambié el tinte por defecto que llevan todos los botones de la UI y lo intercambié por el verde.

Espero que esta descripción te ayude a entender cómo se construyó la aplicación SpeciesApp. ¡Que la fuerza te acompañe en tu viaje de desarrollo de aplicaciones!
