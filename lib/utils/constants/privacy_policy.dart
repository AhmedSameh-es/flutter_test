import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
          child: Text(
            'Privacy Policy for Trip Ticket\n\n'
            'Effective Date: 20 August 2024\n\n'
            'Welcome to Trip Ticket, the mobile application that connects travel agencies in Egypt with users to facilitate the booking of customized trips. This Privacy Policy describes how we collect, use, process, and disclose your information, including personal information, in conjunction with your access to and use of our app.\n\n'
            '1. Information We Collect\n'
            'Information You Provide to Us: We collect information you provide directly to us. This includes:\n'
            '- Full Name and Contact Details: We collect your full name, email address, and phone number when you register or make a booking.\n'
            '- Information We Automatically Collect from Your Use of the App: When you use our app, we automatically collect information about the services you use and how you use them. This information includes:\n'
            '  - Usage Information\n'
            '  - Log Information\n\n'
            '2. How We Use the Information We Collect\n'
            'We do not sell your personal information to third parties. However, we use, store, and process information about you to provide, understand, improve, and develop our app, and to create and maintain a trusted and safer environment. Specifically, we use the information to:\n'
            '- Facilitate bookings and manage your account.\n'
            '- Communicate with you about your bookings or account.\n'
            '- Comply with our legal obligations.\n\n'
            '3. Sharing & Disclosure\n'
            'We may share your information:\n'
            '- With travel agencies to facilitate your travel bookings.\n'
            '- To comply with legal obligations.\n'
            '- To enforce our policies or to protect the rights of the user.\n\n'
            '4. Security\n'
            'We implement a variety of security measures to maintain the safety of your personal information when you enter, submit, or access your personal information.\n\n'
            '5. User Rights\n'
            'At Trip Ticket, you have the right to:\n'
            '- Access your personal information.\n'
            '- Correct any inaccuracies in your data.\n'
            '- Delete your data upon request.\n'
            '- Restrict or object to how we process your information.\n\n'
            'For requests or questions regarding your rights, please contact us at tripticketeg@gmail.com.\n\n'
            '6. Changes to This Privacy Policy\n'
            'We reserve the right to modify this Privacy Policy at any time in accordance with this provision. If we make changes to this Privacy Policy, we will post the revised Privacy Policy on the App.\n\n'
            '7. Contact Us\n'
            'If you have any questions about this Privacy Policy, please contact us at tripticketeg@gmail.com.\n\n'
            'سياسة الخصوصية لتطبيق Trip Ticket\n'
            'تاريخ النفاذ: 20 أغسطس 2024\n\n'
            'مرحبًا بكم في Trip Ticket، التطبيق الذي يربط وكالات السفر في مصر بالمستخدمين لتسهيل حجز الرحلات المخصصة. تصف سياسة الخصوصية هذه كيفية جمعنا واستخدامنا ومعالجتنا والكشف عن معلوماتك، بما في ذلك المعلومات الشخصية، في إطار استخدامك لتطبيقنا.\n\n'
            '1. المعلومات التي نجمعها\n'
            'المعلومات التي تقدمها لنا: نجمع المعلومات التي تقدمها مباشرةً لنا. وهذا يشمل:\n'
            '- الاسم الكامل وتفاصيل الاتصال: نجمع اسمك الكامل وعنوان بريدك الإلكتروني ورقم هاتفك عند التسجيل أو إجراء حجز.\n'
            '- المعلومات التي نجمعها تلقائيًا من استخدامك للتطبيق: عند استخدامك لتطبيقنا، نجمع تلقائيًا معلومات حول الخدمات التي تستخدمها وكيفية استخدامك لها. وتشمل هذه المعلومات:\n'
            '  - معلومات الاستخدام\n'
            '  - معلومات السجل\n\n'
            '2. كيفية استخدامنا للمعلومات التي نجمعها\n'
            'نحن لا نبيع معلوماتك الشخصية لطرف ثالث. ومع ذلك، نستخدم ونخزن ونعالج معلوماتك لتوفير خدمات التطبيق وفهمها وتحسينها وتطويرها، ولخلق والحفاظ على بيئة آمنة وموثوقة. على وجه التحديد، نستخدم المعلومات لـ:\n'
            '- تسهيل الحجوزات وإدارة حسابك.\n'
            '- التواصل معك بشأن حجوزاتك أو حسابك.\n'
            '- الامتثال لالتزاماتنا القانونية.\n\n'
            '3. المشاركة والكشف\n'
            'قد نشارك معلوماتك:\n'
            '- مع وكالات السفر لتسهيل حجوزات السفر الخاصة بك.\n'
            '- للامتثال لالتزامات قانونية.\n'
            '- لفرض سياساتنا أو لحماية حقوق المستخدم.\n\n'
            '4. الأمان\n'
            'نطبق مجموعة متنوعة من تدابير الأمان للحفاظ على سلامة معلوماتك الشخصية عندما تقوم بإدخالها أو إرسالها أو الوصول إليها.\n\n'
            '5. حقوق المستخدم\n'
            'في Trip Ticket، لديك الحق في:\n'
            '- الوصول إلى معلوماتك الشخصية.\n'
            '- تصحيح أي عدم دقة في بياناتك.\n'
            '- حذف بياناتك بناءً على طلبك.\n'
            '- الحد من أو الاعتراض على كيفية معالجتنا لمعلوماتك.\n'
            'للطلبات أو الأسئلة بخصوص حقوقك، يرجى التواصل معنا على tripticketeg@gmail.com.\n\n'
            '6. تغييرات على سياسة الخصوصية\n'
            'نحتفظ بالحق في تعديل هذه السياسة في أي وقت وفقًا لهذا البند. إذا أجرينا تغييرات على سياسة الخصوصية، سننشر السياسة المنقحة على التطبيق.\n\n'
            '7. اتصل بنا\n'
            'إذا كانت لديك أي أسئلة حول هذه السياسة، يرجى التواصل معنا على tripticketeg@gmail.com.'
            '\n',
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.04), //16
          )),
    );
  }
}
