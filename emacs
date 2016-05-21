# Basic usage

  Indent              Select text then press TAB
  Cut                 CTRL-w
  Copy                ALT-w
  Paste               CTRL-y
  Search/Find         CTRL-s
  Replace             ALT-% (ALT-SHIFT-5)
  Save                CTRL-x CTRL-s
  Load/Open           CTRL-x CTRL-f
  Undo                CTRL-x u
  Highlight all text  CTRL-x h
  Directory listing   CTRL-x d
  Cancel a command    ESC ESC ESC
  Font size bigger    CTRL-x CTRL-+
  Font size smaller   CTRL-x CTRL--

#  Buffers

  Split screen vertically                         CTRL-x 2
  Split screen vertically with 5 row height       CTRL-u 5 CTRL-x 2
  Split screen horizontally                       CTRL-x 3
  Split screen horizontally with 24 column width  CTRL-u 24 CTRL-x 3
  Revert to single screen                         CTRL-x 1
  Hide the current screen                         CTRL-x 0
  Kill the current screen                         CTRL-x k
  Move to the next buffer                         CTRL-x O
  Select a buffer                                 CTRL-x b
  Run command in the scratch buffer               CTRL-x CTRL-e

# Other stuff

  Open a shell         ALT-x eshell
  Goto a line number   ALT-x goto-line
  Word wrap            ALT-x toggle-word-wrap
  Spell checking       ALT-x flyspell-mode
  Line numbers         ALT-x linum-mode
  Toggle line wrap     ALT-x visual-line-mode
  Compile some code    ALT-x compile
  List packages        ALT-x package-list-packages

#  Sudoing within eshell

  By default when using the sudo command within eshell you'll just
  get "permission denied" messages. To overcome that type:

    alias sudo '*sudo $*'

# Line numbers

  To add line numbers and enable moving to a line with CTRL-l:

    (global-set-key "\C-l" 'goto-line)
    (add-hook 'find-file-hook (lambda () (linum-mode 1)))

# Org-mode

  To begin org-mode                            ALT-x org-mode
  Table column separator                       Vertical/pipe character
  Reorganize table                             TAB
  Section heading                              *
  Open/collapse section                        TAB
  Open/collapse All                            CTRL-TAB
  Export in other file formats (eg HTML,PDF)   CTRL-c CTRL-e

  To make org-mode automatically wrap lines:

    (add-hook 'org-mode-hook
              '(lambda ()
                 (visual-line-mode 1)))
