
#!/bin/bash

curl -fsSL https://deno.land/x/install/install.sh | sh
nohup $HOME/.deno/bin/deno run --allow-net mod.ts > serve.log 2>&1 &