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
    headheight=15pt,
    headsep=15mm,
    footskip=17.5mm
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
% 注意：以下设置会覆盖 ctexbook 默认配置，产生的重复定义警告可以忽略
\setCJKmainfont[AutoFakeBold={2.17}]{SimSun}
\setCJKfamilyfont{zhsong}[AutoFakeBold={2.17}]{SimSun}
\setCJKfamilyfont{kai}[AutoFakeBold={2.17}]{KaiTi}
\setCJKfamilyfont{hei}[AutoFakeBold={2.17}]{SimHei}
\renewcommand*{\songti}{\CJKfamily{zhsong}}
\renewcommand*{\heiti}{\CJKfamily{hei}}

%---------------------------------------------------------------------------------
% 4. 页眉页脚设置
%---------------------------------------------------------------------------------
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}

% 保存自定义页眉文本
\def\@zjweuheadertext{浙江水利水电学院××届毕业设计（论文）}

% 页眉：居中，五号楷体
\newcommand{\zjweuheader}[1]{%
    \def\@zjweuheadertext{#1}%
    \fancyhead[C]{\zihao{5}\CJKfamily{kai}#1}
}

% 默认页眉
\zjweuheader{浙江水利水电学院××届毕业设计（论文）}

% 页脚：居中，页码
\fancyfoot[C]{\thepage}

% 页眉线宽度
\renewcommand{\headrulewidth}{0.5pt}

% 确保章节首页也使用相同的自定义页眉
\fancypagestyle{plain}{%
    \fancyhf{}
    \fancyhead[C]{\zihao{5}\CJKfamily{kai}\@zjweuheadertext}
    \fancyfoot[C]{\thepage}
    \renewcommand{\headrulewidth}{0.5pt}
}

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

% 防止标题孤行
\clubpenalty=10000
\widowpenalty=10000
\displaywidowpenalty=10000

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

% 章标题：小四号、宋体、加粗
\titlecontents{chapter}[0em]
{\addvspace{6pt}\bfseries\zihao{-4}\songti}
{\thecontentslabel\hspace{1em}}
{}
{\titlerule*[0.5pc]{.}\contentspage}

% 节标题：小四号、宋体
\titlecontents{section}[2em]
{\zihao{-4}\songti}
{\thecontentslabel\hspace{1em}}
{}
{\titlerule*[0.5pc]{.}\contentspage}

% 小节标题：小四号、宋体
\titlecontents{subsection}[4em]
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
\RequirePackage{gbt7714}
\RequirePackage{etoolbox}

% 参考文献标题格式：三号、宋体、加粗、居中
\renewcommand{\bibsection}{%
    \clearpage
    \phantomsection
    \begin{center}
        \vspace*{\baselineskip}
        {\zihao{3}\bfseries\songti \bibname}
        \vspace*{\baselineskip}
    \end{center}
}

% 参考文献正文格式：五号、宋体、行距固定值20磅
\AtBeginEnvironment{thebibliography}{
    \zihao{5}\songti
    \setlength{\baselineskip}{20bp}
    \addtolength{\itemsep}{-0.5em}
}

%---------------------------------------------------------------------------------
% 9. 其他辅助包
%---------------------------------------------------------------------------------
\RequirePackage{setspace}

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

% 致谢环境
\newenvironment{acknowledgment}{
    \clearpage
    \phantomsection
    \addcontentsline{toc}{chapter}{致谢}
    \begin{center}
        \vspace*{\baselineskip}
        {\zihao{3}\bfseries\songti 致\quad 谢}
        \vspace*{\baselineskip}
    \end{center}
    \zihao{-4}\songti\setlength{\baselineskip}{22bp}
    \setlength{\parindent}{2em}
    \par\noindent\indent
}{
    \par
}

%---------------------------------------------------------------------------------
% 11. 封面信息命令（预留接口）
%---------------------------------------------------------------------------------
\newcommand{\zjweuthesistitle}[1]{\def\@zjweuthesistitle{#1}}
\newcommand{\zjweuauthor}[1]{\def\@zjweuauthor{#1}}
\newcommand{\zjweumajor}[1]{\def\@zjweumajor{#1}}
\newcommand{\zjweuadvisor}[1]{\def\@zjweuadvisor{#1}}
\newcommand{\zjweudate}[1]{\def\@zjweudate{#1}}
\newcommand{\zjweucollege}[1]{\def\@zjweucollege{#1}}
\newcommand{\zjweustudentid}[1]{\def\@zjweustudentid{#1}}
\newcommand{\zjweugrade}[1]{\def\@zjweugrade{#1}}
\newcommand{\zjweucovertitle}[1]{\def\@zjweucovertitle{#1}}  % 封面主标题

% 默认值
\zjweuthesistitle{论文题目}
\zjweuauthor{学生姓名}
\zjweumajor{专业名称}
\zjweuadvisor{指导教师}
\zjweudate{\today}
\zjweucollege{学院名称}
\zjweustudentid{学号}
\zjweugrade{2023}
\zjweucovertitle{课程报告（论文）}  % 默认封面主标题

%---------------------------------------------------------------------------------
% 12. 封面生成命令
%---------------------------------------------------------------------------------
\RequirePackage{xcolor}
\definecolor{zjweucolor}{RGB}{0,128,128}  % 学校主题色

\newcommand{\makecover}{
    \thispagestyle{empty}
    \begin{center}
        % 顶部校徽和校名
        \vspace*{0pt}
        % 插入校徽图片（14.66cm × 4.42cm）
        \includegraphics[width=14.66cm,height=4.42cm]{logo/logo.png}
        
        % 空两行
        \vspace{2\baselineskip}
        
        % 主标题：黑体初号加粗
        {\zihao{0}\bfseries\heiti \@zjweucovertitle}
        
        % 空两行
        \par
        \vspace{2\baselineskip}
        
        % 届数：黑体二号加粗
        {\zihao{2}\bfseries\heiti (\@zjweugrade 届)} 
        
        % 空两行
        \vspace{2\baselineskip}
        
        % 题目：二号黑体加粗
        {\zihao{2}\bfseries\heiti \@zjweuthesistitle}
        
        \vspace{2\baselineskip}
        
    \end{center}
    
    % 将个人信息推到底部
    \vfill
    
    % 个人信息表格部分
    \noindent
    \hspace{3cm}
    \begin{minipage}{0.7\textwidth}
        {\zihao{3}\songti
            学\hspace{2em}院：\underline{\makebox[8cm][c]{\@zjweucollege}} \\[0.6cm]
            专\hspace{2em}业：\underline{\makebox[8cm][c]{\@zjweumajor}} \\[0.6cm]
            学\hspace{2em}号：\underline{\makebox[8cm][c]{\@zjweustudentid}} \\[0.6cm]
            学生姓名：\underline{\makebox[8cm][c]{\@zjweuauthor}} \\[0.6cm]
            指导教师：\underline{\makebox[8cm][c]{\@zjweuadvisor}} \\[0.6cm]
            提交日期：\underline{\makebox[8cm][c]{\@zjweudate}}
        }
    \end{minipage}
    
    % 距离底部空两行
    \vspace{2\baselineskip}
    
    \clearpage
}

%---------------------------------------------------------------------------------
% 13. 声明及论文使用的授权页
%---------------------------------------------------------------------------------
\newcommand{\makedeclaration}{
    \thispagestyle{empty}
    \begin{center}
        \vspace*{2cm}
        {\zihao{-2}\bfseries\heiti 声明及论文使用的授权}
    \end{center}
    
    % 空三行
    \vspace{3\baselineskip}
    
    % 内容：宋体小三，单倍行距
    \zihao{-3}\songti
    \setlength{\baselineskip}{1\baselineskip}
    \setlength{\parindent}{2em}
    
    \noindent\indent 本人郑重声明所呈交的论文是我个人在导师的指导下独立完成的。除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写的研究成果。
    
    % 空一行
    \par
    \vspace{1\baselineskip}
    
    % 签名行，缩进2字符
    \noindent\hspace{2em}论文作者签名：\hspace{5cm}年\hspace{0.75cm}月\hspace{0.75cm}日
    
    % 空六行
    \vspace{6\baselineskip}
    
    % 第二段文本
    \noindent\indent 本人同意浙江水利水电学院有关保留使用学位论文的规定，即：学校有权保留送交论文的复印件，允许论文被查阅和借阅；学校可以上网公布全部内容，可以采用影印、缩印或其他复制手段保存论文。
    
    % 空一行
    \par
    \vspace{1\baselineskip}
    
    % 签名行，缩进2字符
    \noindent\hspace{2em}论文作者签名：\hspace{5cm}年\hspace{0.75cm}月\hspace{0.75cm}日
    
    \vfill
    
    \clearpage
}

%---------------------------------------------------------------------------------
% 结束类定义
%---------------------------------------------------------------------------------
\endinput
