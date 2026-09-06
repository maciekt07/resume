import { put } from "@vercel/blob";
import { readFileSync } from "node:fs";

const filePath = "resume.pdf";

try {
  await put(filePath, readFileSync(filePath), {
    access: "public",
    addRandomSuffix: false,
    allowOverwrite: true,
    cacheControlMaxAge: 86400, // 24h
    contentType: "application/pdf",
  });

  console.log(`Uploaded ${filePath}`);
} catch (error) {
  console.error(`Failed to upload ${filePath}:`, error);
  process.exit(1);
}
