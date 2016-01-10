; Auto-generated. Do not edit!


(cl:in-package custom_data-msg)


;//! \htmlinclude ClientArray.msg.html

(cl:defclass <ClientArray> (roslisp-msg-protocol:ros-message)
  ((clients
    :reader clients
    :initarg :clients
    :type (cl:vector custom_data-msg:Client)
   :initform (cl:make-array 0 :element-type 'custom_data-msg:Client :initial-element (cl:make-instance 'custom_data-msg:Client))))
)

(cl:defclass ClientArray (<ClientArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClientArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClientArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_data-msg:<ClientArray> is deprecated: use custom_data-msg:ClientArray instead.")))

(cl:ensure-generic-function 'clients-val :lambda-list '(m))
(cl:defmethod clients-val ((m <ClientArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_data-msg:clients-val is deprecated.  Use custom_data-msg:clients instead.")
  (clients m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClientArray>) ostream)
  "Serializes a message object of type '<ClientArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'clients))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'clients))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClientArray>) istream)
  "Deserializes a message object of type '<ClientArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'clients) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'clients)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'custom_data-msg:Client))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClientArray>)))
  "Returns string type for a message object of type '<ClientArray>"
  "custom_data/ClientArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClientArray)))
  "Returns string type for a message object of type 'ClientArray"
  "custom_data/ClientArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClientArray>)))
  "Returns md5sum for a message object of type '<ClientArray>"
  "4f52ee794d6a9c771d5f7c0f8c5139b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClientArray)))
  "Returns md5sum for a message object of type 'ClientArray"
  "4f52ee794d6a9c771d5f7c0f8c5139b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClientArray>)))
  "Returns full string definition for message of type '<ClientArray>"
  (cl:format cl:nil "Client[] clients~%================================================================================~%MSG: custom_data/Client~%string client_name~%float64 posx~%float64 posy~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClientArray)))
  "Returns full string definition for message of type 'ClientArray"
  (cl:format cl:nil "Client[] clients~%================================================================================~%MSG: custom_data/Client~%string client_name~%float64 posx~%float64 posy~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClientArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'clients) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClientArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ClientArray
    (cl:cons ':clients (clients msg))
))
