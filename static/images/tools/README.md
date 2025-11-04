# Tool Images Directory

This directory contains images/logos for all AI tools in the platform.

## Image Requirements

- **Format**: PNG, JPG, or SVG
- **Size**: 300x200 pixels (recommended)
- **Max File Size**: 500KB per image
- **Naming**: Use lowercase with hyphens (e.g., `chatgpt.png`, `github-copilot.png`)

## Current Images

By default, the application uses placeholder images from `via.placeholder.com`.

To add real images:

1. Download or create tool logos
2. Save them in this directory
3. Update the `image_url` field in the database to use local images:
   ```
   /static/images/tools/chatgpt.png
   ```

## Example Image URLs for Tools

You can also use direct URLs to tool logos:

- ChatGPT: `https://upload.wikimedia.org/wikipedia/commons/0/04/ChatGPT_logo.svg`
- GitHub: `https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png`
- Midjourney: Find official logo from their website
- etc.

## Tips

1. Use high-quality images for better user experience
2. Optimize images before uploading (use tools like TinyPNG)
3. Maintain consistent dimensions across all images
4. Consider using SVG for scalable logos
5. Always respect copyright and trademark laws

---

**Note**: The current database uses placeholder images. Update them with real logos for production use.
