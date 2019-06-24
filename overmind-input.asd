(defsystem "overmind-input"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.markdown"))
  :in-order-to ((test-op (test-op "overmind-input/tests"))))

(defsystem "overmind-input/tests"
  :author ""
  :license ""
  :depends-on ("overmind-input"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for overmind-input"

  :perform (test-op (op c) (symbol-call :rove :run c)))
