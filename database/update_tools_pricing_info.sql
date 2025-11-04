-- Update all 300 tools with pricing information and enhanced features
USE zenithia_ai_db;

-- ============================================
-- WRITING TOOLS (50) - Updated with Pricing
-- ============================================

UPDATE tools SET pricing = 'Freemium', features = 'Free tier available, login required. Paid plans unlock unlimited usage, GPT-4, and advanced features.' WHERE name = 'ChatGPT';
UPDATE tools SET pricing = 'Paid', features = 'Requires subscription ($39-$125/month). 7-day free trial available. No credit card needed for trial.' WHERE name = 'Jasper AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free plan: 2,000 words/month. Login required. Paid plans start at $49/month for unlimited words.' WHERE name = 'Copy.ai';
UPDATE tools SET pricing = 'Freemium', features = 'Free trial available (10,000 words). Login required. Paid plans from $16/month with unlimited words.' WHERE name = 'Writesonic';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 125 words. Login required. Premium starts at $9.95/month for unlimited paraphrasing.' WHERE name = 'Quillbot';
UPDATE tools SET pricing = 'Freemium', features = 'Free plan: 10,000 characters/month. Login required. Paid plans start at $9/month.' WHERE name = 'Rytr';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available with basic features. Login required. Premium $12/month for advanced AI writing.' WHERE name = 'GrammarlyGO';
UPDATE tools SET pricing = 'Paid', features = 'Subscription required ($10-$100/month). Free trial available. Credit card required after trial.' WHERE name = 'Sudowrite';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with limited rewrites. Login required. Premium $9.99/month for unlimited access.' WHERE name = 'Wordtune';
UPDATE tools SET pricing = 'Freemium', features = 'Free trial available. Login required. Paid plans from $19.99/month for unlimited writing.' WHERE name = 'HyperWrite';
UPDATE tools SET pricing = 'Paid', features = 'Subscription starts at $39/month. 3-day free trial. Credit card required for trial.' WHERE name = 'Ink Editor';
UPDATE tools SET pricing = 'Freemium', features = 'Free trial with 2,000 words. Login required. Paid plans from $39/month.' WHERE name = 'Scalenut';
UPDATE tools SET pricing = 'Freemium', features = 'Free plan with basic features. Login required. Premium starts at $19/month.' WHERE name = 'AISEO';
UPDATE tools SET pricing = 'Paid', features = 'Paid plans from $59/month. 7-day money-back guarantee. Credit card required.' WHERE name = 'Headlime';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required via app. Premium $9.99/month for unlimited AI.' WHERE name = 'ParagraphAI';
UPDATE tools SET pricing = 'Freemium', features = 'Free plan: 2,500 words. Login required. Paid from $16/month for unlimited.' WHERE name = 'Texta.ai';
UPDATE tools SET pricing = 'Paid', features = 'Enterprise pricing starts at $299/month. Free trial available. Credit card needed.' WHERE name = 'Copysmith';
UPDATE tools SET pricing = 'Freemium', features = 'Free trial with limited credits. Login required. Paid plans from $29/month.' WHERE name = 'LongShot';
UPDATE tools SET pricing = 'Paid', features = 'Subscription from $39/month. 7-day free trial. Credit card required for trial.' WHERE name = 'Anyword';
UPDATE tools SET pricing = 'Freemium', features = 'Free Notion account works. Login required. Notion AI add-on $10/month per user.' WHERE name = 'Notion AI';
UPDATE tools SET pricing = 'Paid', features = 'Subscription starts at $44.99/month. 5-day trial for $1. Credit card required.' WHERE name = 'Frase';
UPDATE tools SET pricing = 'Freemium', features = 'Free plan: 5,000 words. Login required. Paid from $19/month for unlimited.' WHERE name = 'ContentBot';
UPDATE tools SET pricing = 'Freemium', features = 'Free plan available. Login required. Paid plans from $12/month for advanced features.' WHERE name = 'Simplified';
UPDATE tools SET pricing = 'Freemium', features = 'Free trial available. Login required. Paid plans from $35/month.' WHERE name = 'Peppertype.ai';
UPDATE tools SET pricing = 'Paid', features = 'Subscription from $49.99/month. 3-day free trial. Credit card required.' WHERE name = 'Closers Copy';
UPDATE tools SET pricing = 'Paid', features = 'Plans from $27/month. 5-day money-back guarantee. Credit card required.' WHERE name = 'Article Forge';
UPDATE tools SET pricing = 'Paid', features = 'Team plans from $18/user/month. Free trial available. Credit card needed.' WHERE name = 'Writer';
UPDATE tools SET pricing = 'Free', features = 'Completely free Chrome extension. Login required with Google account. No paid plans.' WHERE name = 'Compose AI';
UPDATE tools SET pricing = 'Paid', features = 'Subscription $79/month. 7-day money-back guarantee. Credit card required.' WHERE name = 'ShortlyAI';
UPDATE tools SET pricing = 'Freemium', features = 'Free trial with limited credits. Login required. Paid from $19/month.' WHERE name = 'Copymatic';
UPDATE tools SET pricing = 'Paid', features = 'Enterprise pricing only. Custom quote required. Credit card for billing.' WHERE name = 'Wordsmith';
UPDATE tools SET pricing = 'Freemium', features = 'Free plan with basic checks. Login required. Premium $9.95/month for advanced.' WHERE name = 'Outwrite';
UPDATE tools SET pricing = 'Freemium', features = 'Free limited checks. Login required. Premium from $30/month for unlimited.' WHERE name = 'ProWritingAid';
UPDATE tools SET pricing = 'Freemium', features = 'Free web version available. No login required. Desktop app $19.99 one-time.' WHERE name = 'Hemingway Editor';
UPDATE tools SET pricing = 'Freemium', features = 'Free basic editing. Login required. Premium plans from $9.95/month.' WHERE name = 'Wordvice AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free limited usage. Login required. Premium from $10/month for unlimited.' WHERE name = 'Smodin';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with 10 creations/day. Login required. Pro from $5.59/month.' WHERE name = 'TextCortex';
UPDATE tools SET pricing = 'Freemium', features = 'Free plan available. Login required. Paid from $19/month for teams.' WHERE name = 'Narrato';
UPDATE tools SET pricing = 'Paid', features = 'Subscription from $99/month. 7-day free trial. Credit card required.' WHERE name = 'ContentEdge';
UPDATE tools SET pricing = 'Freemium', features = 'Free trial with limited words. Login required. Paid from $39/month.' WHERE name = 'Writerly';
UPDATE tools SET pricing = 'Paid', features = 'Plans from $29/month. 3-day free trial. Credit card required for trial.' WHERE name = 'Kafkai';
UPDATE tools SET pricing = 'Paid', features = 'Subscription from $49/month. 7-day money-back guarantee. Credit card needed.' WHERE name = 'CopyMonkey';
UPDATE tools SET pricing = 'Freemium', features = 'Free plan: 2,000 words. Login required. Paid from $9/month for unlimited.' WHERE name = 'Thundercontent';
UPDATE tools SET pricing = 'Paid', features = 'Plans from $15/month. Free trial available. Credit card required for trial.' WHERE name = 'Katteb';
UPDATE tools SET pricing = 'Freemium', features = 'Free trial available. Login required. Paid plans from $49/month.' WHERE name = 'WordHero';
UPDATE tools SET pricing = 'Paid', features = 'Subscription from $19/month. 7-day free trial. Credit card required.' WHERE name = 'Bramework';
UPDATE tools SET pricing = 'Freemium', features = 'Free plan with limited queries. Login required. Paid from $23/month.' WHERE name = 'NEURONwriter';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Premium from $19/month for advanced AI.' WHERE name = 'BlogNLP';
UPDATE tools SET pricing = 'Paid', features = 'Subscription from $20/month. Free trial available. Credit card required.' WHERE name = 'WriteMage';
UPDATE tools SET pricing = 'Freemium', features = 'Free plan with limited credits. Login required. Paid from $9.99/month.' WHERE name = 'Eskritor';

-- ============================================
-- CODING TOOLS (50) - Updated with Pricing
-- ============================================

UPDATE tools SET pricing = 'Freemium', features = 'Free for students/OSS. Login required. Individual $10/month, Business $19/user/month.' WHERE name = 'GitHub Copilot';
UPDATE tools SET pricing = 'Freemium', features = 'Free basic tier. Login required. Pro $12/month for advanced features.' WHERE name = 'Tabnine';
UPDATE tools SET pricing = 'Freemium', features = 'Free trial available. Login required. Pro $20/month for unlimited AI.' WHERE name = 'Replit Ghostwriter';
UPDATE tools SET pricing = 'Free', features = 'Completely free for individuals. Login with AWS account required. No credit card needed.' WHERE name = 'Amazon CodeWhisperer';
UPDATE tools SET pricing = 'Free', features = 'Forever free for individuals. No login required. No credit card needed. Unlimited usage.' WHERE name = 'Codeium';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with ChatGPT integration. Login required. Plus plans for advanced models.' WHERE name = 'ChatGPT for Developers';
UPDATE tools SET pricing = 'Freemium', features = 'Free trial for 14 days. Login required. Pro $20/month for unlimited AI.' WHERE name = 'Cursor';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with limited credits. Login required. Paid from $10/month.' WHERE name = 'SourceAI';
UPDATE tools SET pricing = 'Freemium', features = 'Free for open-source. Login required. Paid plans from $79/month for teams.' WHERE name = 'Mintlify';
UPDATE tools SET pricing = 'Free', features = 'Free IDE extension. Login required. No credit card needed. Unlimited test generation.' WHERE name = 'Codium AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Pro $9.99/month for unlimited.' WHERE name = 'AskCodi';
UPDATE tools SET pricing = 'Free', features = 'Open-source and free. No login required. Can run locally. No credit card needed.' WHERE name = 'CodeT5';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with limited queries. Login required. Premium from $9.99/month.' WHERE name = 'Blackbox AI';
UPDATE tools SET pricing = 'Free', features = 'Completely free web tool. No login required. No credit card needed.' WHERE name = 'AutoRegex';
UPDATE tools SET pricing = 'Free', features = 'Free search engine. No login required. Instant answers. No credit card needed.' WHERE name = 'Phind';
UPDATE tools SET pricing = 'Free', features = 'Free with Google account. Login required. No credit card needed for basic use.' WHERE name = 'Bard for Coding';
UPDATE tools SET pricing = 'Freemium', features = 'Free individual plan. Login required. Teams from $20/user/month.' WHERE name = 'Warp AI';
UPDATE tools SET pricing = 'Free', features = 'Free VS Code extension. Login required for AI features. No credit card needed.' WHERE name = 'CodeGPT';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Pro from $19/month for priority support.' WHERE name = 'Adrenaline';
UPDATE tools SET pricing = 'Free', features = 'Free for individual developers. Login required. Enterprise pricing for teams.' WHERE name = 'Grit';
UPDATE tools SET pricing = 'Free', features = 'Free Microsoft tool. No login required. Web-based. No credit card needed.' WHERE name = 'Sketch2Code';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Pro from $9/month for advanced AI.' WHERE name = 'Cody by Sourcegraph';
UPDATE tools SET pricing = 'Freemium', features = 'Free trial available. Login required. Paid from $25/month per user.' WHERE name = 'MutableAI';
UPDATE tools SET pricing = 'Free', features = 'Free IDE extension. Login required. No credit card needed. Unlimited usage.' WHERE name = 'Safurai';
UPDATE tools SET pricing = 'Free', features = 'Free and open-source. No login required. Works in VS Code. No credit card needed.' WHERE name = 'Continue';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with limited queries. Login required. Pro from $35/month.' WHERE name = 'Lookup';
UPDATE tools SET pricing = 'Paid', features = 'Enterprise only. Custom pricing. Login required. Credit card for billing.' WHERE name = 'CodeComplete';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Paid plans from $10/month.' WHERE name = 'Airplane Autopilot';
UPDATE tools SET pricing = 'Freemium', features = 'Free with limitations. Login required. Pro from $20/month for full features.' WHERE name = 'Debuild';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Paid plans for advanced features.' WHERE name = 'Builder.io';
UPDATE tools SET pricing = 'Freemium', features = 'Free plan with limited apps. Login required. Paid from $29/month.' WHERE name = 'Brancher.ai';
UPDATE tools SET pricing = 'Freemium', features = 'Free beta access. Login required. Pricing TBA for full release.' WHERE name = 'Kombai';
UPDATE tools SET pricing = 'Freemium', features = 'Free with Vercel account. Login required. Unlimited generations in beta.' WHERE name = 'v0 by Vercel';
UPDATE tools SET pricing = 'Paid', features = 'Subscription required. Login needed. Pricing starts at $29/month.' WHERE name = 'Marblism';
UPDATE tools SET pricing = 'Freemium', features = 'Free beta access. Login required. Paid plans coming soon.' WHERE name = 'Tempo Labs';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with AI features. Login required. Pro from $20/month.' WHERE name = 'CodeSandbox AI';
UPDATE tools SET pricing = 'Free', features = 'Free terminal autocomplete. Login required. No credit card needed.' WHERE name = 'Fig AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Pro from $15/month for teams.' WHERE name = 'Zencoder';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with limited completions. Login required. Pro $9.99/month.' WHERE name = 'CodeSquire';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Enterprise pricing for teams.' WHERE name = 'Lookup';
UPDATE tools SET pricing = 'Free', features = 'Free VS Code extension. Login required. No credit card needed.' WHERE name = 'Stenography';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with limited fixes. Login required. Pro from $6.99/month.' WHERE name = 'Kodezi';
UPDATE tools SET pricing = 'Freemium', features = 'Free for small repos. Login required. Paid from $19/month for larger codebases.' WHERE name = 'What The Diff';
UPDATE tools SET pricing = 'Free', features = 'Free and open-source. Login optional. No credit card needed. Self-hostable.' WHERE name = 'Refact.ai';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Pro from $29/month for unlimited.' WHERE name = 'Sweep AI';
UPDATE tools SET pricing = 'Paid', features = 'Enterprise pricing only. Login required. Credit card for billing.' WHERE name = 'Second';
UPDATE tools SET pricing = 'Freemium', features = 'Free beta access. Login required. Paid plans from $20/month.' WHERE name = 'Buildt';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Pro from $30/month for teams.' WHERE name = 'Cosine';
UPDATE tools SET pricing = 'Freemium', features = 'Free plan with basic features. Login required. Pro from $10/month.' WHERE name = 'Codemate';
UPDATE tools SET pricing = 'Freemium', features = 'Free for open-source. Login required. Paid from $12/month per repo.' WHERE name = 'Ellipsis';

-- Note: Continuing with Image, Video, Voice, and Productivity in next batch...
