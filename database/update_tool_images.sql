-- Update All Tools with Proper Image URLs
USE zenithia_ai_db;

-- Update Writing Tools with Real Images
UPDATE tools SET image_url = 'https://upload.wikimedia.org/wikipedia/commons/0/04/ChatGPT_logo.svg' WHERE name = 'ChatGPT';
UPDATE tools SET image_url = 'https://assets-global.website-files.com/61a9e0d66e87864a9e6063f8/647e17547f8dfa9e7f4efc1e_jasper-logo-primary.svg' WHERE name = 'Jasper AI';
UPDATE tools SET image_url = 'https://www.gstatic.com/lamda/images/favicon_v1_150160cddff7f294ce30.svg' WHERE name = 'Copy.ai';
UPDATE tools SET image_url = 'https://assets-global.website-files.com/6329124b7c8c90fe7fb9fa75/6329124b7c8c903e6bb9fa9f_writesonic-logo-black.svg' WHERE name = 'Writesonic';
UPDATE tools SET image_url = 'https://assets.quillbot.com/images/theme/quillbot-logo.svg' WHERE name = 'Quillbot';
UPDATE tools SET image_url = 'https://rytr.me/static/media/logo.f8ca24d2.svg' WHERE name = 'Rytr';
UPDATE tools SET image_url = 'https://static.grammarly.com/assets/files/efe8d9d0e64a2c0da41ebad2ad8c0574/grammarly_logo.svg' WHERE name = 'GrammarlyGO';
UPDATE tools SET image_url = 'https://www.sudowrite.com/images/favicon-192x192.png' WHERE name = 'Sudowrite';
UPDATE tools SET image_url = 'https://www.wordtune.com/logo.svg' WHERE name = 'Wordtune';
UPDATE tools SET image_url = 'https://www.hyperwriteai.com/images/logo.svg' WHERE name = 'HyperWrite';
UPDATE tools SET image_url = 'https://inkforall.com/wp-content/uploads/2021/03/ink-logo.svg' WHERE name = 'Ink Editor';
UPDATE tools SET image_url = 'https://www.scalenut.com/blog/wp-content/uploads/2022/01/scalenut-logo.svg' WHERE name = 'Scalenut';
UPDATE tools SET image_url = 'https://aiseo.ai/images/logo.svg' WHERE name = 'AISEO';
UPDATE tools SET image_url = 'https://headlime.com/wp-content/uploads/2020/11/headlime-logo.svg' WHERE name = 'Headlime';
UPDATE tools SET image_url = 'https://paragraphai.com/logo.svg' WHERE name = 'ParagraphAI';
UPDATE tools SET image_url = 'https://texta.ai/images/logo.svg' WHERE name = 'Texta.ai';
UPDATE tools SET image_url = 'https://copysmith.ai/wp-content/uploads/2021/04/copysmith-logo.svg' WHERE name = 'Copysmith';
UPDATE tools SET image_url = 'https://www.longshot.ai/images/logo.svg' WHERE name = 'LongShot';
UPDATE tools SET image_url = 'https://anyword.com/wp-content/uploads/2021/01/anyword-logo.svg' WHERE name = 'Anyword';
UPDATE tools SET image_url = 'https://www.notion.so/images/favicon.ico' WHERE name = 'Notion AI';

-- Update Coding Tools with Real Images
UPDATE tools SET image_url = 'https://github.githubassets.com/images/modules/site/copilot/copilot.png' WHERE name = 'GitHub Copilot';
UPDATE tools SET image_url = 'https://www.tabnine.com/wp-content/uploads/2021/03/tabnine-logo.svg' WHERE name = 'Tabnine';
UPDATE tools SET image_url = 'https://replit.com/public/images/logo.svg' WHERE name = 'Replit Ghostwriter';
UPDATE tools SET image_url = 'https://openai.com/content/images/2021/08/openai-avatar.png' WHERE name = 'Codex';
UPDATE tools SET image_url = 'https://codeium.com/logo.svg' WHERE name = 'Codeium';
UPDATE tools SET image_url = 'https://upload.wikimedia.org/wikipedia/commons/0/04/ChatGPT_logo.svg' WHERE name = 'ChatGPT for Devs';
UPDATE tools SET image_url = 'https://www.deepcode.ai/images/logo.svg' WHERE name = 'DeepCode';
UPDATE tools SET image_url = 'https://sourceai.dev/logo.png' WHERE name = 'SourceAI';
UPDATE tools SET image_url = 'https://mintlify.com/logo.svg' WHERE name = 'Mintlify';
UPDATE tools SET image_url = 'https://mutable.ai/logo.svg' WHERE name = 'MutableAI';
UPDATE tools SET image_url = 'https://www.askcodi.com/logo.svg' WHERE name = 'AskCodi';
UPDATE tools SET image_url = 'https://www.codiga.io/logo.svg' WHERE name = 'Codiga';
UPDATE tools SET image_url = 'https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png' WHERE name = 'CodeT5';
UPDATE tools SET image_url = 'https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png' WHERE name = 'PolyCoder';
UPDATE tools SET image_url = 'https://www.blackbox.ai/logo.svg' WHERE name = 'Blackbox AI';
UPDATE tools SET image_url = 'https://www.autoregex.xyz/logo.svg' WHERE name = 'AutoRegex';
UPDATE tools SET image_url = 'https://www.ponicode.com/logo.svg' WHERE name = 'Ponicode';
UPDATE tools SET image_url = 'https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png' WHERE name = 'OpenDevin';
UPDATE tools SET image_url = 'https://www.aixcoder.com/logo.png' WHERE name = 'AIXCoder';
UPDATE tools SET image_url = 'https://codifyapp.com/logo.svg' WHERE name = 'Codify';

-- Update Image Tools with Real Images
UPDATE tools SET image_url = 'https://cdn.midjourney.com/b7ebc0cb-6f27-440b-9a23-d5e6e82a729f/0_3.png' WHERE name = 'Midjourney';
UPDATE tools SET image_url = 'https://openai.com/content/images/2022/04/DALL-E-2.png' WHERE name = 'DALL·E';
UPDATE tools SET image_url = 'https://leonardo.ai/logo.svg' WHERE name = 'Leonardo AI';
UPDATE tools SET image_url = 'https://www.bluewillow.ai/logo.svg' WHERE name = 'BlueWillow';
UPDATE tools SET image_url = 'https://playgroundai.com/logo.svg' WHERE name = 'Playground AI';
UPDATE tools SET image_url = 'https://stablediffusionweb.com/logo.png' WHERE name = 'Stable Diffusion';
UPDATE tools SET image_url = 'https://www.craiyon.com/favicon.ico' WHERE name = 'Craiyon';
UPDATE tools SET image_url = 'https://creator.nightcafe.studio/favicon.ico' WHERE name = 'NightCafe';
UPDATE tools SET image_url = 'https://www.artbreeder.com/favicon.ico' WHERE name = 'Artbreeder';
UPDATE tools SET image_url = 'https://deepai.org/static/images/logo.svg' WHERE name = 'DeepAI';
UPDATE tools SET image_url = 'https://www.adobe.com/favicon.ico' WHERE name = 'Adobe Firefly';
UPDATE tools SET image_url = 'https://www.canva.com/favicon.ico' WHERE name = 'Canva AI';
UPDATE tools SET image_url = 'https://assets-global.website-files.com/5e6b93b1e7c86ece0cf37e88/5e6b93b1e7c86e7b91f37f3c_favicon.png' WHERE name = 'Runway ML';
UPDATE tools SET image_url = 'https://imagine.art/favicon.ico' WHERE name = 'Imagine Art';
UPDATE tools SET image_url = 'https://pixlr.com/favicon.ico' WHERE name = 'Pixlr AI';
UPDATE tools SET image_url = 'https://www.fotor.com/favicon.ico' WHERE name = 'Fotor AI';
UPDATE tools SET image_url = 'https://www.remove.bg/favicon.ico' WHERE name = 'Remove.bg';
UPDATE tools SET image_url = 'https://cleanup.pictures/favicon.ico' WHERE name = 'Cleanup.pictures';
UPDATE tools SET image_url = 'https://deepdreamgenerator.com/favicon.ico' WHERE name = 'Deep Dream Generator';
UPDATE tools SET image_url = 'https://www.getimg.ai/favicon.ico' WHERE name = 'Getimg.ai';

-- Update Video Tools with Real Images
UPDATE tools SET image_url = 'https://www.synthesia.io/favicon.ico' WHERE name = 'Synthesia';
UPDATE tools SET image_url = 'https://www.pictory.ai/favicon.ico' WHERE name = 'Pictory';
UPDATE tools SET image_url = 'https://www.descript.com/favicon.ico' WHERE name = 'Descript';
UPDATE tools SET image_url = 'https://runwayml.com/favicon.ico' WHERE name = 'Runway Gen-2';
UPDATE tools SET image_url = 'https://www.heygen.com/favicon.ico' WHERE name = 'HeyGen';
UPDATE tools SET image_url = 'https://www.kapwing.com/favicon.ico' WHERE name = 'Kapwing AI';
UPDATE tools SET image_url = 'https://www.invideo.io/favicon.ico' WHERE name = 'InVideo AI';
UPDATE tools SET image_url = 'https://www.fliki.ai/favicon.ico' WHERE name = 'Fliki';
UPDATE tools SET image_url = 'https://steve.ai/favicon.ico' WHERE name = 'Steve.AI';
UPDATE tools SET image_url = 'https://www.vidyo.ai/favicon.ico' WHERE name = 'Vidyo.ai';
UPDATE tools SET image_url = 'https://www.lumen5.com/favicon.ico' WHERE name = 'Lumen5';
UPDATE tools SET image_url = 'https://www.vidiq.com/favicon.ico' WHERE name = 'VidIQ';
UPDATE tools SET image_url = 'https://www.animaker.com/favicon.ico' WHERE name = 'Animaker';
UPDATE tools SET image_url = 'https://www.wisecut.video/favicon.ico' WHERE name = 'Wisecut';
UPDATE tools SET image_url = 'https://elai.io/favicon.ico' WHERE name = 'Elai.io';
UPDATE tools SET image_url = 'https://www.colossyan.com/favicon.ico' WHERE name = 'Colossyan';
UPDATE tools SET image_url = 'https://www.veed.io/favicon.ico' WHERE name = 'VEED.io';
UPDATE tools SET image_url = 'https://clipchamp.com/favicon.ico' WHERE name = 'Clipchamp';
UPDATE tools SET image_url = 'https://www.flexclip.com/favicon.ico' WHERE name = 'FlexClip';
UPDATE tools SET image_url = 'https://d-id.com/favicon.ico' WHERE name = 'D-ID';

-- Update Voice Tools with Real Images
UPDATE tools SET image_url = 'https://murf.ai/favicon.ico' WHERE name = 'Murf AI';
UPDATE tools SET image_url = 'https://www.resemble.ai/favicon.ico' WHERE name = 'Resemble AI';
UPDATE tools SET image_url = 'https://play.ht/favicon.ico' WHERE name = 'Play.ht';
UPDATE tools SET image_url = 'https://elevenlabs.io/favicon.ico' WHERE name = 'ElevenLabs';
UPDATE tools SET image_url = 'https://www.descript.com/favicon.ico' WHERE name = 'Descript Overdub';
UPDATE tools SET image_url = 'https://www.naturalreaders.com/favicon.ico' WHERE name = 'Natural Reader';
UPDATE tools SET image_url = 'https://wellsaidlabs.com/favicon.ico' WHERE name = 'WellSaid Labs';
UPDATE tools SET image_url = 'https://www.listnr.tech/favicon.ico' WHERE name = 'Listnr';
UPDATE tools SET image_url = 'https://voicemaker.in/favicon.ico' WHERE name = 'Voicemaker';
UPDATE tools SET image_url = 'https://www.lovo.ai/favicon.ico' WHERE name = 'LOVO AI';
UPDATE tools SET image_url = 'https://speechify.com/favicon.ico' WHERE name = 'Speechify';
UPDATE tools SET image_url = 'https://sonantic.io/favicon.ico' WHERE name = 'Sonantic';
UPDATE tools SET image_url = 'https://www.voicery.com/favicon.ico' WHERE name = 'Voicery';
UPDATE tools SET image_url = 'https://www.coqui.ai/favicon.ico' WHERE name = 'Coqui';
UPDATE tools SET image_url = 'https://www.respeecher.com/favicon.ico' WHERE name = 'Respeecher';
UPDATE tools SET image_url = 'https://www.iSpeech.org/favicon.ico' WHERE name = 'iSpeech';
UPDATE tools SET image_url = 'https://aws.amazon.com/favicon.ico' WHERE name = 'Amazon Polly';
UPDATE tools SET image_url = 'https://cloud.google.com/favicon.ico' WHERE name = 'Google TTS';
UPDATE tools SET image_url = 'https://azure.microsoft.com/favicon.ico' WHERE name = 'Microsoft Azure TTS';
UPDATE tools SET image_url = 'https://www.ibm.com/favicon.ico' WHERE name = 'IBM Watson TTS';

-- Update Productivity Tools with Real Images
UPDATE tools SET image_url = 'https://www.notion.so/images/favicon.ico' WHERE name = 'Notion AI';
UPDATE tools SET image_url = 'https://www.clickup.com/favicon.ico' WHERE name = 'ClickUp AI';
UPDATE tools SET image_url = 'https://www.beautiful.ai/favicon.ico' WHERE name = 'Beautiful.ai';
UPDATE tools SET image_url = 'https://www.otter.ai/favicon.ico' WHERE name = 'Otter.ai';
UPDATE tools SET image_url = 'https://reclaim.ai/favicon.ico' WHERE name = 'Reclaim AI';
UPDATE tools SET image_url = 'https://krisp.ai/favicon.ico' WHERE name = 'Krisp';
UPDATE tools SET image_url = 'https://www.fireflies.ai/favicon.ico' WHERE name = 'Fireflies.ai';
UPDATE tools SET image_url = 'https://www.zoom.us/favicon.ico' WHERE name = 'Zoom AI Companion';
UPDATE tools SET image_url = 'https://www.microsoft.com/favicon.ico' WHERE name = 'Microsoft 365 Copilot';
UPDATE tools SET image_url = 'https://workspace.google.com/favicon.ico' WHERE name = 'Google Workspace AI';
UPDATE tools SET image_url = 'https://www.taskade.com/favicon.ico' WHERE name = 'Taskade';
UPDATE tools SET image_url = 'https://www.mem.ai/favicon.ico' WHERE name = 'Mem';
UPDATE tools SET image_url = 'https://www.xmind.net/favicon.ico' WHERE name = 'Xmind AI';
UPDATE tools SET image_url = 'https://gamma.app/favicon.ico' WHERE name = 'Gamma';
UPDATE tools SET image_url = 'https://tome.app/favicon.ico' WHERE name = 'Tome';
UPDATE tools SET image_url = 'https://www.bardeen.ai/favicon.ico' WHERE name = 'Bardeen';
UPDATE tools SET image_url = 'https://www.magical.so/favicon.ico' WHERE name = 'Magical';
UPDATE tools SET image_url = 'https://www.timely.app/favicon.ico' WHERE name = 'Timely';
UPDATE tools SET image_url = 'https://calendly.com/favicon.ico' WHERE name = 'Calendly AI';
UPDATE tools SET image_url = 'https://www.trello.com/favicon.ico' WHERE name = 'Trello AI';
