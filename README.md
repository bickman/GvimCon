
### 从零开始设置你的gvim  

创建于2019.1.25  

#### 初见gvim  

新安装的**gvim**打开是这样的：  

![gvimg](a/raw/b/img/gvimStart.jpg)  

界面又丑陋，操作还不习惯，若不是好奇心驱使，谁会花功夫用这东西，毕竟现在有更modern的编辑器，像**atom**，**vscode**，功能都能强大，界面也好看，而且直接可以上手。  

那么笔者为什么还要研究折腾 **gvim** 呢。主要是因为一款编辑器能够存在到今日而经久不衰一定有他的道理，**vim** 可以在命令行终端里面流畅的运行，可以实现各种功能，可见其简约而不简单，所以想一探究竟。  

通过看文档，强迫使用 **gvim** 来编辑东西，还玩过一款**vim**的游戏: [**vim-adventures**](https://vim-adventures.com/) ，大伙有兴趣可以试试，总之，大概在一周之内便可以熟悉 **vim** 的操作。

#### 开始设置gvim  

忍受了 **vim** 的第一阶段，发现这个编辑器一般使用没啥问题，相比 **atom** 小巧快速，而且还有很多功能未开发，还不错嘛，于是便想着配置一下，从一开始读帮助文档一点一点的配置，到后来的通过插件管理器安装各种各样的插件，仿佛进入了一片新的海洋，也发现了 **vim** 的迷人之处。下图是经过几天的配置调整后的 **vim** 的全新界面，仅仅通过修改一个 `_vimrc` 文件：

![GvimCon](a/raw/b/img/GvimCon.jpg)  

经过配置后的 **gvim** 界面不输 **atom** 的，具体如何配置呢？首先找到你的 `_vimrc` 文件，新安装的 **gvim** 在安装文件夹的根目录有一个 `_vimrc` ，你也可以在 `C:/user/用户名` 下建立 `_vimrc` 文件，这个两个路径分别对应 `$VIM`以及 `$HOME`，都是 **gvim** 启动后会载入的文件夹，可以在 **gvim** 里通过 `:version`查看所有的路径，也可以用 `:echo $VIM` `:echo $HOME`查看各自的路径，通过 `:echo $MYVIMRC`查看现在使用的是哪里的`_vimrc`。

准备好了 `_vimrc`，让我们来正式开始配置 **gvim**。推荐网站：[vim awesome](https://vimawesome.com/)，这里有归类了几乎所有的 **vim** 插件，还有安装方法和 **github** 链接，因为大部分的插件都是开源的，存放在 **github** 上，下面我会简要说明一下我的配置。

先安装插件管理器，比如 **vunble**，**Pathogen**， **VimPlug**， **NeoBundle**，其实原理都差不多，都是通过在 **github** 下载打包的插件，并进行管理，选择一个即可，推荐 **vunble** 。

按照官方要求安装好 **vunble** 并配置好 `_vimrc` 后，就可以方便的安装插件了，比如看中了**solarized** 主题，只需要找到官方的 **github** ，在 `_vimrc` 里插件处添加地址名称，然后输入`:source $MYVIMRC`重新载入配置文件或者重启 **vim** ，然后输入`：PluginInstall`即可，相当方便。还可以将这些命令制作成快捷键，提高效率，具体可以看我的 `_vimrc` 样例。

下面推荐一些好用的插件：

首先是主题，推荐 [**base16**](https://github.com/chriskempson/base16-vim)，这个主题项目包含了大部分其他的主题项目，保证你选都选不过来。

[**vim-airline**](https://github.com/vim-airline/vim-airline) 让 **gvim**的状态栏更漂亮还可以制定状态栏主题 [**vim-airline-themes**](https://github.com/vim-airline/vim-airline-themes)，注意需要系统安装[**powerline fonts**](https://github.com/powerline/fonts) 这种字体其实就是在一般字体中加入了一些符号，让 **Airline** 可以调用，从而让状态栏可以显示特殊符号，变得更美观，这个项目里的字体都很不错，而且非常多，足以满足你对英文字体的要求。

经过以上几步，基本上你的 **vim** 的外观会发生本质的上的变化，而且你也应该会举一反三，进行其他的配置和插件的安装，相信你以后会继续探索 **vim** 的更多功能。

 


