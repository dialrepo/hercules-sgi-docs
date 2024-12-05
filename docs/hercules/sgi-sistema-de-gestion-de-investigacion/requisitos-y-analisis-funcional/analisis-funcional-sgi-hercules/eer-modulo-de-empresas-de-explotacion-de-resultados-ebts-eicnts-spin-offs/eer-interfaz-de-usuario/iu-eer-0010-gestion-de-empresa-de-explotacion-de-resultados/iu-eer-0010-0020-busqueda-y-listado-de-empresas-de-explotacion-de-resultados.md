# Hércules : IU\-EER\-0010\-0020 \- Búsqueda y listado de empresas de explotación de resultados



## Formulario de búsqueda y listado de empresas de explotación de resultados

Pantalla que muestra un formulario, que permite aplicar filtros sobre el listado de todas las empresas de explotación de resultados.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de búsqueda | | |
| Fecha de constitución(desde \- hasta) | FechaOpcional | Fecha de constitución de la empresa de explotación de resultados. |
| Fecha de incorporación(desde \- hasta) | FechaOpcional | Fecha de incorporación de la Universidad a la empresa de explotación de resultados. |
| Nombre / Razón social | TextoOpcional | Nombre y/o razón social de la empresa de explotación de resultados. |
| Entidad | TextoOpcional | Entidad asociada a la empresa de explotación de resultados.Campo de búsqueda de empresas en los sistemas de la Universidad. |
| Objeto social | TextoOpcional | Objeto social de la empresa. |
| Listado de resultados | | |
| Nº identificación fiscal | Texto corto | Número identificación fiscal de la entidad. Solo tendrá valor si la empresa de explotación de resultados tiene una entidad asociada de las existentes en los sistemas de la Universidad. |
| Nombre / Razón social | Texto | Nombre / Razón social de la empresa de explotación de resultados.Si está informado el campo Entidad, se mostrará el nombre de la entidad en los sistemas de la Universidad en lugar de el dato almacenado en el SGI, que será recuperado a través del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md"). |
| Objeto social | Texto | Objeto social de la empresa de explotación de resultados. |
| Fecha constitución | Fecha | Fecha de constitución de la empresa de explotación de resultados. |
| Fecha incorporación | Fecha | Fecha de incorporación de la Universidad a la empresa de explotación de resultados. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Ver/Modificar | Accede a la pantalla con los formularios para ver el detalle o modificar la empresa de explotación de resultados [IU\-EER\-0010\-030 \- Ver detalle\-modificar empresa de explotación de resultados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eer-modulo-de-empresas-de-explotacion-de-resultados-ebts-eicnts-spin-offs/eer-interfaz-de-usuario/iu-eer-0010-gestion-de-empresa-de-explotacion-de-resultados/iu-eer-0010-0030-ver-detalle-modificar-empresa-de-explotacion-de-resultados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eer-modulo-de-empresas-de-explotacion-de-resultados-ebts-eicnts-spin-offs/eer-interfaz-de-usuario/iu-eer-0010-gestion-de-empresa-de-explotacion-de-resultados/iu-eer-0010-0030-ver-detalle-modificar-empresa-de-explotacion-de-resultados/index.md") y, en concreto, a la pestaña de Datos Generales |  | EER\-EER\-VEER\-EER\-E |
| Eliminar | Desactiva la empresa seleccionada del listado de empresas de explotación de resultados. |  | EER\-EER\-B |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar (entidad) | A través del botón Buscar se dará acceso al buscador de empresas/entidades común a todo el SGI [IU\-GEN\-0080 \- Búsqueda de empresas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md"). El listado de entidades disponibles se obtendrá del requisito de integración [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md"), que realizará la búsqueda de entidades en los sistemas de la universidad. |  | No se necesitan permisos para buscar empresas/entidades. |
| Buscar | Aplica los filtros introducidos sobre la lista de empresas de explotación de resultados mostrando las que cumplen las condiciones. |  | EER\-EER\-VEER\-EER\-E |
| Limpiar | Elimina los datos introducidos en el formulario de búsqueda de empresas de explotación de resultados. |  |  |
| Añadir empresa de explotación de resultados | Añadir nueva empresa de explotación de resultados. |  | EER\-EER\-C |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




