# ZJWEU LaTeX 模板集合

> 浙江水利水电学院 LaTeX 模板 - 包含 Beamer 演示主题和论文模板

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![LaTeX](https://img.shields.io/badge/LaTeX-XeLaTeX-green.svg)](https://www.latex-project.org/)
[![GitHub stars](https://img.shields.io/github/stars/Mug43/Zjweu-Thesis-and-Beamer?style=social)](https://github.com/Mug43/Zjweu-Thesis-and-Beamer)

## 📦 包含内容

### 1. [ZJWEU Beamer Theme](ZJWEU%20Beamer%20Theme/) - 学术汇报演示主题

**适用场景**: 课程汇报、学术演讲、开题答辩等

**主要特色**:
- 🎨 校徽、校色等视觉元素集成
- 📊 支持代码、公式、图表展示
- 🌈 基于清华大学 Beamer 主题优化

**快速开始**:
```bash
cd "ZJWEU Beamer Theme"
xelatex slide.tex
```

### 2. [ZJWEU Thesis](ZJWEU%20Thesis/) ⭐ - 毕业论文模板 `v0.2.0-beta`

**适用场景**: 本科毕业论文

**主要特性**:
- ✅ **模块化设计** - 独立 `.cls` 类文件，易于维护和定制
- ✅ **自动化格式** - 符合学校规范的页面、字体、间距设置
- ✅ **章节编号** - 公式、图表采用 X-Y 格式（章-序号）
- ✅ **双语摘要** - 中英文摘要环境支持
- ✨ **国标参考文献** - GB/T 7714 格式支持
- ✨ **完整封面** - 自动生成符合学校规范的封面
- ✨ **声明页** - 自动生成声明及授权页
- ✨ **致谢环境** - 规范的致谢页面支持
- ✅ **三线表** - 规范的表格样式
- ✅ **完整文档** - README、快速入门、详细使用说明

**快速开始**:
```bash
cd "ZJWEU Thesis"
xelatex main-example.tex
xelatex main-example.tex  # 编译两次以生成目录
```

**详细指南**: 查看 [快速入门.md](ZJWEU%20Thesis/快速入门.md)

## 🚀 系统要求

### 必需软件
- **TeX 发行版**: TeX Live 2020+ 或 MiKTeX 2.9+
- **编译器**: XeLaTeX（支持中文字体）
- **编辑器**（推荐）:
  - [VS Code](https://code.visualstudio.com/) + [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) 插件
  - [TeXstudio](https://www.texstudio.org/)
  - [Overleaf](https://www.overleaf.com/)（在线）

### 中文字体
- **Windows**: 自带所需字体（宋体、楷体）✅
- **macOS/Linux**: 需安装 SimSun 和 KaiTi 字体

## 📖 快速使用指南

### Beamer 演示主题

1. **编辑内容**: 修改 `slide.tex` 中的标题、作者、内容
2. **编译**: `xelatex slide.tex`
3. **查看**: 打开生成的 `slide.pdf`

### 论文模板

#### 第一步：配置论文信息

编辑 `main-example.tex`:
```latex
% 基本信息
\zjweuthesistitle{你的论文题目}
\zjweuauthor{你的姓名}
\zjweumajor{你的专业}
\zjweuadvisor{指导教师姓名}
\zjweudate{2026年6月}

% 封面额外信息（新增）
\zjweucollege{学院名称}
\zjweustudentid{学号}
\zjweugrade{2024}  % 届数
\zjweucovertitle{毕业设计（论文）}
```

#### 第二步：编写内容

- **摘要**: 编辑 `Report/abstract.tex`
- **引言**（可选）: 编辑 `Report/chp/chapter00-introduction.tex` - 独立章节，不计入编号
- **章节**: 编辑或新建 `Report/chp/chapter*.tex` - 从第一章开始编号
- **图片**: 放入 `Report/Fig/` 目录
- **参考文献**: 编辑 `references.bib`（推荐）或 `Report/ref/references.tex`

#### 第三步：编译

```bash
# 基本编译（2次）
xelatex main-example.tex
xelatex main-example.tex

# 使用 BibTeX（4次）
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
    ├── zjweu-thesis-beta.cls   # 模板类文件（核心）v0.2.0
    ├── main-example.tex        # 示例主文档
    ├── references.bib          # BibTeX 数据库（国标格式）
    ├── logo/                   # 封面logo资源
    │   └── logo.png            # 学校logo
    ├── Report/                 # 内容模块
    │   ├── abstract.tex        # 摘要
    │   ├── chp/                # 章节目录
    │   ├── Fig/                # 图片目录
    │   └── ref/                # 参考文献
    ├── README.md               # 详细使用文档
    ├── 快速入门.md             # 5分钟上手指南
    ├── 参考文献使用说明.md     # 参考文献指南
    ├── 项目结构说明.md         # 架构说明
    ├── 项目总结.md             # 项目总结
    ├── CHANGELOG.md            # 版本历史
    ├── LICENSE                 # MIT 许可证
    └── .gitignore              # Git 配置
```

## 🎓 示例展示

### Beamer 主题效果
- 🎨 校色主题（蓝绿色 #007385）
- 📍 顶部导航栏显示章节
- 📄 页脚显示作者、机构、页码
- 💻 支持代码高亮、公式、图表

### 论文模板效果
- 📄 A4 纸张，标准学术排版
- 📑 自动生成目录
- 🔢 章节、图表、公式自动编号
- 📊 三线表支持
- 🌏 中英文摘要页
- 📚 规范的参考文献格式

## 📝 版本历史

### ZJWEU Thesis
- **v0.2.0-beta** (2026-01-06) - 最新版本 🎉
  - 新增完整封面生成功能
  - 新增声明及授权页
  - 新增致谢环境
  - 改用国标GB/T 7714参考文献格式
  - 优化页眉系统和页面布局
  - 新增三级目录显示
  - 新增防止段落孤行孤字

- **v0.1.0-beta** (2026-01-04)
  - 首个测试版本
  - 完整的模板功能
  - 详细的使用文档

### ZJWEU Beamer Theme
- 基于清华大学 Beamer 主题修改
- 适配浙江水利水电学院视觉规范

详见各模块的 [CHANGELOG.md](ZJWEU%20Thesis/CHANGELOG.md)

## 🤝 贡献指南

欢迎贡献！如果你有改进建议或发现了 bug：

1. **Fork** 本仓库
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 开启 **Pull Request**

### 报告问题

发现 bug 或有功能建议？请 [提交 Issue](https://github.com/Mug43/Zjweu-Thesis-and-Beamer/issues)

## 📄 许可证

本项目采用 MIT 许可证 - 详见 [LICENSE](LICENSE) 文件

您可以自由地：
- ✅ 使用
- ✅ 修改
- ✅ 分发
- ✅ 用于商业用途

## 👥 作者与致谢

### ZJWEU Beamer Theme
- **作者**: 包一宁
- **基于**: [清华大学 Beamer 主题](https://github.com/Trinkle23897/THU-Beamer-Theme) by 翁家翌

### ZJWEU Thesis Template
- **版本**: v0.2.0-beta
- **许可**: MIT License
- **最新更新**: 2026年1月6日

## 📮 联系方式

- **GitHub Issues**: [提交问题](https://github.com/Mug43/Zjweu-Thesis-and-Beamer/issues)
- **Email**: baoyining1020@163.com (Beamer Theme)

## 🌟 相关资源

### LaTeX 学习资源
- [LaTeX 官方文档](https://www.latex-project.org/help/documentation/)
- [一份不太简短的 LaTeX 介绍](http://www.mohu.org/info/lshort-cn.pdf)
- [LaTeX 工作室](http://www.latexstudio.net/)
- [Overleaf 文档](https://www.overleaf.com/learn)

### 其他高校模板
- [THU-Beamer-Theme](https://github.com/Trinkle23897/THU-Beamer-Theme) - 清华大学
- [ThuThesis](https://github.com/tuna/thuthesis) - 清华大学学位论文
- [SJTUThesis](https://github.com/sjtug/SJTUThesis) - 上海交通大学

## ⭐ Star History

如果这个项目对你有帮助，欢迎点个 Star ⭐

[![Star History Chart](https://api.star-history.com/svg?repos=Mug43/Zjweu-Thesis-and-Beamer&type=Date)](https://star-history.com/#Mug43/Zjweu-Thesis-and-Beamer&Date)

---

<div align="center">

**使用愉快！如有问题欢迎提 Issue 💬**

Made with ❤️ for ZJWEU students

**最后更新**: 2026年1月6日

</div>
