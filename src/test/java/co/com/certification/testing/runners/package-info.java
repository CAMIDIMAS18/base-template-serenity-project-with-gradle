/**
 * Este paquete contiene las clases de runner que se utilizan en el proyecto de Serenity BDD para ejecutar las pruebas automatizadas con Cucumber y Serenity.
 * El paquete incluye las clases con los runners que se usan para configurar y ejecutar las pruebas.
 * <p>
 * En particular, las clases de runner que utilizan la anotación @RunWith(CucumberWithSerenity.class) se utilizan para integrar el framework de pruebas
 * Cucumber con Serenity BDD. Estas clases de runner permiten definir las características de las pruebas, como la ubicación de los archivos de características,
 * los archivos de definición de pasos y las opciones de informe.
 * </p>
 * <p>
 * Las clases de runner también pueden incluir anotaciones personalizadas para definir la secuencia de ejecución de las pruebas, establecer valores de
 * configuración y generar informes de prueba. Además, las clases de runner pueden utilizar la inyección de dependencias de Serenity BDD para acceder a
 * diferentes objetos de la aplicación, como páginas y preguntas, que se utilizan en las pruebas.
 * </p>
 *
 * @since 1.0
 * @see <a href="https://serenity-bdd.github.io/docs/guide/cucumber">https://serenity-bdd.github.io/docs/guide/cucumber</a>
 */
package co.com.certification.testing.runners;