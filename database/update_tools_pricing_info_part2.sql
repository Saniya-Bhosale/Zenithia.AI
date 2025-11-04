-- Part 2: Update remaining tools with pricing information
USE zenithia_ai_db;

-- ============================================
-- IMAGE TOOLS (50) - Updated with Pricing
-- ============================================

UPDATE tools SET pricing = 'Paid', features = 'Subscription $10-$120/month. Login required. Credit card needed. No free tier.' WHERE name = 'Midjourney';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with ChatGPT Plus. Login required. Plus $20/month for DALL-E 3.' WHERE name = 'DALL-E 3';
UPDATE tools SET pricing = 'Free', features = 'Completely free and open-source. Can run locally. No login required. No credit card.' WHERE name = 'Stable Diffusion';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 150 tokens/day. Login required. Paid from $10/month for more.' WHERE name = 'Leonardo AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free with Adobe account. Login required. 25 credits/month free. More in paid plans.' WHERE name = 'Adobe Firefly';
UPDATE tools SET pricing = 'Freemium', features = 'Free Canva account works. Login required. Pro $12.99/month for unlimited AI.' WHERE name = 'Canva AI';
UPDATE tools SET pricing = 'Free', features = 'Completely free. Login with Discord required. Unlimited generations. No credit card.' WHERE name = 'BlueWillow';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 1,000 images/day. Login required. Pro $15/month for commercial use.' WHERE name = 'Playground AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 25 credits. Login required. Paid plans from $10/month.' WHERE name = 'DreamStudio';
UPDATE tools SET pricing = 'Free', features = 'Free with login. No credit card needed. Unlimited image breeding.' WHERE name = 'Artbreeder';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 5 credits/day. Login required. Pro from $6.99/month for unlimited.' WHERE name = 'NightCafe';
UPDATE tools SET pricing = 'Free', features = 'Completely free. No login required. Unlimited generations. No credit card needed.' WHERE name = 'Craiyon';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with limited energy. Login required. Premium from $9.99/month.' WHERE name = 'Deep Dream Generator';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 5 credits/day. Login required. Pro from $9.99/month for unlimited.' WHERE name = 'Starryai';
UPDATE tools SET pricing = 'Free', features = 'Free with Microsoft account. Login required. Unlimited generations. No credit card.' WHERE name = 'Bing Image Creator';
UPDATE tools SET pricing = 'Freemium', features = 'Free basic editing. Login required. Fotor Pro $8.99/month for AI features.' WHERE name = 'Fotor AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Premium from $16/month for HD images.' WHERE name = 'Photosonic';
UPDATE tools SET pricing = 'Free', features = 'Free on Replicate. Login required. Pay per use (very affordable). No subscription.' WHERE name = 'Pixray';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with limited credits. Login required. Spark Premium from $7.99/month.' WHERE name = 'CF Spark';
UPDATE tools SET pricing = 'Paid', features = 'Included with Jasper subscription ($39-$125/month). Login required. Credit card needed.' WHERE name = 'Jasper Art';
UPDATE tools SET pricing = 'Freemium', features = 'Free basic editing. Login required. Premium $7.99/month for AI tools.' WHERE name = 'Pixlr AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 1 image. Login required. Subscription from $9/month for unlimited.' WHERE name = 'Remove.bg';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 5 images. Login required. Paid from $9/month for more enhancements.' WHERE name = 'Let\'s Enhance';
UPDATE tools SET pricing = 'Paid', features = 'One-time $199 or subscription $9.99/month. Free trial. Credit card required.' WHERE name = 'Topaz Photo AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 10 images. Login optional. Pro from $5/month for unlimited.' WHERE name = 'Cleanup.pictures';
UPDATE tools SET pricing = 'Paid', features = 'Subscription $11.99/month. 7-day free trial. Credit card required for trial.' WHERE name = 'Luminar Neo';
UPDATE tools SET pricing = 'Paid', features = 'Subscription $22.99/month with Adobe Creative Cloud. 7-day free trial.' WHERE name = 'Photoshop AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with limited credits. Login required. Pro from $19/month.' WHERE name = 'ImgCreator.AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 125 credits. Login required. Standard $12/month for more.' WHERE name = 'Runway ML';
UPDATE tools SET pricing = 'Freemium', features = 'Free basic editing. Login required. Gold $12.99/month for AI features.' WHERE name = 'Picsart AI';
UPDATE tools SET pricing = 'Paid', features = 'Subscription from $29/month. Credit card required. No free tier available.' WHERE name = 'Profile Picture AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 1 profile pic. Login required. Premium from $9.99 for more styles.' WHERE name = 'PFPMaker';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with credits. Login required. Pro from $10/month for more.' WHERE name = 'Hotpot AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 100 images/month. Login required. Basic $12/month for more.' WHERE name = 'Getimg.ai';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with daily limit. Login required. Premium from $7/month.' WHERE name = 'Freepik AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 25 images. Login required. Basic $8/month for priority.' WHERE name = 'Ideogram';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 10 images. Login required. Subscription from $29/month for more.' WHERE name = 'Shutterstock AI';
UPDATE tools SET pricing = 'Free', features = 'Free research preview. Login with Google. No credit card needed. Limited access.' WHERE name = 'Imagen AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free basic plan. Login required. Pro from $12.95/month for AI features.' WHERE name = 'Visme AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with limited credits. Login required. Pro from $29/month.' WHERE name = 'Designs.ai';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 3 images. Login required. Pro $19/month for unlimited edits.' WHERE name = 'Designify';
UPDATE tools SET pricing = 'Free', features = 'Completely free. No login required. Web-based drawing tool. No credit card.' WHERE name = 'AutoDraw';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Pro from $24/month for commercial use.' WHERE name = 'Krea AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with tools. Login required. Pro $9/month for advanced features.' WHERE name = 'Clipdrop';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with limited exports. Login required. Pro from $12/month.' WHERE name = 'Recraft.ai';
UPDATE tools SET pricing = 'Free', features = 'Completely free. No login required. Unlimited generations. No credit card.' WHERE name = 'Mage.space';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 100 assets/month. Login required. Pro from $29/month for more.' WHERE name = 'Scenario.gg';
UPDATE tools SET pricing = 'Free', features = 'Free image generator. No login required. Unlimited use. No credit card needed.' WHERE name = 'Imggen AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with daily limits. Login required. Premium from $9.99/month.' WHERE name = 'SeaArt AI';
UPDATE tools SET pricing = 'Free', features = 'Free Mac app. No login required. Run Stable Diffusion locally. No credit card.' WHERE name = 'Diffusion Bee';

-- ============================================
-- VIDEO TOOLS (50) - Updated with Pricing
-- ============================================

UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 125 credits. Login required. Standard $12/month, Pro $28/month.' WHERE name = 'Runway Gen-2';
UPDATE tools SET pricing = 'Freemium', features = 'Free trial available. Login required. Paid from $22/month for video creation.' WHERE name = 'Synthesia';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 3 videos/month. Login required. Standard $23/month for unlimited.' WHERE name = 'Pictory';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 1 hour transcription. Login required. Creator $12/month for 10 hours.' WHERE name = 'Descript';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 10 videos. Login required. Basic $19/month for more videos.' WHERE name = 'Lumen5';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 10 mins/month. Login required. Plus $20/month for 15 mins.' WHERE name = 'InVideo AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free trial with 1 credit. Login required. Creator $30/month for videos.' WHERE name = 'HeyGen';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 3 mins/month. Login required. Standard $28/month for more.' WHERE name = 'Fliki';
UPDATE tools SET pricing = 'Freemium', features = 'Free trial: 20 credits. Login required. Lite $5.9/month for basic videos.' WHERE name = 'D-ID';
UPDATE tools SET pricing = 'Freemium', features = 'Free trial available. Login required. Basic $23/month for video creation.' WHERE name = 'Elai.io';
UPDATE tools SET pricing = 'Paid', features = 'Subscription from $35/month. Free trial. Credit card required for trial.' WHERE name = 'Colossyan';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 3 videos. Login required. Basic $20/month for unlimited.' WHERE name = 'Steve AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Pro from $49/month for more clips.' WHERE name = 'Munch';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 7 days trial. Login required. Starter $9/month for AI clipping.' WHERE name = 'OpusClip';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with limited exports. Login required. Pro from $29.99/month.' WHERE name = 'Vidyo.ai';
UPDATE tools SET pricing = 'Paid', features = 'Subscription from $49/month per user. Free trial. Credit card required.' WHERE name = 'Peech';
UPDATE tools SET pricing = 'Paid', features = 'Enterprise pricing only. Custom quote. Login required. Credit card for billing.' WHERE name = 'Rephrase.ai';
UPDATE tools SET pricing = 'Freemium', features = 'Free trial: 1 video. Login required. Lite $30/month for basic plan.' WHERE name = 'Hour One';
UPDATE tools SET pricing = 'Paid', features = 'Subscription from $30/month. Free trial available. Credit card required.' WHERE name = 'Deepbrain AI';
UPDATE tools SET pricing = 'Paid', features = 'Enterprise tier with custom pricing. Login required. Credit card needed.' WHERE name = 'Synthesia STUDIO';
UPDATE tools SET pricing = 'Paid', features = 'Enterprise pricing only. Custom quote. Login required for trial.' WHERE name = 'Wibbitz';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 2 videos. Login required. Essential $20/month for more.' WHERE name = 'Raw Shorts';
UPDATE tools SET pricing = 'Freemium', features = 'Free basic plan. Login required. Professional $16/month for advanced.' WHERE name = 'Animoto';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with watermark. Login required. Pro $24/month no watermark.' WHERE name = 'Kapwing';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Pro $24/month for advanced features.' WHERE name = 'VEED.IO';
UPDATE tools SET pricing = 'Freemium', features = 'Free basic plan. Login required. Essentials $11.99/month for more.' WHERE name = 'Clipchamp';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 12 videos/year. Login required. Plus $9.99/month for unlimited.' WHERE name = 'FlexClip';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 15 mins export. Login required. Creator $20/month for more.' WHERE name = 'Wave.video';
UPDATE tools SET pricing = 'Paid', features = 'Subscription from $30/month. Free trial with 1 credit. Credit card needed.' WHERE name = 'Movio';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 300 credits. Login required. Pro $5/month for more credits.' WHERE name = 'Kaiber';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with limited access. Login required. Pro from $10/month.' WHERE name = 'Pika Labs';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 10 secs. Login required. Standard $19/month for longer videos.' WHERE name = 'Neural Frames';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with credits. Login required. Pro from $9.90/month.' WHERE name = 'Cutout.Pro';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 5 clips. Login required. Pro $9.99/month for unlimited removals.' WHERE name = 'Unscreen';
UPDATE tools SET pricing = 'Paid', features = 'One-time $29 for Premiere Pro plugin. Credit card required. No subscription.' WHERE name = 'AutoPod';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Standard $15/month for HD recording.' WHERE name = 'Riverside.fm';
UPDATE tools SET pricing = 'Freemium', features = 'Free trial available. Login required. Pro $10/month for AI editing.' WHERE name = 'Gling';
UPDATE tools SET pricing = 'Paid', features = 'One-time $99 or $7/month subscription. Free trial. Credit card required.' WHERE name = 'FireCut';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with watermark. Login required. Unlimited $20/month no watermark.' WHERE name = 'Submagic';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Pro from $20/month for features.' WHERE name = 'Captions.ai';
UPDATE tools SET pricing = 'Paid', features = 'Enterprise pricing only. Custom quote. Login required. Credit card needed.' WHERE name = 'GliaCloud';
UPDATE tools SET pricing = 'Paid', features = 'Subscription from $47/month. 14-day trial. Credit card required.' WHERE name = 'Vidnami';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 2 videos. Login required. Create $19/month for more videos.' WHERE name = 'Zubtitle';
UPDATE tools SET pricing = 'Paid', features = 'Subscription from $199/month. Free trial. Credit card required.' WHERE name = 'Shuffll';
UPDATE tools SET pricing = 'Free', features = 'Free research project. Waitlist access. No credit card needed. Limited availability.' WHERE name = 'Make-a-Video';
UPDATE tools SET pricing = 'Free', features = 'Free research project. Demo only. No public access yet. No credit card.' WHERE name = 'Phenaki';
UPDATE tools SET pricing = 'Paid', features = 'One-time purchase from $79.95. Free trial available. Credit card for purchase.' WHERE name = 'Movavi';
UPDATE tools SET pricing = 'Paid', features = 'Subscription $179.88/year or one-time $299.99. Free trial available.' WHERE name = 'Camtasia';
UPDATE tools SET pricing = 'Freemium', features = 'Free beta access. Login required. Pricing TBA for full release.' WHERE name = 'Wonder Studio';
UPDATE tools SET pricing = 'Paid', features = 'Subscription $299/year or one-time purchase. Free trial. Credit card needed.' WHERE name = 'Topaz Video AI';

-- ============================================
-- VOICE TOOLS (50) - Updated with Pricing
-- ============================================

UPDATE tools SET pricing = 'Freemium', features = 'Free: 10,000 chars/month. Login required. Starter $5/month for 30K chars.' WHERE name = 'ElevenLabs';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 10 mins. Login required. Basic $19/month for 2 hours audio.' WHERE name = 'Murf AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 12,500 words. Login required. Creator $39/month for 500K words.' WHERE name = 'Play.ht';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Basic $29/month for voice cloning.' WHERE name = 'Resemble AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free limited access. Login required. Premium $9.99/month for unlimited.' WHERE name = 'Speechify';
UPDATE tools SET pricing = 'Freemium', features = 'Included with Descript subscription. Login required. Creator $12/month.' WHERE name = 'Descript Overdub';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 1,000 words/month. Login required. Solo $9/month for 240K/year.' WHERE name = 'Listnr';
UPDATE tools SET pricing = 'Paid', features = 'Subscription from $49/month. Free trial available. Credit card required.' WHERE name = 'WellSaid Labs';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 5 mins. Login required. Basic $24/month for 2 hours audio.' WHERE name = 'Lovo.ai';
UPDATE tools SET pricing = 'Paid', features = 'One-time $47. Money-back guarantee. Credit card required for purchase.' WHERE name = 'Speechelo';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 5M chars/month. Login with AWS. Pay as you go after free tier.' WHERE name = 'Amazon Polly';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 1M chars/month. Login with Google. Pay $4 per 1M chars after.' WHERE name = 'Google Text-to-Speech';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 0.5M chars/month. Login with Azure. Pay $4 per 1M after.' WHERE name = 'Microsoft Azure Speech';
UPDATE tools SET pricing = 'Freemium', features = 'Free online version. Login optional. Plus $9.99/month for offline use.' WHERE name = 'Natural Reader';
UPDATE tools SET pricing = 'Free', features = 'Completely free. No login required. Unlimited TTS. No credit card needed.' WHERE name = 'TTSMaker';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Pro from $14.99/month for more voices.' WHERE name = 'Voice.ai';
UPDATE tools SET pricing = 'Freemium', features = 'Free basic voices. Login required. Pro $12/month for premium voices.' WHERE name = 'Voicemod';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with credits. Login required. Plus from $7/month for more.' WHERE name = 'FakeYou';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 300 chars. Login required. Creator $10/month for more.' WHERE name = 'Uberduck';
UPDATE tools SET pricing = 'Paid', features = 'Custom enterprise pricing. Demo required. Credit card for billing.' WHERE name = 'Respeecher';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Developer plans from $40/month.' WHERE name = 'iSpeech';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with limited voices. Login required. Pro from $29/month.' WHERE name = 'Replica Studios';
UPDATE tools SET pricing = 'Freemium', features = 'Free trial available. Login required. Pro from $29/month for features.' WHERE name = 'Altered AI';
UPDATE tools SET pricing = 'Paid', features = 'Pay per booking. Login required for voice actors. Commission-based platform.' WHERE name = 'Voicebooking';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 30 secs/month. Login required. Basic $14.99/month for more.' WHERE name = 'Typecast';
UPDATE tools SET pricing = 'Freemium', features = 'Included with Clipchamp subscription. Login required. Premium $11.99/month.' WHERE name = 'Clipchamp Voice';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with low latency. Login required. Pro from $99/month for commercial.' WHERE name = 'LMNT';
UPDATE tools SET pricing = 'Paid', features = 'Custom pricing per project. Contact for quote. Credit card for billing.' WHERE name = 'ReadSpeaker';
UPDATE tools SET pricing = 'Paid', features = 'Custom licensing fees. Contact for pricing. Credit card required.' WHERE name = 'Acapela';
UPDATE tools SET pricing = 'Paid', features = 'Custom pricing per voice. Contact for demo. Credit card for licensing.' WHERE name = 'CereProc';
UPDATE tools SET pricing = 'Paid', features = 'Acquired by Spotify. Pricing TBA. Login required. Previously enterprise only.' WHERE name = 'Sonantic';
UPDATE tools SET pricing = 'Free', features = 'Free and open-source. No login required. Self-hosted. No credit card needed.' WHERE name = 'Coqui TTS';
UPDATE tools SET pricing = 'Free', features = 'Free open-source model. No login required. Run locally. No credit card.' WHERE name = 'Bark';
UPDATE tools SET pricing = 'Free', features = 'Free research project. Demo available. No public API. No credit card.' WHERE name = 'AudioLM';
UPDATE tools SET pricing = 'Free', features = 'Free open-source. No login required. Self-hosted TTS. No credit card.' WHERE name = 'Tortoise TTS';
UPDATE tools SET pricing = 'Free', features = 'Free research project by Microsoft. Limited access. No credit card.' WHERE name = 'Vall-E';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with limited conversions. Login required. Pro from $9.99/month.' WHERE name = 'Voicify AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with credits. Login required. Converter $9.99/month for more.' WHERE name = 'Kits AI';
UPDATE tools SET pricing = 'Free', features = 'Free web tool. No login required. Unlimited use. No credit card needed.' WHERE name = 'Vocal Remover';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 10 mins. Login required. Lite $15/month for 300 mins.' WHERE name = 'LALAL.AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Pro from $19/month for API access.' WHERE name = 'Voiceful.io';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 3 hours recording. Login required. Storyteller $11.99/month for 20 hours.' WHERE name = 'Podcastle';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Standard $9/month for enhanced speech.' WHERE name = 'Adobe Podcast';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 60 mins/week. Login required. Pro $8/month for unlimited noise cancellation.' WHERE name = 'Krisp';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 30 mins. Login required. Starter $15/month for 10 hours editing.' WHERE name = 'Cleanvoice';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 300 mins/month. Login required. Pro $16.99/month for 1,200 mins.' WHERE name = 'Otter.ai';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 5 hours. Login required. Pay as you go from $0.00025/sec.' WHERE name = 'AssemblyAI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: $200 credit. Login required. Pay as you go $0.0043/min.' WHERE name = 'Deepgram';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 5 hours. Login required. Pay as you go $0.02/min after.' WHERE name = 'Rev AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 30 mins. Login required. Premium $10/month for 5 hours transcription.' WHERE name = 'Sonix';

-- ============================================
-- PRODUCTIVITY TOOLS (50) - Updated with Pricing
-- ============================================

UPDATE tools SET pricing = 'Freemium', features = 'Free with Notion account. Login required. AI add-on $10/month per user.' WHERE name = 'Notion AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free plan available. Login required. Unlimited $7/month for AI features.' WHERE name = 'ClickUp AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with basic AI. Login required. Mem X $8.33/month for unlimited AI.' WHERE name = 'Mem';
UPDATE tools SET pricing = 'Freemium', features = 'Free plan available. Login required. Pro $19/month for unlimited AI.' WHERE name = 'Taskade';
UPDATE tools SET pricing = 'Paid', features = 'Subscription $34/month per user. 7-day free trial. Credit card required.' WHERE name = 'Motion';
UPDATE tools SET pricing = 'Freemium', features = 'Free basic plan. Login required. Starter $8/month for advanced features.' WHERE name = 'Reclaim AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Pro $3.99/month for unlimited tasks.' WHERE name = 'Trevor AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with limits. Login required. Teams $6.75/user/month.' WHERE name = 'Clockwise';
UPDATE tools SET pricing = 'Paid', features = 'Subscription $30/month. Free trial available. Credit card required for trial.' WHERE name = 'Superhuman';
UPDATE tools SET pricing = 'Paid', features = 'Subscription from $7/month. 14-day free trial. Credit card required.' WHERE name = 'SaneBox';
UPDATE tools SET pricing = 'Free', features = 'Completely free Chrome extension. Login required. No credit card needed.' WHERE name = 'Magical';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 100 tasks/month. Login required. Starter $19.99/month for more.' WHERE name = 'Zapier';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 1,000 ops/month. Login required. Core $9/month for 10K ops.' WHERE name = 'Make (Integromat)';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Pro from $10/month for premium actions.' WHERE name = 'Bardeen';
UPDATE tools SET pricing = 'Freemium', features = 'Free plan available. Login required. Pro $10/month for unlimited recording.' WHERE name = 'Fireflies.ai';
UPDATE tools SET pricing = 'Freemium', features = 'Free: unlimited recording. Login required. Business $15/user/month for features.' WHERE name = 'Grain';
UPDATE tools SET pricing = 'Free', features = 'Completely free. No login required. Unlimited recording. No credit card needed.' WHERE name = 'tl;dv';
UPDATE tools SET pricing = 'Free', features = 'Completely free. Login required. Unlimited recording. No credit card needed.' WHERE name = 'Fathom';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 5 hours/month. Login required. Professional $20/month for more.' WHERE name = 'Sembly AI';
UPDATE tools SET pricing = 'Free', features = 'Free Chrome extension. Login required. Unlimited transcripts. No credit card.' WHERE name = 'Tactiq';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Pro from $20/month for advanced AI.' WHERE name = 'Bearly';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 2 PDFs/day. Login required. Plus $5/month for unlimited PDFs.' WHERE name = 'ChatPDF';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with limits. Login required. Pro $15/month for unlimited chats.' WHERE name = 'PDF.ai';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Expert $14.99/month for unlimited pages.' WHERE name = 'Humata';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with basic features. Login required. Pro from $15/month.' WHERE name = 'Sharly AI';
UPDATE tools SET pricing = 'Free', features = 'Free Chrome extension. Login with Google. Unlimited queries. No credit card.' WHERE name = 'Merlin';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Pro $9.9/month for unlimited use.' WHERE name = 'Monica';
UPDATE tools SET pricing = 'Free', features = 'Free browser extension. Login required. No credit card needed. Unlimited use.' WHERE name = 'Wiseone';
UPDATE tools SET pricing = 'Free', features = 'Completely free. Login required. No credit card needed. Unlimited highlights.' WHERE name = 'Glasp';
UPDATE tools SET pricing = 'Freemium', features = 'Free unlimited basic search. Login optional. Pro $20/month for advanced features.' WHERE name = 'Perplexity AI';
UPDATE tools SET pricing = 'Free', features = 'Completely free search engine. No login required. Unlimited searches.' WHERE name = 'You.com';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 20 searches/month. Login optional. Premium $8.99/month for unlimited.' WHERE name = 'Consensus';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier: 5,000 credits. Login required. Plus $10/month for 12K credits.' WHERE name = 'Elicit';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 3 summaries. Login required. Premium $4.99/month for unlimited.' WHERE name = 'Scholarcy';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Premium $12/month for advanced features.' WHERE name = 'SciSpace';
UPDATE tools SET pricing = 'Freemium', features = 'Free: 3 presentations/month. Login required. Pro $15/month for unlimited.' WHERE name = 'Slides AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Pro $12/month for advanced templates.' WHERE name = 'Beautiful.ai';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier with limited AI. Login required. Pro $10/month for unlimited.' WHERE name = 'Tome';
UPDATE tools SET pricing = 'Freemium', features = 'Free unlimited presentations. Login required. Pro from $8/month for features.' WHERE name = 'Gamma';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Pro $9.99/month for advanced features.' WHERE name = 'Decktopus';
UPDATE tools SET pricing = 'Paid', features = 'Subscription from $4/month per user. Free trial available. Credit card required.' WHERE name = 'TimeHero';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Pro $4/month for advanced features.' WHERE name = 'Todoist AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free basic plan. Login required. Premium $5.99/month for advanced AI.' WHERE name = 'Any.do';
UPDATE tools SET pricing = 'Paid', features = 'Subscription $20/month. 14-day free trial. Credit card required for trial.' WHERE name = 'Sunsama';
UPDATE tools SET pricing = 'Paid', features = 'Subscription $34/month. 7-day free trial. Credit card required for trial.' WHERE name = 'Akiflow';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Premium $5/month for AI features.' WHERE name = 'Trello AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Standard $8/user/month for AI.' WHERE name = 'Monday.com AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Starter $10.99/month for AI features.' WHERE name = 'Asana AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Pro $10/month per user for AI.' WHERE name = 'Coda AI';
UPDATE tools SET pricing = 'Freemium', features = 'Free tier available. Login required. Standard $10/user/month for AI features.' WHERE name = 'Fibery AI';

-- Verify the updates
SELECT COUNT(*) as total_updated, 
       SUM(CASE WHEN pricing IS NOT NULL THEN 1 ELSE 0 END) as with_pricing,
       SUM(CASE WHEN features IS NOT NULL THEN 1 ELSE 0 END) as with_features
FROM tools;
