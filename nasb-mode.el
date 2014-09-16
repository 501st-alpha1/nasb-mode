;; nasb-mode - an Emacs major mode for reading the NASB
;; Copyright (C) 2014 Scott Weldon

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

(defvar nasb-location nil)

(defun nasb-mode()
  (interactive)
  (unless nasb-location
    (error "nasb-location is not defined."))
  (when nasb-location
    (find-file nasb-location)
    (read-only-mode)))
