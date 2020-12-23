
#!/bin/bash

curl ip.sb
curl -fsSL https://deno.land/x/install/install.sh | sh
deno run --allow-net mod.ts