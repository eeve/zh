import { serve } from "https://deno.land/std@0.82.0/http/server.ts";
const s = serve({ hostname: '0.0.0.0', port: 8000 })
console.log("http://0.0.0.0:8000/");
for await (const req of s) {
  const headers = new Headers();
  headers.append('content-type', 'text/html; charset=utf-8')
  req.respond({
    body: "Hello World\n",
    headers
  })
}