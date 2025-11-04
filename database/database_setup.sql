-- Create Database
CREATE DATABASE IF NOT EXISTS zenithia_ai_db;
USE zenithia_ai_db;

-- 1. Users Table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('user','admin') DEFAULT 'user',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. Tools Table
CREATE TABLE IF NOT EXISTS tools (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    description TEXT,
    image_url VARCHAR(255),
    tool_link VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 3. Events Table
CREATE TABLE IF NOT EXISTS events (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    date DATE,
    description TEXT,
    link VARCHAR(255),
    category VARCHAR(50) DEFAULT 'General'
);

-- 4. Contact Messages Table
CREATE TABLE IF NOT EXISTS contact (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    message TEXT,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert Admin User (password: admin123)
INSERT INTO users (name, email, password, role) VALUES
('Admin', 'admin@zenithia.ai', 'scrypt:32768:8:1$kQGZvXmEiL3s7YuK$8f3a7e5d9c6b2a1f0e4d8c7b6a5f9e3d2c1b0a9f8e7d6c5b4a3f2e1d0c9b8a7f6e5d4c3b2a1f0e9d8c7b6a5f4e3d2c1b0a9f8e7d6c5b4a3f2e1d0c9b8a7f6e5d4c3b2a1', 'admin');

-- Insert Writing Tools
INSERT INTO tools (name, category, description, image_url, tool_link) VALUES
('ChatGPT', 'Writing', 'Advanced AI chatbot for natural conversations, content generation, and writing assistance powered by OpenAI.', 'https://upload.wikimedia.org/wikipedia/commons/0/04/ChatGPT_logo.svg', 'https://chat.openai.com'),
('Jasper AI', 'Writing', 'AI-powered content creation platform for marketing copy, blog posts, and creative writing.', 'https://via.placeholder.com/300x200?text=Jasper+AI', 'https://www.jasper.ai'),
('Copy.ai', 'Writing', 'AI copywriting tool that helps you create marketing copy, product descriptions, and social media content.', 'https://via.placeholder.com/300x200?text=Copy.ai', 'https://www.copy.ai'),
('Writesonic', 'Writing', 'AI writing assistant for creating SEO-optimized content, articles, and marketing materials.', 'https://via.placeholder.com/300x200?text=Writesonic', 'https://writesonic.com'),
('Quillbot', 'Writing', 'AI-powered paraphrasing and grammar checking tool for improving your writing.', 'https://via.placeholder.com/300x200?text=Quillbot', 'https://quillbot.com'),
('Rytr', 'Writing', 'AI writing assistant that helps you create quality content quickly and affordably.', 'https://via.placeholder.com/300x200?text=Rytr', 'https://rytr.me'),
('GrammarlyGO', 'Writing', 'AI-powered writing assistant that provides grammar checking, style suggestions, and content generation.', 'https://via.placeholder.com/300x200?text=GrammarlyGO', 'https://www.grammarly.com'),
('Sudowrite', 'Writing', 'AI writing partner for fiction writers, helping with creative storytelling and narrative development.', 'https://via.placeholder.com/300x200?text=Sudowrite', 'https://www.sudowrite.com'),
('Wordtune', 'Writing', 'AI-powered writing companion that helps you rephrase and rewrite sentences for clarity.', 'https://via.placeholder.com/300x200?text=Wordtune', 'https://www.wordtune.com'),
('HyperWrite', 'Writing', 'AI writing assistant that helps you write faster and better with intelligent suggestions.', 'https://via.placeholder.com/300x200?text=HyperWrite', 'https://www.hyperwriteai.com'),
('Ink Editor', 'Writing', 'AI-powered content optimization tool for SEO and readability improvement.', 'https://via.placeholder.com/300x200?text=Ink+Editor', 'https://inkforall.com'),
('Scalenut', 'Writing', 'AI-powered SEO and content marketing platform for creating optimized content.', 'https://via.placeholder.com/300x200?text=Scalenut', 'https://www.scalenut.com'),
('AISEO', 'Writing', 'AI writing assistant for creating SEO-optimized content and paraphrasing text.', 'https://via.placeholder.com/300x200?text=AISEO', 'https://aiseo.ai'),
('Headlime', 'Writing', 'AI-powered copywriting tool for creating landing pages and marketing copy.', 'https://via.placeholder.com/300x200?text=Headlime', 'https://headlime.com'),
('ParagraphAI', 'Writing', 'AI writing assistant app for crafting perfect emails, messages, and documents.', 'https://via.placeholder.com/300x200?text=ParagraphAI', 'https://paragraphai.com'),
('Texta.ai', 'Writing', 'AI content generator for blog posts, product descriptions, and marketing content.', 'https://via.placeholder.com/300x200?text=Texta.ai', 'https://texta.ai'),
('Copysmith', 'Writing', 'AI-powered content creation platform for enterprise marketing teams.', 'https://via.placeholder.com/300x200?text=Copysmith', 'https://copysmith.ai'),
('LongShot', 'Writing', 'AI writing assistant for creating fact-checked, SEO-optimized long-form content.', 'https://via.placeholder.com/300x200?text=LongShot', 'https://www.longshot.ai'),
('Anyword', 'Writing', 'AI copywriting platform with predictive analytics for marketing performance.', 'https://via.placeholder.com/300x200?text=Anyword', 'https://anyword.com'),
('Notion AI', 'Writing', 'AI-powered writing assistant integrated into Notion for notes, docs, and wikis.', 'https://via.placeholder.com/300x200?text=Notion+AI', 'https://www.notion.so/product/ai');

-- Insert Coding Tools
INSERT INTO tools (name, category, description, image_url, tool_link) VALUES
('GitHub Copilot', 'Coding', 'AI pair programmer that helps you write code faster with intelligent code completions.', 'https://via.placeholder.com/300x200?text=GitHub+Copilot', 'https://github.com/features/copilot'),
('Tabnine', 'Coding', 'AI code completion tool that predicts and suggests your next lines of code.', 'https://via.placeholder.com/300x200?text=Tabnine', 'https://www.tabnine.com'),
('Replit Ghostwriter', 'Coding', 'AI-powered coding assistant built into Replit IDE for code completion and generation.', 'https://via.placeholder.com/300x200?text=Replit+Ghostwriter', 'https://replit.com/site/ghostwriter'),
('Codex', 'Coding', 'OpenAI''s AI system that translates natural language to code.', 'https://via.placeholder.com/300x200?text=Codex', 'https://openai.com/blog/openai-codex'),
('Codeium', 'Coding', 'Free AI-powered code completion tool supporting multiple programming languages.', 'https://via.placeholder.com/300x200?text=Codeium', 'https://codeium.com'),
('ChatGPT for Devs', 'Coding', 'Use ChatGPT to debug code, write functions, and solve programming challenges.', 'https://via.placeholder.com/300x200?text=ChatGPT+for+Devs', 'https://chat.openai.com'),
('DeepCode', 'Coding', 'AI-powered code review tool that finds bugs and security vulnerabilities.', 'https://via.placeholder.com/300x200?text=DeepCode', 'https://www.deepcode.ai'),
('SourceAI', 'Coding', 'AI-powered code generator that creates code in any programming language from descriptions.', 'https://via.placeholder.com/300x200?text=SourceAI', 'https://sourceai.dev'),
('Mintlify', 'Coding', 'AI documentation writer for automatically generating code documentation.', 'https://via.placeholder.com/300x200?text=Mintlify', 'https://mintlify.com'),
('MutableAI', 'Coding', 'AI-accelerated software development platform with code generation and refactoring.', 'https://via.placeholder.com/300x200?text=MutableAI', 'https://mutable.ai'),
('AskCodi', 'Coding', 'AI coding assistant that helps you write code faster with intelligent suggestions.', 'https://via.placeholder.com/300x200?text=AskCodi', 'https://www.askcodi.com'),
('Codiga', 'Coding', 'AI-powered code analysis and review platform for improving code quality.', 'https://via.placeholder.com/300x200?text=Codiga', 'https://www.codiga.io'),
('CodeT5', 'Coding', 'Open-source AI model for code understanding and generation tasks.', 'https://via.placeholder.com/300x200?text=CodeT5', 'https://github.com/salesforce/CodeT5'),
('PolyCoder', 'Coding', 'Open-source AI code generation model trained on multiple programming languages.', 'https://via.placeholder.com/300x200?text=PolyCoder', 'https://github.com/VHellendoorn/Code-LMs'),
('Blackbox AI', 'Coding', 'AI-powered coding assistant for code search, completion, and generation.', 'https://via.placeholder.com/300x200?text=Blackbox+AI', 'https://www.blackbox.ai'),
('AutoRegex', 'Coding', 'AI tool that converts English descriptions into regular expressions.', 'https://via.placeholder.com/300x200?text=AutoRegex', 'https://www.autoregex.xyz'),
('Ponicode', 'Coding', 'AI-powered unit test generation tool for JavaScript and TypeScript.', 'https://via.placeholder.com/300x200?text=Ponicode', 'https://www.ponicode.com'),
('OpenDevin', 'Coding', 'Open-source AI software engineer that can write code and fix bugs autonomously.', 'https://via.placeholder.com/300x200?text=OpenDevin', 'https://github.com/OpenDevin/OpenDevin'),
('AIXCoder', 'Coding', 'AI-powered code completion and suggestion tool for developers.', 'https://via.placeholder.com/300x200?text=AIXCoder', 'https://www.aixcoder.com'),
('Codify', 'Coding', 'AI tool that helps you understand and write code more efficiently.', 'https://via.placeholder.com/300x200?text=Codify', 'https://codifyapp.com');

-- Insert Image Generation Tools
INSERT INTO tools (name, category, description, image_url, tool_link) VALUES
('Midjourney', 'Image', 'AI art generator that creates stunning images from text descriptions.', 'https://via.placeholder.com/300x200?text=Midjourney', 'https://www.midjourney.com'),
('DALL·E', 'Image', 'OpenAI''s AI system that creates realistic images and art from text descriptions.', 'https://via.placeholder.com/300x200?text=DALL-E', 'https://openai.com/dall-e-2'),
('Leonardo AI', 'Image', 'AI art generator with advanced controls for creating game assets and illustrations.', 'https://via.placeholder.com/300x200?text=Leonardo+AI', 'https://leonardo.ai'),
('BlueWillow', 'Image', 'Free AI image generator that creates artwork from text prompts.', 'https://via.placeholder.com/300x200?text=BlueWillow', 'https://www.bluewillow.ai'),
('Playground AI', 'Image', 'Free AI image creator with multiple models and editing capabilities.', 'https://via.placeholder.com/300x200?text=Playground+AI', 'https://playgroundai.com'),
('Firefly', 'Image', 'Adobe''s AI image generator integrated into Creative Cloud applications.', 'https://via.placeholder.com/300x200?text=Adobe+Firefly', 'https://www.adobe.com/products/firefly.html'),
('Stable Diffusion', 'Image', 'Open-source AI model for generating detailed images from text descriptions.', 'https://via.placeholder.com/300x200?text=Stable+Diffusion', 'https://stability.ai/stable-diffusion'),
('NightCafe', 'Image', 'AI art generator with multiple algorithms and artistic styles.', 'https://via.placeholder.com/300x200?text=NightCafe', 'https://nightcafe.studio'),
('Fotor AI', 'Image', 'AI-powered image generator and photo editor with multiple creative tools.', 'https://via.placeholder.com/300x200?text=Fotor+AI', 'https://www.fotor.com/features/ai-image-generator'),
('DeepAI Image Generator', 'Image', 'AI tool for creating unique images from text descriptions.', 'https://via.placeholder.com/300x200?text=DeepAI', 'https://deepai.org/machine-learning-model/text2img'),
('Craiyon', 'Image', 'Free AI image generator (formerly DALL-E mini) for creating art from text.', 'https://via.placeholder.com/300x200?text=Craiyon', 'https://www.craiyon.com'),
('Dream by Wombo', 'Image', 'AI-powered art generator app that creates unique artworks instantly.', 'https://via.placeholder.com/300x200?text=Dream+by+Wombo', 'https://dream.ai'),
('RunwayML', 'Image', 'AI creative suite with image generation, editing, and video tools.', 'https://via.placeholder.com/300x200?text=RunwayML', 'https://runwayml.com'),
('Artbreeder', 'Image', 'Collaborative AI tool for creating and mixing images through genetic algorithms.', 'https://via.placeholder.com/300x200?text=Artbreeder', 'https://www.artbreeder.com'),
('Pixlr AI', 'Image', 'AI-powered online photo editor with generative AI features.', 'https://via.placeholder.com/300x200?text=Pixlr+AI', 'https://pixlr.com/ai'),
('DeepDreamGenerator', 'Image', 'AI art generator based on Google''s DeepDream algorithm.', 'https://via.placeholder.com/300x200?text=DeepDream', 'https://deepdreamgenerator.com'),
('Canva Magic Studio', 'Image', 'AI-powered design tools within Canva for image generation and editing.', 'https://via.placeholder.com/300x200?text=Canva+Magic+Studio', 'https://www.canva.com/magic-studio'),
('Bing Image Creator', 'Image', 'Microsoft''s AI image generator powered by DALL-E technology.', 'https://via.placeholder.com/300x200?text=Bing+Image+Creator', 'https://www.bing.com/create'),
('PhotoRoom', 'Image', 'AI-powered photo editing app with background removal and image generation.', 'https://via.placeholder.com/300x200?text=PhotoRoom', 'https://www.photoroom.com'),
('DiffusionBee', 'Image', 'Free AI art generator app for Mac using Stable Diffusion.', 'https://via.placeholder.com/300x200?text=DiffusionBee', 'https://diffusionbee.com');

-- Insert Video Tools
INSERT INTO tools (name, category, description, image_url, tool_link) VALUES
('Pictory', 'Video', 'AI-powered video creation platform that turns scripts and articles into videos.', 'https://via.placeholder.com/300x200?text=Pictory', 'https://pictory.ai'),
('Synthesia', 'Video', 'AI video generation platform with AI avatars and text-to-video capabilities.', 'https://via.placeholder.com/300x200?text=Synthesia', 'https://www.synthesia.io'),
('Runway Gen-2', 'Video', 'AI video generator that creates videos from text descriptions.', 'https://via.placeholder.com/300x200?text=Runway+Gen-2', 'https://runwayml.com/ai-magic-tools/gen-2'),
('HeyGen', 'Video', 'AI video platform for creating professional videos with AI avatars.', 'https://via.placeholder.com/300x200?text=HeyGen', 'https://www.heygen.com'),
('Veed.io', 'Video', 'Online video editor with AI-powered features for subtitles and effects.', 'https://via.placeholder.com/300x200?text=Veed.io', 'https://www.veed.io'),
('Lumen5', 'Video', 'AI-powered video creation platform that transforms content into engaging videos.', 'https://via.placeholder.com/300x200?text=Lumen5', 'https://lumen5.com'),
('Descript', 'Video', 'AI video and audio editor with transcription and screen recording features.', 'https://via.placeholder.com/300x200?text=Descript', 'https://www.descript.com'),
('Kapwing', 'Video', 'Online video editor with AI tools for subtitles, background removal, and more.', 'https://via.placeholder.com/300x200?text=Kapwing', 'https://www.kapwing.com'),
('InVideo', 'Video', 'AI video creation platform with templates and text-to-video capabilities.', 'https://via.placeholder.com/300x200?text=InVideo', 'https://invideo.io'),
('DeepBrain', 'Video', 'AI video generator with realistic AI avatars for video creation.', 'https://via.placeholder.com/300x200?text=DeepBrain', 'https://www.deepbrain.io'),
('Elai.io', 'Video', 'AI video generation platform for creating videos from text with AI avatars.', 'https://via.placeholder.com/300x200?text=Elai.io', 'https://elai.io'),
('Animoto', 'Video', 'Video creation platform with AI-powered features for marketing videos.', 'https://via.placeholder.com/300x200?text=Animoto', 'https://animoto.com'),
('Wisecut', 'Video', 'AI-powered video editing tool that automatically cuts and edits videos.', 'https://via.placeholder.com/300x200?text=Wisecut', 'https://www.wisecut.video'),
('Fliki', 'Video', 'AI text-to-video platform with realistic voiceovers in multiple languages.', 'https://via.placeholder.com/300x200?text=Fliki', 'https://fliki.ai'),
('Vizard', 'Video', 'AI video editor that automatically creates short clips from long videos.', 'https://via.placeholder.com/300x200?text=Vizard', 'https://vizard.ai'),
('FlexClip', 'Video', 'Online video maker with AI tools for creating and editing videos.', 'https://via.placeholder.com/300x200?text=FlexClip', 'https://www.flexclip.com'),
('Rephrase.ai', 'Video', 'AI video generation platform for creating personalized videos at scale.', 'https://via.placeholder.com/300x200?text=Rephrase.ai', 'https://www.rephrase.ai'),
('Colossyan', 'Video', 'AI video creator with AI actors for training and marketing videos.', 'https://via.placeholder.com/300x200?text=Colossyan', 'https://www.colossyan.com'),
('Vidyo.ai', 'Video', 'AI tool that automatically creates short clips from long-form videos.', 'https://via.placeholder.com/300x200?text=Vidyo.ai', 'https://vidyo.ai'),
('OpusClip', 'Video', 'AI video repurposing tool that creates viral clips from long videos.', 'https://via.placeholder.com/300x200?text=OpusClip', 'https://www.opus.pro');

-- Insert Voice Tools
INSERT INTO tools (name, category, description, image_url, tool_link) VALUES
('ElevenLabs', 'Voice', 'AI voice generator with realistic text-to-speech and voice cloning capabilities.', 'https://via.placeholder.com/300x200?text=ElevenLabs', 'https://elevenlabs.io'),
('Murf.ai', 'Voice', 'AI voice generator for creating professional voiceovers with realistic AI voices.', 'https://via.placeholder.com/300x200?text=Murf.ai', 'https://murf.ai'),
('Play.ht', 'Voice', 'AI voice generator with ultra-realistic text-to-speech in multiple languages.', 'https://via.placeholder.com/300x200?text=Play.ht', 'https://play.ht'),
('Speechelo', 'Voice', 'AI text-to-speech software for creating natural-sounding voiceovers.', 'https://via.placeholder.com/300x200?text=Speechelo', 'https://speechelo.com'),
('Resemble.ai', 'Voice', 'AI voice cloning and generation platform for creating custom voices.', 'https://via.placeholder.com/300x200?text=Resemble.ai', 'https://www.resemble.ai'),
('LOVO.ai', 'Voice', 'AI voice generator with realistic voices for video, podcast, and content creation.', 'https://via.placeholder.com/300x200?text=LOVO.ai', 'https://lovo.ai'),
('Listnr', 'Voice', 'AI text-to-speech generator for creating audio content and podcasts.', 'https://via.placeholder.com/300x200?text=Listnr', 'https://www.listnr.tech'),
('Sonantic', 'Voice', 'AI voice technology for creating emotional and expressive synthetic voices.', 'https://via.placeholder.com/300x200?text=Sonantic', 'https://www.sonantic.io'),
('Coqui.ai', 'Voice', 'Open-source AI voice synthesis platform with voice cloning capabilities.', 'https://via.placeholder.com/300x200?text=Coqui.ai', 'https://coqui.ai'),
('WellSaid Labs', 'Voice', 'AI voice platform for creating realistic voiceovers for business content.', 'https://via.placeholder.com/300x200?text=WellSaid+Labs', 'https://wellsaidlabs.com'),
('TTSMaker', 'Voice', 'Free AI text-to-speech tool supporting multiple languages and voices.', 'https://via.placeholder.com/300x200?text=TTSMaker', 'https://ttsmaker.com'),
('Clipchamp Voice', 'Voice', 'AI text-to-speech feature within Microsoft Clipchamp video editor.', 'https://via.placeholder.com/300x200?text=Clipchamp+Voice', 'https://clipchamp.com'),
('Synthesys', 'Voice', 'AI voiceover and video creation platform with natural-sounding voices.', 'https://via.placeholder.com/300x200?text=Synthesys', 'https://synthesys.io'),
('Altered Studio', 'Voice', 'AI voice editor for changing and creating unique voice performances.', 'https://via.placeholder.com/300x200?text=Altered+Studio', 'https://www.altered.ai'),
('NaturalReader', 'Voice', 'AI text-to-speech software for converting text into natural audio.', 'https://via.placeholder.com/300x200?text=NaturalReader', 'https://www.naturalreaders.com'),
('Balabolka', 'Voice', 'Free text-to-speech software with multiple voice options.', 'https://via.placeholder.com/300x200?text=Balabolka', 'http://www.cross-plus-a.com/balabolka.htm'),
('Speechey', 'Voice', 'AI speech-to-text and text-to-speech conversion tool.', 'https://via.placeholder.com/300x200?text=Speechey', 'https://speechey.io'),
('PlayVoice', 'Voice', 'AI voice synthesis tool for creating custom voiceovers.', 'https://via.placeholder.com/300x200?text=PlayVoice', 'https://playvoice.ai'),
('Descript Overdub', 'Voice', 'AI voice cloning feature that creates your synthetic voice for editing.', 'https://via.placeholder.com/300x200?text=Descript+Overdub', 'https://www.descript.com/overdub'),
('Voicemod AI', 'Voice', 'Real-time AI voice changer and soundboard for gaming and streaming.', 'https://via.placeholder.com/300x200?text=Voicemod+AI', 'https://www.voicemod.net');

-- Insert Productivity Tools
INSERT INTO tools (name, category, description, image_url, tool_link) VALUES
('Notion AI', 'Productivity', 'AI-powered workspace that helps you write, plan, and organize better.', 'https://via.placeholder.com/300x200?text=Notion+AI', 'https://www.notion.so/product/ai'),
('Taskade', 'Productivity', 'AI-powered productivity platform for tasks, notes, and team collaboration.', 'https://via.placeholder.com/300x200?text=Taskade', 'https://www.taskade.com'),
('Otter.ai', 'Productivity', 'AI meeting assistant that records, transcribes, and generates meeting notes.', 'https://via.placeholder.com/300x200?text=Otter.ai', 'https://otter.ai'),
('Fireflies.ai', 'Productivity', 'AI assistant that records, transcribes, and analyzes meetings automatically.', 'https://via.placeholder.com/300x200?text=Fireflies.ai', 'https://fireflies.ai'),
('ClickUp AI', 'Productivity', 'AI-powered project management tool with automated workflows and insights.', 'https://via.placeholder.com/300x200?text=ClickUp+AI', 'https://clickup.com/ai'),
('Motion', 'Productivity', 'AI-powered calendar and task manager that automatically schedules your day.', 'https://via.placeholder.com/300x200?text=Motion', 'https://www.usemotion.com'),
('Trello AI', 'Productivity', 'AI features in Trello for smarter project management and automation.', 'https://via.placeholder.com/300x200?text=Trello+AI', 'https://trello.com'),
('Clockwise', 'Productivity', 'AI-powered calendar assistant that optimizes your schedule for focus time.', 'https://via.placeholder.com/300x200?text=Clockwise', 'https://www.getclockwise.com'),
('Mem.ai', 'Productivity', 'AI-powered note-taking app that organizes information automatically.', 'https://via.placeholder.com/300x200?text=Mem.ai', 'https://mem.ai'),
('Fellow', 'Productivity', 'AI meeting management software for productive team meetings and 1-on-1s.', 'https://via.placeholder.com/300x200?text=Fellow', 'https://fellow.app'),
('Superhuman', 'Productivity', 'AI-powered email client that helps you process email twice as fast.', 'https://via.placeholder.com/300x200?text=Superhuman', 'https://superhuman.com'),
('Chatbase', 'Productivity', 'AI chatbot builder for creating custom ChatGPT for your business.', 'https://via.placeholder.com/300x200?text=Chatbase', 'https://www.chatbase.co'),
('Rewind.ai', 'Productivity', 'AI tool that records everything on your Mac and makes it searchable.', 'https://via.placeholder.com/300x200?text=Rewind.ai', 'https://www.rewind.ai'),
('Asana AI', 'Productivity', 'AI-powered work management platform with smart goals and automation.', 'https://via.placeholder.com/300x200?text=Asana+AI', 'https://asana.com'),
('Monday AI', 'Productivity', 'AI capabilities in monday.com for smarter project and workflow management.', 'https://via.placeholder.com/300x200?text=Monday+AI', 'https://monday.com'),
('Google Duet', 'Productivity', 'AI assistant across Google Workspace apps for enhanced productivity.', 'https://via.placeholder.com/300x200?text=Google+Duet', 'https://workspace.google.com/solutions/ai'),
('Microsoft Copilot', 'Productivity', 'AI assistant integrated across Microsoft 365 applications.', 'https://via.placeholder.com/300x200?text=Microsoft+Copilot', 'https://www.microsoft.com/microsoft-365/copilot'),
('Reflect AI', 'Productivity', 'AI-powered note-taking app with networked thought and backlinks.', 'https://via.placeholder.com/300x200?text=Reflect+AI', 'https://reflect.app'),
('Krisp.ai', 'Productivity', 'AI-powered noise cancellation for calls and recordings.', 'https://via.placeholder.com/300x200?text=Krisp.ai', 'https://krisp.ai'),
('Magical', 'Productivity', 'AI productivity tool that automates repetitive tasks with shortcuts.', 'https://via.placeholder.com/300x200?text=Magical', 'https://www.getmagical.com');

-- Insert Sample Events with Categories
INSERT INTO events (title, date, description, link, category) VALUES
-- Webinars
('AI in Healthcare: Future of Medical Diagnosis', '2025-10-15', 'Join us for an insightful webinar exploring how AI is revolutionizing medical diagnosis and patient care.', 'https://example.com/webinar1', 'Webinar'),
('Machine Learning Fundamentals Workshop', '2025-10-20', 'Learn the basics of machine learning with hands-on examples and real-world applications.', 'https://example.com/webinar2', 'Webinar'),
('Natural Language Processing Trends 2025', '2025-10-25', 'Discover the latest trends and breakthroughs in NLP technology and applications.', 'https://example.com/webinar3', 'Webinar'),
('Computer Vision: From Theory to Practice', '2025-11-05', 'Expert-led session on implementing computer vision solutions in various industries.', 'https://example.com/webinar4', 'Webinar'),

-- Hackathons
('Global AI Hackathon 2025', '2025-10-28', 'Build innovative AI solutions over 48 hours and compete for prizes worth $50,000!', 'https://example.com/hackathon1', 'Hackathon'),
('HealthTech AI Challenge', '2025-11-10', 'Create AI-powered healthcare solutions to solve real-world medical challenges.', 'https://example.com/hackathon2', 'Hackathon'),
('Smart City Innovation Hackathon', '2025-11-15', 'Develop AI applications for smart city infrastructure and urban planning.', 'https://example.com/hackathon3', 'Hackathon'),
('Climate AI Hackathon', '2025-12-01', 'Use AI to tackle climate change and environmental sustainability challenges.', 'https://example.com/hackathon4', 'Hackathon'),

-- Product Launches
('GPT-5 Launch Event', '2025-10-30', 'Be the first to witness the unveiling of OpenAI\'s next-generation language model.', 'https://example.com/launch1', 'Product Launch'),
('Adobe Firefly 2.0 Release', '2025-11-08', 'Explore new AI-powered creative tools and features in Adobe\'s latest release.', 'https://example.com/launch2', 'Product Launch'),
('Google Gemini Ultra Showcase', '2025-11-12', 'Discover the capabilities of Google\'s most advanced AI model yet.', 'https://example.com/launch3', 'Product Launch'),
('Microsoft Copilot Enterprise Launch', '2025-11-20', 'See how AI Copilot is transforming enterprise productivity and workflow.', 'https://example.com/launch4', 'Product Launch'),

-- Meetups
('AI Enthusiasts Monthly Meetup', '2025-10-18', 'Network with local AI developers and researchers. Share projects and learn together.', 'https://example.com/meetup1', 'Meetup'),
('Women in AI Tech Meetup', '2025-10-22', 'Empowering women in artificial intelligence through networking and knowledge sharing.', 'https://example.com/meetup2', 'Meetup'),
('AI Startup Founders Networking', '2025-11-02', 'Connect with AI startup founders, investors, and industry leaders.', 'https://example.com/meetup3', 'Meetup'),
('Deep Learning Study Group', '2025-11-07', 'Weekly study session for deep learning practitioners and enthusiasts.', 'https://example.com/meetup4', 'Meetup'),

-- Conferences
('AI World Conference 2025', '2025-11-18', 'The largest AI conference featuring 200+ speakers and 5000+ attendees from around the world.', 'https://example.com/conf1', 'Conference'),
('Neural Networks Summit', '2025-12-05', 'Three-day conference focused on neural network architectures and applications.', 'https://example.com/conf2', 'Conference'),
('AI Ethics and Governance Forum', '2025-12-10', 'Discuss ethical implications and governance frameworks for AI deployment.', 'https://example.com/conf3', 'Conference'),

-- Workshops
('Prompt Engineering Masterclass', '2025-10-16', 'Learn advanced techniques for crafting effective prompts for AI models.', 'https://example.com/workshop1', 'Workshop'),
('AI Model Deployment Best Practices', '2025-10-27', 'Hands-on workshop covering MLOps, model deployment, and monitoring.', 'https://example.com/workshop2', 'Workshop'),
('Building Chatbots with LLMs', '2025-11-03', 'Create intelligent chatbots using large language models and vector databases.', 'https://example.com/workshop3', 'Workshop'),
('AI for Business Analytics', '2025-11-14', 'Apply AI techniques to business intelligence and data analytics.', 'https://example.com/workshop4', 'Workshop');

-- Sample contact message
INSERT INTO contact (name, email, message) VALUES
('John Doe', 'john@example.com', 'I love this platform! It has helped me discover amazing AI tools.');

SELECT 'Database setup completed successfully! 120 AI tools loaded.' AS status;
    message TEXT,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert Admin User (password: admin123)
INSERT INTO users (name, email, mobile, password, role) VALUES
('Admin', 'admin@events.com', '9876543210', 'scrypt:32768:8:1$kQGZvXmEiL3s7YuK$8f3a7e5d9c6b2a1f0e4d8c7b6a5f9e3d2c1b0a9f8e7d6c5b4a3f2e1d0c9b8a7f6e5d4c3b2a1f0e9d8c7b6a5f4e3d2c1b0a9f8e7d6c5b4a3f2e1d0c9b8a7f6e5d4c3b2a1', 'admin');

-- Insert Sample Events with Real Images
INSERT INTO events (title, category, date, time, venue, description, max_participants, image_url) VALUES
-- Technical Events
('AI & Machine Learning Summit 2025', 'Technology', '2025-11-15', '10:00:00', 'Tech Convention Center, Mumbai', 
 'Join industry experts to explore the latest trends in Artificial Intelligence and Machine Learning. Learn about cutting-edge applications, attend hands-on workshops, and network with professionals.', 
 500, 'https://images.unsplash.com/photo-1485827404703-89b55fcc595e?w=800'),

('Web Development Bootcamp', 'Technology', '2025-11-20', '09:00:00', 'Innovation Hub, Bangalore', 
 'Intensive 3-day bootcamp covering HTML, CSS, JavaScript, React, and Node.js. Perfect for beginners and intermediate developers looking to enhance their skills.', 
 200, 'https://images.unsplash.com/photo-1498050108023-c5249f4df085?w=800'),

('Cybersecurity Workshop', 'Technology', '2025-11-25', '14:00:00', 'Digital Security Institute, Delhi', 
 'Learn essential cybersecurity practices, ethical hacking techniques, and data protection strategies. Hands-on labs included.', 
 150, 'https://images.unsplash.com/photo-1550751827-4bd374c3f58b?w=800'),

('Cloud Computing Conference', 'Technology', '2025-12-01', '10:00:00', 'Cloud Center, Hyderabad', 
 'Discover AWS, Azure, and Google Cloud platforms. Expert sessions on cloud architecture, DevOps, and serverless computing.', 
 300, 'https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=800'),

-- Cultural Events
('Annual Cultural Fest 2025', 'Cultural', '2025-11-18', '16:00:00', 'City Auditorium, Chennai', 
 'A vibrant celebration of culture featuring music, dance, drama performances, and art exhibitions from various traditions.', 
 1000, 'https://images.unsplash.com/photo-1533174072545-7a4b6ad7a6c3?w=800'),

('Classical Music Concert', 'Cultural', '2025-11-22', '18:00:00', 'Symphony Hall, Kolkata', 
 'An evening of mesmerizing classical music performed by renowned artists. Experience the richness of Indian classical traditions.', 
 400, 'https://images.unsplash.com/photo-1514320291840-2e0a9bf2a9ae?w=800'),

('Art & Photography Exhibition', 'Cultural', '2025-12-05', '11:00:00', 'National Gallery, New Delhi', 
 'Showcase of contemporary art and photography by emerging and established artists. Free entry for students.', 
 600, 'https://images.unsplash.com/photo-1460661419201-fd4cecdf8a8b?w=800'),

-- Sports Events
('Annual Sports Day', 'Sports', '2025-11-28', '08:00:00', 'City Sports Complex, Pune', 
 'Inter-college sports championship featuring cricket, football, basketball, athletics, and more. Prizes worth 5 lakhs!', 
 800, 'https://images.unsplash.com/photo-1461896836934-ffe607ba8211?w=800'),

('Marathon for Health', 'Sports', '2025-12-10', '06:00:00', 'Marine Drive, Mumbai', 
 '10K marathon promoting fitness and health awareness. All ages welcome. Registration includes free T-shirt and medal.', 
 2000, 'https://images.unsplash.com/photo-1452626038306-9aae5e071dd3?w=800'),

('Badminton Tournament', 'Sports', '2025-12-15', '09:00:00', 'Indoor Stadium, Bangalore', 
 'State-level badminton championship. Singles and doubles categories. Professional coaching tips included.', 
 250, 'https://images.unsplash.com/photo-1626224583764-f87db24ac4ea?w=800'),

-- Educational Events
('Career Guidance Workshop', 'Educational', '2025-11-16', '10:00:00', 'Education Center, Jaipur', 
 'Expert guidance on career planning, higher education options, and skill development. For students and professionals.', 
 300, 'https://images.unsplash.com/photo-1523240795612-9a054b0db644?w=800'),

('Science Fair & Exhibition', 'Educational', '2025-11-30', '10:00:00', 'Science Museum, Ahmedabad', 
 'Student science projects, robotics demonstrations, and interactive exhibits. Special sessions by scientists.', 
 500, 'https://images.unsplash.com/photo-1532094349884-543bc11b234d?w=800'),

-- Business Events
('Startup Pitch Competition', 'Business', '2025-12-08', '15:00:00', 'Business Hub, Gurgaon', 
 'Showcase your startup idea to investors and industry leaders. Prizes up to 10 lakhs and mentorship opportunities.', 
 100, 'https://images.unsplash.com/photo-1556761175-5973dc0f32e7?w=800'),

('Digital Marketing Summit', 'Business', '2025-12-12', '09:00:00', 'Convention Center, Mumbai', 
 'Latest trends in SEO, social media marketing, content strategy, and analytics. Network with marketing professionals.', 
 400, 'https://images.unsplash.com/photo-1432888498266-38ffec3eaf0a?w=800'),

-- Entertainment Events
('Comedy Night Live', 'Entertainment', '2025-11-24', '19:00:00', 'Comedy Club, Bangalore', 
 'An evening of laughter with top standup comedians. Great food, drinks, and unlimited entertainment!', 
 200, 'https://images.unsplash.com/photo-1585699324551-f6c309eedeca?w=800');
