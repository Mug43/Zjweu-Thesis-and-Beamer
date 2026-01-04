# ZJWEU LaTeX 模板集合

> 浙江水利水电学院 LaTeX 模板 - 包含 Beamer 演示主题和论文模板

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![LaTeX](https://img.shields.io/badge/LaTeX-XeLaTeX-green.svg)](https://www.latex-project.org/)

## 📦 包含内容

### 1. [ZJWEU Beamer Theme](ZJWEU%20Beamer%20Theme/)
**学术汇报演示文稿模板**

- 基于清华大学 Beamer 主题修改
- 校徽、校色等视觉元素集成
- 适用于课程汇报、学术演讲等场合

**快速开始:**
```bash
cd "ZJWEU Beamer Theme"
xelatex slide.tex
```

### 2. [ZJWEU Thesis](ZJWEU%20Thesis/) ⭐ **NEW v0.1.0-beta**
**浙江水利水电学院论文模板**

完整的毕业论文 LaTeX 模板，支持本科和研究生论文。

**主要特性:**
- ✅ **模块化设计** - 独立 `.cls` 类文件，易于维护
- ✅ **自动化格式** - 符合学校规范的页面、字体、间距
- ✅ **章节编号** - 公式、图表采用 X-Y 格式（章-序号）
- ✅ **双语摘要** - 中英文摘要环境
- ✅ **参考文献** - 支持 BibTeX 和手动两种方式
- ✅ **完整文档** - README、快速入门、使用说明

**快速开始:**
```bash
cd "ZJWEU Thesis"
xelatex main-example.tex
xelatex main-example.tex  # 编译两次以生成目录
```

**5分钟上手:** 查看 [快速入门.md](ZJWEU%20Thesis/快速入门.md)

## 🚀 系统要求

### 必需软件
- **TeX 发行版**: TeX Live 2020+ 或 MiKTeX 2.9+
- **编译器**: XeLaTeX（支持中文字体）
- **编辑器**（推荐）:
  - VS Code + LaTeX Workshop 插件
  - TeXstudio
  - Overleaf（在线）

### 中文字体
- **Windows**: 自带所需字体（宋体、楷体）
- **macOS/Linux**: 需安装 SimSun 和 KaiTi 字体

## 📖 使用指南

### Beamer 演示主题

1. **编辑内容**
   ```bash
   编辑 slide.tex，修改标题、作者、内容
   ```

2. **编译**
   ```bash
   xelatex slide.tex
   ```

3. **查看结果**
   ```bash
   打开 slide.pdf
   ```

### 论文模板

1. **配置论文信息**
   编辑 `main-example.tex`:
   ```latex
   \zjweuthesistitle{论文题目}
   \zjweuauthor{姓名}
   \zjweumajor{专业}
   \zjweuadvisor{指导教师}
   ```

2. **编写内容**
   - 摘要: `Report/abstract.tex`
   - 章节: `Report/chp/chapter*.tex`
   - 参考文献: `Report/ref/references.tex` 或 `references.bib`

3. **编译论文**
   ```bash
   xelatex main-example.tex
   xelatex main-example.tex  # 第二次生成目录和引用
   ```

4. **使用 BibTeX（可选）**
   ```bash
   xelatex main-example.tex
   bibtex main-example
   xelatex main-example.tex
   xelatex main-example.tex
   ```

## 📁 项目结构

```
Zjweu-Thesis-and-Beamer/
│
├── ZJWEU Beamer Theme/          # Beamer 演示主题
│   ├── ZJWEU_beamer.sty        # 主题样式文件
│   ├── slide.tex               # 示例幻灯片
│   ├── pic/                    # 图片资源
│   │   ├── ZJWEU_background.jpg
│   │   └── Zjweulogo.png
│   └── ref.bib                 # 参考文献
│
└── ZJWEU Thesis/                # 论文模板 ⭐
    ├── zjweu-thesis-beta.cls   # 模板类文件（核心）
    ├── main-example.tex        # 示例主文档
    ├── references.bib          # BibTeX 数据库
    ├── Report/                 # 内容模块
    │   ├── abstract.tex        # 摘要
    │   ├── chp/                # 章节目录
    │   │   └── chapter01.tex
    │   ├── Fig/                # 图片目录
    │   └── ref/                # 参考文献
    │       └── references.tex
    ├── README.md               # 详细使用文档
    ├── 快速入门.md             # 5分钟上手指南
    ├── 参考文献使用说明.md
    ├── 项目结构说明.md
    ├── 项目总结.md
    ├── CHANGELOG.md            # 版本历史
    ├── LICENSE                 # MIT 许可证
    └── .gitignore
```

## 🎓 示例展示

### Beamer 主题效果
- 校色主题（蓝绿色 #007385）
- 顶部导航栏
- 页脚显示作者、机构、页码
- 支持代码、公式、图表等

### 论文模板效果
- A4 纸张，标准页边距
- 自动生成目录
- 章节、图表、公式自动编号
- 三线表支持
- 中英文摘要页

*详细效果图请查看各文件夹内的 README*

## 📝 版本历史

### ZJWEU Thesis
- **v0.1.0-beta** (2026-01-04)
  - 首个测试版本
  - 基础论文模板功能
  - 完整文档

### ZJWEU Beamer Theme
- **Latest** - 基于清华大学主题修改
- 详见 [ZJWEU Beamer Theme](ZJWEU%20Beamer%20Theme/) 目录

## 🤝 贡献指南

欢迎贡献！请遵循以下步骤：

1. Fork 本仓库
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 开启 Pull Request

### 报告问题
如果发现 bug 或有功能建议，请 [提交 Issue](https://github.com/Mug43/Zjweu-Thesis-and-Beamer/issues)

## 📄 许可证

本项目采用 MIT 许可证 - 详见 [LICENSE](LICENSE) 文件

## 👥 作者与致谢

### ZJWEU Beamer Theme
- **作者**: 包一宁
- **基于**: [清华大学 Beamer 主题](https://github.com/Trinkle23897/THU-Beamer-Theme) by 翁家翌

### ZJWEU Thesis Template
- **作者**: [待补充]
- **版本**: v0.1.0-beta
- **许可**: MIT License

## 📮 联系方式

- **Issues**: [GitHub Issues](https://github.com/Mug43/Zjweu-Thesis-and-Beamer/issues)
- **Email**: baoyining1020@163.com (Beamer Theme)

## 🌟 相关资源

- [LaTeX 官方文档](https://www.latex-project.org/help/documentation/)
- [一份不太简短的 LaTeX 介绍](http://www.mohu.org/info/lshort-cn.pdf)
- [LaTeX 工作室](http://www.latexstudio.net/)
- [Overleaf 文档](https://www.overleaf.com/learn)

## ⭐ Star History

如果这个项目对你有帮助，欢迎点个 Star ⭐

---

**最后更新**: 2026年1月4日
