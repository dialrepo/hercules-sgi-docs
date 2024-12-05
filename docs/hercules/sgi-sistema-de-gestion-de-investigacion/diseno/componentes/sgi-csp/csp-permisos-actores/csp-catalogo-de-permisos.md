# Hércules : CSP \- Catálogo de permisos



## Diseño de permisos

Se siguen los criterios generales descritos en [Permisos](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=Permisos&linkCreation=true&fromPageId=597852913 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=Permisos&linkCreation=true&fromPageId=597852913").

  


Ver detalle de criterios de diseño de permisos**Error al renderizar el macro 'excerpt\-include'**

No link could be created for 'Permisos'.

## Abreviaturas de entidades



| Abreviatura | Nombre |
| --- | --- |
| CSP | Convocatorias, solicitudes y proyectos |
| CON | Convocatoria |
| SOL | Solicitud |
| PRO | Proyecto |
| ESB | Enterprise Service Bus (Bus de integración) |
| INV | Investigador |
| ME | Modelo de ejecución |
| TFASE | Tipo de fase |
| TENL | Tipo de enlace |
| TDOC | Tipo de documento |
| TFIN | Tipo de finalidad |
| THITO | Tipo de hito |
| PRG | Plan de investigación |
| FNT | Fuente de financiación |
| TFNA | Tipo de financiación |
| TGTO | Concepto de gasto |
| AREA | Área temática |
| PARP | Partida presupuestaria |
| EJEC | Ejecución económica |
| PER | Persona |
| EMP | Empresa |
| MOD | Módulo. Se usa para hacer referencia a que cualquier módulo puede usar este permiso para acceder a alguna funcionalidad de este módulo CSP. |
| AUT | Autorizaciones de participación en proyectos externos |
| CVPR | Notificación del CVN de proyecto externos |
| GIN | Grupo de investigación |
| LIN | Línea de investigación |

## Catálogo de permisos



| Nombre abreviado | Descripción |
| --- | --- |
| CSP\-ME\-C | Creación.Habilita el botón de creación.La nueva entidad podrá asociarse a cualquier Unidad Organizativa. |
| CSP\-ME\-C\_UO | Creación restringida por Unidad Organizativa.Habilita el botón de creación.La nueva entidad únicamente podrá asociarse a las Unidades Organizativas para las que se tenga este permiso. |
| CSP\-ME\-V | Visualización.Acceso al listado y utilización de su filtro. Habilita el botón de acceso al detalle en modo consulta.Todos los campos estarán en modo consulta y los botones de acción des\-habilitados. |
| CSP\-ME\-V\_UO | Visualización restringida por Unidad Organizativa.Habilita el botón de acceso al detalle en modo consulta.Acceso al listado y utilización de su filtro.Todas las consultas estarán restringidas a las Unidades Organizativas para las que se tenga este permiso.Todos los campos estarán en modo consulta y los botones de acción des\-habilitados. |
| CSP\-ME\-E | Edición.Habilita el botón de acceso al detalle en modo edición. |
| CSP\-ME\-E\_UO | Edición restringida por Unidad Organizativa.Habilita el botón de acceso al detalle en modo edición si la entidad está asociada a alguna de las Unidades Organizativas para las que se tenga este permiso. |
| CSP\-ME\-B | Borrado.Habilita el botón de borrado (lógico). |
| CSP\-ME\-B\_UO | Borrado restringido por Unidad Organizativa.Habilita el botón de borrado (lógico) si la entidad está asociada a alguna de las Unidades Organizativas para las que se tenga este permiso. |
| CSP\-ME\-R | Recuperación. Habilita el botón de recuperación de un elemento borrado (lógico). Habilita el campo de filtrado por estado de borrado. |
| CSP\-ME\-R\_UO | Recuperación restringida por Unidad Organizativa.Habilita el botón de recuperación de un elemento borrado (lógico) si la entidad está asociada a alguna de las Unidades Organizativas para las que se tenga este permiso.  Habilita el campo de filtrado por estado de borrado. |
| CSP\-TFASE\-C | Creación. Habilita el botón de creación. |
| CSP\-TFASE\-V | Visualización.Acceso al listado y utilización de su filtro.Todos los campos estarán en modo consulta y los botones de acción des\-habilitados. |
| CSP\-TFASE\-E | Edición. Habilita el botón de acceso al detalle en modo edición. |
| CSP\-TFASE\-B | Borrado. Habilita el botón de borrado (lógico). |
| CSP\-TFASE\-R | Recuperación. Habilita el botón de recuperación de un elemento borrado (lógico). Habilita el campo de filtrado por estado de borrado.Habilita la columna que muestra el estado de borrado. |
| CSP\-TENL\-C | Creación.Habilita el botón de creación. |
| CSP\-TENL\-V | Visualización.Acceso al listado y utilización de su filtro.Todos los campos estarán en modo consulta y los botones de acción des\-habilitados. |
| CSP\-TENL\-E | Edición. Habilita el botón de acceso al detalle en modo edición. |
| CSP\-TENL\-B | Borrado. Habilita el botón de borrado (lógico). |
| CSP\-TENL\-R | Recuperación. Habilita el botón de recuperación de un elemento borrado (lógico). Habilita el campo de filtrado por estado de borrado.Habilita la columna que muestra el estado de borrado. |
| CSP\-TDOC\-C | Creación. Habilita el botón de creación. |
| CSP\-TDOC\-V | Visualización.Acceso al listado y utilización de su filtro.Todos los campos estarán en modo consulta y los botones de acción des\-habilitados. |
| CSP\-TDOC\-E | Edición.Habilita el botón de acceso al detalle en modo edición. |
| CSP\-TDOC\-B | Borrado. Habilita el botón de borrado (lógico). |
| CSP\-TDOC\-R | Recuperación. Habilita el botón de recuperación de un elemento borrado (activo). Habilita el campo de filtrado por estado de borrado.Habilita la columna que muestra el estado de borrado. |
| CSP\-TFIN\-C | Creación. Habilita el botón de creación. |
| CSP\-TFIN\-V | Visualización.Acceso al listado y utilización de su filtro.Todos los campos estarán en modo consulta y los botones de acción des\-habilitados. |
| CSP\-TFIN\-E | Edición. Habilita el botón de acceso al detalle en modo edición. |
| CSP\-TFIN\-B | Borrado. Habilita el botón de borrado (lógico). |
| CSP\-TFIN\-R | Recuperación. Habilita el botón de recuperación de un elemento borrado (lógico). Habilita el campo de filtrado por estado de borrado.Habilita la columna que muestra el estado de borrado. |
| CSP\-THITO\-C | Creación. Habilita el botón de creación. |
| CSP\-THITO\-V | Visualización.Acceso al listado y utilización de su filtro. |
| CSP\-THITO\-E | Edición.Habilita el botón de acceso al detalle en modo edición. |
| CSP\-THITO\-B | Borrado. Habilita el botón de borrado (lógico). |
| CSP\-THITO\-R | Recuperación. Habilita el botón de recuperación de un elemento borrado (lógico). Habilita el campo de filtrado por estado de borrado.Habilita la columna que muestra el estado de borrado. |
| CSP\-PRG\-V | Visualización.Acceso al listado y utilización de su filtro.Todos los campos estarán en modo consulta y los botones de acción des\-habilitados. |
| CSP\-PRG\-C | Creación. Habilita el botón de creación. |
| CSP\-PRG\-E | Edición.Habilita el botón de acceso al detalle en modo edición. |
| CSP\-PRG\-B | Borrado. Habilita el botón de borrado (lógico). |
| CSP\-PRG\-R | Recuperación. Habilita el botón de recuperación de un elemento borrado (lógico). Habilita el campo de filtrado por estado de borrado.Habilita la columna que muestra el estado de borrado. |
| CSP\-FNT\-V | Visualización.Acceso al listado y utilización de su filtro.Todos los campos estarán en modo consulta y los botones de acción des\-habilitados. |
| CSP\-FNT\-C | Creación. Habilita el botón de creación. |
| CSP\-FNT\-E | Edición. Habilita el botón de acceso al detalle en modo edición. |
| CSP\-FNT\-B | Borrado. Habilita el botón de borrado (lógico). |
| CSP\-FNT\-R | Recuperación. Habilita el botón de recuperación de un elemento borrado (lógico). Habilita el campo de filtrado por estado de borrado.Habilita la columna que muestra el estado de borrado. |
| CSP\-TFNA\-V | Visualización.Acceso al listado y utilización de su filtro.Todos los campos estarán en modo consulta y los botones de acción des\-habilitados. |
| CSP\-TFNA\-C | Creación. Habilita el botón de creación. |
| CSP\-TFNA\-E | Edición. Habilita el botón de acceso al detalle en modo edición. |
| CSP\-TFNA\-B | Borrado. Habilita el botón de borrado (lógico). |
| CSP\-TFNA\-R | Recuperación. Habilita el botón de recuperación de un elemento borrado (lógico). Habilita el campo de filtrado por estado de borrado.Habilita la columna que muestra el estado de borrado. |
| CSP\-TGTO\-V | Visualización.Acceso al listado y utilización de su filtro.Todos los campos estarán en modo consulta y los botones de acción des\-habilitados. |
| CSP\-TGTO\-C | Creación. Habilita el botón de creación. |
| CSP\-TGTO\-E | Edición. Habilita el botón de acceso al detalle en modo edición. |
| CSP\-TGTO\-B | Borrado. Habilita el botón de borrado (lógico). |
| CSP\-TGTO\-R | Recuperación. Habilita el botón de recuperación de un elemento borrado (lógico). Habilita el campo de filtrado por estado de borrado.Habilita la columna que muestra el estado de borrado. |
| CSP\-AREA\-V | Visualización.Acceso al listado y utilización de su filtro.Todos los campos estarán en modo consulta y los botones de acción des\-habilitados. |
| CSP\-AREA\-C | Creación. Habilita el botón de creación. |
| CSP\-AREA\-E | Edición. Habilita el botón de acceso al detalle en modo edición. |
| CSP\-AREA\-B | Borrado. Habilita el botón de borrado (lógico). |
| CSP\-AREA\-R | Recuperación. Habilita el botón de recuperación de un elemento borrado (lógico). Habilita el campo de filtrado por estado de borrado.Habilita la columna que muestra el estado de borrado. |
| CSP\-CON\-C | Creación.Habilita el botón de creación.La nueva entidad podrá asociarse a cualquier Unidad Organizativa. |
| CSP\-CON\-V | Visualización.Acceso al listado y utilización de su filtro. Habilita el botón de acceso al detalle en modo consulta. |
| CSP\-CON\-E | Edición. Habilita el botón de acceso al detalle en modo edición. |
| CSP\-CON\-B | Borrado. Habilita el botón de borrado (lógico). |
| CSP\-CON\-R | Recuperación. Habilita el botón de recuperación de un elemento borrado (lógico). Habilita el campo de filtrado por estado de borrado. |
| CSP\-CON\-V\_UO | Visualización restringida por Unidad Organizativa.Acceso al listado y utilización de su filtro.Todas las consultas estarán restringidas a las Unidades Organizativas para las que se tenga este permiso.Habilita el botón de acceso al detalle en modo consulta. |
| CSP\-CON\-C\_UO | Creación restringida por Unidad Organizativa.La nueva entidad únicamente podrá asociarse a las Unidades Organizativas para las que se tenga este permiso. |
| CSP\-CON\-E\_UO | Edición restringida por Unidad Organizativa.Habilita el botón de acceso al detalle en modo edición si la entidad está asociada a alguna de las Unidades Organizativas para las que se tenga este permiso. |
| CSP\-CON\-B\_UO | Borrado restringido por Unidad Organizativa.Habilita el botón de borrado (lógico) si la entidad está asociada a alguna de las Unidades Organizativas para las que se tenga este permiso. |
| CSP\-CON\-R\_UO | Recuperación restringida por Unidad Organizativa.Habilita el botón de recuperación de un elemento borrado (lógico) si la entidad está asociada a alguna de las Unidades Organizativas para las que se tenga este permiso. Habilita el campo de filtrado por estado de borrado. |
| CSP\-CON\-E | Edición.Habilita el botón Registrar si la entidad está en el estado adecuado.Ver detalle en documentación asociada en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md") |
| CSP\-CON\-E\_UO | Edición restringida por Unidad Organizativa.Habilita el botón Registrar si la entidad está en el estado adecuado.Se debe comprobar que la entidad gestionada está asociada a alguna de las Unidades Organizativas para las que se tenga este permiso.Ver detalle en documentación asociada en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md") |
| CSP\-CON\-INV\-V | Visualización. (Investigador)Acceso al listado y utilización de su filtro. Habilita el botón de acceso al detalle en modo consulta. |
| CSP\-SOL\-V | Visualización.Acceso al listado y utilización de su filtro. Habilita el botón de acceso al detalle en modo consulta. |
| CSP\-SOL\-C | Creación.La nueva entidad podrá asociarse a cualquier Unidad Organizativa.Ver detalle en documentación asociada. |
| CSP\-SOL\-E | Edición. Habilita el botón de acceso al detalle en modo edición. |
| CSP\-SOL\-B | Borrado. Habilita el botón de borrado (lógico). |
| CSP\-SOL\-R | Recuperación. Habilita el botón de recuperación de un elemento borrado (lógico). Habilita el campo de filtrado por estado de borrado. |
| CSP\-SOL\-V\_UO | Visualización restringida por Unidad Organizativa.Acceso al listado y utilización de su filtro.Todas las consultas estarán restringidas a las Unidades Organizativas para las que se tenga este permiso.Habilita el botón de acceso al detalle en modo consulta. |
| CSP\-SOL\-C\_UO | Creación restringida por Unidad Organizativa.La nueva entidad únicamente podrá asociarse a las Unidades Organizativas para las que se tenga este permiso.Habilita el botón de creación. |
| CSP\-SOL\-E\_UO | Edición restringida por Unidad Organizativa.Habilita el botón de acceso al detalle en modo edición si la entidad está asociada a alguna de las Unidades Organizativas para las que se tenga este permiso. |
| CSP\-SOL\-B\_UO | Borrado restringido por Unidad Organizativa.Habilita el botón de borrado (lógico) si la entidad está asociada a alguna de las Unidades Organizativas para las que se tenga este permiso. |
| CSP\-SOL\-R\_UO | Recuperación restringida por Unidad Organizativa.Habilita el botón de recuperación de un elemento borrado (lógico) si la entidad está asociada a alguna de las Unidades Organizativas para las que se tenga este permiso. Habilita el campo de filtrado por estado de borrado. |
| CSP\-SOL\-INV\-C | Creación / tramitación. (Investigador)Es la creación de la solicitud por parte del investigador desde la convocatoria. Habilita el botón de TRAMITAR si la entidad está en el estado adecuado. Es la única forma de crear la solicitud un investigador. |
| CSP\-SOL\-INV\-ER | Edición restringido.Habilita el botón de acceso al detalle en modo edición.Ver detalle de restricciones en la columna "Descripción C.U." del IU que aplique. |
| CSP\-SOL\-INV\-BR | Borrado restringido.Ver detalle de restricciones en la columna "Descripción C.U." del IU que aplique. |
| CSP\-PRO\-V | Visualización.Acceso al listado y utilización de su filtro. Habilita el botón de acceso al detalle en modo consulta.NO da acceso a todas las pantallas en modo consulta, solo a las especificadas en el IU concreto. |
| CSP\-PRO\-C | Creación. Habilita el botón de creación.La nueva entidad podrá asociarse a cualquier Unidad Organizativa. |
| CSP\-PRO\-E | Edición. Habilita el botón de acceso al detalle en modo edición. |
| CSP\-PRO\-B | Borrado. Habilita el botón de borrado (lógico). |
| CSP\-PRO\-R | Recuperación. Habilita el botón de recuperación de un elemento borrado (lógico). Habilita el campo de filtrado por estado de borrado. |
| CSP\-PRO\-V\_UO | Visualización restringida por Unidad Organizativa.Acceso al listado y utilización de su filtro.Todas las consultas estarán restringidas a las Unidades Organizativas para las que se tenga este permiso.Habilita el botón de acceso al detalle en modo consulta. |
| CSP\-PRO\-C\_UO | Creación restringida por Unidad Organizativa.Habilita el botón de creación.La nueva entidad únicamente podrá asociarse a las Unidades Organizativas para las que se tenga este permiso. |
| CSP\-PRO\-E\_UO | Edición restringida por Unidad Organizativa.Habilita el botón de acceso al detalle en modo edición si la entidad está asociada a alguna de las Unidades Organizativas para las que se tenga este permiso. |
| CSP\-PRO\-B\_UO | Borrado restringido por Unidad Organizativa.Habilita el botón de borrado (lógico) si la entidad está asociada a alguna de las Unidades Organizativas para las que se tenga este permiso. |
| CSP\-PRO\-R\_UO | Recuperación restringida por Unidad Organizativa.Habilita el botón de recuperación de un elemento borrado (lógico) si la entidad está asociada a alguna de las Unidades Organizativas para las que se tenga este permiso. Habilita el campo de filtrado por estado de borrado. |
| CSP\-PRO\-INV\-VR | Visualización restringida.Acceso al listado y utilización de su filtro.  Habilita el botón de acceso al detalle en modo consulta. |
| ESB\-PRO\-MOD\-V |  |
| ESB\-PRO\-MOD\-C |  |
| ESB\-PARP\-C |  |
| CSP\-EJEC\-V | Visualización.Acceso al listado y utilización de su filtro.Habilita el botón de acceso al detalle en modo consulta. |
| CSP\-EJEC\-E | Edición.Habilita el botón de acceso al detalle en modo edición. |
| CSP\-EJEC\-V\_UO | Visualización restringida por Unidad Organizativa.Acceso al listado y utilización de su filtro.Todas las consultas estarán restringidas a las Unidades Organizativas para las que se tenga este permiso.Habilita el botón de acceso al detalle en modo consulta. |
| CSP\-EJEC\-E\_UO | Edición restringida por Unidad Organizativa.Habilita el botón de acceso al detalle en modo edición si la entidad está asociada a alguna de las Unidades Organizativas para las que se tenga este permiso. |
| CSP\-EJEC\-INV\-VR | Visualización restringida.Acceso al listado y utilización de su filtro. Habilita el botón de acceso al detalle en modo consulta. |
| CSP\-EJEC\-INV\-ER | Edición restringida.Acceso al listado y utilización de su filtro.Habilita el botón de acceso al detalle en modo edición |
| ESB\-PER\-V | Visualización del detalle.Habilita el botón de acceso al detalle en modo consulta.El acceso al listado y utilización de su filtro estará determinado por los permisos de acceso a la pantalla que abre la ventana emergente del buscador, esto es, el buscador y listado en sí no se restringirá por ningún permiso específico. |
| ESB\-PER\-E | Solicitud de modificación.Habilita el botón de acceso al detalle en modo solicitud de edición. |
| ESB\-PER\-C | Solicitud de creación.Habilita el botón de solicitud de creación. |
| ESB\-EMP\-V | Visualización del detalle.Habilita el botón de acceso al detalle en modo consulta.El acceso al listado y utilización de su filtro estará determinado por los permisos de acceso a la pantalla que abre la ventana emergente del buscador, esto es, el buscador y listado en sí no se restringirá por ningún permiso específico. |
| ESB\-EMP\-E | Solicitud de modificación.Habilita el botón de acceso al detalle en modo solicitud de edición. |
| ESB\-EMP\-C | Solicitud de creación.Habilita el botón de solicitud de creación. |
| CSP\-PRO\-MOD\-V | Visualización de proyectos desde otros módulos.Habilita el botón de acceso al buscador de proyectos común al SGI. |
| ETI\-CHKLST\-MOD\-V | Visualización del checklist desde otro módulo que no sea desde el módulo de ética, en este caso desde el módulo de CSPPermite ver los datos del checklist |
| ETI\-CHKLST\-MOD\-C | Creación del checklist desde otro módulo que no sea desde el módulo de ética, en este caso desde el módulo de CSPPermite visualizar, crear y modificar el registro en la tabla checklist de ética |
| ETI\-PEV\-MOD\-C | Creación de una petición de evaluación de ética desde otro modulo que no sea desde el módulo de éticaPermite la creación de un registro de petición de evaluación de ética |
| CSP\-AUT\-INV\-C | Creación  (Investigador)Permite la creación de la solicitud de autorizaciónpor parte del investigador. |
| CSP\-AUT\-INV\-ER | Edición restringido.Habilita el botón de acceso al detalle en modo edición. Los investigadores únicamente podrán modificar las solicitudes de autorización creadas por ellos mismos.Habilita el botón de "Presentar" |
| CSP\-AUT\-INV\-BR | Borrado restringido.Habilita el botón de acceso de borrado. Los investigadores únicamente podrán eliminar las solicitudes de autorización creadas por ellos mismos.Solo estará disponible si la solicitud de autorización se encuentra en estado "borrador". |
| CSP\-AUT\-E | Edición. Habilita el botón de acceso al detalle en modo edición.Habilita el botón de "Cambiar estado" |
| CSP\-AUT\-B | Borrado. Habilita el botón de borrado. |
| CSP\-AUT\-V | Visualización del detalle.Habilita el botón de acceso al detalle en modo consulta. |
| CSP\-CVPR\-E | Edición. Habilita el botón de acceso al detalle en modo edición. |
| CSP\-CVPR\-V | Visualización del detalle.Habilita el botón de acceso al detalle en modo consulta. |
| CSP\-GIN\-V | Visualización.Acceso al listado y utilización de su filtro. Habilita el botón de acceso al detalle en modo consulta. |
| CSP\-GIN\-C | Creación. Habilita el botón de creación. |
| CSP\-GIN\-E | Edición. Habilita el botón de acceso al detalle en modo edición. |
| CSP\-GIN\-B | Borrado. Habilita el botón de borrado (lógico). |
| CSP\-GIN\-R | Recuperación. Habilita el botón de recuperación de un elemento borrado (lógico). Habilita el campo de filtrado por estado de borrado. |
| CSP\-GIN\-INV\-VR | Visualización restringida. (Investigador: únicamente podrá visualizar los grupos a los que pertenece o ha pertenecido)Acceso al listado y utilización de su filtro. Habilita el botón de acceso al detalle en modo consulta. |
| CSP\-LIN\-C | Creación. Habilita el botón de creación. |
| CSP\-LIN\-E | Edición. Habilita el botón de acceso al detalle en modo edición. |
| CSP\-LIN\-B | Borrado. Habilita el botón de borrado (lógico). |
| CSP\-LIN\-R | Recuperación. Habilita el botón de recuperación de un elemento borrado (lógico). Habilita el campo de filtrado por estado de borrado.Habilita la columna que muestra el estado de borrado. |
| CSP\-SOL\-INV\-V | Consulta restringido.Deja consultar los datos generales de una solicitud por parte de un investigador. Sólo los datos de la tabla "Solicitud" |




