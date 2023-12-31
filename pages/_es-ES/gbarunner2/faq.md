---
lang: es-ES
layout: faq
section: gbarunner2
title: Preguntas frecuentes y soluciones
long_title: Preguntas frecuentes y solución de errores de GBARunner2
description: Preguntas frecuentes y solución de errores de GBARunner2
---

#### ¿Cómo puedo crear y añadir bordes personalizados?
Puedes seguir [esta guía](https://docs.google.com/document/d/1owjiW-1fHEbokrkK2ZuPFjR2-N9s1dXCCAM3ghWRtxk/edit?usp=sharing) de FrescoASF.

#### ¿Se pueden usar trucos?
Aún no. Sin embargo, puedes inyectar trucos en tu ROM de GBA de forma permanente usando [GBAATM](https://gbatemp.net/threads/gba-auto-trainer-maker-gbaatm.99334/).

#### ¿Qué versión de GBARunner2 debería utilizar?
Usualmente, las versiones incluidas en TWiLight Menu++ son suficientes. Para más información sobre las diferentes versiones de GBARunner2, mire la [página de la wiki acerca de las versiones](https://wiki.ds-homebrew.com/gbarunner2/builds).

#### ¿Cómo uso la función Wi-Fi Link?
Necesitarás la versión [wifi_link](https://github.com/Gericom/GBARunner2/tree/wifi_link) de GBARunner2 para utilizar estas funciones. Encontrarás instrucciones detalladas para configurar estas versiones en su [página en WikiTemp (en inglés)](https://wiki.gbatemp.net/wiki/GBARunner2/Link).

#### ¿Por qué no funciona el reloj interno (RTC) en este romhack?
El reloj interno funciona solo en ciertos juegos. Deberás cambiar la ID de la ROM a la de un juego compatible para que GBARunner2 la reconozca correctamente. You can find a list of supported title IDs in [GBARunner2's code](https://github.com/Gericom/GBARunner2/blob/master/arm9/source/emu/romGpio.vram.cpp#L14-L61).

Puedes cambiar la ID de tu ROM usando esta herramienta:
1. <label for="file-input" class="form-label">Selecciona el archivo ROM de GBA:</label> <input id="file-input" class="form-control mb-2" type="file" onchange="loadRom(this.files[0])" />
1. <label for="file-input" class="form-label">Introduce la ID deseada</label> <input id="tid-input" class="form-control mb-2" type="text" maxlength="4" onchange="updateTid(this.value)" disabled />
1. <label for="file-input" class="form-label">Guarda el archivo resultante:</label> <input id="save" class="btn btn-secondary" type="button" value="Guardar" onclick="save()" disabled />

<script src="/assets/js/change-gba-tid.js"></script>

#### ¿Por qué esta ROM no está funcionando? En la lista de compatibilidad dice que debería funcionar
La lista de compatibilidad de GBARunner2 está creada en base a pruebas hechas con una BIOS de GBA oficial, que mejora la compatibilidad. Consulta la página de [información sobre la BIOS de GBA](https://wiki.ds-homebrew.com/gbarunner2/bios) para saber como obtener una BIOS oficial de GBA.

#### ¿Cómo hago que no aparezcan lineas duplicadas al fondo de la pantalla en 3DS?
Esto es un error con TWLBg que es bastante más notable en GBARunner2. La única forma de resolverlo, y de forma temporal, es reiniciar GBARunner2.
- En tu caso y de ser posible, es mejor que uses otros métodos para ejecutar ROMs de GBA, como inyecciones a la Consola Virtual, open_agb_firm, o si tienes una New 3DS/3DS, mGBA
