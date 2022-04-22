\ProvidesClass{ldr-simple-gray}[2022/04/23 v1.00 yuhldr yuhldr@qq.com]
\NeedsTeXFormat{LaTeX2e}

\LoadClass{ctexbeamer}

\RequirePackage{fontspec}

% 分步动画
\RequirePackage{arev}

% 连续参考文献横杠连接
% \RequirePackage{cite}
% 数学
\RequirePackage{amsmath,amsfonts,amssymb,mathrsfs}

% 图
\RequirePackage{graphicx}
\graphicspath{{images/}{figures/}}


% 图片复杂排版，可以每个图自定义标题
\usepackage{subfigure}
\usepackage{float}


% 三线表格
\RequirePackage{tabularx}
\RequirePackage{booktabs}


%============================ 我自己用的一些小命令 =========%
% 
% 针对那些使用mendeley这一类软件的，直接复制（导出）过来的参考文献，可以在参考文献处点击跳转到文献所在网址
\providecommand \doibase [0]{http://dx.doi.org/}%

% 正文中有些下角标等公式，我们并不想让它斜体，公式不斜体:如 \eqrm{MoS_2}
\newcommand{\eqrm}[1]{
    $\rm #1 $
}

% 表格文字居中，其实就是相当于表格合并
% 用法 \tabincell{c}{物理//量//单位}
\newcommand{\tabincell}[2]{ \begin{tabular}{ #1 } #2 \end{tabular}}


% 物理单位埃，已经加了 $ $， 不要再放在$$环境里面
\newcommand{\angstrom}{
    \mathring{\text{A}}
}


% 右上角的参考文献  \upcite{}
% \newcommand{\upcite}[1]{\textsuperscript{\textsuperscript{\cite{#1}}}}

\RequirePackage[backend=bibtex, isbn=false, url=false]{biblatex}
\setbeamerfont{footnote}{size=\tiny}
\addbibresource{database.bib}



%============================ 我自己用的一些小命令 =========%



% 设置以后有问题。。。
% \hypersetup{
%     colorlinks=true,
%     linkcolor=Logo2,
%     filecolor=Logo2,
%     urlcolor=Logo2,
%     citecolor=Logo2,
% }


% 这个好简洁

\usepackage[utf8]{inputenc}
% Frankfurt Madrid
\usetheme{Madrid}
\usecolortheme{default}
\useinnertheme{circles}

\definecolor{Logo1}{rgb}{0.208, 0.2865, 0.373}
\definecolor{Logo2}{rgb}{0.000, 0.674, 0.863}

\setbeamercolor*{palette primary}{bg=Logo1, fg=white}
\setbeamercolor*{palette secondary}{bg=Logo2, fg=white}
\setbeamercolor*{palette tertiary}{bg=white, fg=Logo1}
\setbeamercolor*{palette quaternary}{bg=Logo1,fg=white}
\setbeamercolor{structure}{fg=Logo1} % itemize, enumerate, etc
\setbeamercolor{section in toc}{fg=Logo1} % TOC sections



% 复杂的是人。。。。
% 自定义单个界面
\defbeamertemplate*{frametitle}{}{%
    \nointerlineskip%
  \setbeamercolor{titlebar}{fg=white,bg=Logo1}%

    \begin{beamercolorbox}[wd=\paperwidth, ht=0.72cm]{titlebar}%

    \strut\hskip 10pt \raisebox{1mm}{\zihao{3}\insertframetitle}\strut
    \hfill
    \includegraphics[width=2.8cm]{lzu_logo2}

    \end{beamercolorbox}
}



% 为了兼容，我把这里注释了，建议自己安装并设置好看的字体
% % 设置中文字体
% \setCJKmainfont{KaiTi}
% \setCJKsansfont{KaiTi}
% \setCJKmonofont{KaiTi}

% % 设置英文字体
% % https://fonts.google.com/specimen/Andika+New+Basic
% \setmainfont{Andika New Basic}
% \setsansfont{Andika New Basic}

% % 代码字体
% % https://fonts.google.com/specimen/Ubuntu+Mono
% \setmonofont{Ubuntu Mono}



%------------------------------------------------------------
%目录设置

\AtBeginSection[]
{
  \begin{frame}
    \frametitle{目录}
    \tableofcontents[currentsection]
  \end{frame}
}
%------------------------------------------------------------

