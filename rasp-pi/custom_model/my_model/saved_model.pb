??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-0-g919f693420e8ɮ
?
conv2d_492/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_492/kernel

%conv2d_492/kernel/Read/ReadVariableOpReadVariableOpconv2d_492/kernel*&
_output_shapes
:*
dtype0
v
conv2d_492/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_492/bias
o
#conv2d_492/bias/Read/ReadVariableOpReadVariableOpconv2d_492/bias*
_output_shapes
:*
dtype0
?
conv2d_493/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameconv2d_493/kernel

%conv2d_493/kernel/Read/ReadVariableOpReadVariableOpconv2d_493/kernel*&
_output_shapes
:@*
dtype0
v
conv2d_493/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_493/bias
o
#conv2d_493/bias/Read/ReadVariableOpReadVariableOpconv2d_493/bias*
_output_shapes
:@*
dtype0
~
dense_397/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_397/kernel
w
$dense_397/kernel/Read/ReadVariableOpReadVariableOpdense_397/kernel* 
_output_shapes
:
??*
dtype0
t
dense_397/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_397/bias
m
"dense_397/bias/Read/ReadVariableOpReadVariableOpdense_397/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/conv2d_492/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_492/kernel/m
?
,Adam/conv2d_492/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_492/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_492/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_492/bias/m
}
*Adam/conv2d_492/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_492/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_493/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/conv2d_493/kernel/m
?
,Adam/conv2d_493/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_493/kernel/m*&
_output_shapes
:@*
dtype0
?
Adam/conv2d_493/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_493/bias/m
}
*Adam/conv2d_493/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_493/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_397/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_397/kernel/m
?
+Adam/dense_397/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_397/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_397/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_397/bias/m
{
)Adam/dense_397/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_397/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_492/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_492/kernel/v
?
,Adam/conv2d_492/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_492/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_492/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_492/bias/v
}
*Adam/conv2d_492/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_492/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_493/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/conv2d_493/kernel/v
?
,Adam/conv2d_493/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_493/kernel/v*&
_output_shapes
:@*
dtype0
?
Adam/conv2d_493/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_493/bias/v
}
*Adam/conv2d_493/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_493/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_397/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_397/kernel/v
?
+Adam/dense_397/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_397/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_397/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_397/bias/v
{
)Adam/dense_397/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_397/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?.
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?.
value?.B?. B?.
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
	optimizer
	trainable_variables

	variables
regularization_losses
	keras_api

signatures
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
 regularization_losses
!	keras_api
R
"trainable_variables
#	variables
$regularization_losses
%	keras_api
R
&trainable_variables
'	variables
(regularization_losses
)	keras_api
h

*kernel
+bias
,trainable_variables
-	variables
.regularization_losses
/	keras_api
?
0iter

1beta_1

2beta_2
	3decay
4learning_ratemhmimjmk*ml+mmvnvovpvq*vr+vs
*
0
1
2
3
*4
+5
*
0
1
2
3
*4
+5
 
?

5layers
6layer_metrics
	trainable_variables

	variables
7layer_regularization_losses
8metrics
9non_trainable_variables
regularization_losses
 
][
VARIABLE_VALUEconv2d_492/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_492/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?

:layers
;layer_metrics
trainable_variables
<layer_regularization_losses
	variables
=metrics
>non_trainable_variables
regularization_losses
 
 
 
?

?layers
@layer_metrics
trainable_variables
Alayer_regularization_losses
	variables
Bmetrics
Cnon_trainable_variables
regularization_losses
][
VARIABLE_VALUEconv2d_493/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_493/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?

Dlayers
Elayer_metrics
trainable_variables
Flayer_regularization_losses
	variables
Gmetrics
Hnon_trainable_variables
regularization_losses
 
 
 
?

Ilayers
Jlayer_metrics
trainable_variables
Klayer_regularization_losses
	variables
Lmetrics
Mnon_trainable_variables
 regularization_losses
 
 
 
?

Nlayers
Olayer_metrics
"trainable_variables
Player_regularization_losses
#	variables
Qmetrics
Rnon_trainable_variables
$regularization_losses
 
 
 
?

Slayers
Tlayer_metrics
&trainable_variables
Ulayer_regularization_losses
'	variables
Vmetrics
Wnon_trainable_variables
(regularization_losses
\Z
VARIABLE_VALUEdense_397/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_397/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1

*0
+1
 
?

Xlayers
Ylayer_metrics
,trainable_variables
Zlayer_regularization_losses
-	variables
[metrics
\non_trainable_variables
.regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
1
0
1
2
3
4
5
6
 
 

]0
^1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	_total
	`count
a	variables
b	keras_api
D
	ctotal
	dcount
e
_fn_kwargs
f	variables
g	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

_0
`1

a	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

c0
d1

f	variables
?~
VARIABLE_VALUEAdam/conv2d_492/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_492/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_493/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_493/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_397/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_397/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_492/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_492/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_493/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_493/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_397/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_397/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_conv2d_492_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_492_inputconv2d_492/kernelconv2d_492/biasconv2d_493/kernelconv2d_493/biasdense_397/kerneldense_397/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_258241
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_492/kernel/Read/ReadVariableOp#conv2d_492/bias/Read/ReadVariableOp%conv2d_493/kernel/Read/ReadVariableOp#conv2d_493/bias/Read/ReadVariableOp$dense_397/kernel/Read/ReadVariableOp"dense_397/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv2d_492/kernel/m/Read/ReadVariableOp*Adam/conv2d_492/bias/m/Read/ReadVariableOp,Adam/conv2d_493/kernel/m/Read/ReadVariableOp*Adam/conv2d_493/bias/m/Read/ReadVariableOp+Adam/dense_397/kernel/m/Read/ReadVariableOp)Adam/dense_397/bias/m/Read/ReadVariableOp,Adam/conv2d_492/kernel/v/Read/ReadVariableOp*Adam/conv2d_492/bias/v/Read/ReadVariableOp,Adam/conv2d_493/kernel/v/Read/ReadVariableOp*Adam/conv2d_493/bias/v/Read/ReadVariableOp+Adam/dense_397/kernel/v/Read/ReadVariableOp)Adam/dense_397/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_258570
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_492/kernelconv2d_492/biasconv2d_493/kernelconv2d_493/biasdense_397/kerneldense_397/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_492/kernel/mAdam/conv2d_492/bias/mAdam/conv2d_493/kernel/mAdam/conv2d_493/bias/mAdam/dense_397/kernel/mAdam/dense_397/bias/mAdam/conv2d_492/kernel/vAdam/conv2d_492/bias/vAdam/conv2d_493/kernel/vAdam/conv2d_493/bias/vAdam/dense_397/kernel/vAdam/dense_397/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_258661??
?
i
M__inference_max_pooling2d_593_layer_call_and_return_conditional_losses_257888

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
F__inference_conv2d_493_layer_call_and_return_conditional_losses_258395

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????II@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????II@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????II@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????II@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????JJ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????JJ
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_595_layer_call_fn_258425

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_595_layer_call_and_return_conditional_losses_2580022
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$$@:W S
/
_output_shapes
:?????????$$@
 
_user_specified_nameinputs
?	
?
$__inference_CNN_layer_call_fn_258170
conv2d_492_input!
unknown:
	unknown_0:#
	unknown_1:@
	unknown_2:@
	unknown_3:
??
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_492_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_CNN_layer_call_and_return_conditional_losses_2581382
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_492_input
?
?
E__inference_dense_397_layer_call_and_return_conditional_losses_258466

inputs2
matmul_readvariableop_resource:
??-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
__inference__traced_save_258570
file_prefix0
,savev2_conv2d_492_kernel_read_readvariableop.
*savev2_conv2d_492_bias_read_readvariableop0
,savev2_conv2d_493_kernel_read_readvariableop.
*savev2_conv2d_493_bias_read_readvariableop/
+savev2_dense_397_kernel_read_readvariableop-
)savev2_dense_397_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv2d_492_kernel_m_read_readvariableop5
1savev2_adam_conv2d_492_bias_m_read_readvariableop7
3savev2_adam_conv2d_493_kernel_m_read_readvariableop5
1savev2_adam_conv2d_493_bias_m_read_readvariableop6
2savev2_adam_dense_397_kernel_m_read_readvariableop4
0savev2_adam_dense_397_bias_m_read_readvariableop7
3savev2_adam_conv2d_492_kernel_v_read_readvariableop5
1savev2_adam_conv2d_492_bias_v_read_readvariableop7
3savev2_adam_conv2d_493_kernel_v_read_readvariableop5
1savev2_adam_conv2d_493_bias_v_read_readvariableop6
2savev2_adam_dense_397_kernel_v_read_readvariableop4
0savev2_adam_dense_397_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_492_kernel_read_readvariableop*savev2_conv2d_492_bias_read_readvariableop,savev2_conv2d_493_kernel_read_readvariableop*savev2_conv2d_493_bias_read_readvariableop+savev2_dense_397_kernel_read_readvariableop)savev2_dense_397_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv2d_492_kernel_m_read_readvariableop1savev2_adam_conv2d_492_bias_m_read_readvariableop3savev2_adam_conv2d_493_kernel_m_read_readvariableop1savev2_adam_conv2d_493_bias_m_read_readvariableop2savev2_adam_dense_397_kernel_m_read_readvariableop0savev2_adam_dense_397_bias_m_read_readvariableop3savev2_adam_conv2d_492_kernel_v_read_readvariableop1savev2_adam_conv2d_492_bias_v_read_readvariableop3savev2_adam_conv2d_493_kernel_v_read_readvariableop1savev2_adam_conv2d_493_bias_v_read_readvariableop2savev2_adam_dense_397_kernel_v_read_readvariableop0savev2_adam_dense_397_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::@:@:
??:: : : : : : : : : :::@:@:
??::::@:@:
??:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:@: 

_output_shapes
:@:&"
 
_output_shapes
:
??: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:@: 

_output_shapes
:@:&"
 
_output_shapes
:
??: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:@: 

_output_shapes
:@:&"
 
_output_shapes
:
??: 

_output_shapes
::

_output_shapes
: 
?
i
M__inference_max_pooling2d_593_layer_call_and_return_conditional_losses_258370

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
? 
?
?__inference_CNN_layer_call_and_return_conditional_losses_258193
conv2d_492_input+
conv2d_492_258173:
conv2d_492_258175:+
conv2d_493_258179:@
conv2d_493_258181:@$
dense_397_258187:
??
dense_397_258189:
identity??"conv2d_492/StatefulPartitionedCall?"conv2d_493/StatefulPartitionedCall?!dense_397/StatefulPartitionedCall?
"conv2d_492/StatefulPartitionedCallStatefulPartitionedCallconv2d_492_inputconv2d_492_258173conv2d_492_258175*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_492_layer_call_and_return_conditional_losses_2579632$
"conv2d_492/StatefulPartitionedCall?
!max_pooling2d_593/PartitionedCallPartitionedCall+conv2d_492/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????JJ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_593_layer_call_and_return_conditional_losses_2579732#
!max_pooling2d_593/PartitionedCall?
"conv2d_493/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_593/PartitionedCall:output:0conv2d_493_258179conv2d_493_258181*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????II@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_493_layer_call_and_return_conditional_losses_2579862$
"conv2d_493/StatefulPartitionedCall?
!max_pooling2d_594/PartitionedCallPartitionedCall+conv2d_493/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_594_layer_call_and_return_conditional_losses_2579962#
!max_pooling2d_594/PartitionedCall?
!max_pooling2d_595/PartitionedCallPartitionedCall*max_pooling2d_594/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_595_layer_call_and_return_conditional_losses_2580022#
!max_pooling2d_595/PartitionedCall?
flatten_155/PartitionedCallPartitionedCall*max_pooling2d_595/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_155_layer_call_and_return_conditional_losses_2580102
flatten_155/PartitionedCall?
!dense_397/StatefulPartitionedCallStatefulPartitionedCall$flatten_155/PartitionedCall:output:0dense_397_258187dense_397_258189*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_397_layer_call_and_return_conditional_losses_2580232#
!dense_397/StatefulPartitionedCall?
IdentityIdentity*dense_397/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_492/StatefulPartitionedCall#^conv2d_493/StatefulPartitionedCall"^dense_397/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : 2H
"conv2d_492/StatefulPartitionedCall"conv2d_492/StatefulPartitionedCall2H
"conv2d_493/StatefulPartitionedCall"conv2d_493/StatefulPartitionedCall2F
!dense_397/StatefulPartitionedCall!dense_397/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_492_input
?
i
M__inference_max_pooling2d_595_layer_call_and_return_conditional_losses_258002

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$$@:W S
/
_output_shapes
:?????????$$@
 
_user_specified_nameinputs
?,
?
!__inference__wrapped_model_257879
conv2d_492_inputG
-cnn_conv2d_492_conv2d_readvariableop_resource:<
.cnn_conv2d_492_biasadd_readvariableop_resource:G
-cnn_conv2d_493_conv2d_readvariableop_resource:@<
.cnn_conv2d_493_biasadd_readvariableop_resource:@@
,cnn_dense_397_matmul_readvariableop_resource:
??;
-cnn_dense_397_biasadd_readvariableop_resource:
identity??%CNN/conv2d_492/BiasAdd/ReadVariableOp?$CNN/conv2d_492/Conv2D/ReadVariableOp?%CNN/conv2d_493/BiasAdd/ReadVariableOp?$CNN/conv2d_493/Conv2D/ReadVariableOp?$CNN/dense_397/BiasAdd/ReadVariableOp?#CNN/dense_397/MatMul/ReadVariableOp?
$CNN/conv2d_492/Conv2D/ReadVariableOpReadVariableOp-cnn_conv2d_492_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02&
$CNN/conv2d_492/Conv2D/ReadVariableOp?
CNN/conv2d_492/Conv2DConv2Dconv2d_492_input,CNN/conv2d_492/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
2
CNN/conv2d_492/Conv2D?
%CNN/conv2d_492/BiasAdd/ReadVariableOpReadVariableOp.cnn_conv2d_492_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%CNN/conv2d_492/BiasAdd/ReadVariableOp?
CNN/conv2d_492/BiasAddBiasAddCNN/conv2d_492/Conv2D:output:0-CNN/conv2d_492/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
CNN/conv2d_492/BiasAdd?
CNN/conv2d_492/ReluReluCNN/conv2d_492/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
CNN/conv2d_492/Relu?
CNN/max_pooling2d_593/MaxPoolMaxPool!CNN/conv2d_492/Relu:activations:0*/
_output_shapes
:?????????JJ*
ksize
*
paddingVALID*
strides
2
CNN/max_pooling2d_593/MaxPool?
$CNN/conv2d_493/Conv2D/ReadVariableOpReadVariableOp-cnn_conv2d_493_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02&
$CNN/conv2d_493/Conv2D/ReadVariableOp?
CNN/conv2d_493/Conv2DConv2D&CNN/max_pooling2d_593/MaxPool:output:0,CNN/conv2d_493/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????II@*
paddingVALID*
strides
2
CNN/conv2d_493/Conv2D?
%CNN/conv2d_493/BiasAdd/ReadVariableOpReadVariableOp.cnn_conv2d_493_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02'
%CNN/conv2d_493/BiasAdd/ReadVariableOp?
CNN/conv2d_493/BiasAddBiasAddCNN/conv2d_493/Conv2D:output:0-CNN/conv2d_493/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????II@2
CNN/conv2d_493/BiasAdd?
CNN/conv2d_493/ReluReluCNN/conv2d_493/BiasAdd:output:0*
T0*/
_output_shapes
:?????????II@2
CNN/conv2d_493/Relu?
CNN/max_pooling2d_594/MaxPoolMaxPool!CNN/conv2d_493/Relu:activations:0*/
_output_shapes
:?????????$$@*
ksize
*
paddingVALID*
strides
2
CNN/max_pooling2d_594/MaxPool?
CNN/max_pooling2d_595/MaxPoolMaxPool&CNN/max_pooling2d_594/MaxPool:output:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
CNN/max_pooling2d_595/MaxPool
CNN/flatten_155/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? Q  2
CNN/flatten_155/Const?
CNN/flatten_155/ReshapeReshape&CNN/max_pooling2d_595/MaxPool:output:0CNN/flatten_155/Const:output:0*
T0*)
_output_shapes
:???????????2
CNN/flatten_155/Reshape?
#CNN/dense_397/MatMul/ReadVariableOpReadVariableOp,cnn_dense_397_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#CNN/dense_397/MatMul/ReadVariableOp?
CNN/dense_397/MatMulMatMul CNN/flatten_155/Reshape:output:0+CNN/dense_397/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
CNN/dense_397/MatMul?
$CNN/dense_397/BiasAdd/ReadVariableOpReadVariableOp-cnn_dense_397_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$CNN/dense_397/BiasAdd/ReadVariableOp?
CNN/dense_397/BiasAddBiasAddCNN/dense_397/MatMul:product:0,CNN/dense_397/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
CNN/dense_397/BiasAdd?
CNN/dense_397/SoftmaxSoftmaxCNN/dense_397/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
CNN/dense_397/Softmaxz
IdentityIdentityCNN/dense_397/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp&^CNN/conv2d_492/BiasAdd/ReadVariableOp%^CNN/conv2d_492/Conv2D/ReadVariableOp&^CNN/conv2d_493/BiasAdd/ReadVariableOp%^CNN/conv2d_493/Conv2D/ReadVariableOp%^CNN/dense_397/BiasAdd/ReadVariableOp$^CNN/dense_397/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : 2N
%CNN/conv2d_492/BiasAdd/ReadVariableOp%CNN/conv2d_492/BiasAdd/ReadVariableOp2L
$CNN/conv2d_492/Conv2D/ReadVariableOp$CNN/conv2d_492/Conv2D/ReadVariableOp2N
%CNN/conv2d_493/BiasAdd/ReadVariableOp%CNN/conv2d_493/BiasAdd/ReadVariableOp2L
$CNN/conv2d_493/Conv2D/ReadVariableOp$CNN/conv2d_493/Conv2D/ReadVariableOp2L
$CNN/dense_397/BiasAdd/ReadVariableOp$CNN/dense_397/BiasAdd/ReadVariableOp2J
#CNN/dense_397/MatMul/ReadVariableOp#CNN/dense_397/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_492_input
? 
?
?__inference_CNN_layer_call_and_return_conditional_losses_258030

inputs+
conv2d_492_257964:
conv2d_492_257966:+
conv2d_493_257987:@
conv2d_493_257989:@$
dense_397_258024:
??
dense_397_258026:
identity??"conv2d_492/StatefulPartitionedCall?"conv2d_493/StatefulPartitionedCall?!dense_397/StatefulPartitionedCall?
"conv2d_492/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_492_257964conv2d_492_257966*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_492_layer_call_and_return_conditional_losses_2579632$
"conv2d_492/StatefulPartitionedCall?
!max_pooling2d_593/PartitionedCallPartitionedCall+conv2d_492/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????JJ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_593_layer_call_and_return_conditional_losses_2579732#
!max_pooling2d_593/PartitionedCall?
"conv2d_493/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_593/PartitionedCall:output:0conv2d_493_257987conv2d_493_257989*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????II@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_493_layer_call_and_return_conditional_losses_2579862$
"conv2d_493/StatefulPartitionedCall?
!max_pooling2d_594/PartitionedCallPartitionedCall+conv2d_493/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_594_layer_call_and_return_conditional_losses_2579962#
!max_pooling2d_594/PartitionedCall?
!max_pooling2d_595/PartitionedCallPartitionedCall*max_pooling2d_594/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_595_layer_call_and_return_conditional_losses_2580022#
!max_pooling2d_595/PartitionedCall?
flatten_155/PartitionedCallPartitionedCall*max_pooling2d_595/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_155_layer_call_and_return_conditional_losses_2580102
flatten_155/PartitionedCall?
!dense_397/StatefulPartitionedCallStatefulPartitionedCall$flatten_155/PartitionedCall:output:0dense_397_258024dense_397_258026*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_397_layer_call_and_return_conditional_losses_2580232#
!dense_397/StatefulPartitionedCall?
IdentityIdentity*dense_397/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_492/StatefulPartitionedCall#^conv2d_493/StatefulPartitionedCall"^dense_397/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : 2H
"conv2d_492/StatefulPartitionedCall"conv2d_492/StatefulPartitionedCall2H
"conv2d_493/StatefulPartitionedCall"conv2d_493/StatefulPartitionedCall2F
!dense_397/StatefulPartitionedCall!dense_397/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
$__inference_CNN_layer_call_fn_258045
conv2d_492_input!
unknown:
	unknown_0:#
	unknown_1:@
	unknown_2:@
	unknown_3:
??
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_492_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_CNN_layer_call_and_return_conditional_losses_2580302
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_492_input
? 
?
?__inference_CNN_layer_call_and_return_conditional_losses_258138

inputs+
conv2d_492_258118:
conv2d_492_258120:+
conv2d_493_258124:@
conv2d_493_258126:@$
dense_397_258132:
??
dense_397_258134:
identity??"conv2d_492/StatefulPartitionedCall?"conv2d_493/StatefulPartitionedCall?!dense_397/StatefulPartitionedCall?
"conv2d_492/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_492_258118conv2d_492_258120*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_492_layer_call_and_return_conditional_losses_2579632$
"conv2d_492/StatefulPartitionedCall?
!max_pooling2d_593/PartitionedCallPartitionedCall+conv2d_492/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????JJ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_593_layer_call_and_return_conditional_losses_2579732#
!max_pooling2d_593/PartitionedCall?
"conv2d_493/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_593/PartitionedCall:output:0conv2d_493_258124conv2d_493_258126*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????II@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_493_layer_call_and_return_conditional_losses_2579862$
"conv2d_493/StatefulPartitionedCall?
!max_pooling2d_594/PartitionedCallPartitionedCall+conv2d_493/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_594_layer_call_and_return_conditional_losses_2579962#
!max_pooling2d_594/PartitionedCall?
!max_pooling2d_595/PartitionedCallPartitionedCall*max_pooling2d_594/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_595_layer_call_and_return_conditional_losses_2580022#
!max_pooling2d_595/PartitionedCall?
flatten_155/PartitionedCallPartitionedCall*max_pooling2d_595/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_155_layer_call_and_return_conditional_losses_2580102
flatten_155/PartitionedCall?
!dense_397/StatefulPartitionedCallStatefulPartitionedCall$flatten_155/PartitionedCall:output:0dense_397_258132dense_397_258134*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_397_layer_call_and_return_conditional_losses_2580232#
!dense_397/StatefulPartitionedCall?
IdentityIdentity*dense_397/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_492/StatefulPartitionedCall#^conv2d_493/StatefulPartitionedCall"^dense_397/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : 2H
"conv2d_492/StatefulPartitionedCall"conv2d_492/StatefulPartitionedCall2H
"conv2d_493/StatefulPartitionedCall"conv2d_493/StatefulPartitionedCall2F
!dense_397/StatefulPartitionedCall!dense_397/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_593_layer_call_fn_258360

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_593_layer_call_and_return_conditional_losses_2578882
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
F__inference_conv2d_493_layer_call_and_return_conditional_losses_257986

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????II@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????II@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????II@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????II@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????JJ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????JJ
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_593_layer_call_and_return_conditional_losses_258375

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????JJ*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????JJ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
F__inference_conv2d_492_layer_call_and_return_conditional_losses_257963

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
$__inference_CNN_layer_call_fn_258318

inputs!
unknown:
	unknown_0:#
	unknown_1:@
	unknown_2:@
	unknown_3:
??
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_CNN_layer_call_and_return_conditional_losses_2580302
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_593_layer_call_fn_258365

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????JJ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_593_layer_call_and_return_conditional_losses_2579732
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????JJ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_595_layer_call_fn_258420

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_595_layer_call_and_return_conditional_losses_2579322
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_493_layer_call_fn_258384

inputs!
unknown:@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????II@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_493_layer_call_and_return_conditional_losses_2579862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????II@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????JJ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????JJ
 
_user_specified_nameinputs
?
H
,__inference_flatten_155_layer_call_fn_258440

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_155_layer_call_and_return_conditional_losses_2580102
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
*__inference_dense_397_layer_call_fn_258455

inputs
unknown:
??
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_397_layer_call_and_return_conditional_losses_2580232
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_594_layer_call_and_return_conditional_losses_257996

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????$$@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????II@:W S
/
_output_shapes
:?????????II@
 
_user_specified_nameinputs
?v
?
"__inference__traced_restore_258661
file_prefix<
"assignvariableop_conv2d_492_kernel:0
"assignvariableop_1_conv2d_492_bias:>
$assignvariableop_2_conv2d_493_kernel:@0
"assignvariableop_3_conv2d_493_bias:@7
#assignvariableop_4_dense_397_kernel:
??/
!assignvariableop_5_dense_397_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: F
,assignvariableop_15_adam_conv2d_492_kernel_m:8
*assignvariableop_16_adam_conv2d_492_bias_m:F
,assignvariableop_17_adam_conv2d_493_kernel_m:@8
*assignvariableop_18_adam_conv2d_493_bias_m:@?
+assignvariableop_19_adam_dense_397_kernel_m:
??7
)assignvariableop_20_adam_dense_397_bias_m:F
,assignvariableop_21_adam_conv2d_492_kernel_v:8
*assignvariableop_22_adam_conv2d_492_bias_v:F
,assignvariableop_23_adam_conv2d_493_kernel_v:@8
*assignvariableop_24_adam_conv2d_493_bias_v:@?
+assignvariableop_25_adam_dense_397_kernel_v:
??7
)assignvariableop_26_adam_dense_397_bias_v:
identity_28??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_492_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_492_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_493_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_493_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_397_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_397_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adam_conv2d_492_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_conv2d_492_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_conv2d_493_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_conv2d_493_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_dense_397_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_dense_397_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_conv2d_492_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_492_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_conv2d_493_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_conv2d_493_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_dense_397_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_397_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27f
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_28?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
c
G__inference_flatten_155_layer_call_and_return_conditional_losses_258010

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? Q  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
E__inference_dense_397_layer_call_and_return_conditional_losses_258023

inputs2
matmul_readvariableop_resource:
??-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
$__inference_signature_wrapper_258241
conv2d_492_input!
unknown:
	unknown_0:#
	unknown_1:@
	unknown_2:@
	unknown_3:
??
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_492_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_2578792
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_492_input
?)
?
?__inference_CNN_layer_call_and_return_conditional_losses_258301

inputsC
)conv2d_492_conv2d_readvariableop_resource:8
*conv2d_492_biasadd_readvariableop_resource:C
)conv2d_493_conv2d_readvariableop_resource:@8
*conv2d_493_biasadd_readvariableop_resource:@<
(dense_397_matmul_readvariableop_resource:
??7
)dense_397_biasadd_readvariableop_resource:
identity??!conv2d_492/BiasAdd/ReadVariableOp? conv2d_492/Conv2D/ReadVariableOp?!conv2d_493/BiasAdd/ReadVariableOp? conv2d_493/Conv2D/ReadVariableOp? dense_397/BiasAdd/ReadVariableOp?dense_397/MatMul/ReadVariableOp?
 conv2d_492/Conv2D/ReadVariableOpReadVariableOp)conv2d_492_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_492/Conv2D/ReadVariableOp?
conv2d_492/Conv2DConv2Dinputs(conv2d_492/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
2
conv2d_492/Conv2D?
!conv2d_492/BiasAdd/ReadVariableOpReadVariableOp*conv2d_492_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_492/BiasAdd/ReadVariableOp?
conv2d_492/BiasAddBiasAddconv2d_492/Conv2D:output:0)conv2d_492/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_492/BiasAdd?
conv2d_492/ReluReluconv2d_492/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv2d_492/Relu?
max_pooling2d_593/MaxPoolMaxPoolconv2d_492/Relu:activations:0*/
_output_shapes
:?????????JJ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_593/MaxPool?
 conv2d_493/Conv2D/ReadVariableOpReadVariableOp)conv2d_493_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02"
 conv2d_493/Conv2D/ReadVariableOp?
conv2d_493/Conv2DConv2D"max_pooling2d_593/MaxPool:output:0(conv2d_493/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????II@*
paddingVALID*
strides
2
conv2d_493/Conv2D?
!conv2d_493/BiasAdd/ReadVariableOpReadVariableOp*conv2d_493_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_493/BiasAdd/ReadVariableOp?
conv2d_493/BiasAddBiasAddconv2d_493/Conv2D:output:0)conv2d_493/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????II@2
conv2d_493/BiasAdd?
conv2d_493/ReluReluconv2d_493/BiasAdd:output:0*
T0*/
_output_shapes
:?????????II@2
conv2d_493/Relu?
max_pooling2d_594/MaxPoolMaxPoolconv2d_493/Relu:activations:0*/
_output_shapes
:?????????$$@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_594/MaxPool?
max_pooling2d_595/MaxPoolMaxPool"max_pooling2d_594/MaxPool:output:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_595/MaxPoolw
flatten_155/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? Q  2
flatten_155/Const?
flatten_155/ReshapeReshape"max_pooling2d_595/MaxPool:output:0flatten_155/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_155/Reshape?
dense_397/MatMul/ReadVariableOpReadVariableOp(dense_397_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_397/MatMul/ReadVariableOp?
dense_397/MatMulMatMulflatten_155/Reshape:output:0'dense_397/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_397/MatMul?
 dense_397/BiasAdd/ReadVariableOpReadVariableOp)dense_397_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_397/BiasAdd/ReadVariableOp?
dense_397/BiasAddBiasAdddense_397/MatMul:product:0(dense_397/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_397/BiasAdd
dense_397/SoftmaxSoftmaxdense_397/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_397/Softmaxv
IdentityIdentitydense_397/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_492/BiasAdd/ReadVariableOp!^conv2d_492/Conv2D/ReadVariableOp"^conv2d_493/BiasAdd/ReadVariableOp!^conv2d_493/Conv2D/ReadVariableOp!^dense_397/BiasAdd/ReadVariableOp ^dense_397/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : 2F
!conv2d_492/BiasAdd/ReadVariableOp!conv2d_492/BiasAdd/ReadVariableOp2D
 conv2d_492/Conv2D/ReadVariableOp conv2d_492/Conv2D/ReadVariableOp2F
!conv2d_493/BiasAdd/ReadVariableOp!conv2d_493/BiasAdd/ReadVariableOp2D
 conv2d_493/Conv2D/ReadVariableOp conv2d_493/Conv2D/ReadVariableOp2D
 dense_397/BiasAdd/ReadVariableOp dense_397/BiasAdd/ReadVariableOp2B
dense_397/MatMul/ReadVariableOpdense_397/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_594_layer_call_and_return_conditional_losses_258410

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_492_layer_call_fn_258344

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_492_layer_call_and_return_conditional_losses_2579632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_594_layer_call_and_return_conditional_losses_258415

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????$$@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????II@:W S
/
_output_shapes
:?????????II@
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_594_layer_call_and_return_conditional_losses_257910

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_594_layer_call_fn_258405

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_594_layer_call_and_return_conditional_losses_2579962
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????II@:W S
/
_output_shapes
:?????????II@
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_594_layer_call_fn_258400

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_594_layer_call_and_return_conditional_losses_2579102
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
$__inference_CNN_layer_call_fn_258335

inputs!
unknown:
	unknown_0:#
	unknown_1:@
	unknown_2:@
	unknown_3:
??
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_CNN_layer_call_and_return_conditional_losses_2581382
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
? 
?
?__inference_CNN_layer_call_and_return_conditional_losses_258216
conv2d_492_input+
conv2d_492_258196:
conv2d_492_258198:+
conv2d_493_258202:@
conv2d_493_258204:@$
dense_397_258210:
??
dense_397_258212:
identity??"conv2d_492/StatefulPartitionedCall?"conv2d_493/StatefulPartitionedCall?!dense_397/StatefulPartitionedCall?
"conv2d_492/StatefulPartitionedCallStatefulPartitionedCallconv2d_492_inputconv2d_492_258196conv2d_492_258198*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_492_layer_call_and_return_conditional_losses_2579632$
"conv2d_492/StatefulPartitionedCall?
!max_pooling2d_593/PartitionedCallPartitionedCall+conv2d_492/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????JJ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_593_layer_call_and_return_conditional_losses_2579732#
!max_pooling2d_593/PartitionedCall?
"conv2d_493/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_593/PartitionedCall:output:0conv2d_493_258202conv2d_493_258204*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????II@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv2d_493_layer_call_and_return_conditional_losses_2579862$
"conv2d_493/StatefulPartitionedCall?
!max_pooling2d_594/PartitionedCallPartitionedCall+conv2d_493/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_594_layer_call_and_return_conditional_losses_2579962#
!max_pooling2d_594/PartitionedCall?
!max_pooling2d_595/PartitionedCallPartitionedCall*max_pooling2d_594/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_595_layer_call_and_return_conditional_losses_2580022#
!max_pooling2d_595/PartitionedCall?
flatten_155/PartitionedCallPartitionedCall*max_pooling2d_595/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_155_layer_call_and_return_conditional_losses_2580102
flatten_155/PartitionedCall?
!dense_397/StatefulPartitionedCallStatefulPartitionedCall$flatten_155/PartitionedCall:output:0dense_397_258210dense_397_258212*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_397_layer_call_and_return_conditional_losses_2580232#
!dense_397/StatefulPartitionedCall?
IdentityIdentity*dense_397/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_492/StatefulPartitionedCall#^conv2d_493/StatefulPartitionedCall"^dense_397/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : 2H
"conv2d_492/StatefulPartitionedCall"conv2d_492/StatefulPartitionedCall2H
"conv2d_493/StatefulPartitionedCall"conv2d_493/StatefulPartitionedCall2F
!dense_397/StatefulPartitionedCall!dense_397/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_492_input
?)
?
?__inference_CNN_layer_call_and_return_conditional_losses_258271

inputsC
)conv2d_492_conv2d_readvariableop_resource:8
*conv2d_492_biasadd_readvariableop_resource:C
)conv2d_493_conv2d_readvariableop_resource:@8
*conv2d_493_biasadd_readvariableop_resource:@<
(dense_397_matmul_readvariableop_resource:
??7
)dense_397_biasadd_readvariableop_resource:
identity??!conv2d_492/BiasAdd/ReadVariableOp? conv2d_492/Conv2D/ReadVariableOp?!conv2d_493/BiasAdd/ReadVariableOp? conv2d_493/Conv2D/ReadVariableOp? dense_397/BiasAdd/ReadVariableOp?dense_397/MatMul/ReadVariableOp?
 conv2d_492/Conv2D/ReadVariableOpReadVariableOp)conv2d_492_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_492/Conv2D/ReadVariableOp?
conv2d_492/Conv2DConv2Dinputs(conv2d_492/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
2
conv2d_492/Conv2D?
!conv2d_492/BiasAdd/ReadVariableOpReadVariableOp*conv2d_492_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_492/BiasAdd/ReadVariableOp?
conv2d_492/BiasAddBiasAddconv2d_492/Conv2D:output:0)conv2d_492/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_492/BiasAdd?
conv2d_492/ReluReluconv2d_492/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv2d_492/Relu?
max_pooling2d_593/MaxPoolMaxPoolconv2d_492/Relu:activations:0*/
_output_shapes
:?????????JJ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_593/MaxPool?
 conv2d_493/Conv2D/ReadVariableOpReadVariableOp)conv2d_493_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02"
 conv2d_493/Conv2D/ReadVariableOp?
conv2d_493/Conv2DConv2D"max_pooling2d_593/MaxPool:output:0(conv2d_493/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????II@*
paddingVALID*
strides
2
conv2d_493/Conv2D?
!conv2d_493/BiasAdd/ReadVariableOpReadVariableOp*conv2d_493_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_493/BiasAdd/ReadVariableOp?
conv2d_493/BiasAddBiasAddconv2d_493/Conv2D:output:0)conv2d_493/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????II@2
conv2d_493/BiasAdd?
conv2d_493/ReluReluconv2d_493/BiasAdd:output:0*
T0*/
_output_shapes
:?????????II@2
conv2d_493/Relu?
max_pooling2d_594/MaxPoolMaxPoolconv2d_493/Relu:activations:0*/
_output_shapes
:?????????$$@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_594/MaxPool?
max_pooling2d_595/MaxPoolMaxPool"max_pooling2d_594/MaxPool:output:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_595/MaxPoolw
flatten_155/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? Q  2
flatten_155/Const?
flatten_155/ReshapeReshape"max_pooling2d_595/MaxPool:output:0flatten_155/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_155/Reshape?
dense_397/MatMul/ReadVariableOpReadVariableOp(dense_397_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_397/MatMul/ReadVariableOp?
dense_397/MatMulMatMulflatten_155/Reshape:output:0'dense_397/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_397/MatMul?
 dense_397/BiasAdd/ReadVariableOpReadVariableOp)dense_397_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_397/BiasAdd/ReadVariableOp?
dense_397/BiasAddBiasAdddense_397/MatMul:product:0(dense_397/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_397/BiasAdd
dense_397/SoftmaxSoftmaxdense_397/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_397/Softmaxv
IdentityIdentitydense_397/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_492/BiasAdd/ReadVariableOp!^conv2d_492/Conv2D/ReadVariableOp"^conv2d_493/BiasAdd/ReadVariableOp!^conv2d_493/Conv2D/ReadVariableOp!^dense_397/BiasAdd/ReadVariableOp ^dense_397/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : 2F
!conv2d_492/BiasAdd/ReadVariableOp!conv2d_492/BiasAdd/ReadVariableOp2D
 conv2d_492/Conv2D/ReadVariableOp conv2d_492/Conv2D/ReadVariableOp2F
!conv2d_493/BiasAdd/ReadVariableOp!conv2d_493/BiasAdd/ReadVariableOp2D
 conv2d_493/Conv2D/ReadVariableOp conv2d_493/Conv2D/ReadVariableOp2D
 dense_397/BiasAdd/ReadVariableOp dense_397/BiasAdd/ReadVariableOp2B
dense_397/MatMul/ReadVariableOpdense_397/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_595_layer_call_and_return_conditional_losses_257932

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
F__inference_conv2d_492_layer_call_and_return_conditional_losses_258355

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
c
G__inference_flatten_155_layer_call_and_return_conditional_losses_258446

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? Q  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_595_layer_call_and_return_conditional_losses_258430

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_595_layer_call_and_return_conditional_losses_258435

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$$@:W S
/
_output_shapes
:?????????$$@
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_593_layer_call_and_return_conditional_losses_257973

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????JJ*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????JJ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
W
conv2d_492_inputC
"serving_default_conv2d_492_input:0???????????=
	dense_3970
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
	optimizer
	trainable_variables

	variables
regularization_losses
	keras_api

signatures
*t&call_and_return_all_conditional_losses
u__call__
v_default_save_signature"
_tf_keras_sequential
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
w__call__
*x&call_and_return_all_conditional_losses"
_tf_keras_layer
?
trainable_variables
	variables
regularization_losses
	keras_api
y__call__
*z&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
?
trainable_variables
	variables
 regularization_losses
!	keras_api
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
?
"trainable_variables
#	variables
$regularization_losses
%	keras_api
__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
&trainable_variables
'	variables
(regularization_losses
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

*kernel
+bias
,trainable_variables
-	variables
.regularization_losses
/	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
0iter

1beta_1

2beta_2
	3decay
4learning_ratemhmimjmk*ml+mmvnvovpvq*vr+vs"
	optimizer
J
0
1
2
3
*4
+5"
trackable_list_wrapper
J
0
1
2
3
*4
+5"
trackable_list_wrapper
 "
trackable_list_wrapper
?

5layers
6layer_metrics
	trainable_variables

	variables
7layer_regularization_losses
8metrics
9non_trainable_variables
regularization_losses
u__call__
v_default_save_signature
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
+:)2conv2d_492/kernel
:2conv2d_492/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

:layers
;layer_metrics
trainable_variables
<layer_regularization_losses
	variables
=metrics
>non_trainable_variables
regularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?layers
@layer_metrics
trainable_variables
Alayer_regularization_losses
	variables
Bmetrics
Cnon_trainable_variables
regularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
+:)@2conv2d_493/kernel
:@2conv2d_493/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Dlayers
Elayer_metrics
trainable_variables
Flayer_regularization_losses
	variables
Gmetrics
Hnon_trainable_variables
regularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

Ilayers
Jlayer_metrics
trainable_variables
Klayer_regularization_losses
	variables
Lmetrics
Mnon_trainable_variables
 regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

Nlayers
Olayer_metrics
"trainable_variables
Player_regularization_losses
#	variables
Qmetrics
Rnon_trainable_variables
$regularization_losses
__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

Slayers
Tlayer_metrics
&trainable_variables
Ulayer_regularization_losses
'	variables
Vmetrics
Wnon_trainable_variables
(regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_397/kernel
:2dense_397/bias
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Xlayers
Ylayer_metrics
,trainable_variables
Zlayer_regularization_losses
-	variables
[metrics
\non_trainable_variables
.regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
N
	_total
	`count
a	variables
b	keras_api"
_tf_keras_metric
^
	ctotal
	dcount
e
_fn_kwargs
f	variables
g	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
_0
`1"
trackable_list_wrapper
-
a	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
c0
d1"
trackable_list_wrapper
-
f	variables"
_generic_user_object
0:.2Adam/conv2d_492/kernel/m
": 2Adam/conv2d_492/bias/m
0:.@2Adam/conv2d_493/kernel/m
": @2Adam/conv2d_493/bias/m
):'
??2Adam/dense_397/kernel/m
!:2Adam/dense_397/bias/m
0:.2Adam/conv2d_492/kernel/v
": 2Adam/conv2d_492/bias/v
0:.@2Adam/conv2d_493/kernel/v
": @2Adam/conv2d_493/bias/v
):'
??2Adam/dense_397/kernel/v
!:2Adam/dense_397/bias/v
?2?
?__inference_CNN_layer_call_and_return_conditional_losses_258271
?__inference_CNN_layer_call_and_return_conditional_losses_258301
?__inference_CNN_layer_call_and_return_conditional_losses_258193
?__inference_CNN_layer_call_and_return_conditional_losses_258216?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
$__inference_CNN_layer_call_fn_258045
$__inference_CNN_layer_call_fn_258318
$__inference_CNN_layer_call_fn_258335
$__inference_CNN_layer_call_fn_258170?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_257879conv2d_492_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_492_layer_call_fn_258344?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_492_layer_call_and_return_conditional_losses_258355?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
2__inference_max_pooling2d_593_layer_call_fn_258360
2__inference_max_pooling2d_593_layer_call_fn_258365?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_max_pooling2d_593_layer_call_and_return_conditional_losses_258370
M__inference_max_pooling2d_593_layer_call_and_return_conditional_losses_258375?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_493_layer_call_fn_258384?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_493_layer_call_and_return_conditional_losses_258395?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
2__inference_max_pooling2d_594_layer_call_fn_258400
2__inference_max_pooling2d_594_layer_call_fn_258405?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_max_pooling2d_594_layer_call_and_return_conditional_losses_258410
M__inference_max_pooling2d_594_layer_call_and_return_conditional_losses_258415?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
2__inference_max_pooling2d_595_layer_call_fn_258420
2__inference_max_pooling2d_595_layer_call_fn_258425?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_max_pooling2d_595_layer_call_and_return_conditional_losses_258430
M__inference_max_pooling2d_595_layer_call_and_return_conditional_losses_258435?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_flatten_155_layer_call_fn_258440?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_flatten_155_layer_call_and_return_conditional_losses_258446?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_397_layer_call_fn_258455?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_397_layer_call_and_return_conditional_losses_258466?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_258241conv2d_492_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
?__inference_CNN_layer_call_and_return_conditional_losses_258193|*+K?H
A?>
4?1
conv2d_492_input???????????
p 

 
? "%?"
?
0?????????
? ?
?__inference_CNN_layer_call_and_return_conditional_losses_258216|*+K?H
A?>
4?1
conv2d_492_input???????????
p

 
? "%?"
?
0?????????
? ?
?__inference_CNN_layer_call_and_return_conditional_losses_258271r*+A?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
?__inference_CNN_layer_call_and_return_conditional_losses_258301r*+A?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????
? ?
$__inference_CNN_layer_call_fn_258045o*+K?H
A?>
4?1
conv2d_492_input???????????
p 

 
? "???????????
$__inference_CNN_layer_call_fn_258170o*+K?H
A?>
4?1
conv2d_492_input???????????
p

 
? "???????????
$__inference_CNN_layer_call_fn_258318e*+A?>
7?4
*?'
inputs???????????
p 

 
? "???????????
$__inference_CNN_layer_call_fn_258335e*+A?>
7?4
*?'
inputs???????????
p

 
? "???????????
!__inference__wrapped_model_257879?*+C?@
9?6
4?1
conv2d_492_input???????????
? "5?2
0
	dense_397#? 
	dense_397??????????
F__inference_conv2d_492_layer_call_and_return_conditional_losses_258355p9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
+__inference_conv2d_492_layer_call_fn_258344c9?6
/?,
*?'
inputs???????????
? ""?????????????
F__inference_conv2d_493_layer_call_and_return_conditional_losses_258395l7?4
-?*
(?%
inputs?????????JJ
? "-?*
#? 
0?????????II@
? ?
+__inference_conv2d_493_layer_call_fn_258384_7?4
-?*
(?%
inputs?????????JJ
? " ??????????II@?
E__inference_dense_397_layer_call_and_return_conditional_losses_258466^*+1?.
'?$
"?
inputs???????????
? "%?"
?
0?????????
? 
*__inference_dense_397_layer_call_fn_258455Q*+1?.
'?$
"?
inputs???????????
? "???????????
G__inference_flatten_155_layer_call_and_return_conditional_losses_258446b7?4
-?*
(?%
inputs?????????@
? "'?$
?
0???????????
? ?
,__inference_flatten_155_layer_call_fn_258440U7?4
-?*
(?%
inputs?????????@
? "?????????????
M__inference_max_pooling2d_593_layer_call_and_return_conditional_losses_258370?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_593_layer_call_and_return_conditional_losses_258375j9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????JJ
? ?
2__inference_max_pooling2d_593_layer_call_fn_258360?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_593_layer_call_fn_258365]9?6
/?,
*?'
inputs???????????
? " ??????????JJ?
M__inference_max_pooling2d_594_layer_call_and_return_conditional_losses_258410?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_594_layer_call_and_return_conditional_losses_258415h7?4
-?*
(?%
inputs?????????II@
? "-?*
#? 
0?????????$$@
? ?
2__inference_max_pooling2d_594_layer_call_fn_258400?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_594_layer_call_fn_258405[7?4
-?*
(?%
inputs?????????II@
? " ??????????$$@?
M__inference_max_pooling2d_595_layer_call_and_return_conditional_losses_258430?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_595_layer_call_and_return_conditional_losses_258435h7?4
-?*
(?%
inputs?????????$$@
? "-?*
#? 
0?????????@
? ?
2__inference_max_pooling2d_595_layer_call_fn_258420?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_595_layer_call_fn_258425[7?4
-?*
(?%
inputs?????????$$@
? " ??????????@?
$__inference_signature_wrapper_258241?*+W?T
? 
M?J
H
conv2d_492_input4?1
conv2d_492_input???????????"5?2
0
	dense_397#? 
	dense_397?????????