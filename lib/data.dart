class XevenService {
  final String name;
  final String description;

  final List<Benefits> benefits;

  XevenService({
    required this.name,
    required this.description,
    required this.benefits,
  });
}

class Benefits {
  final String title;
  final String description;

  Benefits({required this.title, required this.description});
}

List<XevenService> xevenServices = [
  XevenService(
    name: 'AI Development',
    description:
        'At Xeven Solutions, innovation meets intelligence. Our team of experts utilizes cutting-edge technologies to craft custom AI solutions that seamlessly integrate with your unique requirements, revolutionizing how you operate.',
    benefits: [
      Benefits(
          title: 'Cutting-Edge Expertise:',
          description:
              ''' Our team of experts is proficient in utilizing the latest technologies to develop custom AI solutions tailored to your needs. '''),
      Benefits(
          title: 'Seamless Integration:',
          description:
              ''' We are dedicated to seamlessly integrating our AI solutions with your existing infrastructure, ensuring a smooth transition. '''),
      Benefits(
          title: 'Comprehensive AI Development Services: ',
          description:
              ''' From machine learning to natural language processing, our AI Development Services elevate your organization's capabilities. '''),
      Benefits(
          title: 'Empowering Organizational Capabilities:',
          description:
              '''  Our mission is to empower organizations like yours to not only adapt but thrive in the dynamic landscape of AI technology.'''),
    ],
  ),
  XevenService(
    name: 'AI Chatbot Development:',
    description:
        ' Our AI Chatbot Development Services are designed to transform customer interactions for businesses. We specialize in crafting Intelligent chatbots that engage in human-like dialogue.',
    benefits: [
      Benefits(
          title: 'Smart Dialogue:',
          description:
              ''' We specialize in crafting chatbots capable of engaging in intelligent conversations. Our chatbots are designed to understand user queries and provide relevant responses. '''),
      Benefits(
          title: 'Task Automation:',
          description:
              ''' Our chatbots excel in automating tasks, streamlining processes, and reducing manual intervention. It significantly improves efficiency. '''),
      Benefits(
          title: '24/7 Customer Support:  ',
          description:
              ''' With our AI chatbot solutions, businesses can offer round-the-clock customer support. Our chatbots are available 24/7, providing instant assistance to customers.'''),
      Benefits(
          title: 'Elevated Online Presence:',
          description:
              ''' Experience the future of customer interaction and elevate your brand’s online presence with our AI Chatbot Services today.'''),
    ],
  ),
  XevenService(
    name: 'ChatGPT Integration',
    description:
        ' Elevate user experiences by leveraging our ChatGPT Integration Services into your business processes. It enables you to leverage the advanced capabilities of NLP and ML to provide more intuitive and personalized interactions for your customers.',
    benefits: [
      Benefits(
          title: 'Revolutionize Business Operations:',
          description:
              ''' Revolutionize your business operations and reach newer levels of success with our ChatGPT Integration Services.'''),
      Benefits(
          title: 'Functionality Enhancement:',
          description:
              ''' Enhance the functionality of your existing software platforms by leveraging the power of NLP and ML.
              Personalized'''),
      Benefits(
          title: 'Customer Support: ',
          description:
              ''' With our ChatGPT Integration Services, you can offer personalized customer support to increase user satisfaction.'''),
      Benefits(
          title: 'Task Automation & Competetive Advantage:',
          description:
              ''' Automate repetitive tasks with ChatGPT Integration and thrive in a highly competitive business landscape.'''),
    ],
  ),
  XevenService(
    name: 'Machine & Deep Learning',
    description:
        'Machine Learning (ML) has transformed numerous industries, with the ML market forecasted to soar to \$204.30 billion by 2024. Leveraging our proficiency in AI development solutions, we harness the power of machine and deep learning to create innovative systems.',
    benefits: [
      Benefits(
          title: 'Client-Centric Approach:',
          description:
              '''Our seasoned ML engineers collaborate closely with clients to understand their challenges, goals, and requirements.'''),
      Benefits(
          title: 'Adaptive Systems Development:',
          description:
              '''We develop systems that not only solve today's challenges but also adapt and evolve to meet the evolving needs of our clients.'''),
      Benefits(
          title: 'Machine Learning Development Excellence:',
          description:
              '''We leverage advanced algorithms and techniques to build robust models that drive actionable insights.'''),
      Benefits(
          title: 'Next-Gen Solutions:',
          description:
              '''With our expertise in Machine Learning Development Services, we develop future-proof solutions that are affordable, flexible, and scalable..'''),
    ],
  ),
  XevenService(
    name: 'AI Development',
    description:
        'At Xeven Solutions, innovation meets intelligence. Our team of experts utilizes cutting-edge technologies to craft custom AI solutions that seamlessly integrate with your unique requirements, revolutionizing how you operate.',
    benefits: [
      Benefits(
          title: 'Cutting-Edge Expertise',
          description:
              '''Our team of experts is proficient in utilizing the latest technologies to develop custom AI solutions tailored to your needs. '''),
      Benefits(
          title: 'Seamless Integration:',
          description:
              '''We are dedicated to seamlessly integrating our AI solutions with your existing infrastructure, ensuring a smooth transition. '''),
      Benefits(
          title: 'Comprehensive AI Development Services: ',
          description:
              '''From machine learning to natural language processing, our AI Development Services elevate your organization's capabilities. '''),
      Benefits(
          title: 'Empowering Organizational Capabilities:',
          description:
              ''' Our mission is to empower organizations like yours to not only adapt but thrive in the dynamic landscape of AI technology.'''),
    ],
  ),
  XevenService(
    name: 'AI Chatbot Development',
    description:
        'Our AI Chatbot Development Services are designed to transform customer interactions for businesses. We specialize in crafting Intelligent chatbots that engage in human-like dialogue.',
    benefits: [
      Benefits(
          title: 'Smart Dialogue:',
          description:
              ''' We specialize in crafting chatbots capable of engaging in intelligent conversations. Our chatbots are designed to understand user queries and provide relevant responses. '''),
      Benefits(
          title: 'Task Automation:',
          description:
              '''Our chatbots excel in automating tasks, streamlining processes, and reducing manual intervention. It significantly improves efficiency. '''),
      Benefits(
          title: '24/7 Customer Support:  ',
          description:
              ''' With our AI chatbot solutions, businesses can offer round-the-clock customer support. Our chatbots are available 24/7, providing instant assistance to customers.'''),
      Benefits(
          title: 'Elevated Online Presence:',
          description:
              '''Experience the future of customer interaction and elevate your brand’s online presence with our AI Chatbot Services today.'''),
    ],
  ),
  XevenService(
    name: 'ChatGPT Integration',
    description:
        'Elevate user experiences by leveraging our ChatGPT Integration Services into your business processes. It enables you to leverage the advanced capabilities of NLP and ML to provide more intuitive and personalized interactions for your customers.',
    benefits: [
      Benefits(
          title: 'Revolutionize Business Operations:',
          description:
              '''Revolutionize your business operations and reach newer levels of success with our ChatGPT Integration Services.'''),
      Benefits(
          title: 'Functionality Enhancement:',
          description:
              '''Enhance the functionality of your existing software platforms by leveraging the power of NLP and ML.
              Personalized'''),
      Benefits(
          title: 'Customer Support: ',
          description:
              '''With our ChatGPT Integration Services, you can offer personalized customer support to increase user satisfaction.'''),
      Benefits(
          title: 'Task Automation & Competetive Advantage:',
          description:
              '''Automate repetitive tasks with ChatGPT Integration and thrive in a highly competitive business landscape.'''),
    ],
  ),
  XevenService(
    name: 'Machine & Deep Learning',
    description:
        'Machine Learning (ML) has transformed numerous industries, with the ML market forecasted to soar to \$204.30 billion by 2024. Leveraging our proficiency in AI development solutions, we harness the power of machine and deep learning to create innovative systems.',
    benefits: [
      Benefits(
          title: 'Client-Centric Approach:',
          description:
              '''Our seasoned ML engineers collaborate closely with clients to understand their challenges, goals, and requirements.'''),
      Benefits(
          title: 'Adaptive Systems Development:',
          description:
              '''We develop systems that not only solve today's challenges but also adapt and evolve to meet the evolving needs of our clients.'''),
      Benefits(
          title: 'Machine Learning Development Excellence:',
          description:
              '''We leverage advanced algorithms and techniques to build robust models that drive actionable insights.'''),
      Benefits(
          title: 'Next-Gen Solutions:',
          description:
              '''With our expertise in Machine Learning Development Services, we develop future-proof solutions that are affordable, flexible, and scalable..'''),
    ],
  ),
  XevenService(
    name: 'AI Development',
    description:
        'At Xeven Solutions, innovation meets intelligence. Our team of experts utilizes cutting-edge technologies to craft custom AI solutions that seamlessly integrate with your unique requirements, revolutionizing how you operate.',
    benefits: [
      Benefits(
          title: 'Cutting-Edge Expertise',
          description:
              '''Our team of experts is proficient in utilizing the latest technologies to develop custom AI solutions tailored to your needs. '''),
      Benefits(
          title: 'Seamless Integration:',
          description:
              '''We are dedicated to seamlessly integrating our AI solutions with your existing infrastructure, ensuring a smooth transition. '''),
      Benefits(
          title: 'Comprehensive AI Development Services: ',
          description:
              '''From machine learning to natural language processing, our AI Development Services elevate your organization's capabilities. '''),
      Benefits(
          title: 'Empowering Organizational Capabilities:',
          description:
              ''' Our mission is to empower organizations like yours to not only adapt but thrive in the dynamic landscape of AI technology.'''),
    ],
  ),
  XevenService(
    name: 'AI Chatbot Development',
    description:
        'Our AI Chatbot Development Services are designed to transform customer interactions for businesses. We specialize in crafting Intelligent chatbots that engage in human-like dialogue.',
    benefits: [
      Benefits(
          title: 'Smart Dialogue:',
          description:
              ''' We specialize in crafting chatbots capable of engaging in intelligent conversations. Our chatbots are designed to understand user queries and provide relevant responses. '''),
      Benefits(
          title: 'Task Automation:',
          description:
              '''Our chatbots excel in automating tasks, streamlining processes, and reducing manual intervention. It significantly improves efficiency. '''),
      Benefits(
          title: '24/7 Customer Support:  ',
          description:
              ''' With our AI chatbot solutions, businesses can offer round-the-clock customer support. Our chatbots are available 24/7, providing instant assistance to customers.'''),
      Benefits(
          title: 'Elevated Online Presence:',
          description:
              '''Experience the future of customer interaction and elevate your brand’s online presence with our AI Chatbot Services today.'''),
    ],
  ),
  XevenService(
    name: 'ChatGPT Integration',
    description:
        'Elevate user experiences by leveraging our ChatGPT Integration Services into your business processes. It enables you to leverage the advanced capabilities of NLP and ML to provide more intuitive and personalized interactions for your customers.',
    benefits: [
      Benefits(
          title: 'Revolutionize Business Operations:',
          description:
              '''Revolutionize your business operations and reach newer levels of success with our ChatGPT Integration Services.'''),
      Benefits(
          title: 'Functionality Enhancement:',
          description:
              '''Enhance the functionality of your existing software platforms by leveraging the power of NLP and ML.
              Personalized'''),
      Benefits(
          title: 'Customer Support: ',
          description:
              '''With our ChatGPT Integration Services, you can offer personalized customer support to increase user satisfaction.'''),
      Benefits(
          title: 'Task Automation & Competetive Advantage:',
          description:
              '''Automate repetitive tasks with ChatGPT Integration and thrive in a highly competitive business landscape.'''),
    ],
  ),
  XevenService(
    name: 'Machine & Deep Learning',
    description:
        'Machine Learning (ML) has transformed numerous industries, with the ML market forecasted to soar to \$204.30 billion by 2024. Leveraging our proficiency in AI development solutions, we harness the power of machine and deep learning to create innovative systems.',
    benefits: [
      Benefits(
          title: 'Client-Centric Approach:',
          description:
              '''Our seasoned ML engineers collaborate closely with clients to understand their challenges, goals, and requirements.'''),
      Benefits(
          title: 'Adaptive Systems Development:',
          description:
              '''We develop systems that not only solve today's challenges but also adapt and evolve to meet the evolving needs of our clients.'''),
      Benefits(
          title: 'Machine Learning Development Excellence:',
          description:
              '''We leverage advanced algorithms and techniques to build robust models that drive actionable insights.'''),
      Benefits(
          title: 'Next-Gen Solutions:',
          description:
              '''With our expertise in Machine Learning Development Services, we develop future-proof solutions that are affordable, flexible, and scalable..'''),
    ],
  ),
];

List<String> appBarMenu = [
  'Services',
  'Salesforce',
  'Industries',
  'Portfolio',
  'Company',
  'Resources'
];
List<String> appBarMenu_services = [
  'Al Development Services',
  'Al Chatbot Development',
  'Predictive Modelling',
  'Mobile App Development',
  'Chat GPT Integrations',
  'Custom Software',
  'Natural Language Processing',
  'Digital Marketing',
  'Machine Learning',
  'DevOps',
  'Computer Vision',
  'Custom Web Development',
  'Staff Augmentation',
  'IJI UX Design',
];

List<String> appBarMenu_industries = [
  'HealthTech',
  'EdTech',
  'FinTech',
  'GreenTech',
  'Internet of Things',
  'Retail',
  'Al Diagnostics',
  'E-commerce',
  'Smart Healthcare',
  'HIPAA Compliance',
];
List<String> appBarMenu_company = [
  'About us ',
  'Life at Xevern',
];
List<String> appBarMenu_Resource = [
  'Blogs',
  'Gallery',
  'Careers',
];
