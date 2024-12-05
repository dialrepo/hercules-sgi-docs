# Hércules : IU\-CSP\-0302\-014 \- Presupuesto completo de la solicitud (por entidades)



## Formulario Presupuesto completo de la solicitud (por entidades)

Formulario que muestra el presupuesto completo de la solicitud, permitiendo seleccionar en la tabla las anualidades o entidades para calcular los importes totales de los conceptos de gastos incluidos en la selección. La información mostrada en la tabla de resumen podrá ser exportada a Excel.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| \+\- | Elemento gráfico para expandir o plegar | Componente para expandir o plegar las filas de:* anualidad * entidad |
| Nombre | Texto | Nombre de la entidad financiadora, empresa u organismo que financia la convocatoria.Las entidades procederán del módulo Empresas, común a todo el SGI, que obtendrá la información de las Empresas a través del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md"). La referencia a la empresa para obtener sus datos será la establecida por el campo "convocatoria entidad financiadora" o "solicitud proyecto entidad financiadora ajena", según aplique, de la tabla "solicitud proyecto entidad". |
| Fuente de financiación | Texto | Nombre de la fuente de financiación.Se muestra el campo "nombre" de la tabla "fuente financiación". Se recupera a partir de la referencia establecida desde el campo "fuente financiación" de las tablas "convocatoria entidad financiadora" o "solicitud proyecto entidad financiadora ajena", según aplique, de acuerdo a si se está mostrando una entidad obtenida desde el campo "convocatoria entidad financiadora" o desde el campo "solicitud proyecto entidad financiadora ajena" de la tabla "solicitud proyecto entidad". |
| Ajena a la convocatoria | TextoValores: Sí, No | Indica si la entidad financiadora ha sido definida en la convocatoria o añadida como ajena a la convocatoria en la solicitud |
| Concepto del gasto | Texto corto | Nombre del concepto de gasto recuperado de la tabla "Conceptos de gasto" |
| Anualidad | Numérico decimal genérico | Anualidad a la que pertenece el concepto de gasto |
| Importe presupuestado | Económico | Importe presupuestado para el concepto de gasto por la entidad |
| Importe solicitado | Económico | Importe solicitado para el concepto de gasto por la entidad |
| Observaciones | Texto largo | Observación del concepto de gasto en el presupuesto asociada a la solicitud |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Exportar | Permite exportar el presupuesto completo | Muestra la pantalla [IU\-CSP\-0302\-020 \- Exportación presupuesto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0302-020-exportacion-presupuesto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0302-020-exportacion-presupuesto.md") |
| Cancelar | Retorna al formulario de solicitud |  |

  
  
  
  
  
  





