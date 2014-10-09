;; .emacs

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; turn on font-lock mode
(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode t))

;; enable visual feedback on selections
(setq transint-mark-mode t)


;;default to better frame titles
(setq frame-title-format
      (concat "%b - emacs@" system-name))


;; set the align key right here
;;(global-set-key "\C-[" 'align)





(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(show-paren-mode t)
 '(transient-mark-mode t)
 '(verilog-auto-lineup (quote all)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )




                                        ;dongping modify 20090625



                                        ;(defun prepend-path ( my-path )
                                        ;(setq load-path (cons (expand-file-name my-path) load-path)))









;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;定义Systemverilog 高亮显示
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                                        ;    (defun append-path ( my-path )
                                        ;    (setq load-path (append load-path (list (expand-file-name my-path)))))
;; Look first in the directory ~/elisp for elisp files
                                        ;    (prepend-path "C:\Program Files\emacs-22.3\elisp")

;;    (require 'psvn) ;;dongping added, for svn operation

;; Load verilog mode only when needed
;;    (autoload 'verilog-mode "verilog-mode" "Verilog mode" t )
;;    ;; Any files that end in .v should be in verilog mode
(setq auto-mode-alist (cons  '("\\.svh\\'" . verilog-mode) auto-mode-alist))
(setq auto-mode-alist (cons  '("\\.sva\\'" . verilog-mode) auto-mode-alist))
(setq auto-mode-alist (cons  '("\\.sv\\'" . verilog-mode) auto-mode-alist))
;;    ;; Any files in verilog mode should have their keywords colorized
;;    (add-hook 'verilog-mode-hook '(lambda () (font-lock-mode 1)))
;;
;;    ;; Any files that end in .py should be in python mode
(setq auto-mode-alist (cons '("\\.py\\'" . python-mode) auto-mode-alist))
;;    (setq interpreter-mode-alist (cons '("python" . python-mode)
;;                                       interpreter-mode-alist))
;;
;;    ;; Load python mode only when needed
;;    (autoload 'python-mode "python-mode" "Python editing mode." t)




;;界面字体背景颜色主题
                                        ;(set-foreground-color "gray85") ;gray85
                                        ;(set-background-color "black") ;black
                                        ;(set-cursor-color "gold")
                                        ;(set-mouse-color "gold")

;;禁用启动信息
(setq inhibit-startup-message t)

;;关闭烦人的出错时的提示声
(setq visible-bell t)

;; 设置光标为竖线
(setq-default cursor-type 'bar)

;;Tab设置4
(setq default-tab-width 3)
(setq tab-width 3)

;;自动对齐
(global-set-key "\C-m" 'reindent-then-newline-and-indent)
                                        ;(global-set-key [f11] 'reindent-then-newline-and-indent)
                                        ;(add-hook 'verilog-mode-common-hook
                                        ;          (lambda ()
                                        ;            (define-key c-mode-map
                                        ;             "\C-m" 'reindent-then-newline-and-indent)))

;;光标靠近鼠标的时候，让鼠标自动让开，别挡住视线
(mouse-avoidance-mode 'animate)



;;下面的这个设置可以让光标指到某个括号的时候显示与它匹配的括号
(show-paren-mode t)
(setq show-paren-style 'parentheses)








;;显示当前所在的行号和列号
(column-number-mode t)

;;防止页面滚动时跳动
(setq scroll-margin 3
      scroll-conservatively 10000)

;; 所有的备份文件转移到~/backups目录下
                                        ;(setq backup-directory-alist (quote (("." . "~/backups"))))
                                        ;(setq version-control t)
                                        ;(setq kept-old-versions 2)
                                        ;(setq kept-new-versions 5)
                                        ;(setq delete-old-versions t)
                                        ;(setq backup-directory-alist '(("." . "~/backups")))
                                        ;(setq backup-by-copying t)
;; Emacs 中，改变文件时，默认都会产生备份文件(以 ~ 结尾的文件)。可以完全去掉
;; (并不可取)，也可以制定备份的方式。这里采用的是，把所有的文件备份都放在一
;; 个固定的地方("~/var/tmp")。对于每个备份文件，保留最原始的两个版本和最新的
;; 五个版本。并且备份的时候，备份文件是复本，而不是原件。

;;不产生备份文件
                                        ;(setq make-backup-files nil)

;;设置kill-ring-max(我不知道怎么翻译这个词：)为200，以防不测：）
(setq kill-ring-max 200)

;; 当有两个文件名相同的缓冲时，使用前缀的目录名做 buffer 名字，不用原来的
;; foobar 形式。
;;(setq uniquify-buffer-name-style 'forward)

;;显示日期
(setq display-time-day-and-date t)
(display-time)

;;显示时间
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-use-mail-icon t)
(setq display-time-interval 10)

;; 设置时间戳，标识出最后一次保存文件的时间。
(setq time-stamp-active t)
(setq time-stamp-warn-inactive t)
(setq time-stamp-format "%:y-%02m-%02d %3a %02H:%02M:%02S K.T")

;;设置默认工作目录
;;(setq default-directory "Z:/asic/user/dongpingw/eth_fpga_tmp/device_lib/agg_lc_1/user/dwang/")
                                        ;(setq default-directory "/projects/asic/user/dongpingw/eth-fpga/trunk/device_lib/agg_lc_1/official/branches/B_agg_lc_1_v1.0/development/sim/")
;;'y' for 'yes', 'n' for 'no'
(fset 'yes-or-no-p 'y-or-n-p)


;; 代码折叠
;;    (load-library "hideshow")
;;    (add-hook 'java-mode-hook 'hs-minor-mode)
;;    (add-hook 'perl-mode-hook 'hs-minor-mode)
;;    (add-hook 'php-mode-hook 'hs-minor-mode)
;;    (add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
;;    (add-hook 'verilog-mode-hook 'hs-minor-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 启动最大化窗口设置 - START
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;    (defun w32-restore-frame ()
;;    "Restore a minimized frame"
;;    (interactive)
;;    (w32-send-sys-command 61728))
;;    (defun w32-maximize-frame ()
;;    "Maximize the current frame"
;;    (interactive)
;;    (w32-send-sys-command 61488))
;;    ;;; Maximum Windows Frame
;;    (w32-maximize-frame)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 显示纬度、经度、位置
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq calendar-latitude 22.2 )
(setq calendar-longitude 113.8)
(setq calendar-location-name "ShenZhen, China")














;; (require 'vc-svn)

;;(add-to-list 'load-path "C:\Program Files\emacs-22.3\elisp")
;;(require 'psvn) ;;dongping added, for svn operation

(require 'etags)

;;(require 'linum)
;;(global-linum-mode 1)
;(add-hook 'find-file-hook (lambda () (linum-mode 1)))

;;   ;; 加载显示行号模块
;;   (require 'display-line-number)
;;  ;; 如果想所有打开的文件都显示行的话就打开下面的注释
;;  (global-display-line-number-mode 1)



(add-to-list 'load-path "~/elisp")
(require 'wdired)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)


(setq auto-indent-on-visit-file t) ;; If you want auto-indent on for files
(require 'auto-indent-mode)
;; (auto-indent-global-mode)

(autoload 'auto-indent-yank "auto-indent-mode" "" t)
(autoload 'auto-indent-yank-pop "auto-indent-mode" "" t)

(define-key global-map [remap yank] 'auto-indent-yank)
(define-key global-map [remap yank-pop] 'auto-indent-yank-pop)

(autoload 'auto-indent-delete-char "auto-indent-mode" "" t)
(define-key global-map [remap delete-char] 'auto-indent-delete-char)

(autoload 'auto-indent-kill-line "auto-indent-mode" "" t)
(define-key global-map [remap kill-line] 'auto-indent-kill-line)



;(setq exec-path n(cons "~/elisp/color-theme-6.6.0" exec-path))
(add-to-list 'load-path "~/elisp/color-theme")



(add-to-list 'load-path "~/elisp/muse/lisp")
(require 'muse-mode) ; load authoring mode
(require 'muse-html) ; load publishing styles I use
(require 'muse-latex)
(require 'muse-wiki)
(setq muse-wiki-allow-nonexistent-wikiword t)
(require 'muse-texinfo)
(require 'muse-docbook)
(add-hook 'muse-mode-hook 'outline-minor-mode)




;;     ;;;;;;;;;;;;;;;;;;;;
;;     ;; muse
;;     ;;;;;;;;;;;;;;;;;;;;
;;     (add-to-list 'load-path "~/soft/emacs/muse-3.03/lisp")
;;     (require 'muse-mode)    ; load authoring mode
;;     (require 'muse-html)    ; load publishing styles I use
;;     (require 'muse-wiki)
;;     ;(require 'muse-latex)
;;     ;(require 'muse-texinfo)
;;     ;(require 'muse-docbook)
(require 'muse-project) ; publish files in projects

(setq muse-html-header "~/MyEmacs/Documents/muse/header.html")
(setq muse-html-footer "~/MyEmacs/Documents/muse/footer.html")
(setq muse-project-alist
      `(("dongpingPlanner"
         ("~/MyEmacs/plans"
          :default "index"
          :major-mode planner-mode
          :visit-link planner-visit-link))))
;; Publish this directory and its subdirectories.  Arguments
;; are as follows.  The above `muse-project-alist-dirs' part
;; is also needed, using Argument 1.
;;
;;  1. Source directory
;;  2. Output directory
;;  3. Publishing style
;;,@(muse-project-alist-styles "~/Documents/muse"
;;                             "~/public_html"
;;                             "html"))))





(add-to-list 'load-path "~/elisp/planner")
                                        ;(add-to-list 'load-path "~/elisp/")
                                        ;(require 'planner)


;;;;;; Planner基本配置
(require 'planner)
(require 'planner-deadline)
(require 'planner-rank) ; balance Urgency and Importance
(require 'planner-trunk) ; grouping tasks
(add-hook 'planner-mode-hook 'planner-trunk-tasks) ; automatically grouping tasks
(require 'planner-accomplishments) ; call planner-accomplishments-show to show
(planner-accomplishments-insinuate) ; Automatically call planner-accomplishments-update when saving tasks in planner-mode buﬀers.
(require 'planner-report)
(require 'planner-tasks-overview)
(require 'planner-cyclic)
(setq planner-cyclic-diary-file "~/MyEmacs/public_html/muse/plans/cyclic-tasks.muse")
;;   (require 'remember-planner)
;;   (setq remember-handler-functions '(remember-planner-append))
;;   (setq remember-annotation-functions planner-annotation-functions)
;;   (setq planner-use-task-numbers t) ; add Priority number which calculated whenever you save the ﬁle

(require 'planner-diary)
                                        ;(add-hook 'diary-display-hook 'fancy-diary-display) ; planner-diary.el需要fancy-diary-display

;;diary
;;Fancy display

;;Here is some code to make your calendar and diary display fancier:

(setq view-diary-entries-initially t
      mark-diary-entries-in-calendar t
      number-of-diary-entries 7)
(add-hook 'diary-display-hook 'fancy-diary-display)
(add-hook 'today-visible-calendar-hook 'calendar-mark-today)
;;       ;;Here is some code to get rid of the ugly equal signs under the date:
;;
;;        (add-hook 'fancy-diary-display-mode-hook
;;      '(lambda ()
;;                     (alt-clean-equal-signs)))
;;
;;        (defun alt-clean-equal-signs ()
;;          "This function makes lines of = signs invisible."
;;          (goto-char (point-min))
;;          (let ((state buffer-read-only))
;;            (when state (setq buffer-read-only nil))
;;            (while (not (eobp))
;;              (search-forward-regexp "^=+$" nil 'move)
;;              (add-text-properties (match-beginning 0)
;;                       (match-end 0)
;;             '(invisible t)))
;;            (when state (setq buffer-read-only t))))
;;       ;;Note that the hook used exists only on recent version of emacs; so, you’ll probably need the following:
;;
;;        (define-derived-mode fancy-diary-display-mode  fundamental-mode
;;          "Diary"
;;          "Major mode used while displaying diary entries using Fancy Display."
;;          (set (make-local-variable 'font-lock-defaults)
;;               '(fancy-diary-font-lock-keywords t))
;;          (define-key (current-local-map) "q" 'quit-window)
;;          (define-key (current-local-map) "h" 'calendar))
;;
;;        (defadvice fancy-diary-display (after set-mode activate)
;;          "Set the mode of the buffer *Fancy Diary Entries* to
;;        `fancy-diary-display-mode'."
;;          (save-excursion
;;            (set-buffer fancy-diary-buffer)
;;            (fancy-diary-display-mode)))
;;       ;;Then play with the font-lock keywords!


(setq mark-diary-entries-in-calendar t) ; 在日历中显示自己完成任务的情况
(setq planner-diary-use-diary t) ; 自动使用planner-diary
(planner-diary-insinuate)

(require 'planner-appt)
(planner-appt-use-tasks-and-schedule)
(planner-appt-insinuate) ; 自动更新
(setq planner-appt-update-appts-on-save-flag t)
(setq planner-appt-calendar-insinuate t)
(setq planner-appt-sort-schedule-on-update-flag t) ; 排序
(planner-appt-schedule-cyclic-insinuate) ; 循环时间表

(require 'planner-timeclock)
(require 'planner-timeclock-summary)
(planner-timeclock-summary-insinuate) ; 自动更新


;; 设置planner的模板
(setq planner-day-page-template
      "* Groups: [[TaskPool]] [[RoboCup]] [[GoAbroad]] [[BetterHealth]] [[Course]]\n
 * Tasks\n\n\n
 * Schedule\n\n\n
 * Diary\n\n\n
 * Notes\n\n\n
 * Accomplishments\n\n\n
 * Timeclock"
      )

(require 'planner-psvn)
(require 'planner-id)

(require 'planner-publish)
(setq planner-project "dongpingPlanner")
(require 'planner-calendar) ; Publishing Calendars
(setq planner-xhtml-header "~/MyEmacs/public_html/muse/plans/header.html")
(setq planner-xhtml-footer "~/MyEmacs/public_html/muse/plans/footer.html")

(eval-after-load "muse-publish"
  '(add-hook 'muse-after-publish-hook
             'planner-calendar-create-today-link))



;; define some common commands
                                        ;(global-set-key (kbd "s-p") 'plan)
                                        ;(require 'planner-w3m)


(planner-insinuate-calendar)
;;(planner-export-diary-future)
(add-hook 'planner-mode-hook 'planner-export-diary-setup)

;;;sacha's planner config
(global-set-key (kbd "<f9> <f8>") 'planner-goto-yesterday)
(global-set-key (kbd "<f9> <f9>") 'planner-goto-today)
(global-set-key (kbd "<f9> <f10>") 'planner-goto-tomorrow)
(global-set-key (kbd "<f9> t") 'planner-create-task-from-buffer)

(defun sacha/planner-read-task ()
  "Do not prompt for date unless the prefix argument is given."
  (let ((planner-expand-name-favor-future-p t))
    (list (read-string "Describe task: ")
          (if current-prefix-arg (planner-read-date) (planner-today))
          "TaskPool"
          planner-default-task-status)))
(defalias 'planner-read-task 'sacha/planner-read-task)

;;;sacha's planner config end





(add-to-list 'load-path "~/elisp/remember")
                                        ;(add-to-list 'load-path "~/elisp/")
(require 'remember)
;; (setq remember-handler-functions '(remember-planner-append))
;;(require 'remember-planner)
(require 'remember-planner)
(setq remember-handler-functions '(remember-planner-append))
(setq remember-annotation-functions planner-annotation-functions)
(setq planner-use-task-numbers t) ; add Priority number which calculated whenever you save the ﬁle



;;每次进入Emacs即显式Plan
                                        ;(plan)
;;高亮当前行
;;(require 'hl-line)
                                        ;(global-hl-line-mode t)


;;;;将C-x C-b进入的Buffer列表改为ibuffer，获得和dired类似的操作界面
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)



;;;;以下是我的快捷键设置
;; ----------------------- Short Cut -------------------------
(global-set-key [(meta g)] 'goto-line)




(require 'session)
(add-hook 'after-init-hook 'session-initialize)
(add-to-list 'session-globals-exclude 'org-mark-ring)


                                        ;=========================================END==============================================;

(defun my-verilog-mode-auto-pair ()
  (interactive)
  (make-local-variable 'skeleton-pair-alist)
  (setq skeleton-pair-alist  '(
                               (?` ?` _ "''")
                               ;;    (?\" ? _ " "" ")
                               (?\(  _ ")")
                               (?\[  _ "]")
                               (?{ \n > _ \n ?} >)))
  (setq skeleton-pair t)
  (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "`") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "[") 'skeleton-pair-insert-maybe))
(add-hook 'verilog-mode-hook 'my-verilog-mode-auto-pair)
                                        ;(add-hook 'c++-mode-hook 'my-c-mode-auto-pair)
;;输入左边的括号，就会自动补全右边的部分.包括(), "", [] , {} , 等等。
                                        ;=========================================END==============================================;





;; 设置 Mew

(add-to-list 'load-path "~/elisp/mew-6.2")

                                        ;(autoload 'mew "mew" nil t)
(autoload 'mew "mew" 0 t)
                                        ;(autoload 'mew-send "mew" nil t)
(autoload 'mew-send "mew" 0 t)
;; 下面的图标路径和安装路径有关，具体请看Mew的安装过程
(setq mew-icon-directory "~/elisp/mew-6.2/etc")
(setq mew-use-cached-passwd t)
;; mew-pop-size设置成0时，pop邮件大小没有限制
(setq mew-pop-size 0)
;; 不删除服务器上的邮件
                                        ;(setq mew-pop-delete nil)
(setq mew-pop-delete 0)
(setq mew-config-alist
      '(("default"
         ("name"         .  "neidwdp")
         ("user"         .  "neidwdp")
         ("mail-domain"  .  "126.com")
         ("pop-server"   .  "pop3.126.com")
         ("pop-port"     .  "110")
         ("pop-user"     .  "neidwdp")
         ("pop-auth"     .  pass)
         ("smtp-server"  .  "smtp.126.com")
         ("smtp-port"    .  "25")
         ("smtp-user"    .  "neidwdp")
         ("smtp-auth-list"  .  ("PLAIN" "LOGIN" "CRAM-MD5")))))






  ;;;; 我的EMMS设置
(add-to-list 'load-path
             "~/elisp/emms-3.0")
;;   (add-to-list 'load-path "d:/work/emacs/emacs-22.3/elisp/emms-latest/mplayer")
;;;; EMMS
;; ------

(require 'emms-setup)
(emms-standard)
;;(emms-default-players)
(add-to-list 'exec-path "~/elisp/mplayer")

(setq
 ;; 添加音乐文件默认的目录
 emms-source-file-default-directory "e:/relax/music/beegees/"
 ;; 播放器优先顺序
 emms-player-list '(emms-player-mplayer
                    emms-player-timidity
                    emms-player-mpg321
                    emms-player-ogg123)
 ;; 播放列表名，第一个字符不是空格则不隐藏
 emms-playlist-buffer-name " *EMMS*"
 ;; 默认列表窗口的宽度
 emms-playlist-mode-window-width 35
 ;; 让 emacs 来检测歌词文件的编码
                                        ;emms-lyrics-coding-system nil
 emms-lyrics-coding-system 0
 ;; 歌词文件查找目录
 emms-lyrics-dir "/home/ywb/music/lrc/"
 ;; 歌词滚动的速度
 emms-lyrics-scroll-timer-interval 1
 ;; 调节音量的声道
 emms-volume-amixer-control "PCM"
 ;; 保存打分的文件
 emms-score-file "~/.emacs.d/.emms-score"
 emms-playlist-default-major-mode 'emms-playlist-mode)

;; 播放列表不折行显示
(add-hook 'emms-playlist-mode-hook
          (lambda ()
            (toggle-truncate-lines 1)))
;; 在 mode-line 中显示播放的文件信息
(require 'emms-mode-line)
(emms-mode-line 1)
;; 显示播放音乐的长度和播放时间
(require 'emms-playing-time)
(emms-playing-time 1)
;; 显示歌词
(require 'emms-lyrics)
(emms-lyrics 1)
;; 调整音量
(require 'emms-volume)
;; 使用标记来管理列表
(require 'emms-mark)
;; 修改音乐的标签
(require 'emms-tag-editor)
;; 给音乐打分
(require 'emms-score)
(emms-score 1)
;; 自动识别音乐标签的编码
(require 'emms-i18n)
;; 自动保存和导入上次的播放列表
(require 'emms-history)

;; 自带调整音量的命令在开启输入法后很不好用，所以改成下面这样
(defvar emms-volume-amixer-raise-commands
  '(?=))
(defvar emms-volume-amixer-lower-commands
  '(?-))
(defun emms-volume-amixer-raise (&optional arg)
  (interactive "P")
  (if arg
      (emms-volume-amixer-change -2)
    (emms-volume-amixer-change 2))
  (let (command)
    (while (progn
             (setq command (read-event))
             (cond ((member command emms-volume-amixer-raise-commands)
                    (emms-volume-amixer-change 2))
                   ((member command emms-volume-amixer-lower-commands)
                    (emms-volume-amixer-change -2)))))
    (setq unread-command-events (list command))))
(defun emms-volume-amixer-lower ()
  (interactive)
  (emms-volume-amixer-raise -1))

;; 按键绑定
(define-key emms-volume-minor-mode-map "=" 'emms-volume-mode-plus)
(dolist (kbd
         '(("=" . emms-volume-raise)
           ("A" . emms-score-up-file-on-line)
           ("X" . emms-score-down-file-on-line)
           ("N" . emms-playlist-new)))
  (define-key emms-playlist-mode-map (car kbd) (cdr kbd)))
(define-prefix-command 'ctl-ce-map)
(global-set-key "\C-ce" 'ctl-ce-map)
(set-keymap-parent ctl-ce-map emms-playlist-mode-map)
(dolist (kbd
         '(("m" . emms-playlist-mode-go-popup)
           ("u" . emms-score-up-playing)
           ("s" . emms-start)
           ("x" . emms-stop)
           ("-" . emms-volume-amixer-lower)
           ("t" . emms-lyrics-visit-lyric)
           ("=" . emms-volume-amixer-raise)))
  (define-key ctl-ce-map (car kbd) (cdr kbd)))
(define-key dired-mode-map "P" 'emms-add-dired)

(emms-history-load)                     ; 这一句最好放到配置最后面
;;  (emms-devel)
;;  (add-to-list 'exec-path
;;          "d:/work/emacs/emacs-22.3/elisp/emms-latest/mplayer")
;;
;;  ;; players
;;  (setq emms-player-mpg321-command-name "mpg123"
;;        emms-player-mplayer-command-name "mplayer"
;;        emms-player-list '(emms-player-mplayer
;;                           emms-player-mplayer-playlist
;;                           emms-player-ogg123
;;                           emms-player-mpg321))
;;  ;; Show the current track each time EMMS
;;  ;; starts to play a track with "播放 : "
;;  (add-hook 'emms-player-started-hook 'emms-show)
;;  (setq emms-show-format "播放: %s")
;;   ;; When asked for emms-play-directory,
;;  ;; always start from this one
;;  (setq emms-source-file-default-directory "~/")
;;  (setq emms-playlist-buffer-name "音乐")
;;
;;  ;; coding
;;  (setq emms-info-mp3info-coding-system 'gbk
;;        emms-lyrics-coding-system 'gbk
;;        emms-cache-file-coding-system 'utf-8)
;;
;;  ;; files
;;  (setq emms-source-file-default-directory "~/music/songs"
;;        emms-lyrics-dir "~/music/lyrics")
;;
;;  ;; mode line format
;;  (setq emms-mode-line-format "[ %s ]"
;;        emms-lyrics-display-format "%s"
;;        emms-playing-time-display-format "%s")
;;
;;  (setq global-mode-string
;;        '("" appt-mode-string
;;          display-time-string " "
;;          battery-mode-line-string " "
;;          erc-modified-channels-object
;;          emms-mode-line-string " "
;;          emms-playing-time-string " "
;;          emms-lyrics-mode-line-string " "))
;;
;;  ;; faces
;;  (set-face-foreground 'emms-playlist-selected-face "magenta")
;;  (set-face-foreground 'emms-playlist-track-face  "green")
;;
;;  (setq emms-source-file-directory-tree-function
;;        'emms-source-file-directory-tree-find)
;;
;;
;;  (setq emms-playlist-sort-prefix "S")
;;
;;  (define-key emms-playlist-mode-map (kbd "S s") 'emms-playlist-sort-by-score)
;;
;;  (global-set-key (kbd "<f3>") 'emms-playlist-mode-go-popup)
;;
;;  (defun emms-playlist-mode-jump ()
;;    "Jump to the directory of track at point in `emms-playlist-buffer'."
;;    (interactive)
;;    (dired
;;     (file-name-directory
;;      (emms-track-get (emms-playlist-track-at) 'name))))
;;
;;  ;; (global-set-key (kbd "C-c e t") 'emms-play-directory-tree)
;;  (global-set-key (kbd "C-c e x") 'emms-start)
;;  (global-set-key (kbd "C-c e v") 'emms-stop)
;;  (global-set-key (kbd "C-c e n") 'emms-next)
;;  (global-set-key (kbd "C-c e p") 'emms-previous)
;;  (global-set-key (kbd "C-c e o") 'emms-show)
;;  (global-set-key (kbd "C-c e h") 'emms-shuffle)
;;  ;; (global-set-key (kbd "C-c e e") 'emms-play-file)
;;  (global-set-key (kbd "C-c e SPC") 'emms-pause)
;;  (global-set-key (kbd "C-c e f") 'emms-no-next)
;;  (global-set-key (kbd "C-c e a") 'emms-add-directory-tree)
;;
;;  (global-set-key (kbd "C-c e r")   'emms-toggle-repeat-track)
;;  (global-set-key (kbd "C-c e R")   'emms-toggle-repeat-playlist)
;;  (global-set-key (kbd "C-c e m")   'emms-lyrics-toggle-display-on-minibuffer)
;;  (global-set-key (kbd "C-c e M")   'emms-lyrics-toggle-display-on-modeline)
;;
;;  (global-set-key (kbd "C-c e <left>")  (lambda () (interactive) (emms-seek -10)))
;;  (global-set-key (kbd "C-c e <right>") (lambda () (interactive) (emms-seek +10)))
;;  (global-set-key (kbd "C-c e <down>")  (lambda () (interactive) (emms-seek -60)))
;;  (global-set-key (kbd "C-c e <up>")    (lambda () (interactive) (emms-seek +60)))
;;
;;  (global-set-key (kbd "C-c e s u") 'emms-score-up-playing)
;;  (global-set-key (kbd "C-c e s d") 'emms-score-down-playing)
;;  (global-set-key (kbd "C-c e s o") 'emms-score-show-playing)




(add-to-list 'load-path "~/elisp/")
(require 'cal-china-x)










(add-to-list 'load-path
             "~/elisp/emacs-tiny-tools-devel/lisp/tiny")
                                        ;(require 'tinypath)
                                        ;(require 'tinypair)


(add-to-list 'load-path
             "~/elisp/emacs-tiny-tools-devel/lisp/other")




;;      ;;(add-to-list 'load-path "~/elisp/color-theme")
;;      ;; Load CEDET.
;;      ;; See cedet/common/cedet.info for configuration details.
;;      (load-file "~/elisp/cedet-1.0pre6/common/cedet.el")
;;
;;
;;      ;; Enable EDE (Project Management) features
;;      (global-ede-mode 1)
;;
;;      ;; Enable EDE for a pre-existing C++ project
;;      ;; (ede-cpp-root-project "NAME" :file "~/myproject/Makefile")
;;
;;
;;      ;; Enabling Semantic (code-parsing, smart completion) features
;;      ;; Select one of the following:
;;
;;      ;; * This enables the database and idle reparse engines
;;      (semantic-load-enable-minimum-features)
;;
;;      ;; * This enables some tools useful for coding, such as summary mode
;;      ;;   imenu support, and the semantic navigator
;;      (semantic-load-enable-code-helpers)
;;
;;      ;; * This enables even more coding tools such as intellisense mode
;;      ;;   decoration mode, and stickyfunc mode (plus regular code helpers)
;;      ;; (semantic-load-enable-gaudy-code-helpers)
;;
;;      ;; * This enables the use of Exuberent ctags if you have it installed.
;;      ;;   If you use C++ templates or boost, you should NOT enable it.
;;      ;; (semantic-load-enable-all-exuberent-ctags-support)
;;
;;      ;; Enable SRecode (Template management) minor-mode.
;;      ;; (global-srecode-minor-mode 1)
;;      ;;按照INSTALL安装就行，然后设置.emacs。INSTALL里有一段关于设置的，粘贴过来即可，另外最好在.emacs中设一个speedbar的快捷键:
;;      (global-set-key [(f4)] 'speedbar-get-focus)
;;      ;;这样按一个F4，speedbar就出来了。
;;      ;;再加一条：
;;      ;;  (define-key c-mode-base-map [(meta ?/)] 'semantic-ia-complete-symbol-menu)
;;      ;;于是，在程序中按下Alt+/，就会弹出菜单让你自动补全。
;;
;;
;;      (add-to-list 'load-path "~/elisp/ecb-2.40")
;;      ;;(require 'ecb)
;;      (require 'ecb-autoloads)





                                        ;(put 'dired-find-alternate-file 'disabled nil)
(put 'dired-find-alternate-file 'disabled 0)

                                        ;(put 'upcase-region 'disabled nil)
(put 'upcase-region 'disabled 0)




(setq-default indent-tabs-mode nil)
                                        ;(setq-default indent-tabs-mode 0)
;;(setq-default indent-tabs-mode t)


(global-set-key [f11] 'eval-current-buffer)
(global-set-key [f12] 'untabify)
(global-set-key [f6] 'calendar)
(global-set-key [f7] 'plan)
                                        ;(plan)

(add-to-list 'load-path "~/elisp/")
(require 'tab-display)












;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Emacs 主题设置 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 用户自定义变量
;; (custom-set-variables
;;  ;; Term
;;  '(term-default-bg-color "#000000")     ;term默认背景色
;;  '(term-default-fg-color "#dddd00")     ;term默认前景色
;;  ;; Imaxima
;;  '(imaxima-bg-color "black")            ;背景
;;  '(imaxima-fg-color "DarkGreen")        ;前景
;;  '(imaxima-equation-color "Green3")     ;表达式
;;  '(imaxima-label-color "slategrey")     ;标签
;;  '(imaxima-fnt-size "Large")            ;字体大小
;;  '(imaxima-max-scale 0.85)              ;表达式最大比例
;;  '(imaxima-pt-size 12)                  ;点大小
;;  ;; 高亮括号结构
;;  '(hl-paren-colors (quote (
;;                            "Cyan"       ;一级颜色
;;                            "Gold"       ;二级颜色
;;                            "Red"        ;三级颜色
;;                            )))
;;  ;; Smiley
;;  '(smiley-style (quote medium))         ;笑脸的风格, 中等, 10种颜色
;;  )
;;
(add-to-list 'load-path "~/elisp/")
(require 'highlight-parentheses)        ;智能括号
(add-hook 'find-file-hook 'highlight-parentheses-mode t)


;;; ### Advice ###
;;; --- 各种emacs行为建议
;; 在特定地模式下粘贴时自动缩进
(defadvice yank (after indent-region activate)
  "To make yank content indent automatically."
  (if (member major-mode '(emacs-lisp-mode
                           scheme-mode
                           lisp-mode
                           lisp-interaction-mode
                           c-mode
                           c++-mode
                           objc-mode
                           latex-mode
                           plain-tex-mode
                           verilog-mode))
                                        ;(indent-region (region-beginning) (region-end) nil)))
      (indent-region (region-beginning) (region-end) 0)))


;;    ; ### Windows ###
;;     ;;; --- 用于保存和管理窗口的配置方案
;;     ;(win:startup-with-window)
;;     (setq win:configuration-file "~/MyEmacs/Configure-File/Windows/windows-configure") ;窗口布局管理保存文件
;;    
;;     ;;; ### Revive ###
;;     ;;; --- 用于记录恢复特定窗口配置方案
;;     (autoload 'save-current-configuration "revive" "Save status" t)
;;     (autoload 'resume "revive" "Resume Emacs" t)
;;     (autoload 'wipe "revive" "Wipe Emacs" t)
;;     (setq revive:configuration-file "~/MyEmacs/Configure-File/Revive/revive-configure") ;窗口布局设置保存文件
;;    
;;    ; ### Modeline-posn ###
;;    ; --- 在 Mode-line 显示当前Buffer的大小
(size-indication-mode 1)


;;; ### Recentf ###
;;; --- 打开最近的文件
(recentf-mode 1)
(setq recentf-max-saved-items 100)      ;最近打开文件的最大数量
(setq recentf-auto-cleanup 300)         ;自动清理最近打开文件列表中重复或其他文件的时间间隔 (秒)
(setq recentf-save-file "~/MyEmacs/Configure-File/Recentf/recentf-list") ;最近打开的文件列表





;;; ### Speedbar ###
;;; --- 资源管理器
(setq speedbar-show-unknown-files t)    ;显示文件


;;; ### Ibuffer ###
;;; --- 交互式Buffer
(setq ibuffer-sorting-mode 'recency)    ;用最近打开模式显示


;;; ### Color moccur ###
;;; --- 增强的Buffer搜索
(setq moccur-kill-moccur-buffer t)         ;退出buffer时自动关闭其buffer
(setq moccur-edit-highlight-edited-text t) ;高亮编辑过的内容
(defadvice moccur-edit-change-file         ;编辑过后自动保存buffer
  (after save-after-moccur-edit-buffer activate)
  "Automatically save buffer when edit in moccur."
  (save-buffer))


;;; ### Breadcrumb ###
;;; --- 文件书签管理
(setq bookmark-default-file "~/MyEmacs/Configure-File/Breadcrumb/bookmark") ;设置书签的保存位置
(setq bookmark-limit 300)                                           ;设置书签的最大数量
(setq bookmark-save-flag 1)

(add-to-list 'load-path "~/elisp/")
                                        ;(require 'LazyCatTheme)        ;


(require 'uniquify)
;;; ### Uniquify ###
;;; --- 相同缓存名字时加上路径以区别
(setq uniquify-buffer-name-style 'post-forward-angle-brackets) ;反方向的显示重复的Buffer名字
(setq uniquify-separator "/")                                  ;分隔符
(setq uniquify-after-kill-buffer-p t)                          ;删除重复名字的Buffer后重命名

                                        ;(require 'whitespace)
;;; ### Whitespace ###
;;; --- 空格清理
(setq whitespace-global-mode t)         ;全局检测多余空格
(global-set-key (kbd "C-x c w")  'whitespace-mode)
(global-set-key (kbd "C-x c c")  'whitespace-cleanup)

(global-set-key (kbd "C-x c h")  'windmove-left);move to left windnow
(global-set-key (kbd "C-x c l")  'windmove-right)
(global-set-key (kbd "C-x c j")  'windmove-down)
(global-set-key (kbd "C-x c k")  'windmove-up)

(global-set-key [M-left ]  'windmove-left);move to left windnow
(global-set-key [M-right]  'windmove-right)
(global-set-key [M-down ]  'windmove-down)
(global-set-key [M-up   ]  'windmove-up)

                                        ;(tool-bar-mode nil) old < v24.1
(tool-bar-mode 0)
                                        ;(menu-bar-mode nil) < v24.1
                                        ;(menu-bar-mode 0)
                                        ;(scroll-bar-mode nil) < v24.1
(scroll-bar-mode 0)

                                        ;(require 'maxframe)
                                        ;(add-hook 'window-setup-hook 'maximize-frame t)




(require 'org-install)
(setq org-src-fontify-natively t)


;; Org-mode
(custom-set-faces
 '(org-date                             ;日期
   ((((class color) (background dark))
     (
      :foreground "ivory4"
                  :underline t))))
 '(org-special-keyword                  ;关键字
   ((((class color) (min-colors 16) (background dark))
     (:foreground "rosybrown1"))))
 '(org-level-3                          ;第三级
   ((t (
        :inherit outline-3
                 :foreground "DeepSkyBlue"))))
 '(org-level-5                          ;第五级
   ((t (
        :inherit outline-5
                 :foreground "VioletRed3"))))
 '(org-level-6                          ;第六级
   ((t (
        :inherit outline-6
                 :foreground "violet"))))
 '(org-level-7                          ;第七级
   ((t (
        :inherit outline-7
                 :foreground "khaki3"))))
 '(org-level-8                          ;第八级
   ((t (
        :inherit outline-8
                 :foreground "DarkSeaGreen"))))
 '(org-hide                             ;隐藏星号
   ((((background dark))
     (:foreground "black"))))
 '(org-ellipsis                         ;省略号
   ((((class color) (background dark))
     (
      :background "black"
                  :foreground "Cyan"
                  :strike-through nil
                  ))))
 )


(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
                                        ;  (color-theme-hober)
                                        ;  (color-theme-initialize)
                                        ;  (color-theme-tty-dark)
                                        ;  (color-theme-comidia)
                                        ;  (color-theme-dark-laptop)
     (color-theme-gnome2)
                                        ;  (color-theme-classic)
     ))


;;   (load "desktop")
;;   (desktop-save-mode 1)
;;   
;;    (defun my-desktop-save ()
;;       (interactive)
;;       ;; Don't call desktop-save-in-desktop-dir, as it prints a message.
;;       (if (eq (desktop-owner) (emacs-pid))
;;           (desktop-save desktop-dirname)))
;;     (add-hook 'auto-save-hook 'my-desktop-save)
;;   
;;   (setq history-length 250)
;;   (add-to-list 'desktop-globals-to-save 'file-name-history)
;;   
;;     (setq desktop-buffers-not-to-save
;;           (concat "\\("
;;                   "^nn\\.a[0-9]+\\|\\.log\\|(ftp)\\|^tags\\|^TAGS"
;;                   "\\|\\.emacs.*\\|\\.diary\\|\\.newsrc-dribble\\|\\.bbdb"
;;              "\\)$"))
;;      (add-to-list 'desktop-modes-not-to-save 'dired-mode)
;;      (add-to-list 'desktop-modes-not-to-save 'Info-mode)
;;      (add-to-list 'desktop-modes-not-to-save 'info-lookup-mode)
;;      (add-to-list 'desktop-modes-not-to-save 'fundamental-mode)
;;   
;;   ;; use only one desktop
;;   (setq desktop-path '("~/.emacs.d/"))
;;   (setq desktop-dirname "~/.emacs.d/")
;;   (setq desktop-base-file-name "emacs-desktop")
;;   
;;   ;; remove desktop after it's been read
;;   (add-hook 'desktop-after-read-hook
;;        '(lambda ()
;;           ;; desktop-remove clears desktop-dirname
;;           (setq desktop-dirname-tmp desktop-dirname)
;;           (desktop-remove)
;;           (setq desktop-dirname desktop-dirname-tmp)))
;;   
;;   (defun saved-session ()
;;     (file-exists-p (concat desktop-dirname "/" desktop-base-file-name)))
;;   
;;   ;; use session-restore to restore the desktop manually
;;   (defun session-restore ()
;;     "Restore a saved emacs session."
;;     (interactive)
;;     (if (saved-session)
;;         (desktop-read)
;;       (message "No desktop found.")))
;;   
;;   ;; use session-save to save the desktop manually
;;   (defun session-save ()
;;     "Save an emacs session."
;;     (interactive)
;;     (if (saved-session)
;;         (if (y-or-n-p "Overwrite existing desktop? ")
;;        (desktop-save-in-desktop-dir)
;;      (message "Session not saved."))
;;     (desktop-save-in-desktop-dir)))
;;   
;;   ;; ask user whether to restore desktop at start-up
;;   (add-hook 'after-init-hook
;;        '(lambda ()
;;           (if (saved-session)
;;          (if (y-or-n-p "Restore desktop? ")
;;              (session-restore)))))
;;   
;;   
;;   
;;   
;;   ;;; desktop-override-stale-locks.el begins here
;;   (defun emacs-process-p (pid)
;;     "If pid is the process ID of an emacs process, return t, else nil.
;;   Also returns nil if pid is nil."
;;     (when pid
;;       (let* ((cmdline-file (concat "/proc/" (int-to-string pid) "/cmdline")))
;;         (when (file-exists-p cmdline-file)
;;           (with-temp-buffer
;;             (insert-file-contents-literally cmdline-file)
;;             (goto-char (point-min))
;;             (search-forward "emacs" nil t)
;;             pid)))))
;;   
;;   (defadvice desktop-owner (after pry-from-cold-dead-hands activate)
;;     "Don't allow dead emacsen to own the desktop file."
;;     (when (not (emacs-process-p ad-return-value))
;;       (setq ad-return-value nil)))
;;   ;;; desktop-override-stale-locks.el ends here
;;   
;;   
;;   
;;   ;(desktop-load-default)
;;   ;(desktop-read)

                                        ;(require 'table)
                                        ;(add-hook 'text-mode-hook 'table-recognize)


;;(require 'init-org)



                                        ;(require 'yasnippet-bundle)

;;;;=============================2014.5.4====================================
;;(add-to-list 'load-path "~/elisp/yasnippet")
;;(require 'yasnippet) ;; not yasnippet-bundle
;;
;;(yas/initialize)
;;(yas/global-mode 1)
;;
;;(yas/load-directory "~/elisp/yasnippet/snippets")
;;;;=============================2014.5.4====================================


(add-to-list 'load-path "~/elisp")
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(setq auto-mode-alist (cons  '("\\.yaml\\'" . yaml-mode) auto-mode-alist))

;;   (if (= emacs-major-version 24)
;;       (progn
;;         (add-to-list 'load-path "~/elisp/w3m/emacs-w3m-1.4.4")
;;         ;(require 'w3m-load)
;;         )
;;     (require 'w3m))
;;   
;;    (setq browse-url-browser-function 'w3m-browse-url)
;;    (autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
;;    ;; optional keyboard short-cut
;;    (global-set-key "\C-xm" 'browse-url-at-point)



;;    ;(add-to-list 'load-path "~/elisp/w3m/emacs-w3m-1.4.4/")
;;    ;(require 'w3m) 
;;    ;(add-to-list 'load-path "~/elisp")
;;    ;(require 'init-w3m)




;; User customization for Verilog mode
(setq verilog-indent-level             3
      verilog-indent-level-module      3
      verilog-indent-level-declaration 3
      verilog-indent-level-behavioral  3
      verilog-indent-level-directive   1
      verilog-case-indent              2
      verilog-auto-newline             t
      verilog-auto-indent-on-newline   t
      verilog-tab-always-indent        t
      verilog-auto-endcomments         t
      verilog-minimum-comment-distance 40
      verilog-indent-begin-after-if    t
      verilog-auto-lineup              'declarations
      verilog-highlight-p1800-keywords nil
      verilog-linter          "my_lint_shell_command"
      )


;全屏
(defun my-fullscreen ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_FULLSCREEN" 0)))
 
;最大化
(defun my-maximized-horz ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(1 "_NET_WM_STATE_MAXIMIZED_HORZ" 0)))
(defun my-maximized-vert ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(1 "_NET_WM_STATE_MAXIMIZED_VERT" 0)))
(defun my-maximized ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(1 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(1 "_NET_WM_STATE_MAXIMIZED_VERT" 0)))



(global-set-key (kbd "C-c 0") 'occur)
