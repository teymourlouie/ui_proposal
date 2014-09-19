\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ui_proposal}[2013/10/28 v1.3]
\LoadClass[12pt,a4paper]{article}

\ProcessOptions
\RequirePackage{amsmath, amsthm, graphicx, fancybox, bbding, pdftexcmds, colortbl, multirow, geometry, hhline, lipsum, setspace, pgf, pgfpages}

\doublespacing
\setlength{\footskip}{50pt}
\addtolength{\textheight}{6cm}
\addtolength{\headsep}{-2cm}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pgfpagesdeclarelayout{boxed}
{
  \edef\pgfpageoptionborder{0pt}
}
{
  \pgfpagesphysicalpageoptions
  {%
    logical pages=1,%
  }
  \pgfpageslogicalpageoptions{1}
  {
    border code=\pgfsetlinewidth{1pt}\pgfstroke,%
    border shrink=\pgfpageoptionborder,%
    resized width=.95\pgfphysicalwidth,%
    resized height=.95\pgfphysicalheight,%
    center=\pgfpoint{.5\pgfphysicalwidth}{.5\pgfphysicalheight}%
  }%
}

\pgfpagesuselayout{boxed}
%مشخصات پایان‌نامه
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\grayrow{\rowcolor[gray]{.8}}
\def\graycell{\cellcolor[gray]{.8}}
\def\tallrow{\rule[-10pt]{0pt}{25pt}}
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
\def\makedoublespace{
\qquad\qquad
}

\def\makefullpage{
\thispagestyle{empty}
\newgeometry{ignoreall=true, includeheadfoot=false, marginparwidth=0cm, marginparsep=0cm, textwidth=202mm, headheight=0cm, headsep=0cm, top=3mm, bottom=5mm, right=0.5cm, left=0.5cm}
}

\def\makelevelbox{
\begin{mdframed}[roundcorner=10pt, needspace=0mm, rightmargin=6.3cm, leftmargin=6.3cm, innertopmargin=1mm, innerbottommargin=1mm, align=center, innerrightmargin=5mm, innerleftmargin=2mm]
{
\textbf{\centering درخواست تصویب طرح پیشنهادیه پایان‌نامه}
}
\end{mdframed}
\vspace{1mm}
\begin{mdframed}[roundcorner=10pt, needspace=0mm, rightmargin=6.8cm, leftmargin=6.8cm, innertopmargin=1mm, innerbottommargin=1mm, align=center, innerrightmargin=5mm, innerleftmargin=2mm]
{
 دکتری  
\ifnum \pdf@strcmp{\@level}{دکتری} = 0
\SquareSolid
\else 
\Square
\fi
 \qquad \qquad
 کارشناسی ارشد
\ifnum \pdf@strcmp{\@level}{کارشناسی ارشد} = 0
\SquareSolid
\else 
\Square
\fi
}
\end{mdframed}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% صفحه عنوان

\def\maketitlepage{
\makefullpage
\singlespacing
\begin{center}
بسمه‌تعالی\\
\includegraphics[scale=.5]{\@logo}\\
\vspace{-1mm}
\textbf{‫مدیریت امور پژوهشی دانشگاه اصفهان‬}\\
%\vspace{-2mm}
\makelevelbox

\end{center}

%student
\noindent \textbf{مشخصات دانشجو:}
\\
\renewcommand{\arraystretch}{1.3}
\setlength{\tabcolsep}{4pt}
\vspace{-6.5mm}
\begin{center}
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
\end{center}

%supervisors
\noindent \textbf{مشخصات استاد(ان) راهنما:} \\
\vspace{-6.5mm}
\begin{center}
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
\ifnum \pdf@strcmp{\@supervisor}{} = 0
\tallrow 1 & & & & & & & & \tabularnewline
\else
\tallrow 1 &  \centering {\@supervisor} & \centering {\@supdepartment} &  \centering {\@supuniversity} &  \centering {\@suplevel} &  \centering {\@supspeciality} &  \centering {\@supempltype} &  \centering {\@supmasterstnum} & \centering {\@supphdstnum}   \tabularnewline
\fi
\hline

%fill the second supervisor if exist
\ifnum \pdf@strcmp{\@secsupervisor}{} = 0
\else
\tallrow 2 &  \centering {\@secsupervisor} &  \centering {\@secsupdepartment} & \centering {\@secsupuniversity} & \centering { \@secsuplevel} &  \centering {\@secsupspeciality} &  \centering {\@secsupempltype} &  \centering {\@secsupmasterstnum} & \centering {\@secsupphdstnum} \tabularnewline
\hline
\fi
\end{tabular}
\\
\end{center}

%advisors
\noindent \textbf{مشخصات استاد(ان) مشاور:} \\
\vspace{-6.5mm}
\begin{center}
\begin{tabular}{|c|m{4cm}|m{1.2cm}|m{2.7cm}|m{1.5cm}|m{1.8cm}|m{5.7cm}|}
\hline
\grayrow
\centering {\textbf{ردیف}} & \centering {\textbf{نام و نام خانوادگی}} & \centering {\textbf{گروه آموزشی}}& \centering {\textbf{دانشگاه محل خدمت}} & \centering {\textbf{مرتبه}} & \centering {\textbf{تخصص}} & \centering {\textbf{ملاحظات}}  \tabularnewline \hline
%fill first advisor
\ifnum \pdf@strcmp{\@advisor}{} = 0
\tallrow & & & & & & \tabularnewline
\else
\tallrow 1 &  \centering {\@advisor} & \centering {\@addepartment} &  \centering {\@aduni} &  \centering {\@adlevel} &  \centering {\@adspeciality} & \centering { \@adcomment}  \tabularnewline
\fi
\hline
%fill the second advisor if exist
\ifnum \pdf@strcmp{\@secadvisor}{} = 0
\else
\tallrow 2 &  \centering {\@secadvisor} & \centering {\@secaddepartment} &  \centering {\@secaduni} &  \centering {\@secadlevel} &  \centering {\@secadspeciality} &  \centering {\@secadcomment} \tabularnewline
\hline
\fi
\end{tabular}
\\
\end{center}
\vspace{-0.5cm}
\parbox{198mm}
{\small \singlespacing{تذکر: در صورتی‌که اساتید فوق عضو هیأت علمی دانشگاه اصفهان نمی‌باشند، آدرس، شماره تلفن و حکم کارگزینی آن‌ها ذیلاً ضمیمه گردد.}}\\\\
\noindent \textbf{ثبت پیشنهادیه پایان‌نامه در سایت:}
\\
\parbox{198mm}
{\small \singlespacing{تذکر: مطابق بخشنامه مورخ ۱۳۸۶/۰۹/۱۳ شماره ۳۳/۴۷۵۶ وزارت علوم و تحقیقات و فناوری، نسبت به ثبت پیشنهادیه پایان‌نامه در سایت \mbox{irandoc.ac.ir} الزامی و فرم ثبت نیز ضمیمه گردد.}}
\vspace{-2.5mm}
\begin{center}
\begin{tabular}{|m{4.5cm}|m{4.5cm}|m{4.5cm}|}
\hline
\grayrow
\centering {\textbf{آدرس سایت}} & \centering {\textbf{شماره ثبت}} & \centering { \textbf{تاریخ ثبت}} \tabularnewline \hline
\centering {\@regsite} & \centering {کد رهگیری: \@regnum} &  \centering {\@regdate}  \tabularnewline \hline
\end{tabular}
\end{center}


\noindent \textbf{مشخصات اولویت پژوهشی:} \\
\parbox{198mm}
{\small \singlespacing{تذکر: مطابق بخشنامه مورخ ۱۳۸۹/۰۷/۱۱ شماره ۳/۲۴۲۹۳ وزارت علوم و تحقیقات و فناوری، انتخاب موضوع رساله از اولویت‌های پژوهشی کشور الزامی است.}}
\\
\vspace{-2.5mm}
\begin{center}
\begin{tabular}{|c|m{9cm}|m{3cm}|m{3cm}|}
\hline
\grayrow
\centering {\textbf{کد اولویت پژوهشی}} & \centering {\textbf{عنوان اولویت پژوهشی}} & \centering { \textbf{سازمان حمایت‌کننده}}& \centering {\textbf{موضوع مورد حمایت}} \tabularnewline \hline
\tallrow \centering {\@prioritycode} & \centering {\@prioritytitle} &  \centering {\@supporter} &  \centering {\@supportedissue} \tabularnewline \hline
\end{tabular}
\\
\end{center}

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
\restoregeometry
%\newgeometry{ignoreall=true, includeheadfoot=false, marginparwidth=0cm, marginparsep=0cm, textwidth=198mm, headheight=0cm, headsep=0cm, top=3mm, bottom=5mm, right=10mm, left=10mm,includefoot}

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\datesig{\textbf {تاریخ و امضا:}}
\def\makesignaturepage{
% صفحه امضاها
\newgeometry{ignoreall=true, includeheadfoot=false, marginparwidth=0cm, marginparsep=0cm, textwidth=202mm, headheight=0cm, headsep=0cm, top=7mm, bottom=3mm, right=0.5cm, left=0.5cm}%end of newgeometry
\onehalfspacing
\begin{mdframed}[roundcorner=20pt, linewidth=0.4pt, outerlinewidth=0.4pt, middlelinewidth=0.4pt, rightmargin=1cm, leftmargin=1cm, innertopmargin=2cm, innerbottommargin=2cm, innerrightmargin=0.8cm, innerleftmargin=1cm]
{
\begin{tabular}{r p{4cm} r p{4cm}}
%supervisors
%first supervisor
\tallrow\textbf {استاد(ان) راهنما:} \makedoublespace &دکتر \@supervisor \makedoublespace&\qquad \datesig &\dotfill\\
%second supervisor if exists
\ifnum \pdf@strcmp{\@secsupervisor}{} = 0
\else
\tallrow \makedoublespace & دکتر \@secsupervisor \makedoublespace&\qquad&\dotfill\\
\fi
%advisors
%if first advisor exist
\ifnum \pdf@strcmp{\@advisor}{} = 0
\tallrow\textbf {استاد(ان) مشاور:} \makedoublespace&\dotfill&\qquad \datesig &\dotfill\\
\else
\tallrow\textbf {استاد(ان) مشاور:}\makedoublespace &\@advisor \makedoublespace&\qquad \datesig &\dotfill\\
\fi
%second advisor if exists
\ifnum \pdf@strcmp{\@secadvisor}{} = 0
\else
\tallrow \makedoublespace&\@secadvisor \makedoublespace&\qquad &\dotfill\\
\fi
%student
\tallrow\textbf {دانشجو:} \makedoublespace&\@student \makedoublespace&\qquad \datesig &\dotfill\\
\end{tabular}
}
\end{mdframed}
%%%%%%%%%%%%%%%%****************%%%%%%%%%%%%%%%%
\vspace{1.5cm}
\begin{mdframed}[roundcorner=20pt, linewidth=0.4pt, outerlinewidth=0.4pt, middlelinewidth=0.4pt, rightmargin=1cm, leftmargin=1cm, innertopmargin=2cm, innerbottommargin=2cm, innerrightmargin=0.8cm, innerleftmargin=1cm]
{
\parbox{160mm}
{
\textbf {
الف- موضوع پایان‌نامه آقا / خانم
}
\textnormal{\@student}
\textbf {
در شورای تحصیلات تکمیلی گروه در 
\mbox {تاریخ \parbox{2cm}{\textnormal{\dotfill}}}
 مورد بررسی قرار گرفت و به تصویب رسید.
}
}\\%end parbox
\vspace{0.7cm}
\begin{center}
\begin{tabular}{c l}
\parbox{9cm}{
\textbf {دکتر: }
\parbox{2.9cm}{\dotfill}\par
\vspace{3mm}
\textbf {نماینده تحصیلات تکمیلی گروه:} \ifnum \pdf@strcmp{\@department}{} = 0
\parbox{2.9cm}{\dotfill}
\else
 \@department
\fi
}
&
\parbox{6.5cm}{\raggedleft
\textbf {دکتر: }
\parbox{3cm}{\dotfill} \par
\vspace{3mm}
\textbf {مدیر گروه آموزشی:} \ifnum \pdf@strcmp{\@department}{} = 0
\parbox{2.9cm}{\dotfill}
\else
 \@department
\fi
}
\end{tabular}
\end{center}
}%end mdframed
\end{mdframed}
%%%%%%%%%%%%%%%%****************%%%%%%%%%%%%%%%%
\vspace{1.5cm}
\begin{mdframed}[roundcorner=20pt, linewidth=0.4pt, outerlinewidth=0.4pt, middlelinewidth=0.4pt, rightmargin=1cm, leftmargin=1cm, innertopmargin=2cm, innerbottommargin=2cm, innerrightmargin=0.8cm, innerleftmargin=1cm]
{
\parbox{160mm}
{
\textbf {ب- موضوع این پایان‌نامه پس از بحث و بررسی در شورای تحصیلات تکمیلی دانشکده در
\mbox {تاریخ \parbox{2cm}{\textnormal{\dotfill}}}
به تصویب نهایی رسید.
}
}\\\\%end parbox
\begin{flushleft}
\parbox{55mm}
{
\doublespacing
\textbf {\mbox {دکتر: \quad \parbox{4.1cm}{\textnormal{\dotfill}}}\\
معاون پژوهشی و تحصیلات تکمیلی\\
\mbox {دانشکده \ifnum \pdf@strcmp{\@faculty}{} = 0
 \parbox{4cm}{\textnormal{\dotfill}}
\else
{\textnormal \@faculty}
\fi}\\
}
}\\%end parbox
\end{flushleft}
\vspace{-1cm}
}
\end{mdframed}
\pagebreak
\restoregeometry
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\makeethicspage{
\pagebreak
%%% صفحه منشور اخلاق پژوهش
\newgeometry{ignoreall=true, includeheadfoot=false, marginparwidth=0cm, marginparsep=0cm, textwidth=200mm, headheight=0cm, headsep=0cm, top=4mm, bottom=4mm, right=0.8cm, left=0.8cm}
%\begin{mdframed}[roundcorner=20pt, innerrightmargin =3mm, innerleftmargin=3mm, linewidth=0.4pt, outerlinewidth=0.4pt, middlelinewidth=0.4pt]
{
\begin{center}
\vspace{1cm}
\includegraphics[scale=.1]{iranlogo.eps}\\
\end{center}
}
\input{ethics.tex}
%\end{mdframed}
\pagebreak
\restoregeometry
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\makebibliography#1{
\onehalfspacing
\pagebreak
\latin

\bibliographystyle{ieeetr}
\renewcommand{\refname}{\rl{{مراجع}\hfill}}
\bibliography{#1}

\persian
\pagebreak
}
