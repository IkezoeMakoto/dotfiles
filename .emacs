;; C-hを削除に
(keyboard-translate ?\C-h ?\C-?)

;; ロックファイル / バックアップファイルを作成しない
(setq create-lockfiles nil)
(setq make-backup-files nil)
(setq delete-auto-save-files t)
