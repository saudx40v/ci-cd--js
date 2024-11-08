# استخدم صورة Node.js الرسمية
FROM node:latest

# تعيين مسار العمل داخل الحاوية
WORKDIR /usr/src/app

# نسخ package.json لتثبيت التبعيات فقط في حال وجود تغييرات
COPY package.json package-lock.json* ./

# تثبيت التبعيات
RUN npm install

# نسخ باقي ملفات المشروع
COPY . .

# فتح المنفذ 4000 لاستخدام التطبيق
EXPOSE 4000

# الأمر الافتراضي لتشغيل التطبيق
CMD [ "node", "index.js" ]
