%%
%% This is file `shiraz-thesis.cls',
%% قالب پایان نامه برای دانشگاه شیراز
%%
%%   __________________________________
%%   Copyright © 2008-2009 Vafa Khalighi
%%  
%%   Edited by Vahid Damanafshan    <vdamanafshan@yahoo.com>
%%   Modified by AliReza Hashemi (2021)    <arezahashemi@gmail.com>
%%  
%%   License information appended.
%% 
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{shiraz_thesis}
              [12/01/2019 v0.0
Persian thesis document class in XeLaTeX for Shiraz University]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass{book}

\RequirePackage{amsthm,amssymb,amsmath,amsfonts}
\usepackage{calligra}
\DeclareMathAlphabet{\mathcalligra}{T1}{calligra}{m}{n}
\usepackage{mathrsfs}
% بسته‌‌ای برای ظاهر شدن شکل‌ها و تصاویر متن
\RequirePackage{multicol}
\RequirePackage{graphicx}
\RequirePackage{rotating}
\RequirePackage{subfigure}
\usepackage{cite}
\usepackage[section]{placeins}
\usepackage{enumitem}
\usepackage{tikz}
\usetikzlibrary{shapes.geometric, snakes, arrows, calc, backgrounds,fit}
\usepackage{verbatim}
\usepackage{pstricks}
%\hypersetup{pdfborder={0 0 0}, colorlinks = false}
%\usepackage{eso-pic}
\usepackage{float}
\usepackage{booktabs}
\usepackage{siunitx}
\usepackage{textcomp}
\usepackage{array}
\newcolumntype{C}[1]{>{\centering\arraybackslash}m{#1}}

% بسته‌ای برای رسم کادر
\RequirePackage{framed} 
% بسته‌‌ای برای چاپ شدن خودکار تعداد صفحات در صفحه «معرفی پایان‌نامه»
\RequirePackage{lastpage}
\RequirePackage[labelsep=endash,font=footnotesize]{caption}
\definecolor{darkgreen}{rgb}{0,.1,0}
\definecolor{darkblue}{rgb}{0,0,.1}
%\colorlet{darkgreen}{green!30!black}
%\colorlet{darkblue}{blue!30!black}
% بسته‌ و دستوراتی برای ایجاد لینک‌های رنگی با امکان جهش
\RequirePackage[pagebackref=false,colorlinks,linkcolor=darkblue,citecolor=darkgreen]{hyperref}
% چنانچه قصد پرینت گرفتن نوشته خود را دارید، خط بالا را غیرفعال و  از دستور زیر استفاده کنید چون در صورت استفاده از دستور زیر‌‌، 
% لینک‌ها به رنگ سیاه ظاهر خواهند شد که برای پرینت گرفتن، مناسب‌تر است
%\usepackage[pagebackref=false]{hyperref}
% بسته لازم برای تغییر صفحه اول فصل ها
\RequirePackage{titlesec}
% بسته‌ لازم برای تنظیم سربرگ‌ها
\RequirePackage{fancyhdr}
% بسته‌ای برای ظاهر شدن «مراجع»  در فهرست مطالب
\RequirePackage[nottoc]{tocbibind}
% بسته‌ای برای تنظیم فهرست مطالب
\RequirePackage[subfigure]{tocloft}
%\usetocstyle{allwithdot}
\renewcommand{\cftmarktoc}{\centering}%{فهرست مطالب}
\setlength{\cftbeforetoctitleskip}{0pt} 
\setlength{\cftaftertoctitleskip}{9pt}%\baselineskip
\renewcommand{\cfttoctitlefont}{\hspace{15ex}\bfseries}
\renewcommand{\cftaftertoctitle}{\\[\baselineskip]\bfseries{عنوان\hfill صفحه}}%
%	\\[\baselineskip]\mbox{}\hfill{\normalfont صفحه}}
\renewcommand{\cftchapdotsep}{\cftdotsep}
\renewcommand{\cftchappresnum}{فصل\space\@tartibi}
\renewcommand{\cftchapaftersnum}{:\space}

\newlength{\mylen} % a "scratch" length
\settowidth{\mylen}{\bfseries{فصل\space\space\space}\cftchapaftersnum} % extra space
\addtolength{\cftchapnumwidth}{\mylen} % add the extra space

\renewcommand{\cftmarklof}{\centering}%{فهرست شکل‌ها}
\setlength{\cftbeforeloftitleskip}{0pt} 
\setlength{\cftafterloftitleskip}{9pt}%\baselineskip
\renewcommand{\cftloftitlefont}{\hspace{15ex}\bfseries}
\renewcommand{\cftafterloftitle}{\\[\baselineskip]\bfseries{عنوان\hfill صفحه}}%
\renewcommand{\cftfigpresnum}{شکل}
\renewcommand{\cftfigaftersnum}{-\space}
\newlength{\mylent} % a "scratch" length
\settowidth{\mylent}{\bfseries{\cftfigpresnum\space}\cftfigaftersnum} % extra space
\addtolength{\cftfignumwidth}{\mylent} % add the extra space
\setlength{\cftfigindent}{0pt}
\setlength{\cftbeforefigskip}{0pt}
\renewcommand{\@pnumwidth}{5mm} \renewcommand{\@tocrmarg}{10mm}


%بسته‌ای برای تنظیم پانویس
\RequirePackage[hang,flushmargin]{footmisc}%,perpage,splitrule,ragged
%\RequirePackage{perpage}
%\MakePerPage{footnote}‎

% بسته‌ای برای نگارش معادلات شیمیایی
%\RequirePackage{mhchem}
% بسته‌ای برای تنطیم حاشیه‌های بالا، پایین، چپ و راست صفحه
\RequirePackage[paperwidth=165mm, paperheight=235mm, top=20mm, bottom=20mm, left=20mm, right=25mm,asymmetric]{geometry}%, twoside
% دستورات مربوط به ایجاد نمایه
\RequirePackage{makeidx}
\makeindex
%%%%%%%%%%%%%%%%%%%%%%%%%%
% فراخوانی بسته زی‌پرشین و تعریف قلم فارسی و انگلیسی
\RequirePackage[quickindex]{xepersian}

\settextfont[Scale=1]{Bahij Nazanin}
\setdigitfont[Scale=0.9]{Yas}
\setlatintextfont[Scale=0.9]{Times New Roman}%{XB Zar}

\newcommand*{\BeginNoToc}{%
	\addtocontents{toc}{%
		\edef\protect\SavedTocDepth{\protect\the\protect\value{tocdepth}}%
	}%
	\addtocontents{toc}{%
		\protect\setcounter{tocdepth}{-10}%
	}%
}
\newcommand*{\EndNoToc}{%
	\addtocontents{toc}{%
		\protect\setcounter{tocdepth}{\protect\SavedTocDepth}%
	}%
}


\renewcommand{\thesection}{\thechapter-\arabic{section}-}
\renewcommand{\thesubsection}{\thesection\arabic{subsection}-}
\renewcommand\thefigure{\thechapter-\arabic{figure}}
\renewcommand\theequation{\thechapter-\arabic{equation}}

%\renewcommand\footnoterule{%
%	\kern-3\p@
%	\hrule\@width \textwidth
%	\kern2.6\p@}
%\newcommand\footnotefullrule{%
%		\kern-3\p@
%		\hrule\@width \textwidth
%		\kern2.6\p@}
%\renewcommand{\footnoterule}
%{\noindent\smash{\rule[3pt]{\textwidth}{0.4pt}}}
%\newcommand{\footnotefullrule}{\noindent\smash{\rule[3pt]{\textwidth}{0.4pt}}}

\titleformat
{\chapter} % command
[display] % shape
{\bfseries\fontsize{16}{16}\selectfont} % format\itshape
{\centering\vspace{25pt}\@chapapp\space \tartibi{chapter}} % label
{24pt} % sep
{
%	\rule{\textwidth}{1pt}
%	\vspace{90pt}
	\centering
} % before-code
[
\vspace{-5pt}%
%\rule{\textwidth}{0.3pt}
] % after-code

\titleformat{\section}[hang]
{\normalfont\bfseries}
{\thesection}{0.5em}{}
\titlespacing{\section}{0pt}{14pt}{0pt}
\titleformat{\subsection}[hang]
{\normalfont\bfseries}
{\thesubsection}{0.5em}{}
\titlespacing{\subsection}{0pt}{14pt}{0pt}

%\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
%	\if@mainmatter
%	\refstepcounter{chapter}%
%	\typeout{\@chapapp\space\thechapter.}%
%	\addcontentsline{toc}{chapter}%
%	{\chaptername~\protect\numberline{\@tartibi\c@chapter:}~~#1}%
%	\else
%	\addcontentsline{toc}{chapter}{#1}%
%	\fi
%	\else
%	\addcontentsline{toc}{chapter}{#1}%
%	\fi
%	\chaptermark{#1}%
%	\addtocontents{lof}{\protect\addvspace{10\p@}}%
%	\addtocontents{lot}{\protect\addvspace{10\p@}}%
%	\if@twocolumn
%	\@topnewpage[\@makechapterhead{#2}]%
%	\else
%	\@makechapterhead{#2}%
%	\@afterheading
%	\fi}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\renewcommand*\l@section{\@dottedtocline{1}{4.3em}{2.3em}}        
%\renewcommand*\l@subsection{\@dottedtocline{2}{6.5em}{3.2em}} 

\pagestyle{fancy}
\fancyhf{}
\fancyhead[ERH]{\bfseries\small\@chapapp\space \tartibi{chapter}:~\leftmark}
\fancyhead[ELH]{\bfseries\small\@subject~\@type}
\fancyhead[ORH]{\bfseries\small\@title}
\fancyfoot[C]{\small\thepage}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\newcommand{\ftexttt}[1]{\texttt{\frenchspacing#1}}

\assignpagestyle{\chapter}{empty}

\newcommand{\heye}{ه\hspace{-0.28ex}\raisebox{.65ex}{\scriptsize{ی}}\hspace{.5ex}}
\newcommand{\tharrow}[1]{\rotatebox[origin=bc]{#1}{\linethickness{1.3mm}\line(0,1){5}\put(-1.20,5.1){\textcolor{white}{\large$\blacktriangle$}}\put(-1.37,5){$\triangle$}}}
\renewcommand{\bibname}{منابع}%\rightline{مراجع}
\renewcommand{\listfigurename}{فهرست شکل‌ها}

\def\university#1{\gdef\@university{#1}}
\def\department#1{\gdef\@department{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\def\supervisor#1{\gdef\@supervisor{#1}}
\def\advisorfirst#1{\gdef\@advisorfirst{#1}}
\def\advisorsecond#1{\gdef\@advisorsecond{#1}}
\def\advisorthird#1{\gdef\@advisorthird{#1}}
\def\advisorfourth#1{\gdef\@advisorfourth{#1}}
\def\externalreferee#1{\gdef\@externalreferee{#1}}
\def\internalreferee#1{\gdef\@internalreferee{#1}}
\def\tit#1{\gdef\@tit{#1}}
\def\type#1{\gdef\@type{#1}}
\def\city#1{\gdef\@city{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\subject#1{\gdef\@subject{#1}}
\def\field#1{\gdef\@field{#1}}
\def\score#1{\gdef\@score{#1}}
\def\studentno#1{\gdef\@studentno{#1}}

\def\latintitle#1{\gdef\@latintitle{#1}}
\def\latinauthor#1{\gdef\@latinauthor{#1}}
\def\latindegree#1{\gdef\@latindegree{#1}}
\def\latinfield#1{\gdef\@latinfield{#1}}
\def\latinfaculty#1{\gdef\@latinfaculty{#1}}
\def\latinthesisdate#1{\gdef\@latinthesisdate{#1}}
\def\latintype#1{\gdef\@latintype{#1}}
\def\latinsubject#1{\gdef\@latinsubject{#1}}
\def\latinshorttype#1{\gdef\@latinshorttype{#1}}
\def\latinsupervisor#1{\gdef\@latinsupervisor{#1}}
\def\latinsupervisorshort#1{\gdef\@latinsupervisorshort{#1}}
\def\latinadvisorfirst#1{\gdef\@latinadvisorfirst{#1}}
\def\latinadvisorsecond#1{\gdef\@latinadvisorsecond{#1}}
\def\latinadvisorthird#1{\gdef\@latinadvisorthird{#1}}
\def\latinadvisorfourth#1{\gdef\@latinadvisorfourth{#1}}
\def\latinexternalreferee#1{\gdef\@latinexternalreferee{#1}}
\def\latininternalreferee#1{\gdef\@latininternalreferee{#1}}
\def\latincity#1{\gdef\@latincity{#1}}
\def\latinuniversity#1{\gdef\@latinuniversity{#1}}
\def\latindepartment#1{\gdef\@latindepartment{#1}}
\def\latinscore#1{\gdef\@latinscore{#1}}
\def\pagenumber#1{\gdef\@pagenumber{#1}}

\def\equationname{\if@RTL معادله\else Equation\fi}
\renewcommand{\baselinestretch}{1.2}
\let\OLDthebibliography\thebibliography
\renewcommand\thebibliography[1]{
	\OLDthebibliography{#1}
	\setlength{\parskip}{0pt}
	\setlength{\itemsep}{0pt plus 0.3ex}
}



\def\BISMILLAH{\begin{titlepage}{
%\vspace{1mm}
%\vskip 1cm
\includegraphics[height=10cm]{Besmellah.pdf}}
\end{titlepage}}

\def\makeonvan{\begin{titlepage}
{\includegraphics[height=4.3cm]{logo.eps}}
\centerline{\large\bfseries{\@faculty}} 
%\vskip 1.5cm
%\addtolength{\baselineskip}{5mm}
%\large\bf{\@department}
\vskip 2mm
{\large\bfseries\@subject\space \@type ~در رشته\par
 \@degree ~-~\@field}
\vskip 17mm
{\Large\bfseries{\@title}} \par
\addtolength{\baselineskip}{-5mm}
\vskip 17mm
{\normalsize\by}\par
{\large\bfseries\@author}\par
\vskip15mm
\normalsize\undersupervision \par
{\large\bfseries\@supervisor}%\supervisorfont
\vskip 15mm

{\bfseries\@thesisdate}

\vfill
\end{titlepage}%
}
\def\signpage{\newpage\pagestyle{empty}
%	\begin{titlepage}
\begin{center}
	

\bfseries به نام خدا
\vskip 8mm
{\large\bfseries\@title}
\vskip 8mm
\normalfont\normalsize به کوشش
\vskip 1mm
{\bfseries\@author}
\vskip 8mm\normalfont\normalsize
\@subject
\vskip 1mm 
{ارائه شده به~\@university ~به عنوان بخشی از فعالیت‌های تحصیلی لازم\vskip 1mm برای اخذ درجه~\@type}
\vskip 8mm
در رشته
\vskip 1mm
\@degree~-~\@field
\vskip 8mm
\@university
\vskip 1mm
\@city
\vskip 1mm
جمهوری اسلامی ایران
\vskip 12mm
\rightline{\bfseries ارزیابی کمیته~\@subject، با  درجه:~\@score}
\vskip 1mm
\normalfont\normalsize
\@supervisor ، دانشیار \@department~ (استاد راهنما) \dotfill \vskip 1mm
\@advisorfirst ، استاد \@department~ (استاد مشاور) \dotfill \vskip 1mm
\@advisorsecond ، استاد \@department~ (استاد مشاور) \dotfill \vskip 1mm
\@advisorthird ، دانشیار \@department~ (استاد مشاور) \dotfill \vskip 1mm
\@externalreferee ، دانشیار دانشکده فیزیک، دانشگاه تهران (داور خارج از دانشگاه) \dotfill \vskip 1mm
\@internalreferee ، استادیار \@department~ (داور متخصص داخلی) \dotfill% \vskip 3mm
%\@advisorfourth ، استادیار \@department (استاد مشاور) \dotfill
\vskip 8mm
\centerline{\@thesisdate}
\end{center}
%\end{titlepage}
}

\def\latinsignpage{\begin{titlepage}\begin{LTR}
\centerline{\bfseries {In the Name of God}}
\vskip 8mm
\hline
{\large\bfseries{\@latintitle}}
\vskip 1.1cm
\normalsize{By}
\vskip 1mm
{\bfseries{\@latinauthor}}
\vskip 8mm
\normalsize{\@latinsubject}
\vskip 6mm 
{Submitted to Shiraz University in Partial Fulfillment of the Requirements for the\\ Degree of~\@latintype}
\vskip 8mm
{In}
\vskip 1mm
\@latindegree~-~\@latinfield
\vskip 8mm
\@latinuniversity
\vskip 1mm
\@latincity
\vskip 1mm
Islamic Republic of Iran
\vskip 8mm
%\leftline
\begin{flushleft}
	{\bfseries{Evaluated and Approved by the~\@latinsubject~ Committee as:~\@latinscore}}
	\vskip 3mm
\normalfont\normalsize{	
%\makebox[80ex][l]{\bfseries{Evaluated and Approved by the~\@latinsubject~ Committee as:~\@latinscore}}
%\vskip 3mm
%\makebox[20ex][l]{\dotfill}\parbox[t]{60ex}{\MakeUppercase\@latinsupervisorshort , Ph.D., ASSISTANT PROF. OF \MakeUppercase\@latindepartment~(CHAIRMAN)} \vskip 1cm
%\makebox[20ex][l]{\dotfill}\parbox[t]{60ex}{\MakeUppercase\@latinadvisorfirst , Ph.D., PROF. OF \MakeUppercase\@latindepartment} \vskip 1cm
%\makebox[20ex][l]{\dotfill}\parbox[t]{60ex}{\MakeUppercase\@latinadvisorsecond , Ph.D., ASSOCIATE PROF. OF \MakeUppercase\@latindepartment} \vskip 1cm
%\makebox[20ex][l]{\dotfill}\parbox[t]{60ex}{\MakeUppercase\@latinadvisorthird , Ph D. ASSISTANT PROF. OF \MakeUppercase\@latindepartment} \vskip 1cm
%\makebox[20ex][l]{\dotfill}\parbox[t]{60ex}{\MakeUppercase\@latinadvisorfourth , Ph D. ASSISTANT PROF. OF \MakeUppercase\@latindepartment}
}
\end{flushleft}
\vskip 8mm
\centerline{\bfseries{\@latinthesisdate}}			
\end{LTR}
\end{titlepage}
}

\def\ezharname{\newpage
\thispagestyle{empty}
\centerline{بـه نـام خـدا}
\vskip 1cm
\centerline{\Large\bfseries{اظهارنامه}}
\vskip 1cm
این جانب \@author~(\@studentno) ~دانشجوی رشته \@degree ~گرایش \@field ~دانشكده \@faculty ~اظهارمی کنم که این پایان نامه حاصل پژوهش خودم بوده و در جاهایی که از منابع دیگران استفاده کرده ام، نشانی دقیق و مشخصات کامل آن را نوشته ام. همچنین اظهار می کنم که تحقیق و موضوع پایان نامه ام تکراری نیست و تعهد می نمایم که بدون مجوز دانشگاه دستاوردهای آن را منتشر ننموده و یا در اختیار غیر قرار ندهم. کلیه حقوق این اثر مطابق با آیین نامه مالکیت فکری و معنوی متعلق به دانشگاه شیراز است.
\vskip 1.5cm
\centerline{نام ونام خانوادگی:}
\vskip .5cm
\centerline{تاریخ و امضا:}
}

\def\abstractpage#1{\newpage
\thispagestyle{plain}
\setcounter{page}{8}
%\vskip 1cm
\begin{center}{\bfseries\abstractname \\}
\vskip 15pt
\bfseries{ \@title} \\
\vskip 28pt
\normalfont\by \\
%\vskip .2cm
\bfseries\@author
\end{center}
\vskip 15pt
\normalsize
\par {#1}
%\begin{abstract}}
%\def\endabstractpage{\end{abstract}
\newpage
}

\def\latinabstract{\newpage
\thispagestyle{empty}
\vskip 2cm
\begin{center}{\large\bfseries ABSTRACT \\[1cm]}
{\Large\bfseries \MakeUppercase{\@latintitle} \\[5mm]}
BY \\[3mm]
{\large\bfseries\MakeUppercase{\@latinauthor} \\}
\end{center}
\vspace{1.5cm}}

\def\endlatinabstract{\newpage}

\def\acknowledgementpage{\newpage
\thispagestyle{empty}
%\centerline{\Large \bfseries\acknowledgementname}

\vspace{1cm}
\par\noindent}
\def\endacknowledgementpage{\newpage}

\def\titlepage{\newpage\centering
  \thispagestyle{empty}
  \parindent 0pt \parskip 10pt plus 1fil minus 1fil
  \def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup\newpage}

\def\signature#1#2{\par\noindent#1\dotfill\null\\*
  {\raggedright #2\par}}

\def\abstract{\subsection*{\abstractname}\small
\@normalsize}
\def\endabstract{\par}

\pagenumbering{harfi}
\let\ol@chapter\@chapter
\def\@chapter{%
  \ifnum\c@chapter=0 \pagenumbering{arabic}\setcounter{page}{1}\fi
  \ol@chapter}





%\pagenumbering{harfi}
%\let\ol@chapter\@chapter
%\def\@chapter{%
%  \ifnum\c@chapter=0 \pagenumbering{arabic}\setcounter{page}{1}\fi
%\ifnum\c@chapter=-1 \setcounter{chapter}{0}\fi
%  \ol@chapter}

\def\keywords#1{\par \vspace{2pt}
{\bfseries{واژگان کلیدی:}} {\normalfont{ #1}}}

\def\latinkeywords#1{\par \vspace{5mm}
\noindent {\textbf{Keywords:}} {\textit{ #1}}}

\font\titlefont=cmssbx10 scaled 2074
\font\supervisorfont=cmbxti10


\def\makelatintitle{\begin{titlepage}
{\includegraphics[height=4.3cm]{logo}}
\centerline{\large\bfseries\@latinuniversity} 
%\vskip 1.5cm
%\addtolength{\baselineskip}{5mm}
\large\bfseries
\@latinfaculty\space 
\vskip 5mm
{\Large\@latinshorttype Thesis\par
 In \@latindegree}
\vskip 1cm
{\Large\bfseries\MakeUppercase{\@latintitle}} \par
\addtolength{\baselineskip}{-5mm}
\vskip 15mm
{\bfseries\latinby}\par
{\Large\bfseries \@latinauthor}\par
\vskip25mm
\normalsize\latinundersupervision \par
{\large\bfseries\@latinsupervisor}%\supervisorfont
\vskip 15mm
%Advisor\par
%{\supervisorfont\@latinadvisor}
%\vskip 5mm


\par
\vskip 1cm

\par
\vskip 1cm
%\@latincity

{\@latinthesisdate}
\par
\vskip 1cm

\par


\vfill
\end{titlepage}%
}
%\def\faculty{ }


\def\onvan{با عنوان}

\def\writtenfor{برای دریافت درجه }

\def\undersupervision{استاد راهنما}

\def\coadvisor{استاد مشاور}

\def\by{به کوشش}
%\def\departmentof{گروه}
%\def\universityof{دانشگاه}
\def\latinby{by}
\def\latinwrittenfor{DISSERTATION SUBMITTED IN PARTIAL
\\[.2cm]
 FULFILLMENT OF THE
REQUIREMENTS FOR THE 
\\[.2cm]
DEGREE OF}
\def\latinundersupervision{Supervised by}%{Under supervision of}

%\def\listfigurename{\if@RTL لیست تصاویر\else List of Figures\fi}
%\def\listtablename{\if@RTL لیست جداول\else List of Tables\fi}
%\def\appendixname{\if@RTL پیوست\else Appendix\fi}
%\def\indexname{\if@RTL نمایه\else Index\fi}
%\def\abstractname{\if@RTL چکیده\else Abstract\fi}
%\def\datename{\if@RTL تاریخ:\else Date:\fi}
%\def\bibname{\if@RTL مراجع\else Bibliography\fi}
%\def\enclname{\if@RTL پیوست\else encl\fi}


%\def\@adadi#1{\ifcase#1 \or یک\or دو\or سه\or چهار\or پنج\or شش\or هفت\or هشت\or نه\or ده\or یازده\or دوازده\or سیزده\or چهارده\or پانزده\or شانزده\or هفده\or هجده\or نوزده\or بیست\else\@ctrerr\fi}
%\def\adadi#1{\expandafter\@adadi\csname c@#1\endcsname}
%\def\@tartibi#1{\ifcase#1 \or اول \or دوم \or سوم \or چهارم \or پنجم \or ششم \or هفتم \or هشتم \or نهم \or دهم \or یازدهم \or دوازدهم \or سیزدهم \or چهاردهم \or پانزدهم \or شانزدهم \or هفدهم \or هجدهم \or نوزدهم \or بیستم\else\@ctrerr\fi}
%\def\tartibi#1{\expandafter\@tartibi\csname c@#1\endcsname}




%% 
%% Copyright © 2008-2009      by Vafa Khalighi     <vafa@users.berlios.de>
%% 
%% Distributable under the LaTeX Project Public License,
%% version 1.3c or higher (your choice). The latest version of
%% this license is at: http://www.latex-project.org/lppl.txt
%% 
%% This work is "maintained" (as per LPPL maintenance status)
%% by Vafa Khalighi.
%% 
%% 
%% 
%% 
%%
%% End of file `xepersian-thesis.cls'.
