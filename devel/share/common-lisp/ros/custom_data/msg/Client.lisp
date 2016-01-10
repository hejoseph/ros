; Auto-generated. Do not edit!


(cl:in-package custom_data-msg)


;//! \htmlinclude Client.msg.html

(cl:defclass <Client> (roslisp-msg-protocol:ros-message)
  ((client_name
    :reader client_name
    :initarg :client_name
    :type cl:string
    :initform "")
   (posx
    :reader posx
    :initarg :posx
    :type cl:float
    :initform 0.0)
   (posy
    :reader posy
    :initarg :posy
    :type cl:float
    :initform 0.0))
)

(cl:defclass Client (<Client>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Client>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Client)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_data-msg:<Client> is deprecated: use custom_data-msg:Client instead.")))

(cl:ensure-generic-function 'client_name-val :lambda-list '(m))
(cl:defmethod client_name-val ((m <Client>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_data-msg:client_name-val is deprecated.  Use custom_data-msg:client_name instead.")
  (client_name m))

(cl:ensure-generic-function 'posx-val :lambda-list '(m))
(cl:defmethod posx-val ((m <Client>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_data-msg:posx-val is deprecated.  Use custom_data-msg:posx instead.")
  (posx m))

(cl:ensure-generic-function 'posy-val :lambda-list '(m))
(cl:defmethod posy-val ((m <Client>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_data-msg:posy-val is deprecated.  Use custom_data-msg:posy instead.")
  (posy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Client>) ostream)
  "Serializes a message object of type '<Client>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'client_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'client_name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'posx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'posy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Client>) istream)
  "Deserializes a message object of type '<Client>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'client_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'client_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'posx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'posy) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Client>)))
  "Returns string type for a message object of type '<Client>"
  "custom_data/Client")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Client)))
  "Returns string type for a message object of type 'Client"
  "custom_data/Client")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Client>)))
  "Returns md5sum for a message object of type '<Client>"
  "c4f6ca1f3347b8c6d52cadc422711428")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Client)))
  "Returns md5sum for a message object of type 'Client"
  "c4f6ca1f3347b8c6d52cadc422711428")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Client>)))
  "Returns full string definition for message of type '<Client>"
  (cl:format cl:nil "string client_name~%float64 posx~%float64 posy~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Client)))
  "Returns full string definition for message of type 'Client"
  (cl:format cl:nil "string client_name~%float64 posx~%float64 posy~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Client>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'client_name))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Client>))
  "Converts a ROS message object to a list"
  (cl:list 'Client
    (cl:cons ':client_name (client_name msg))
    (cl:cons ':posx (posx msg))
    (cl:cons ':posy (posy msg))
))
