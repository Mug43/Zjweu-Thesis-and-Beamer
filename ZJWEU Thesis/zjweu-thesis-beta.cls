% !TeX program = xelatex
%% zjweu-thesis-beta.cls
%% 浙江水利水电学院毕业设计（论文）LaTeX模板类文件
%% Version: 0.1.0-beta
%% Author: Copilot
%% License: MIT License
%% Date: 2026-01-04

%---------------------------------------------------------------------------------
% 版本信息
%---------------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zjweu-thesis-beta}[2026/01/04 v0.1.0-beta Zhejiang University of Water Resources and Electric Power Thesis Template]

%---------------------------------------------------------------------------------
% 类选项处理
%---------------------------------------------------------------------------------
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

%---------------------------------------------------------------------------------
% 加载基础类
%---------------------------------------------------------------------------------
\LoadClass[a4paper,zihao=-4,openany]{ctexbook}

%---------------------------------------------------------------------------------
% 1. 页面与版面设置
%---------------------------------------------------------------------------------
\RequirePackage{geometry}
\geometry{
    a4paper,
    top=28mm,
    bottom=28mm,
    right=28mm,
    left=30mm,
    headheight=15pt
}

%---------------------------------------------------------------------------------
% 2. 超链接包（必须在 fontspec 前）
%---------------------------------------------------------------------------------
\RequirePackage{hyperref}
\hypersetup{
    colorlinks=false,
    pdfborder={0 0 0}
}

%---------------------------------------------------------------------------------
% 3. 字体配置
%---------------------------------------------------------------------------------
\RequirePackage{fontspec}
% 设置英文字体为 Times New Roman
\setmainfont{Times New Roman}
% 设置中文字体（使用伪粗体）
\setCJKmainfont[AutoFakeBold={2.17}]{SimSun}
\setCJKfamilyfont{zhsong}[AutoFakeBold={2.17}]{SimSun}
\setCJKfamilyfont{kai}[AutoFakeBold={2.17}]{KaiTi}
\renewcommand*{\songti}{\CJKfamily{zhsong}}

%---------------------------------------------------------------------------------
% 4. 页眉页脚设置
%---------------------------------------------------------------------------------
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}

% 页眉：居中，五号楷体
\newcommand{\zjweuheader}[1]{%
    \fancyhead[C]{\zihao{5}\CJKfamily{kai}#1}
}

% 默认页眉
\zjweuheader{浙江水利水电学院××届毕业设计（论文）}

% 页脚：居中，页码
\fancyfoot[C]{\thepage}

% 页眉线宽度
\renewcommand{\headrulewidth}{0.5pt}

%---------------------------------------------------------------------------------
% 5. 标题格式设置
%---------------------------------------------------------------------------------
\RequirePackage{titlesec}

\ctexset{
    chapter = {
        name = {第,章},
        number = \chinese{chapter},
        format = {\centering\zihao{3}\bfseries\songti},
        beforeskip = 1\baselineskip,
        afterskip = 1\baselineskip,
        fixskip = true,
        break = \clearpage,
    },
    section = {
        name = {},
        number = \arabic{chapter}.\arabic{section},
        format = {\raggedright\zihao{-3}\bfseries\songti},
        beforeskip = 1\baselineskip,
        afterskip = 1\baselineskip,
    },
    subsection = {
        name = {},
        number = \arabic{chapter}.\arabic{section}.\arabic{subsection},
        format = {\raggedright\zihao{4}\bfseries\songti},
        beforeskip = 0pt,
        afterskip = 0pt,
    }
}

% 目录标题格式
\renewcommand{\contentsname}{目\quad 录}

% 正文默认设置
\AtBeginDocument{
    \zihao{-4}\songti
    \setlength{\baselineskip}{22bp}
    \setlength{\parindent}{2em}
}

%---------------------------------------------------------------------------------
% 6. 目录样式设置
%---------------------------------------------------------------------------------
\RequirePackage{titletoc}

\titlecontents{chapter}[0em]
{\addvspace{6pt}\bfseries\zihao{-4}\songti}
{\thecontentslabel\hspace{1em}}
{}
{\titlerule*[0.5pc]{.}\contentspage}

\titlecontents{section}[2em]
{\zihao{-4}\songti}
{\thecontentslabel\hspace{1em}}
{}
{\titlerule*[0.5pc]{.}\contentspage}

%---------------------------------------------------------------------------------
% 7. 图表公式设置
%---------------------------------------------------------------------------------
\RequirePackage{amsmath}
\RequirePackage{graphicx}
\RequirePackage{caption}
\RequirePackage{float}
\RequirePackage{booktabs}
\RequirePackage{tabularx}

% 设置公式、图表按章节编号
\numberwithin{equation}{chapter}
\numberwithin{figure}{chapter}
\numberwithin{table}{chapter}

% 图表标题和内容：五号宋体，居中
\DeclareCaptionFont{five}{\zihao{5}\songti}
\captionsetup{
    font=five,
    labelsep=quad,
    labelfont=five,
    textfont=five,
    justification=centering
}

%---------------------------------------------------------------------------------
% 8. 引用与参考文献
%---------------------------------------------------------------------------------
\RequirePackage[sort&compress,super,square]{natbib}
\RequirePackage{etoolbox}
\AtBeginEnvironment{thebibliography}{
    \zihao{5}
    \setlength{\baselineskip}{20bp}
    \addtolength{\itemsep}{-0.5em}
}

%---------------------------------------------------------------------------------
% 9. 其他辅助包
%---------------------------------------------------------------------------------
\RequirePackage{setspace}
\widowpenalty=10000
\clubpenalty=10000

%---------------------------------------------------------------------------------
% 10. 自定义环境：摘要
%---------------------------------------------------------------------------------
% 中文摘要环境
\newenvironment{cnabstract}{
    \clearpage
    \phantomsection
    \begin{center}
        \vspace*{\baselineskip}
        {\zihao{-3}\bfseries\songti 摘\quad 要}
        \vspace*{\baselineskip}
    \end{center}
    \zihao{-4}\songti\setlength{\baselineskip}{20bp}
    \setlength{\parindent}{2em}
    \par\noindent\indent
}{
    \par
}

% 中文关键词命令
\newcommand{\cnkeywords}[1]{
    \vspace{1ex}
    \noindent
    {\zihao{-3}\bfseries\songti 关键词}：
    {\zihao{-4}\songti #1}
}

% 英文摘要环境
\newenvironment{enabstract}{
    \clearpage
    \phantomsection
    \begin{center}
        \vspace*{\baselineskip}
        {\zihao{-3}\bfseries Abstract}
        \vspace*{\baselineskip}
    \end{center}
    \zihao{-4}\setlength{\baselineskip}{20bp}
    \setlength{\parindent}{2em}
    \par\noindent\indent
}{
    \par
}

% 英文关键词命令
\newcommand{\enkeywords}[1]{
    \vspace{1ex}
    \noindent
    {\zihao{-3}\bfseries Keywords}:
    {\zihao{-4} #1}
}

%---------------------------------------------------------------------------------
% 11. 封面信息命令（预留接口）
%---------------------------------------------------------------------------------
\newcommand{\zjweuthesistitle}[1]{\def\@zjweuthesistitle{#1}}
\newcommand{\zjweuauthor}[1]{\def\@zjweuauthor{#1}}
\newcommand{\zjweumajor}[1]{\def\@zjweumajor{#1}}
\newcommand{\zjweuadvisor}[1]{\def\@zjweuadvisor{#1}}
\newcommand{\zjweudate}[1]{\def\@zjweudate{#1}}

% 默认值
\zjweuthesistitle{论文题目}
\zjweuauthor{学生姓名}
\zjweumajor{专业名称}
\zjweuadvisor{指导教师}
\zjweudate{\today}

%---------------------------------------------------------------------------------
% 12. 封面生成命令（预留）
%---------------------------------------------------------------------------------
\newcommand{\makecover}{
    % 封面生成代码，可根据学校具体要求定制
    \thispagestyle{empty}
    \begin{center}
        \vspace*{2cm}
        {\zihao{1}\bfseries\songti 浙江水利水电学院} \\[1cm]
        {\zihao{2}\bfseries\songti 毕业设计（论文）} \\[3cm]
        {\zihao{-2}\bfseries\songti \@zjweuthesistitle} \\[2cm]
        \begin{tabular}{rl}
            {\zihao{-3}\songti 姓\quad 名：} & {\zihao{-3}\songti \@zjweuauthor} \\[0.5cm]
            {\zihao{-3}\songti 专\quad 业：} & {\zihao{-3}\songti \@zjweumajor} \\[0.5cm]
            {\zihao{-3}\songti 指导教师：} & {\zihao{-3}\songti \@zjweuadvisor} \\[0.5cm]
            {\zihao{-3}\songti 完成日期：} & {\zihao{-3}\songti \@zjweudate} \\
        \end{tabular}
    \end{center}
    \clearpage
}

%---------------------------------------------------------------------------------
% 结束类定义
%---------------------------------------------------------------------------------
\endinput
