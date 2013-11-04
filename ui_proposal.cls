\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ui_proposal}[2013/10/28 v1.0]
\LoadClass[12pt,a4paper]{article}

\ProcessOptions
\RequirePackage{amsmath, amsthm, graphicx, fancybox, bbding, pdftexcmds, colortbl, multirow}


%مشخصات پایان‌نامه
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\grayrow{\rowcolor[gray]{.8}}
\def\graycell{\cellcolor[gray]{.8}}
\def\tallrow{\rule[-10pt]{0pt}{30pt}}
\def\mydef#1#2{
   	\expandafter\newcommand\csname #1\endcsname[1]
		{\expandafter\def\csname @#1\endcsname{##1}}
	\expandafter\def\csname @#1\endcsname{}
	 \expandafter\newcommand\csname #2\endcsname
		{\expandafter \csname#1\endcsname}
 }

%student
\mydef{department}{گروه}
\mydef{student}{دانشجو}
\mydef{stno}{شماره‌دانشجویی}
\mydef{field}{‌رشته‌تحصیلی}
\mydef{subfield}{گرایش}
\mydef{level}{مقطع}
\mydef{faculty}{دانشکده}
\mydef{maxyear}{سنوات}
\mydef{logo}{آرم}
\mydef{email}{ایمیل}
\mydef{telephone}{تلفن‌تماس}

%supervisor
\mydef{supervisor}{‌استادراهنما}
\mydef{secsupervisor}{استا‌دراهنمای‌دوم}
\mydef{supdepartment}{گروه‌راهنما}
\mydef{secsupdepartment}{گروه‌راهنمای‌دوم}
\mydef{supuniversity}{دانشگاه‌راهنما}
\mydef{secsupuniversity}{دانشگاه‌راهنمای‌دوم}
\mydef{suplevel}{مرتبه‌راهنما}
\mydef{secsuplevel}{مرتبه‌راهنمای‌دوم}
\mydef{supspeciality}{تخصص‌راهنما}
\mydef{secsupspeciality}{تخصص‌راهنمای‌دوم}
\mydef{supempltype}{استخدام‌راهنما}
\mydef{secsupempltype}{استخدام‌راهنمای‌دوم}
\mydef{supmasterstnum}{تعدادارشدراهنما}
\mydef{secsupmasterstnum}{تعدادارشدراهنمای‌دوم}
\mydef{supphdstnum}{تعداددکتری‌راهنما}
\mydef{secsupphdstnum}{تعداددکتری‌راهنمای‌دوم}

%advisor
\mydef{advisor}{استادمشاور}
\mydef{secadvisor}{استادمشاوردوم}
\mydef{addepartment}{گروه‌مشاور}
\mydef{secaddepartment}{گروه‌مشاوردوم}
\mydef{aduni}{دانشگاه‌مشاور}
\mydef{secaduni}{دانشگاه‌مشاوردوم}
\mydef{adlevel}{مرتبه‌مشاور}
\mydef{secadlevel}{مرتبه‌مشاوردوم}
\mydef{adspeciality}{تخصص‌مشاور}
\mydef{secadspeciality}{تخصص‌مشاوردوم}
\mydef{adcomment}{ملاحظات‌مشاور}
\mydef{secadcomment}{ملاحظات‌مشاوردوم}

%registeration
\mydef{regsite}{سایت}
\mydef{regnum}{شماره‌ثبت}
\mydef{regdate}{تاریخ‌ثبت}

%priority
\mydef{prioritycode}{کداولویت}
\mydef{prioritytitle}{عنوان‌اولویت}
\mydef{supporter}{حمایت‌کننده}
\mydef{supportedissue}{موضوع‌مورد‌حمایت}

%thesis properties
\mydef{farsititle}{عنوان‌فارسی}
\mydef{latintitile}{عنوان‌لاتین}
\mydef{practical}{کاربردی}
\mydef{fundamental}{بنیادی}
\mydef{development}{توسعه‌ای}

\mydef{keywords}{کلیدواژه‌ها}

\logo{logo.pdf}
\practical{0}
\fundamental{0}
\development{0}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\makefullpage{
\thispagestyle{empty}
\setlength{\textwidth}{202mm}
\setlength{\textheight}{285mm}
\setlength{\headsep}{0cm}
\setlength{\oddsidemargin}{1cm}

\setlength{\marginparwidth}{0pt}
\setlength{\hoffset}{-1.30in}
\setlength{\voffset}{-1.25in}
\setlength{\footskip}{10pt}
}

\def\makelevelbox{
\ovalbox{دکتری  

\ifnum \pdf@strcmp{\@level}{دکتری} = 0
\SquareSolid
\else 
\Square
\fi
 \qquad
 کارشناسی ارشد
\ifnum \pdf@strcmp{\@level}{کارشناسی ارشد} = 0
\SquareSolid
\else 
\Square
\fi
 }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% صفحه عنوان
\makefullpage
\def\maketitlepage{

\begin{center}
بسمه‌تعالی\\
\includegraphics[scale=.5]{\@logo}\\
\textbf{‫مدیریت امور پژوهشی دانشگاه اصفهان‬}\\
\ovalbox{\textbf{درخواست تصویت طرح پیشنهادیه پایان‌نامه} } \\
\makelevelbox \\

\end{center}

%student
\noindent \textbf{مشخصات دانشجو:}
\\
\renewcommand{\arraystretch}{1.3}
\setlength{\tabcolsep}{4pt}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
\grayrow
\textbf{نام و نام خانوادگی دانشجو} & \textbf{شماره دانشجویی }& \textbf{رشته و گرایش} & \textbf{گروه} & \textbf{دانشکده} & \textbf{مقطع تحصیلی} & \textbf{حداکثر سنوات} \\ \hline
\tallrow \@student & \@stno & \@field - \@subfield&\@department & \@faculty & \@level & \@maxyear  \\
\hline
\graycell \textbf{ایمیل} & \multicolumn{3}{c|}{\@email} & \graycell \textbf{شماره‌ تماس} & \multicolumn{2}{c|}{\@telephone} \\
\hline
\end{tabular}
\\

%supervisors
\noindent \textbf{مشخصات استاد(ان) راهنما:} \\
\begin{tabular}{|c|p{4cm}|p{1.2cm}|p{2.7cm}|p{1.5cm}|p{1.8cm}|p{2.39cm}|p{1.35cm}|p{1.36cm}|}
\hline
\grayrow
\multirow {2} {*} {\textbf{ردیف}} 
& \centering \multirow {2} {*} { \textbf{نام و نام خانوادگی}} 
& \centering {\textbf{گروه آموزشی}} 
& \centering  {\textbf{دانشگاه محل خدمت}} 
& \centering \multirow {2} {*} {\textbf{مرتبه}} 
& \centering \multirow {2} {*} { \textbf{تخصص}}
& \centering {\textbf{نوع استخدام} \small \textbf {(رسمی/پیمانی)}}
& \multicolumn {2}{m{3cm}|}{\centering \textbf{تعداد پایان‌نامه‌های تحت راهنمایی}} \\
%\cline{8-9}
\hhline{|*7{>{\arrayrulecolor[gray]{.8}}-}>{\arrayrulecolor{black}}|*2{-}|}
\grayrow
& & & & & & & \centering \textbf{‌ارشد} &\centering {\textbf{دکتری}}
 \tabularnewline
\hline 

%fill first supervisor
\tallrow 1 &  \centering {\@supervisor} & \centering {\@supdepartment} &  \centering {\@supuniversity} &  \centering {\@suplevel} &  \centering {\@supspeciality} &  \centering {\@supempltype} &  \centering {\@supmasterstnum} & \centering {\@supphdstnum}   \tabularnewline
\hline

%fill the second supervisor if exist
\ifnum \pdf@strcmp{\@secsupervisor}{} = 0
\else
\tallrow 2 &  \centering {\@secsupervisor} &  \centering {\@secsupdepartment} & \centering {\@secsupuniversity} & \centering { \@secsuplevel} &  \centering {\@secsupspeciality} &  \centering {\@secsupempltype} &  \centering {\@secsupmasterstnum} & \centering {\@secsupphdstnum} \tabularnewline
\hline
\fi
\end{tabular}
\\

%advisors
\noindent \textbf{مشخصات استاد(ان) مشاور:} \\
\begin{tabular}{|c|m{4cm}|m{1.2cm}|m{2.7cm}|m{1.5cm}|m{1.8cm}|m{5.7cm}|}
\hline
\grayrow
\centering {\textbf{ردیف}} & \centering {\textbf{نام و نام خانوادگی}} & \centering {\textbf{گروه آموزشی}}& \centering {\textbf{دانشگاه محل خدمت}} & \centering {\textbf{مرتبه}} & \centering {\textbf{تخصص}} & \centering {\textbf{ملاحظات}}  \tabularnewline \hline
%fill first advisor
\tallrow 1 &  \centering {\@advisor} & \centering {\@addepartment} &  \centering {\@aduni} &  \centering {\@adlevel} &  \centering {\@adspeciality} & \centering { \@adcomment}  \tabularnewline
\hline
%fill the second advisor if exist
\ifnum \pdf@strcmp{\@secadvisor}{} = 0
\else
\tallrow 2 &  \centering {\@secadvisor} & \centering {\@secaddepartment} &  \centering {\@secaduni} &  \centering {\@secadlevel} &  \centering {\@secadspeciality} &  \centering {\@secadcomment} \tabularnewline
\hline
\fi
\end{tabular}
\\
\parbox{19.5cm}
{\small {تذکر: در صورتی‌که اساتید فوق عضو هیأت علمی دانشگاه اصفهان نمی‌باشند، آدرس، شماره تلفن و حکم کارگزینی آن‌ها ذیلاً ضمیمه گردد.}}\\\\
\noindent \textbf{ثبت پیشنهادیه پایان‌نامه در سایت:}
\\
\parbox{19.5cm}
{\small {تذکر: مطابق بخشنامه مورخ ۱۳۸۶/۰۹/۱۳ شماره ۳۳/۴۷۵۶ وزارت علوم و تحقیقات و فناوری، نسبت به ثبت پیشنهادیه پایان‌نامه در سایت \mbox{irandoc.ac.ir} الزامی و فرم ثبت نیز ضمیمه گردد.}}
\begin{center}
\begin{tabular}{|m{4.5cm}|m{4.5cm}|m{4.5cm}|}
\hline
\grayrow
\centering {\textbf{آدرس سایت}} & \centering {\textbf{شماره ثبت}} & \centering { \textbf{تاریخ ثبت}} \tabularnewline \hline
\tallrow \centering {\@regsite} & \centering {\@regnum} &  \centering {\@regdate}  \tabularnewline \hline
\end{tabular}
\end{center}


\noindent \textbf{مشخصات اولویت پژوهشی:} \\
\parbox{19.5cm}
{\small {تذکر: مطابق بخشنامه مورخ ۱۳۸۹/۰۷/۱۱ شماره ۳/۲۴۲۹۳ وزارت علوم و تحقیقات و فناوری، انتخاب موضوع رساله از اولویت‌های پژوهشی کشور الزامی است.}}
\\
\begin{tabular}{|c|m{5.6cm}|m{5cm}|m{5cm}|}
\hline
\grayrow
\centering {\textbf{کد اولویت پژوهشی}} & \centering {\textbf{عنوان اولویت پژوهشی}} & \centering { \textbf{سازمان حمایت‌کننده}}& \centering {\textbf{موضوع مورد حمایت}} \tabularnewline \hline
\tallrow \centering {\@prioritycode} & \centering {\@prioritytitle} &  \centering {\@supporter} &  \centering {\@supportedissue} \tabularnewline \hline
\end{tabular}
\\

\noindent \textbf{مشخصات پایان‌نامه:}\\
\vspace{1mm}
\mdfdefinestyle{mdfstyle}{roundcorner=10pt}
 \parbox{19.4cm}
{\noindent
\begin{mdframed}[style=mdfstyle, frametitle = {\textbf{الف- عنوان تحقیق:}}, needspace=0mm, rightmargin=-2mm]
{
\begin{tabular}{r r}
\textbf {۱-فارسی:} &
\@farsititle \\
\textbf {۲-لاتین:} &
\lr{\@latintitile} \\
\end{tabular}
}
\end{mdframed}
}\\
\vspace{3mm}
\parbox{19.6cm}
{
\begin{mdframed}[style=mdfstyle, frametitle = {\textbf{ب- نوع تحقیق:}}, needspace=0mm]
{
 \qquad\qquad\qquad\qquad\qquad
کاربردی
\ifnum \@practical=1
\SquareSolid
\else 
\Square
\fi
 \qquad\qquad\qquad
 بنیادی
\ifnum \@fundamental=1
\SquareSolid
\else 
\Square
\fi
 \qquad\qquad\qquad
توسعه‌ای
\ifnum \@development=1
\SquareSolid
\else 
\Square
\fi
}
\end{mdframed}
}\\
\vspace{3mm}
 \parbox{19.6cm}
{\noindent
\begin{mdframed}[style=mdfstyle, frametitle = {\textbf{ج- کلید‌واژه‌ها:}}]
{
\@keywords
}
\end{mdframed}
}\\
\vspace{3mm}
\pagebreak
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\makesignaturepage{
% صفحه امضاها
\pagebreak
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\makeethicspage{
%%% صفحه منشور اخلاق پژوهش

\pagebreak
}
