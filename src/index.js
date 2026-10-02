import { createServer } from "node:http";

createServer((req, res) => res.end("EventHub\n")).listen(3000);
