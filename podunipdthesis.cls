% ADAPTED FOR MSc OF PHYSICS OF DATA
% INJ
% LaTeX class for BSc/MSc theses at dfa.unict.it
% (c) 2018, 2019, 2020, 2021 G. G. N. Angilella <giuseppe.angilella@ct.infn.it>
\NeedsTeXFormat{LaTeX2e}
%\ProvidesClass{dfaunictthesis}[2018/10/14 LaTeX class for BSc/MSc theses at dfa.unict.it]
%\ProvidesClass{dfaunictthesis}[2019/03/10 LaTeX class for BSc/MSc theses at dfa.unict.it]
\ProvidesClass{dfaunictthesis}[2021/03/25 LaTeX class for BSc/MSc theses at dfa.unict.it]
\LoadClass[12pt,twoside]{book}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage[a-1b]{pdfx}
\RequirePackage{graphicx}
\RequirePackage{amsfonts}
\RequirePackage{amsbsy}
\RequirePackage{environ}
\RequirePackage[sc]{mathpazo}
\linespread{1.05}         % Palladio needs more leading (space between lines)


%\usepackage{lipsum}
%\usepackage{verbatim}

\RequirePackage{xifthen}
\RequirePackage{refcount}
\RequirePackage{xstring}

\newcommand{\thesistype}{BSc}

\newcommand\aayear[1]{\renewcommand\@aayear{#1}}
\newcommand\@aayear{\@latex@error{No \noexpand\aayear given}\@ehc}

\newcommand\phdname[1]{\renewcommand\@phdname{#1}}
\newcommand\@phdname{\@latex@error{No \noexpand\phdname given}\@ehc}

\DeclareOption{BSc}{\renewcommand{\thesistype}{BSc}}
\DeclareOption{MSc}{\renewcommand{\thesistype}{MSc}}
\DeclareOption{VO}{\renewcommand{\thesistype}{VO}}
\DeclareOption{PhD}{\renewcommand{\thesistype}{PhD}}
\DeclareOption{english}{\AtBeginDocument{\selectlanguage{english}}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax


\providecommand*{\supervisorname}{Supervisors}
\providecommand*{\cosupervisorname}{Co-Supervisors}
\providecommand*{\CdLname}{BSc programme in Physics}
\providecommand*{\thesistypename}{final project}
\providecommand*{\aaname}{academic year}

\phdname{physics}

\newcounter{supervisorsno}
\newcounter{cosupervisorsno}

\newcommand\@supervisors{\@latex@error{No supervisors given}\@ehc}
\NewEnviron{supervisors}{\global\let\@supervisors\BODY}

\newcommand\@cosupervisors{}
\newcommand\@cosupervisorscheck{NOCOSUPERVISORS}
\NewEnviron{cosupervisors}{\global\let\@cosupervisors\BODY\global\let\@cosupervisorscheck\@empty}

\newcommand{\supervisor}[3]{\refstepcounter{supervisorsno}#1 \> #2 #3 \\}

\newcommand{\cosupervisor}[3]{\refstepcounter{cosupervisorsno}#1 \> #2 #3 \\}

\newcommand{\svnon}{}

\newcommand{\cosvnon}{}

\AtBeginDocument{%
    \StrBehind{\getrefbykeydefault{svno}{anchor}{}}{.}[\svnon]
    \StrBehind{\getrefbykeydefault{cosvno}{anchor}{}}{.}[\cosvnon]
    \iflanguage{english}{%
        \ifthenelse{\equal{\svnon}{1}}{%
            \renewcommand*\supervisorname{Supervisor}%
        }{%
            \renewcommand*\supervisorname{Supervisors}%
        }
        \ifthenelse{\equal{\cosvnon}{1}}{%
            \renewcommand*\cosupervisorname{Co-Supervisor}%
        }{%
            \renewcommand*\cosupervisorname{Co-Supervisors}%
        }
        \renewcommand*\aaname{academic year}%
        \ifthenelse{\equal{\thesistype}{BSc}}{%
            \renewcommand{\CdLname}{BSc programme in physics of data}%
            \renewcommand{\thesistypename}{final project}%
        }{\relax}
        \ifthenelse{\equal{\thesistype}{MSc}}{%
            \renewcommand{\CdLname}{MSc programme in physics of data}%
            \renewcommand{\thesistypename}{final project}%
        }{\relax}
        \ifthenelse{\equal{\thesistype}{VO}}{%
            \renewcommand{\CdLname}{degree course in physics of data}%
            \renewcommand{\thesistypename}{degree thesis}%
        }{\relax}
        \ifthenelse{\equal{\thesistype}{PhD}}{%
            \renewcommand{\CdLname}{PhD programme in \@phdname}%
            \renewcommand{\thesistypename}{PhD thesis}%
        }{\relax}
    }{\relax}%
}

\newcommand{\maketitlepage}{%
    \begin{titlepage}
        \begin{center}
            \begin{minipage}[c]{0.45\textwidth}
               \begin{flushleft}
                  \includegraphics[width=1\textwidth]{./teximgs/800anni_logo}
               \end{flushleft}
            \end{minipage}
            \hfill
            \begin{minipage}[c]{0.45\textwidth}
               \begin{flushright}
                  \includegraphics[width=.4\textwidth]{./teximgs/PODlogo}
               \end{flushright}
            \end{minipage}\bigskip\\
            \medskip
            {\sc\CdLname}\\
            \hbox to \textwidth{\hrulefill}
            \vspace{3truecm}
            {\sc\@author}
            \vfill
            \uppercase{\sc\@title}
            \vfill
            \centerline{\hbox to 3.5truecm{\hrulefill}}
            \medskip
            {\sc\thesistypename}\\
            \centerline{\hbox to 3.5truecm{\hrulefill}}
            \vfill
            \begin{flushright}
                \begin{minipage}{0.4\textwidth}
                    \begin{tabbing}
                        Chiar.mo \= Prof. P. Pallino \kill
                        \supervisorname: \> \\
                        \@supervisors
                        \label{svno}%
                        \ifthenelse{\equal{\expandafter\@cosupervisorscheck}{NOCOSUPERVISORS}}{%
                           \relax
                        }{%
                           \medskip\\
                           \cosupervisorname: \> \\
                           \@cosupervisors
                           \label{cosvno}
                        }
                    \end{tabbing}
                \end{minipage}
            \end{flushright}
            \vfill
            \hbox to \textwidth{\hrulefill}
            {\sc\aaname{} \@aayear}
        \end{center}
    \end{titlepage}
}
