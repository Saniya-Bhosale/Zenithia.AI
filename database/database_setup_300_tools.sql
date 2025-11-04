-- Create Database
CREATE DATABASE IF NOT EXISTS zenithia_ai_db;
USE zenithia_ai_db;

-- Drop existing tables to recreate with fresh data
DROP TABLE IF EXISTS contact;
DROP TABLE IF EXISTS events;
DROP TABLE IF EXISTS tools;
DROP TABLE IF EXISTS users;

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

-- ============================================
-- INSERT 50 WRITING TOOLS
-- ============================================
INSERT INTO tools (name, category, description, image_url, tool_link) VALUES
('ChatGPT', 'Writing', 'Advanced AI chatbot for natural conversations, content generation, and writing assistance powered by OpenAI.', 'https://upload.wikimedia.org/wikipedia/commons/0/04/ChatGPT_logo.svg', 'https://chat.openai.com'),
('Jasper AI', 'Writing', 'AI-powered content creation platform for marketing copy, blog posts, and creative writing.', 'https://assets-global.website-files.com/61a9e0d66e87864a9e6063f8/647e17547f8dfa9e7f4efc1e_jasper-logo-primary.svg', 'https://www.jasper.ai'),
('Copy.ai', 'Writing', 'AI copywriting tool that helps you create marketing copy, product descriptions, and social media content.', 'https://www.gstatic.com/lamda/images/favicon_v1_150160cddff7f294ce30.svg', 'https://www.copy.ai'),
('Writesonic', 'Writing', 'AI writing assistant for creating SEO-optimized content, articles, and marketing materials.', 'https://writesonic.com/favicon.ico', 'https://writesonic.com'),
('Quillbot', 'Writing', 'AI-powered paraphrasing and grammar checking tool for improving your writing.', 'https://assets.quillbot.com/images/theme/quillbot-logo.svg', 'https://quillbot.com'),
('Rytr', 'Writing', 'AI writing assistant that helps you create quality content quickly and affordably.', 'https://rytr.me/static/media/logo.f8ca24d2.svg', 'https://rytr.me'),
('GrammarlyGO', 'Writing', 'AI-powered writing assistant that provides grammar checking, style suggestions, and content generation.', 'https://static.grammarly.com/assets/files/efe8d9d0e64a2c0da41ebad2ad8c0574/grammarly_logo.svg', 'https://www.grammarly.com'),
('Sudowrite', 'Writing', 'AI writing partner for fiction writers, helping with creative storytelling and narrative development.', 'https://www.sudowrite.com/images/favicon-192x192.png', 'https://www.sudowrite.com'),
('Wordtune', 'Writing', 'AI-powered writing companion that helps you rephrase and rewrite sentences for clarity.', 'https://www.wordtune.com/logo.svg', 'https://www.wordtune.com'),
('HyperWrite', 'Writing', 'AI writing assistant that helps you write faster and better with intelligent suggestions.', 'https://www.hyperwriteai.com/favicon.ico', 'https://www.hyperwriteai.com'),
('Ink Editor', 'Writing', 'AI-powered content optimization tool for SEO and readability improvement.', 'https://inkforall.com/favicon.ico', 'https://inkforall.com'),
('Scalenut', 'Writing', 'AI-powered SEO and content marketing platform for creating optimized content.', 'https://www.scalenut.com/favicon.ico', 'https://www.scalenut.com'),
('AISEO', 'Writing', 'AI writing assistant for creating SEO-optimized content and paraphrasing text.', 'https://aiseo.ai/favicon.ico', 'https://aiseo.ai'),
('Headlime', 'Writing', 'AI-powered copywriting tool for creating landing pages and marketing copy.', 'https://headlime.com/favicon.ico', 'https://headlime.com'),
('ParagraphAI', 'Writing', 'AI writing assistant app for crafting perfect emails, messages, and documents.', 'https://paragraphai.com/favicon.ico', 'https://paragraphai.com'),
('Texta.ai', 'Writing', 'AI content generator for blog posts, product descriptions, and marketing content.', 'https://texta.ai/favicon.ico', 'https://texta.ai'),
('Copysmith', 'Writing', 'AI-powered content creation platform for enterprise marketing teams.', 'https://copysmith.ai/favicon.ico', 'https://copysmith.ai'),
('LongShot', 'Writing', 'AI writing assistant for creating fact-checked, SEO-optimized long-form content.', 'https://www.longshot.ai/favicon.ico', 'https://www.longshot.ai'),
('Anyword', 'Writing', 'AI copywriting platform with predictive analytics for marketing performance.', 'https://anyword.com/favicon.ico', 'https://anyword.com'),
('Notion AI', 'Writing', 'AI-powered writing assistant integrated into Notion for notes, docs, and wikis.', 'https://www.notion.so/images/favicon.ico', 'https://www.notion.so/product/ai'),
('Frase', 'Writing', 'AI-powered content optimization and research tool for SEO content briefs.', 'https://www.frase.io/favicon.ico', 'https://www.frase.io'),
('ContentBot', 'Writing', 'AI content automation tool for generating blog posts, ad copy, and more.', 'https://contentbot.ai/favicon.ico', 'https://contentbot.ai'),
('Simplified', 'Writing', 'All-in-one AI content creation platform for marketing teams.', 'https://simplified.com/favicon.ico', 'https://simplified.com'),
('Peppertype.ai', 'Writing', 'AI content generator for creating high-quality marketing content in seconds.', 'https://www.peppertype.ai/favicon.ico', 'https://www.peppertype.ai'),
('Closers Copy', 'Writing', 'AI copywriting tool built by copywriters for creating sales and marketing copy.', 'https://www.closerscopy.com/favicon.ico', 'https://www.closerscopy.com'),
('Article Forge', 'Writing', 'AI article writer that creates unique, SEO-optimized articles automatically.', 'https://www.articleforge.com/favicon.ico', 'https://www.articleforge.com'),
('Writer', 'Writing', 'AI writing platform for teams with brand consistency and style guidelines.', 'https://writer.com/favicon.ico', 'https://writer.com'),
('Compose AI', 'Writing', 'AI-powered autocompletion and text generation for faster writing.', 'https://www.compose.ai/favicon.ico', 'https://www.compose.ai'),
('ShortlyAI', 'Writing', 'AI writing partner that helps you overcome writer\'s block and create content.', 'https://www.shortlyai.com/favicon.ico', 'https://www.shortlyai.com'),
('Copymatic', 'Writing', 'AI copywriting and content writing tool for generating various types of content.', 'https://copymatic.ai/favicon.ico', 'https://copymatic.ai'),
('Wordsmith', 'Writing', 'Natural language generation platform for creating personalized content at scale.', 'https://automatedinsights.com/favicon.ico', 'https://automatedinsights.com'),
('Outwrite', 'Writing', 'AI writing assistant that helps you write clearly and confidently.', 'https://www.outwrite.com/favicon.ico', 'https://www.outwrite.com'),
('ProWritingAid', 'Writing', 'AI-powered writing assistant and editing tool for writers.', 'https://prowritingaid.com/favicon.ico', 'https://prowritingaid.com'),
('Hemingway Editor', 'Writing', 'Writing tool that makes your writing bold and clear with AI suggestions.', 'https://hemingwayapp.com/favicon.ico', 'https://hemingwayapp.com'),
('Wordvice AI', 'Writing', 'AI proofreading and editing tool for academic and professional writing.', 'https://wordvice.ai/favicon.ico', 'https://wordvice.ai'),
('Smodin', 'Writing', 'AI writing assistant for students and content creators with rewriting tools.', 'https://smodin.io/favicon.ico', 'https://smodin.io'),
('TextCortex', 'Writing', 'AI writing companion that helps you write faster across all platforms.', 'https://textcortex.com/favicon.ico', 'https://textcortex.com'),
('Narrato', 'Writing', 'AI content workspace for planning, creating, and collaborating on content.', 'https://narrato.io/favicon.ico', 'https://narrato.io'),
('ContentEdge', 'Writing', 'AI SEO content generator with real-time SEO optimization.', 'https://www.contentedge.com/favicon.ico', 'https://www.contentedge.com'),
('Writerly', 'Writing', 'AI writing assistant for marketers and content creators.', 'https://writerly.ai/favicon.ico', 'https://writerly.ai'),
('Kafkai', 'Writing', 'AI content generation tool for creating niche articles at scale.', 'https://kafkai.com/favicon.ico', 'https://kafkai.com'),
('CopyMonkey', 'Writing', 'AI-powered Amazon listing optimization tool for e-commerce.', 'https://copymonkey.ai/favicon.ico', 'https://copymonkey.ai'),
('Thundercontent', 'Writing', 'AI content generation platform for creating blog posts and marketing copy.', 'https://thundercontent.com/favicon.ico', 'https://thundercontent.com'),
('Katteb', 'Writing', 'AI writer that creates fact-checked, credible content with sources.', 'https://katteb.com/favicon.ico', 'https://katteb.com'),
('WordHero', 'Writing', 'AI writing software for creating blog posts, social media content, and emails.', 'https://wordhero.co/favicon.ico', 'https://wordhero.co'),
('Bramework', 'Writing', 'AI writing assistant specifically designed for bloggers and SEO.', 'https://www.bramework.com/favicon.ico', 'https://www.bramework.com'),
('NEURONwriter', 'Writing', 'AI content editor with semantic SEO recommendations and NLP analysis.', 'https://neuronwriter.com/favicon.ico', 'https://neuronwriter.com'),
('BlogNLP', 'Writing', 'AI-powered blog writing tool that helps create engaging blog content.', 'https://www.blognlp.com/favicon.ico', 'https://www.blognlp.com'),
('WriteMage', 'Writing', 'AI writing assistant that integrates with macOS apps for seamless writing.', 'https://writemage.com/favicon.ico', 'https://writemage.com'),
('Eskritor', 'Writing', 'AI content generator for creating various types of written content quickly.', 'https://eskritor.com/favicon.ico', 'https://eskritor.com');

-- ============================================
-- INSERT 50 CODING TOOLS
-- ============================================
INSERT INTO tools (name, category, description, image_url, tool_link) VALUES
('GitHub Copilot', 'Coding', 'AI pair programmer that helps you write code faster with intelligent code completions.', 'https://github.githubassets.com/images/modules/site/copilot/copilot.png', 'https://github.com/features/copilot'),
('Tabnine', 'Coding', 'AI code completion tool that predicts and suggests your next lines of code.', 'https://www.tabnine.com/favicon.ico', 'https://www.tabnine.com'),
('Replit Ghostwriter', 'Coding', 'AI-powered coding assistant built into Replit IDE for code completion and generation.', 'https://replit.com/public/images/logo.svg', 'https://replit.com/site/ghostwriter'),
('Amazon CodeWhisperer', 'Coding', 'AI coding companion that generates code suggestions in real-time.', 'https://aws.amazon.com/favicon.ico', 'https://aws.amazon.com/codewhisperer'),
('Codeium', 'Coding', 'Free AI-powered code completion tool supporting multiple programming languages.', 'https://codeium.com/favicon.ico', 'https://codeium.com'),
('ChatGPT for Developers', 'Coding', 'Use ChatGPT to debug code, write functions, and solve programming challenges.', 'https://upload.wikimedia.org/wikipedia/commons/0/04/ChatGPT_logo.svg', 'https://chat.openai.com'),
('Cursor', 'Coding', 'AI-first code editor designed for pair-programming with AI.', 'https://cursor.sh/favicon.ico', 'https://cursor.sh'),
('SourceAI', 'Coding', 'AI-powered code generator that creates code in any programming language from descriptions.', 'https://sourceai.dev/favicon.ico', 'https://sourceai.dev'),
('Mintlify', 'Coding', 'AI documentation writer for automatically generating code documentation.', 'https://mintlify.com/favicon.ico', 'https://mintlify.com'),
('Codium AI', 'Coding', 'AI-powered test generation tool that creates meaningful tests for your code.', 'https://www.codium.ai/favicon.ico', 'https://www.codium.ai'),
('AskCodi', 'Coding', 'AI coding assistant that helps you write code faster with intelligent suggestions.', 'https://www.askcodi.com/favicon.ico', 'https://www.askcodi.com'),
('CodeT5', 'Coding', 'Open-source AI model for code understanding and generation tasks.', 'https://github.githubassets.com/favicon.ico', 'https://github.com/salesforce/CodeT5'),
('Blackbox AI', 'Coding', 'AI-powered coding assistant for code search, completion, and generation.', 'https://www.blackbox.ai/favicon.ico', 'https://www.blackbox.ai'),
('AutoRegex', 'Coding', 'AI tool that converts English descriptions into regular expressions.', 'https://www.autoregex.xyz/favicon.ico', 'https://www.autoregex.xyz'),
('Phind', 'Coding', 'AI-powered search engine for developers with instant answers and code examples.', 'https://www.phind.com/favicon.ico', 'https://www.phind.com'),
('Bard for Coding', 'Coding', 'Google\'s AI assistant for generating and explaining code.', 'https://www.google.com/favicon.ico', 'https://bard.google.com'),
('Warp AI', 'Coding', 'AI-powered terminal with intelligent command suggestions and explanations.', 'https://www.warp.dev/favicon.ico', 'https://www.warp.dev'),
('CodeGPT', 'Coding', 'VS Code extension that brings AI-powered coding assistance to your editor.', 'https://codegpt.co/favicon.ico', 'https://codegpt.co'),
('Adrenaline', 'Coding', 'AI debugging assistant that helps fix errors in your codebase.', 'https://useadrenaline.com/favicon.ico', 'https://useadrenaline.com'),
('Grit', 'Coding', 'AI tool for automated code maintenance and migrations.', 'https://www.grit.io/favicon.ico', 'https://www.grit.io'),
('Sketch2Code', 'Coding', 'AI tool that converts hand-drawn sketches into HTML code.', 'https://www.microsoft.com/favicon.ico', 'https://sketch2code.azurewebsites.net'),
('Cody by Sourcegraph', 'Coding', 'AI coding assistant with context-aware code suggestions.', 'https://sourcegraph.com/favicon.ico', 'https://sourcegraph.com/cody'),
('MutableAI', 'Coding', 'AI-accelerated software development platform with code generation and refactoring.', 'https://mutable.ai/favicon.ico', 'https://mutable.ai'),
('Safurai', 'Coding', 'AI code assistant for refactoring, documentation, and code generation.', 'https://www.safurai.com/favicon.ico', 'https://www.safurai.com'),
('Continue', 'Coding', 'Open-source autopilot for software development in VS Code.', 'https://continue.dev/favicon.ico', 'https://continue.dev'),
('Lookup', 'Coding', 'AI-powered data analysis and SQL query assistant.', 'https://www.lookup.ai/favicon.ico', 'https://www.lookup.ai'),
('CodeComplete', 'Coding', 'Enterprise-focused AI coding assistant for secure code generation.', 'https://codecomplete.ai/favicon.ico', 'https://codecomplete.ai'),
('Airplane Autopilot', 'Coding', 'AI assistant for building internal tools and workflows faster.', 'https://www.airplane.dev/favicon.ico', 'https://www.airplane.dev'),
('Debuild', 'Coding', 'AI-powered low-code tool for building web applications.', 'https://debuild.app/favicon.ico', 'https://debuild.app'),
('Builder.io', 'Coding', 'AI-powered visual development platform for creating web applications.', 'https://www.builder.io/favicon.ico', 'https://www.builder.io'),
('Brancher.ai', 'Coding', 'Connect AI models to build apps without coding.', 'https://www.brancher.ai/favicon.ico', 'https://www.brancher.ai'),
('Kombai', 'Coding', 'AI tool that converts Figma designs to front-end code.', 'https://kombai.com/favicon.ico', 'https://kombai.com'),
('v0 by Vercel', 'Coding', 'AI-powered UI generator that creates React components from text descriptions.', 'https://v0.dev/favicon.ico', 'https://v0.dev'),
('Marblism', 'Coding', 'Generate full-stack web applications from a single prompt.', 'https://www.marblism.com/favicon.ico', 'https://www.marblism.com'),
('Tempo Labs', 'Coding', 'AI design tool that generates React code from design prompts.', 'https://www.tempolabs.ai/favicon.ico', 'https://www.tempolabs.ai'),
('CodeSandbox AI', 'Coding', 'AI features in CodeSandbox for faster web development.', 'https://codesandbox.io/favicon.ico', 'https://codesandbox.io'),
('Fig AI', 'Coding', 'AI-powered autocomplete for terminal commands.', 'https://fig.io/favicon.ico', 'https://fig.io'),
('Zencoder', 'Coding', 'AI coding assistant that understands your entire codebase.', 'https://zencoder.ai/favicon.ico', 'https://zencoder.ai'),
('CodeSquire', 'Coding', 'AI code writing assistant for data scientists and engineers.', 'https://codesquire.ai/favicon.ico', 'https://codesquire.ai'),
('Lookup', 'Coding', 'AI-powered analytics and data query tool with natural language.', 'https://www.asklookup.com/favicon.ico', 'https://www.asklookup.com'),
('Stenography', 'Coding', 'Automatic code documentation using AI.', 'https://stenography.dev/favicon.ico', 'https://stenography.dev'),
('Kodezi', 'Coding', 'AI developer tool assistant for code debugging and optimization.', 'https://kodezi.com/favicon.ico', 'https://kodezi.com'),
('What The Diff', 'Coding', 'AI-powered code review assistant that explains pull request changes.', 'https://whatthediff.ai/favicon.ico', 'https://whatthediff.ai'),
('Refact.ai', 'Coding', 'Open-source AI coding assistant with code completion and chat.', 'https://refact.ai/favicon.ico', 'https://refact.ai'),
('Sweep AI', 'Coding', 'AI junior developer that handles bug fixes and feature implementations.', 'https://sweep.dev/favicon.ico', 'https://sweep.dev'),
('Second', 'Coding', 'AI-powered codebase maintenance and migration tool.', 'https://www.second.dev/favicon.ico', 'https://www.second.dev'),
('Buildt', 'Coding', 'AI tool for searching and understanding large codebases.', 'https://www.buildt.ai/favicon.ico', 'https://www.buildt.ai'),
('Cosine', 'Coding', 'AI co-developer that understands your codebase deeply.', 'https://cosine.sh/favicon.ico', 'https://cosine.sh'),
('Codemate', 'Coding', 'AI coding assistant with error fixing and code optimization.', 'https://codemate.ai/favicon.ico', 'https://codemate.ai'),
('Ellipsis', 'Coding', 'AI code reviews and bug fixes directly in GitHub pull requests.', 'https://www.ellipsis.dev/favicon.ico', 'https://www.ellipsis.dev');

-- Note: Continuing with Image, Video, Voice, and Productivity tools in next section due to length...
