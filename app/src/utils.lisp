(in-package :quilc)

(defun clamp-syslog-name (name)
  ""
  (let ((len (length name)))
    (if (<= len 48)
        name
        (format nil "~A...~A"
                (subseq name 0 15)
                (subseq name (- (length name) 30))))))
