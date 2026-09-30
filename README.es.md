# Discourse Theme Skills

[ENGLISH](README.md) | **ESPAÑOL**

Skills de Claude Code para el desarrollo de temas y componentes de bloque de Discourse, incluidas con un tema de referencia que demuestra el sistema de bloques de principio a fin.

## Skills

Se incluyen dos skills en `.claude/skills/`:

| Skill | Descripción |
| --- | --- |
| `discourse-theme-authoring` | Estructura inicial, arquitectura SCSS, CSS BEM, diseño por viewport, localización, ajustes, iconos, variables CSS, transformers y modificadores de tema |
| `discourse-block-authoring` | El decorador `@block`, registro en la API de plugins, outlets, condiciones, bloques contenedor, datos asíncronos y pruebas |

### Archivos de referencia

La skill de autoría de temas enlaza a apéndices de referencia detallados:

- `css-variables.md`: las ~400 propiedades CSS personalizadas
- `icons.md`: lista de iconos por defecto, Font Awesome y Lucide
- `transformers.md`: todos los transformers de valor y de comportamiento

## Tema de ejemplo

El propio repo es un tema completo de Discourse que demuestra los bloques en la práctica. Incluye una página de inicio personalizada, banners de categoría, bloques de barra lateral y dos esquemas de color.

![Modo claro](assets/screenshot-light.png)

![Modo oscuro](assets/screenshot-dark.png)

### Instalación

1. Sube la raíz del repositorio en **Admin > Personalizar > Temas**.
2. Activa **Discourse Skills** como tema del sitio.
3. Configura el ajuste del sitio `homepage` en `custom`.

Este fork sigue a upstream y añade únicamente una traducción al español
(`locales/es.yml`). Los bloques propios del foro viven en
[discourse-custom-home-nautas](https://github.com/somos-criptonautas/discourse-custom-home-nautas)
y
[discourse-user-tier-badge-nautas](https://github.com/somos-criptonautas/discourse-user-tier-badge-nautas).

### Ajustes

| Ajuste | Por defecto | Descripción |
| --- | --- | --- |
| `featured_topics_tag` | _(vacío)_ | Etiqueta usada para filtrar los temas destacados |
| `featured_topics_count` | 3 | Número de temas destacados |
| `featured_list_count` | 14 | Número de temas en la lista destacada |
| `featured_list_filter` | `latest` | Filtro de la lista destacada |
| `leaderboard_count` | 12 | Número de usuarios en el ranking |
| `events_count` | 5 | Próximos eventos a mostrar |
| `sidebar_category_id` | 4 | ID de categoría para la lista de temas de la barra lateral |
| `sidebar_tags_count` | 10 | Etiquetas mostradas en la barra lateral |
| `banner_categories` | _(vacío)_ | Categorías que muestran un banner |
| `cta_link` | `/signup` | URL del botón de llamado a la acción |

### Condiciones

Algunos bloques solo aparecen cuando se cumplen sus dependencias:

- **Temas destacados** requiere que las etiquetas estén activadas y que `featured_topics_tag` esté configurado
- **Ranking** requiere el plugin [Gamification](https://meta.discourse.org/t/discourse-gamification/218program) activado
- **Próximos eventos** requiere el plugin [Events](https://meta.discourse.org/t/discourse-post-event/149937) activado y eventos reales

## Licencia

MIT (upstream: Civilized Discourse Construction Kit, Inc.). Modificaciones © 2026 Criptonautas. Consulta [LICENSE](LICENSE).

Texto de este README bajo [CC BY-NC-SA 4.0](CC-BY-NC-SA-4.0.txt).
