(in-package :quilc)

(defun clamp-syslog-name (name)
  "Produces a name like \"<A>...<B>\" where <A> is a 15-char chunk
from the beginning of the name, and <B> is a 30-char chunk from the
end of the name."
  (let ((len (length name)))
    (if (<= len 48)
        name
        (format nil "~A...~A"
                (subseq name 0 15)
                (subseq name (- (length name) 30))))))
