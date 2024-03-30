# sluggify-lua
### A Lua implementation of [skeddles/sluggify](https://github.com/skeddles/sluggify) for generating URL slugs

The following manipluations are performed in this order:
1. replace slashes `/` `\` and spaces ` ` with dashes `-`
2. replace any accented characters with their closest non-accented equvalent, e.g. `é` becomes `e`
3. remove all non-alphanumeric characters (anything other than `A-Z`, `a-z`, `0-9`, and `-`)
4. replace multiple consecutive dashes `---` with a single dash `-`
5. remove leading dashes, e.g. `-Gengar-` becomes `Gengar-`
6. remove trailing dashes, e.g. `Gengar-` becomes `Gengar`
7. convert to lowercase, e.g `Gengar` becomes `gengar`

## Dependencies
This module relies on the Lua `utf-8` library which *should* be built into Lua, but isn't always. You've been warned!

## Example
```lua
local sluggify = require("sluggify")
local slug = sluggify.sluggify("Pokémon Blue!")
print(slug)
assert(slug == "pokemon-blue") -- expected output
```
### outputs...
```txt
pokemon-blue
```
##
> This was originally written for my [Lospec Palette Importer](https://sudo-whoami.itch.io/lospec-palette-importer) Aseprite extension, but I thought it might be useful on its own.
> 
> Thanks to [Sam Keddy](https://github.com/skeddles) for the inspiration!
