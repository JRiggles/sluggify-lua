local sluggify = require("sluggify")
local slug = sluggify.sluggify("Pokémon Blue!")
print(slug)
assert(slug == "pokemon-blue")
