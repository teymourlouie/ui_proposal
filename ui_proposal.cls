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

\logo{logo.pdf}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\makefullpage{
\thispagestyle{empty}
\setlength{\textwidth}{205mm}
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
\cline{8-9}
\grayrow
& & & & & & & \centering \textbf{‌ارشد} & \textbf{دکتری} 
\\
\hline 

%fill first supervisor
\tallrow 1 &  \centering {\@supervisor} & \centering {\@supdepartment} &  \centering {\@supuniversity} &  \centering {\@suplevel} &  \centering {\@supspeciality} &  \centering {\@supempltype} &  \centering {\@supmasterstnum} & \@supphdstnum  \\
\hline

%fill the second supervisor if exist
\ifnum \pdf@strcmp{\@secsupervisor}{} = 0
\else
\tallrow 2 &  \centering {\@secsupervisor} &  \centering {\@secsupdepartment} & \centering {\@secsupuniversity} & \centering { \@secsuplevel} &  \centering {\@secsupspeciality} &  \centering {\@secsupempltype} &  \centering {\@secsupmasterstnum} & \@secsupphdstnum  \\
\hline
\fi
\end{tabular}
\\

\noindent \textbf{مشخصات استاد(ان) مشاور:} \\
\begin{tabular}{|c|m{4cm}|m{1.2cm}|m{2.7cm}|m{1.5cm}|m{1.8cm}|m{5.7cm}|}
\hline
\grayrow
\centering {\textbf{ردیف}} & \centering {\textbf{نام و نام خانوادگی}} & \centering {\textbf{گروه آموزشی}}& \centering {\textbf{دانشگاه محل خدمت}} & \centering {\textbf{مرتبه}} & \centering {\textbf{تخصص}} & \textbf{ملاحظات}  \\ \hline
%fill first advisor
\tallrow 1 &  \centering {\@advisor} & \centering {\@addepartment} &  \centering {\@aduni} &  \centering {\@adlevel} &  \centering {\@adspeciality} &  \@adcomment \\
\hline
%fill the second advisor if exist
\ifnum \pdf@strcmp{\@secadvisor}{} = 0
\else
\tallrow 2 &  \centering {\@secadvisor} & \centering {\@secaddepartment} &  \centering {\@secaduni} &  \centering {\@secadlevel} &  \centering {\@secadspeciality} &  {\@secadcomment} \\
\hline
\fi
\end{tabular}
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
