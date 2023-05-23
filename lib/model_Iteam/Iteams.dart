class Item{
  String imgpath;
  double price;
  String location;
  String descrap;
  String name;
  String hours;
  String article;
  String Code;
  String Time;
  String mobile;
  String certifica;

  Item({required this.imgpath, required this.Time,
    required this.mobile,required this.Code,
    required this.article,required this.certifica,
    required this.name,required this.hours,
    required this.price,this.location='main branch',required this.descrap});
}
List products=[
  Item(
      name:' CISSP',
      hours:'24 hours on demand video' ,
      article: '13 articles',
      Code: ' 18 Coding Exercises',
      Time: 'Full lifetime access',
      mobile: 'Accesson mobile and Tv',
      certifica: 'Certificate of Completion',
      imgpath: 'images/fl1.jpg',
      price:699,
      location:'Samar Shop',
      descrap: 'Accelerate your cybersecurity career with the CISSP certification.Earning the CISSP proves you have what it takes to effectively design, implement and manage a best-in-class cybersecurity program. With a CISSP, you validate your expertise and become an (ISC)² member, unlocking a broad array of exclusive resources, educational tools, and peer-to-peer networking opportunities.Prove your skills, advance your career, help earn the salary you want and gain the support of a community of cybersecurity leaders here to support you throughout your career') ,
  Item(
      name:'CISA',
      hours:'20 hours on demand video' ,
      article: '14 articles',
      Code: ' 20 Coding Exercises',
      Time: 'Full lifetime access',
      mobile: 'Accesson mobile ',
      certifica: 'Certificate of Completion',
      imgpath: 'images/fl2.jpg',
      price:99.9,
      location:'Samar Shop',
      descrap: 'Certified Information Systems Auditor (CISA)'
          ' CISA works with partners to defend against today’s threats and collaborate to build a more secure and resilient infrastructure for the future.CISA is the operational lead for federal cybersecurity and the national coordinator for critical infrastructure security and resilience. We are designed for collaboration and partnership. Learn about our layered mission to reduce risk to the nation’s cyber and physical infrastructure.MissionWe lead the national effort to understand, manage, and reduce risk to our cyber and physical infrastructure. '),
  Item(
      name:'CDPSE',
      hours:'28 hours on demand video' ,
      article: '12 articles',
      Code: ' 18 Coding Exercises',
      Time: 'Full lifetime access',
      mobile: 'Accesson mobile and Tv',
      certifica: 'Certificate of Completion',
      imgpath: 'images/fl3.jpg',
      price:66.99,
      location:'Samar Shop',
      descrap: 'Certified Data Privacy Solutions Engineer™ (CDPSE®) Certified Data Privacy Solutions Engineer™ (CDPSE®) is focused on validating the technical skills and knowledge it takes to assess, build and implement comprehensive data privacy measures. CDPSE holders help fill the technical privacy skills gap so that your organization has competent privacy technologists to build and implement solutions that mitigate risk and enhance efficiency.'),
  Item(
      name:'CRISC',
      hours:'30 hours on demand video' ,
      article: '15 articles',
      Code: ' 19 Coding Exercises',
      Time: 'Full lifetime access',
      mobile: 'Accesson mobile and Tv',
      certifica: 'Certificate of Completion',
      imgpath: 'images/fl4.jpg',
      price:400,
      location:'Samar Shop',
      descrap: 'Certification in Risk and Information Systems Control® (CRISC®) A Certification in Risk and Information Systems Control® (CRISC®) will make you a Risk Management expert. Studying a proactive approach based on Agile methodology, you’ll learn how to enhance your company’s business resilience, deliver stakeholder value and optimize Risk Management across the enterprise.'),
  Item(
      name:'C|EH',
      hours:'24 hours on demand video' ,
      article: '13 articles',
      Code: ' 18 Coding Exercises',
      Time: 'Full lifetime access',
      mobile: 'Accesson mobile and Tv',
      certifica: 'Certificate of Completion',
      imgpath: 'images/fl5.jpg',
      price:140.8,
      location:'Samar Shop',
      descrap: 'Certified Ethical Hacker (CEH)'
          'The Certified Ethical Hacker (CEH) provides an in-depth understanding of ethical hacking phases, various attack vectors, and preventative countermeasures. It will teach you how hackers think and act so you will be better positioned to set up your security infrastructure and defend against attacks. By providing an understanding of system weaknesses and vulnerabilities, the CEH course helps students learn to protect their organizations and strengthen their security controls in order to minimize the risk of a malicious attack.CEH was built to incorporate a hands-on environment and systematic process across each ethical hacking domain and methodology, giving you the opportunity to work toward proving the required knowledge and skills needed to achieve the CEH credential and perform the job of an ethical hacker.Now in its 12th version, CEH continues to evolve with the latest operating systems, tools, tactics, exploits, and technologies.'),
  Item(
      name:'CCNA',
      hours:'34 hours on demand video' ,
      article: '13 articles',
      Code: ' 18 Coding Exercises',
      Time: 'Full lifetime access',
      mobile: 'Accesson mobile and Tv',
      certifica: 'Certificate of Completion',
      imgpath: 'images/fl6.jpg',
      price:180.99,
      location:'Samar Shop',
      descrap: 'Cisco Certified Network Associate (CCNA) '
          'The Cisco CCNA program is a leading certificate for a basic and foundation networking career. It is an international certificate that provides a comprehensive view of networking. It provides detailed information about how can you build a network scaled from a small network (SOHO) to a very large Network (enterprise network). It builds the needed skills to build, install, configure and troubleshoot wired and wireless networks. It also allows you to explore central offices and internet backbone infrastructure. It validates your creativity in designing a computer network from scratch, forklift, and phased cases.'),
  Item(
      name:'CCNP',
      hours:'32 hours on demand video' ,
      article: '13 articles',
      Code: ' 18 Coding Exercises',
      Time: 'Full lifetime access',
      mobile: 'Accesson mobile and Tv',
      certifica: 'Certificate of Completion',
      imgpath: 'images/fl7.jpg',
      price:250.65,
      location:'Samar Shop',
      descrap: 'Cisco Certified Network Professional (CCNP)'
          ' The Implementing and Operating Cisco Enterprise Network Core Technologies (ENCOR) v1.1 course gives you the knowledge and skills needed to configure, troubleshoot, and manage enterprise wired and wireless networks. You’ll also learn to implement security principles, implement automation and programmability within an enterprise network, and how to overlay network design by using SD-Access and SD-WAN solutions.'),
  Item(
      name:'OSCP',
      hours:'23 hours on demand video' ,
      article: '13 articles',
      Code: ' 18 Coding Exercises',
      Time: 'Full lifetime access',
      mobile: 'Accesson mobile and Tv',
      certifica: 'Certificate of Completion',
      imgpath: 'images/fl8.jpg',
      price:190.70,
      location:'Samar Shop',
      descrap: 'Offensive Security Certified Professional (OSCP)'
          ' The industry-leading Penetration Testing with Kali Linux (PWK/PEN-200) course introduces penetration testing methodologies, tools and techniques via hands-on experience and is self-paced. Learners who complete the course and pass the exam will earn the OffSec Certified Professional (OSCP) certification which requires holders to successfully attack and penetrate various live machines in a safe lab environment. The OSCP is considered to be more technical than other ethical hacking certifications and is one of the few that requires evidence of practical penetration testing skills.'),
  Item(
      name:'OSWA',
      hours:'25 hours on demand video' ,
      article: '13 articles',
      Code: ' 18 Coding Exercises',
      Time: 'Full lifetime access',
      mobile: 'Accesson mobile and Tv',
      certifica: 'Certificate of Completion',
      imgpath: 'images/fl9.jpg',
      price:90.95,
      location:'Samar Shop',
      descrap: 'Offensive Security Web Expert (OSWE)'
          ' Advanced Web Attacks and exploitation (WEB-300) is an advanced web application security course that teaches the skills needed to conduct white box web app penetration tests. Learners who complete the course and pass the exam earn the OffSec Web Expert (OSWE) certification and will demonstrate mastery in exploiting front-facing web apps. The OSWE is one of three certifications making up the OSCE3 certification along with the OSEP for advanced pentesting and OSED for exploit development.'),
  Item(
      name:'OSCP',
      hours:'27 hours on demand video' ,
      article: '13 articles',
      Code: ' 18 Coding Exercises',
      Time: 'Full lifetime access',
      mobile: 'Accesson mobile and Tv',
      certifica: 'Certificate of Completion',
      imgpath: 'images/fl10.jpg',
      price:70.80,
      location:'Samar Shop',
      descrap: 'Offensive Security Certified Expert (OSCE) '
          'OSCE is an advanced penetration testing certification focusing on exploit development. We recommend going for this cert after attaining your OSCP and pursuing further pentesting experience.Once you’ve reviewed the course material, completed the exercises in CTP, and practiced your skills in the lab, you’re ready to take the certification exam.The OSCE exam has a 48-hour time limit and consists of a hands-on penetration test in our isolated VPN exam network. The network contains varying configurations and operating systems. Points are awarded for each compromised host, based on their difficulty and level of access obtained.'),

];
