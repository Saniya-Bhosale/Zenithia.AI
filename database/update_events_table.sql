-- Update Events Table to add category column
USE zenithia_ai_db;

-- Add category column if it doesn't exist
ALTER TABLE events ADD COLUMN IF NOT EXISTS category VARCHAR(50) DEFAULT 'General';

-- Clear existing events (optional)
DELETE FROM events;

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
