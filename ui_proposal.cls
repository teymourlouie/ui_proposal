\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ui_proposal}[2013/10/28 v1.0]
\LoadClass[12pt,a4paper]{article}

\ProcessOptions
\RequirePackage{amsmath, amsthm, graphicx, fancybox, bbding, pdftexcmds, colortbl}


%مشخصات پایان‌نامه
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\mydef#1#2{
   	\expandafter\newcommand\csname #1\endcsname[1]
		{\expandafter\def\csname @#1\endcsname{##1}}
	\expandafter\def\csname @#1\endcsname{}
	 \expandafter\newcommand\csname #2\endcsname
		{\expandafter \csname#1\endcsname}
 }

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
\def\maketitlepage{
\makefullpage
\begin{center}
بسمه‌تعالی\\
\includegraphics[scale=.5]{\@logo}\\
\textbf{‫مدیریت امور پژوهشی دانشگاه اصفهان‬}\\
\ovalbox{\textbf{درخواست تصویت طرح پیشنهادیه پایان‌نامه} } \\
\makelevelbox \\

\end{center}

\textbf{مشخصات دانشجو:}
\small
\\
\renewcommand{\arraystretch}{1.3}
\setlength{\tabcolsep}{3pt}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
\rowcolor[gray]{.9}
\textbf{نام و نام خانوادگی دانشجو} & \textbf{شماره دانشجویی }& \textbf{رشته و گرایش} & \textbf{گروه} & \textbf{دانشکده} & \textbf{مقطع تحصیلی} & \textbf{حداکثر سنوات} \\ \hline
\rule[-10pt]{0pt}{30pt} \@student & \@stno & \@field - \@subfield&\@department & \@faculty & \@level & \@maxyear  \\
\hline
\cellcolor[gray]{.9} \textbf{ایمیل} & \multicolumn{3}{c|}{\@email} & \cellcolor[gray]{.9} \textbf{شماره‌ تماس} & \multicolumn{2}{c|}{\@telephone} \\
\hline
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
