import 'package:flutter/material.dart';

class TermsOfUse extends StatelessWidget {
  const TermsOfUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms of Use'),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
          child: Text(
            'Terms of Use for Trip Ticket\n'
            'Effective Date: 20 August 2024\n\n'
            '1. Agreement to Terms\n'
            'By using our app, Trip Ticket, you agree to be bound by these terms. If you disagree with any part of the terms, then you do not have permission to access the app.\n\n'
            '2. Services Offered\n'
            'This App provides a platform for travel agencies in Egypt to offer customized trips and for users to book these trips. As a user, you can search, compare, and book travel services.\n\n'
            '3. User Accounts\n'
            'You must register an account to access and use certain features of the App, and you must provide accurate, current, and complete information during the registration process.\n\n'
            '4. Content\n'
            'You agree not to post content that is defamatory, obscene, or objectionable. You are responsible for all your account activities and content.\n\n'
            '5. Ticketing Requirements\n'
            'When placing an order, it is imperative that users provide accurate names and phone numbers for each ticket. Entry on the trip will be denied if the information on the ticket does not match the attendees actual identification details.\n\n'
            '6. Prohibited Activities\n'
            'You agree not to engage in any of the following activities:\n'
            '- Violating any applicable law or regulation.\n'
            '- Misusing any personal information of other users.\n\n'
            '7. Termination\n'
            'We may terminate or suspend your access to the App immediately, without prior notice or liability, for any reason whatsoever, including, without limitation, if you breach the Terms.\n\n'
            '8. Governing Law\n'
            'These Terms shall be governed and construed in accordance with the laws of Egypt, without regard to its conflict of law provisions.\n\n'
            '9. Limitation of Liability\n'
            'Trip Ticket serves as a platform for connecting travel agencies with users looking to book travel services. As such, we do not provide, own, or control any of the travel services offered. The respective agreements or interactions occur directly between the users and the travel agencies.\n'
            'We are not liable for the acts, errors, omissions, representations, warranties, breaches, or negligence of any travel agencies or for any personal injuries, death, property damage, or other damages or expenses resulting therefrom. Trip Ticket has no responsibility and will not be liable for any refunds in the event of overbooking, strike, force majeure, or other causes beyond our direct control.\n\n'
            '10. Refund Policy\n'
            'Trip Ticket acts solely as a platform facilitating the connection between users and travel agencies. All financial transactions, including but not limited to payments and refunds, are handled directly between users and the respective travel agencies. Trip Ticket is not responsible for processing refunds for any bookings made via the app.\n'
            'Users seeking refunds for any reason must contact the respective travel agency to discuss their refund policies and request a refund according to the terms agreed upon at the time of booking. Trip Ticket does not intervene in such transactions and disclaims any responsibility for the outcomes of refund disputes.\n\n'
            '11. Changes to Terms\n'
            'We reserve the right, at our sole discretion, to modify or replace these Terms at any time.\n\n'
            '12. Contact Us\n'
            'If you have any questions about these Terms, please contact us at tripticketeg@gmail.com.'
            'شروط الاستخدام لتطبيق Trip Ticket\n'
            'تاريخ النفاذ: 20 أغسطس 2024\n\n'
            'شروط الاستخدام لتطبيق Trip Ticket\n'
            'تاريخ النفاذ: 20 أغسطس 2024\n\n'
            'الموافقة على الشروط\n'
            'باستخدامك لتطبيق Trip Ticket، فإنك توافق على الالتزام بهذه الشروط. إذا كنت لا توافق على جزء من الشروط، فليس لديك الإذن للوصول إلى التطبيق.\n\n'
            'الخدمات المقدمة\n'
            'يوفر هذا التطبيق منصة لوكالات السفر في مصر لعرض رحلات مخصصة وللمستخدمين لحجز هذه الرحلات. كمستخدم، يمكنك البحث والمقارنة وحجز خدمات السفر.\n\n'
            'الحسابات الشخصية\n'
            'يجب عليك تسجيل حساب للوصول واستخدام بعض ميزات التطبيق، ويجب أن تقدم معلومات دقيقة وحديثة وكاملة خلال عملية التسجيل.\n\n'
            'المحتوى\n'
            'توافق على عدم نشر محتوى يعتبر مسيئًا أو فاحشًا أو مرفوضًا. أنت مسؤول عن جميع أنشطة حسابك ومحتواك.\n\n'
            '5. متطلبات التذاكر\n'
            'عند إجراء حجز، من الضروري أن يقدم المستخدمون أسماء دقيقة وأرقام هواتف لكل تذكرة. سيتم منع الدخول إلى الرحلة إذا لم تتطابق المعلومات الموجودة على التذكرة مع بيانات هوية الحاضر الفعلية.\n\n'
            '6. الأنشطة المحظورة\n'
            'توافق على عدم الانخراط في أي من الأنشطة التالية:\n'
            '- انتهاك أي قانون أو تنظيم معمول به.\n'
            '- سوء استخدام أي معلومات شخصية لمستخدمين آخرين.\n\n'
            '7. الإنهاء\n'
            'يجوز لنا إنهاء أو تعليق وصولك إلى التطبيق فورًا، دون إشعار مسبق أو تحمل المسؤولية، لأي سبب كان، بما في ذلك، دون حصر، إذا خرقت الشروط.\n\n'
            '8. قانون الحكم\n'
            'يتم تفسير هذه الشروط وفقًا لقوانين مصر، دون النظر إلى أحكام القانون المتعارضة.\n\n'
            '9. تحديد المسؤولية\n'
            'يعمل Trip Ticket كمنصة لربط وكالات السفر بالمستخدمين الراغبين في حجز خدمات السفر. وعليه، لا نقدم أو نملك أو نتحكم في أي من خدمات السفر المعروضة. تحدث الاتفاقيات أو التفاعلات مباشرةً بين المستخدمين ووكالات السفر. لسنا مسؤولين عن أفعال أو أخطاء أو سهو أو تمثيل أو ضمانات أو إخلالات أو إهمال أي وكالات سفر أو عن أي إصابات شخصية أو وفاة أو تلف في الممتلكات أو أضرار أو نفقات أخرى ناتجة عن ذلك.\n\n'
            '10. سياسة الاسترجاع\n'
            'يعمل Trip Ticket حصريًا كمنصة تيسير الاتصال بين المستخدمين ووكالات السفر. جميع المعاملات المالية، بما في ذلك الدفع والاسترداد، يتم التعامل معها مباشرة بين المستخدمين ووكالات السفر المعنية. Trip Ticket ليس مسؤولًا عن معالجة الاسترداد لأي حجوزات تتم عبر التطبيق. يجب على المستخدمين الذين يسعون لاسترداد الأموال لأي سبب التواصل مع وكالة السفر المعنية لمناقشة سياسات الاسترجاع وطلب الاسترداد وفقًا للشروط المتفق عليها وقت الحجز.\n\n'
            '11. تغييرات على الشروط\n'
            'نحتفظ بالحق، حسب تقديرنا الخاص، لتعديل أو استبدال هذه الشروط في أي وقت.\n\n'
            '12. اتصل بنا\n'
            'إذا كانت لديك أي أسئلة حول هذه الشروط، يرجى التواصل معنا على tripticketeg@gmail.com.'
            '\n',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width *
                  0.04, // Adjust the font size according to your design
            ),
          )),
    );
  }
}
