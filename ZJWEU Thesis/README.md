# ZJWEU Thesis Template (Beta)

**浙江水利水电学院毕业设计（论文）LaTeX模板**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/badge/version-0.1.0--beta-blue.svg)](https://github.com/yourusername/zjweu-thesis-beta)

## 版本信息

- **版本号**: v0.1.0-beta
- **发布日期**: 2026年1月4日
- **开源协议**: MIT License
- **适用学校**: 浙江水利水电学院
- **文档类型**: 毕业设计（论文）

## 功能特性

✅ 符合浙江水利水电学院毕业论文格式要求  
✅ 模块化设计，便于维护和扩展  
✅ 支持XeLaTeX编译，完美支持中文  
✅ 自动化的章节、图表、公式编号  
✅ 三线表、数学公式、图片插入支持  
✅ 摘要、关键词环境  
✅ 两种参考文献管理方式  
✅ 自定义封面生成  

## 目录结构

```
zjweu-thesis-beta/
├── zjweu-thesis-beta.cls      # 模板类文件（核心）
├── main.tex                    # 主文档（完整版）
├── main-example.tex            # 主文档（简化示例）
├── references.bib              # BibTeX参考文献数据库
├── LICENSE                     # MIT开源协议
├── README.md                   # 本使用说明
├── 参考文献使用说明.md         # 参考文献详细说明
├── Report/                     # 论文内容模块
│   ├── abstract.tex            # 摘要
│   ├── chp/                    # 章节目录
│   │   ├── chapter01.tex       # 第一章
│   │   ├── chapter02.tex       # 第二章（需自行创建）
│   │   └── ...
│   ├── Fig/                    # 图片目录
│   └── ref/                    # 参考文献目录
│       └── references.tex      # 参考文献内容
└── 编译辅助文件/               # 编译生成的临时文件
```

## 快速开始

### 环境要求

- **TeX发行版**: 
  - Windows: [MiKTeX](https://miktex.org/) 或 [TeX Live](https://www.tug.org/texlive/)
  - macOS: [MacTeX](https://www.tug.org/mactex/)
  - Linux: TeX Live

- **编辑器**（推荐）:
  - [VS Code](https://code.visualstudio.com/) + LaTeX Workshop 插件
  - [TeXstudio](https://www.texstudio.org/)
  - [Overleaf](https://www.overleaf.com/)（在线）

- **字体要求**:
  - SimSun（宋体）- Windows自带
  - KaiTi（楷体）- Windows自带
  - Times New Roman - Windows自带

### 安装使用

#### 方法一：使用完整版（main.tex）

1. **下载模板**
   ```bash
   git clone https://github.com/yourusername/zjweu-thesis-beta.git
   cd zjweu-thesis-beta
   ```

2. **编辑main.tex**
   - 直接在main.tex中编写内容
   - 所有章节内容都在一个文件中

3. **编译文档**
   ```bash
   xelatex main.tex
   xelatex main.tex  # 再次编译以更新交叉引用
   ```

#### 方法二：使用模块化版本（推荐）

1. **编辑论文信息**
   
   打开 `main-example.tex`，修改论文基本信息：
   ```latex
   \zjweuthesistitle{你的论文题目}
   \zjweuauthor{你的姓名}
   \zjweumajor{你的专业}
   \zjweuadvisor{指导教师姓名}
   \zjweudate{2026年6月}
   ```

2. **编辑摘要**
   
   修改 `Report/abstract.tex`

3. **编写章节**
   
   在 `Report/chp/` 目录下创建章节文件：
   ```latex
   % Report/chp/chapter02.tex
   \chapter{第二章标题}
   
   \section{第一节}
   内容...
   ```

4. **在主文件中引入章节**
   
   编辑 `main-example.tex`：
   ```latex
   \input{Report/chp/chapter01}
   \input{Report/chp/chapter02}
   \input{Report/chp/chapter03}
   ```

5. **编译文档**
   ```bash
   xelatex main-example.tex
   xelatex main-example.tex
   ```

### VS Code 编译配置

在 `.vscode/settings.json` 中添加：

```json
{
    "latex-workshop.latex.recipes": [
        {
            "name": "XeLaTeX",
            "tools": ["xelatex"]
        }
    ],
    "latex-workshop.latex.tools": [
        {
            "name": "xelatex",
            "command": "xelatex",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "%DOC%"
            ]
        }
    ]
}
```

## 使用指南

### 1. 章节结构

```latex
\chapter{章标题}          % 第一级标题：三号宋体加粗居中
\section{节标题}          % 第二级标题：小三号宋体加粗居左
\subsection{小节标题}     % 第三级标题：四号宋体加粗居左
```

### 2. 图片插入

```latex
\begin{figure}[H]
    \centering
    \includegraphics[width=0.8\textwidth]{Report/Fig/image.png}
    \caption{图片标题}
    \label{fig:label}
\end{figure}

% 引用图片
如图\ref{fig:label}所示
```

### 3. 表格插入（三线表）

```latex
\begin{table}[H]
    \centering
    \caption{表格标题}
    \label{tab:label}
    \zihao{5}\songti
    \begin{tabular}{lccc}
        \toprule
        表头1 & 表头2 & 表头3 & 表头4 \\
        \midrule
        数据1 & 数据2 & 数据3 & 数据4 \\
        数据5 & 数据6 & 数据7 & 数据8 \\
        \bottomrule
    \end{tabular}
\end{table}

% 引用表格
如表\ref{tab:label}所示
```

### 4. 公式插入

```latex
% 行内公式
这是一个行内公式 $E = mc^2$

% 独立公式
\begin{equation}
    \nabla \times \mathbf{E} = -\frac{\partial \mathbf{B}}{\partial t}
    \label{eq:maxwell}
\end{equation}

% 引用公式
如式\ref{eq:maxwell}所示
```

### 5. 参考文献

#### 方式一：使用.bib文件（推荐）

1. 在 `references.bib` 中添加文献：
```bibtex
@article{zhang2023,
  author  = {张三},
  title   = {论文标题},
  journal = {期刊名},
  year    = {2023},
  volume  = {10},
  pages   = {1--10}
}
```

2. 在 `Report/ref/references.tex` 中：
```latex
% 注释掉 thebibliography 环境
% 取消下面两行注释
\bibliographystyle{gbt7714-numerical}
\bibliography{references}
```

3. 编译顺序：
```bash
xelatex main-example.tex
bibtex main-example
xelatex main-example.tex
xelatex main-example.tex
```

#### 方式二：直接编写（适合文献少的情况）

在 `Report/ref/references.tex` 中：
```latex
\begin{thebibliography}{99}
\bibitem{ref1} 张三. 论文标题[J]. 期刊名, 2023, 10(1): 1-10.
\bibitem{ref2} 李四. 书名[M]. 北京: 出版社, 2024.
\end{thebibliography}
```

文中引用：
```latex
\cite{ref1}              % 单篇引用
\cite{ref1,ref2,ref3}    % 多篇引用
```

### 6. 摘要与关键词

```latex
% 中文摘要
\begin{cnabstract}
这里是中文摘要内容...
\end{cnabstract}

\cnkeywords{关键词1；关键词2；关键词3}

% 英文摘要
\begin{enabstract}
This is the English abstract...
\end{enabstract}

\enkeywords{Keyword1; Keyword2; Keyword3}
```

### 7. 自定义页眉

```latex
% 在导言区设置自定义页眉
\zjweuheader{浙江水利水电学院2026届毕业设计（论文）}
```

## 格式规范

### 页面设置
- 纸张：A4
- 页边距：上28mm，下28mm，左30mm，右28mm
- 页眉：五号楷体，居中
- 页脚：页码居中

### 字体字号
- 正文：小四号宋体，行距22磅，首行缩进2字符
- 章标题：三号宋体加粗，居中，上下空一行
- 节标题：小三号宋体加粗，居左，上下空一行
- 小节标题：四号宋体加粗，居左，不空行
- 图表标题：五号宋体，居中
- 摘要：小四号宋体，行距20磅
- 关键词标题：小三号宋体加粗
- 参考文献：五号宋体，行距20磅

### 编号规则
- 章节编号：第X章、X.X、X.X.X
- 图编号：图X-Y（X为章号，Y为序号）
- 表编号：表X-Y
- 公式编号：(X-Y)

## 常见问题

### Q1: 编译出现"找不到字体"错误
**A**: 确保系统已安装SimSun（宋体）和KaiTi（楷体）字体。Windows系统自带这些字体。

### Q2: 公式或图表编号不正确
**A**: 多编译几次（通常2-3次）以更新交叉引用。

### Q3: 参考文献显示为[?]
**A**: 
- 检查引用标签是否正确
- 确保编译了足够次数
- 如果使用.bib文件，确保运行了bibtex

### Q4: 中文显示乱码
**A**: 
- 确保文件保存为UTF-8编码
- 使用XeLaTeX编译（不要用PDFLaTeX）

### Q5: 如何调整页边距？
**A**: 修改 `zjweu-thesis-beta.cls` 文件中的 geometry 设置：
```latex
\geometry{
    top=28mm,
    bottom=28mm,
    right=28mm,
    left=30mm
}
```

## 进阶使用

### 自定义封面

模板提供了基础封面命令 `\makecover`，可以根据学校具体要求自定义。

在 `main-example.tex` 中：
```latex
\makecover  % 生成封面
```

如需自定义，编辑 `zjweu-thesis-beta.cls` 中的 `\makecover` 命令。

### 添加新的环境或命令

在 `zjweu-thesis-beta.cls` 文件末尾添加自定义命令：

```latex
% 自定义命令示例
\newcommand{\mycommand}[1]{%
    % 命令内容
}
```

## 版本历史

### v0.1.0-beta (2026-01-04)
- 🎉 首次发布
- ✅ 实现基本格式要求
- ✅ 支持模块化章节管理
- ✅ 三线表、公式、图片支持
- ✅ 摘要、关键词环境
- ✅ 两种参考文献管理方式

## 贡献指南

欢迎提交问题和改进建议！

1. Fork 本仓库
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 提交 Pull Request

## 许可证

本项目采用 MIT 许可证 - 详见 [LICENSE](LICENSE) 文件

## 致谢

感谢所有为本模板做出贡献的开发者和使用者。

## 联系方式

- 项目主页：https://github.com/yourusername/zjweu-thesis-beta
- 问题反馈：https://github.com/yourusername/zjweu-thesis-beta/issues

---

**祝您论文写作顺利！** 📚✨
