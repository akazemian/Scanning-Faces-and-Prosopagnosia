??	
??
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
0
Sigmoid
x"T
y"T"
Ttype:

2
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
executor_typestring ??
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
-
Tanh
x"T
y"T"
Ttype:

2
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-0-gc256c071bb28??
?
conv2d_108/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_108/kernel

%conv2d_108/kernel/Read/ReadVariableOpReadVariableOpconv2d_108/kernel*&
_output_shapes
: *
dtype0
v
conv2d_108/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_108/bias
o
#conv2d_108/bias/Read/ReadVariableOpReadVariableOpconv2d_108/bias*
_output_shapes
: *
dtype0
?
conv2d_109/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_109/kernel

%conv2d_109/kernel/Read/ReadVariableOpReadVariableOpconv2d_109/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_109/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_109/bias
o
#conv2d_109/bias/Read/ReadVariableOpReadVariableOpconv2d_109/bias*
_output_shapes
:@*
dtype0
?
conv2d_110/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*"
shared_nameconv2d_110/kernel
?
%conv2d_110/kernel/Read/ReadVariableOpReadVariableOpconv2d_110/kernel*'
_output_shapes
:@?*
dtype0
w
conv2d_110/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_110/bias
p
#conv2d_110/bias/Read/ReadVariableOpReadVariableOpconv2d_110/bias*
_output_shapes	
:?*
dtype0
}
dense_108/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*!
shared_namedense_108/kernel
v
$dense_108/kernel/Read/ReadVariableOpReadVariableOpdense_108/kernel*
_output_shapes
:	?@*
dtype0
t
dense_108/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_108/bias
m
"dense_108/bias/Read/ReadVariableOpReadVariableOpdense_108/bias*
_output_shapes
:@*
dtype0
|
dense_109/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_109/kernel
u
$dense_109/kernel/Read/ReadVariableOpReadVariableOpdense_109/kernel*
_output_shapes

:@*
dtype0
t
dense_109/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_109/bias
m
"dense_109/bias/Read/ReadVariableOpReadVariableOpdense_109/bias*
_output_shapes
:*
dtype0
|
dense_110/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_110/kernel
u
$dense_110/kernel/Read/ReadVariableOpReadVariableOpdense_110/kernel*
_output_shapes

:*
dtype0
t
dense_110/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_110/bias
m
"dense_110/bias/Read/ReadVariableOpReadVariableOpdense_110/bias*
_output_shapes
:*
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

NoOpNoOp
?2
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?1
value?1B?1 B?1
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
	optimizer

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
w
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?

kernel
 bias
#!_self_saveable_object_factories
"	variables
#trainable_variables
$regularization_losses
%	keras_api
w
#&_self_saveable_object_factories
'	variables
(trainable_variables
)regularization_losses
*	keras_api
?

+kernel
,bias
#-_self_saveable_object_factories
.	variables
/trainable_variables
0regularization_losses
1	keras_api
w
#2_self_saveable_object_factories
3	variables
4trainable_variables
5regularization_losses
6	keras_api
w
#7_self_saveable_object_factories
8	variables
9trainable_variables
:regularization_losses
;	keras_api
?

<kernel
=bias
#>_self_saveable_object_factories
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
w
#C_self_saveable_object_factories
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
?

Hkernel
Ibias
#J_self_saveable_object_factories
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
?

Okernel
Pbias
#Q_self_saveable_object_factories
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
 
 
 
V
0
1
2
 3
+4
,5
<6
=7
H8
I9
O10
P11
V
0
1
2
 3
+4
,5
<6
=7
H8
I9
O10
P11
 
?
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
	variables
trainable_variables
regularization_losses
][
VARIABLE_VALUEconv2d_108/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_108/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
 
?
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
 
?
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
][
VARIABLE_VALUEconv2d_109/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_109/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
 1

0
 1
 
?
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
"	variables
#trainable_variables
$regularization_losses
 
 
 
 
?
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
'	variables
(trainable_variables
)regularization_losses
][
VARIABLE_VALUEconv2d_110/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_110/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

+0
,1

+0
,1
 
?
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
.	variables
/trainable_variables
0regularization_losses
 
 
 
 
?
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
3	variables
4trainable_variables
5regularization_losses
 
 
 
 
?
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
8	variables
9trainable_variables
:regularization_losses
\Z
VARIABLE_VALUEdense_108/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_108/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

<0
=1

<0
=1
 
?
~non_trainable_variables

layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
@trainable_variables
Aregularization_losses
 
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
\Z
VARIABLE_VALUEdense_109/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_109/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

H0
I1

H0
I1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
\Z
VARIABLE_VALUEdense_110/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_110/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

O0
P1

O0
P1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
R	variables
Strainable_variables
Tregularization_losses
 
N
0
1
2
3
4
5
6
7
	8

9
10

?0
?1
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
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
?
 serving_default_conv2d_108_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_108_inputconv2d_108/kernelconv2d_108/biasconv2d_109/kernelconv2d_109/biasconv2d_110/kernelconv2d_110/biasdense_108/kerneldense_108/biasdense_109/kerneldense_109/biasdense_110/kerneldense_110/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_99787
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_108/kernel/Read/ReadVariableOp#conv2d_108/bias/Read/ReadVariableOp%conv2d_109/kernel/Read/ReadVariableOp#conv2d_109/bias/Read/ReadVariableOp%conv2d_110/kernel/Read/ReadVariableOp#conv2d_110/bias/Read/ReadVariableOp$dense_108/kernel/Read/ReadVariableOp"dense_108/bias/Read/ReadVariableOp$dense_109/kernel/Read/ReadVariableOp"dense_109/bias/Read/ReadVariableOp$dense_110/kernel/Read/ReadVariableOp"dense_110/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_100245
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_108/kernelconv2d_108/biasconv2d_109/kernelconv2d_109/biasconv2d_110/kernelconv2d_110/biasdense_108/kerneldense_108/biasdense_109/kerneldense_109/biasdense_110/kerneldense_110/biastotalcounttotal_1count_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_100303??
?
?
E__inference_conv2d_110_layer_call_and_return_conditional_losses_99342

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????

@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????

@
 
_user_specified_nameinputs
?

?
D__inference_dense_108_layer_call_and_return_conditional_losses_99373

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_36_layer_call_fn_100081

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_36_layer_call_and_return_conditional_losses_99360a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_dense_109_layer_call_and_return_conditional_losses_100154

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
E__inference_conv2d_108_layer_call_and_return_conditional_losses_99296

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????xx i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????xx w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_36_layer_call_fn_99816

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?
	unknown_5:	?@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_36_layer_call_and_return_conditional_losses_99421o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_36_layer_call_fn_99678
conv2d_108_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?
	unknown_5:	?@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_108_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_36_layer_call_and_return_conditional_losses_99622o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_108_input
?
h
L__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_99275

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?G
?	
H__inference_sequential_36_layer_call_and_return_conditional_losses_99956

inputsC
)conv2d_108_conv2d_readvariableop_resource: 8
*conv2d_108_biasadd_readvariableop_resource: C
)conv2d_109_conv2d_readvariableop_resource: @8
*conv2d_109_biasadd_readvariableop_resource:@D
)conv2d_110_conv2d_readvariableop_resource:@?9
*conv2d_110_biasadd_readvariableop_resource:	?;
(dense_108_matmul_readvariableop_resource:	?@7
)dense_108_biasadd_readvariableop_resource:@:
(dense_109_matmul_readvariableop_resource:@7
)dense_109_biasadd_readvariableop_resource::
(dense_110_matmul_readvariableop_resource:7
)dense_110_biasadd_readvariableop_resource:
identity??!conv2d_108/BiasAdd/ReadVariableOp? conv2d_108/Conv2D/ReadVariableOp?!conv2d_109/BiasAdd/ReadVariableOp? conv2d_109/Conv2D/ReadVariableOp?!conv2d_110/BiasAdd/ReadVariableOp? conv2d_110/Conv2D/ReadVariableOp? dense_108/BiasAdd/ReadVariableOp?dense_108/MatMul/ReadVariableOp? dense_109/BiasAdd/ReadVariableOp?dense_109/MatMul/ReadVariableOp? dense_110/BiasAdd/ReadVariableOp?dense_110/MatMul/ReadVariableOp?
 conv2d_108/Conv2D/ReadVariableOpReadVariableOp)conv2d_108_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_108/Conv2DConv2Dinputs(conv2d_108/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx *
paddingVALID*
strides
?
!conv2d_108/BiasAdd/ReadVariableOpReadVariableOp*conv2d_108_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_108/BiasAddBiasAddconv2d_108/Conv2D:output:0)conv2d_108/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx n
conv2d_108/ReluReluconv2d_108/BiasAdd:output:0*
T0*/
_output_shapes
:?????????xx ?
max_pooling2d_108/MaxPoolMaxPoolconv2d_108/Relu:activations:0*/
_output_shapes
:?????????<< *
ksize
*
paddingVALID*
strides
?
 conv2d_109/Conv2D/ReadVariableOpReadVariableOp)conv2d_109_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_109/Conv2DConv2D"max_pooling2d_108/MaxPool:output:0(conv2d_109/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
!conv2d_109/BiasAdd/ReadVariableOpReadVariableOp*conv2d_109_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_109/BiasAddBiasAddconv2d_109/Conv2D:output:0)conv2d_109/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@n
conv2d_109/ReluReluconv2d_109/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_109/MaxPoolMaxPoolconv2d_109/Relu:activations:0*/
_output_shapes
:?????????

@*
ksize
*
paddingVALID*
strides
?
 conv2d_110/Conv2D/ReadVariableOpReadVariableOp)conv2d_110_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_110/Conv2DConv2D"max_pooling2d_109/MaxPool:output:0(conv2d_110/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
!conv2d_110/BiasAdd/ReadVariableOpReadVariableOp*conv2d_110_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_110/BiasAddBiasAddconv2d_110/Conv2D:output:0)conv2d_110/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????o
conv2d_110/ReluReluconv2d_110/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
max_pooling2d_110/MaxPoolMaxPoolconv2d_110/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
a
flatten_36/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_36/ReshapeReshape"max_pooling2d_110/MaxPool:output:0flatten_36/Const:output:0*
T0*(
_output_shapes
:???????????
dense_108/MatMul/ReadVariableOpReadVariableOp(dense_108_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_108/MatMulMatMulflatten_36/Reshape:output:0'dense_108/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
 dense_108/BiasAdd/ReadVariableOpReadVariableOp)dense_108_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_108/BiasAddBiasAdddense_108/MatMul:product:0(dense_108/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_108/TanhTanhdense_108/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@]
dropout_36/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_36/dropout/MulMuldense_108/Tanh:y:0!dropout_36/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@Z
dropout_36/dropout/ShapeShapedense_108/Tanh:y:0*
T0*
_output_shapes
:?
/dropout_36/dropout/random_uniform/RandomUniformRandomUniform!dropout_36/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0f
!dropout_36/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_36/dropout/GreaterEqualGreaterEqual8dropout_36/dropout/random_uniform/RandomUniform:output:0*dropout_36/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@?
dropout_36/dropout/CastCast#dropout_36/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
dropout_36/dropout/Mul_1Muldropout_36/dropout/Mul:z:0dropout_36/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@?
dense_109/MatMul/ReadVariableOpReadVariableOp(dense_109_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_109/MatMulMatMuldropout_36/dropout/Mul_1:z:0'dense_109/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_109/BiasAdd/ReadVariableOpReadVariableOp)dense_109_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_109/BiasAddBiasAdddense_109/MatMul:product:0(dense_109/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_109/TanhTanhdense_109/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_110/MatMul/ReadVariableOpReadVariableOp(dense_110_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_110/MatMulMatMuldense_109/Tanh:y:0'dense_110/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_110/BiasAdd/ReadVariableOpReadVariableOp)dense_110_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_110/BiasAddBiasAdddense_110/MatMul:product:0(dense_110/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_110/SigmoidSigmoiddense_110/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_110/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_108/BiasAdd/ReadVariableOp!^conv2d_108/Conv2D/ReadVariableOp"^conv2d_109/BiasAdd/ReadVariableOp!^conv2d_109/Conv2D/ReadVariableOp"^conv2d_110/BiasAdd/ReadVariableOp!^conv2d_110/Conv2D/ReadVariableOp!^dense_108/BiasAdd/ReadVariableOp ^dense_108/MatMul/ReadVariableOp!^dense_109/BiasAdd/ReadVariableOp ^dense_109/MatMul/ReadVariableOp!^dense_110/BiasAdd/ReadVariableOp ^dense_110/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_108/BiasAdd/ReadVariableOp!conv2d_108/BiasAdd/ReadVariableOp2D
 conv2d_108/Conv2D/ReadVariableOp conv2d_108/Conv2D/ReadVariableOp2F
!conv2d_109/BiasAdd/ReadVariableOp!conv2d_109/BiasAdd/ReadVariableOp2D
 conv2d_109/Conv2D/ReadVariableOp conv2d_109/Conv2D/ReadVariableOp2F
!conv2d_110/BiasAdd/ReadVariableOp!conv2d_110/BiasAdd/ReadVariableOp2D
 conv2d_110/Conv2D/ReadVariableOp conv2d_110/Conv2D/ReadVariableOp2D
 dense_108/BiasAdd/ReadVariableOp dense_108/BiasAdd/ReadVariableOp2B
dense_108/MatMul/ReadVariableOpdense_108/MatMul/ReadVariableOp2D
 dense_109/BiasAdd/ReadVariableOp dense_109/BiasAdd/ReadVariableOp2B
dense_109/MatMul/ReadVariableOpdense_109/MatMul/ReadVariableOp2D
 dense_110/BiasAdd/ReadVariableOp dense_110/BiasAdd/ReadVariableOp2B
dense_110/MatMul/ReadVariableOpdense_110/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_99996

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????<< *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????<< "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????xx :W S
/
_output_shapes
:?????????xx 
 
_user_specified_nameinputs
??
?	
H__inference_sequential_36_layer_call_and_return_conditional_losses_99897

inputsC
)conv2d_108_conv2d_readvariableop_resource: 8
*conv2d_108_biasadd_readvariableop_resource: C
)conv2d_109_conv2d_readvariableop_resource: @8
*conv2d_109_biasadd_readvariableop_resource:@D
)conv2d_110_conv2d_readvariableop_resource:@?9
*conv2d_110_biasadd_readvariableop_resource:	?;
(dense_108_matmul_readvariableop_resource:	?@7
)dense_108_biasadd_readvariableop_resource:@:
(dense_109_matmul_readvariableop_resource:@7
)dense_109_biasadd_readvariableop_resource::
(dense_110_matmul_readvariableop_resource:7
)dense_110_biasadd_readvariableop_resource:
identity??!conv2d_108/BiasAdd/ReadVariableOp? conv2d_108/Conv2D/ReadVariableOp?!conv2d_109/BiasAdd/ReadVariableOp? conv2d_109/Conv2D/ReadVariableOp?!conv2d_110/BiasAdd/ReadVariableOp? conv2d_110/Conv2D/ReadVariableOp? dense_108/BiasAdd/ReadVariableOp?dense_108/MatMul/ReadVariableOp? dense_109/BiasAdd/ReadVariableOp?dense_109/MatMul/ReadVariableOp? dense_110/BiasAdd/ReadVariableOp?dense_110/MatMul/ReadVariableOp?
 conv2d_108/Conv2D/ReadVariableOpReadVariableOp)conv2d_108_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_108/Conv2DConv2Dinputs(conv2d_108/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx *
paddingVALID*
strides
?
!conv2d_108/BiasAdd/ReadVariableOpReadVariableOp*conv2d_108_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_108/BiasAddBiasAddconv2d_108/Conv2D:output:0)conv2d_108/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx n
conv2d_108/ReluReluconv2d_108/BiasAdd:output:0*
T0*/
_output_shapes
:?????????xx ?
max_pooling2d_108/MaxPoolMaxPoolconv2d_108/Relu:activations:0*/
_output_shapes
:?????????<< *
ksize
*
paddingVALID*
strides
?
 conv2d_109/Conv2D/ReadVariableOpReadVariableOp)conv2d_109_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_109/Conv2DConv2D"max_pooling2d_108/MaxPool:output:0(conv2d_109/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
!conv2d_109/BiasAdd/ReadVariableOpReadVariableOp*conv2d_109_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_109/BiasAddBiasAddconv2d_109/Conv2D:output:0)conv2d_109/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@n
conv2d_109/ReluReluconv2d_109/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_109/MaxPoolMaxPoolconv2d_109/Relu:activations:0*/
_output_shapes
:?????????

@*
ksize
*
paddingVALID*
strides
?
 conv2d_110/Conv2D/ReadVariableOpReadVariableOp)conv2d_110_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_110/Conv2DConv2D"max_pooling2d_109/MaxPool:output:0(conv2d_110/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
!conv2d_110/BiasAdd/ReadVariableOpReadVariableOp*conv2d_110_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_110/BiasAddBiasAddconv2d_110/Conv2D:output:0)conv2d_110/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????o
conv2d_110/ReluReluconv2d_110/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
max_pooling2d_110/MaxPoolMaxPoolconv2d_110/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
a
flatten_36/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_36/ReshapeReshape"max_pooling2d_110/MaxPool:output:0flatten_36/Const:output:0*
T0*(
_output_shapes
:???????????
dense_108/MatMul/ReadVariableOpReadVariableOp(dense_108_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_108/MatMulMatMulflatten_36/Reshape:output:0'dense_108/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
 dense_108/BiasAdd/ReadVariableOpReadVariableOp)dense_108_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_108/BiasAddBiasAdddense_108/MatMul:product:0(dense_108/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_108/TanhTanhdense_108/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@e
dropout_36/IdentityIdentitydense_108/Tanh:y:0*
T0*'
_output_shapes
:?????????@?
dense_109/MatMul/ReadVariableOpReadVariableOp(dense_109_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_109/MatMulMatMuldropout_36/Identity:output:0'dense_109/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_109/BiasAdd/ReadVariableOpReadVariableOp)dense_109_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_109/BiasAddBiasAdddense_109/MatMul:product:0(dense_109/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_109/TanhTanhdense_109/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_110/MatMul/ReadVariableOpReadVariableOp(dense_110_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_110/MatMulMatMuldense_109/Tanh:y:0'dense_110/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_110/BiasAdd/ReadVariableOpReadVariableOp)dense_110_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_110/BiasAddBiasAdddense_110/MatMul:product:0(dense_110/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_110/SigmoidSigmoiddense_110/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_110/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_108/BiasAdd/ReadVariableOp!^conv2d_108/Conv2D/ReadVariableOp"^conv2d_109/BiasAdd/ReadVariableOp!^conv2d_109/Conv2D/ReadVariableOp"^conv2d_110/BiasAdd/ReadVariableOp!^conv2d_110/Conv2D/ReadVariableOp!^dense_108/BiasAdd/ReadVariableOp ^dense_108/MatMul/ReadVariableOp!^dense_109/BiasAdd/ReadVariableOp ^dense_109/MatMul/ReadVariableOp!^dense_110/BiasAdd/ReadVariableOp ^dense_110/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_108/BiasAdd/ReadVariableOp!conv2d_108/BiasAdd/ReadVariableOp2D
 conv2d_108/Conv2D/ReadVariableOp conv2d_108/Conv2D/ReadVariableOp2F
!conv2d_109/BiasAdd/ReadVariableOp!conv2d_109/BiasAdd/ReadVariableOp2D
 conv2d_109/Conv2D/ReadVariableOp conv2d_109/Conv2D/ReadVariableOp2F
!conv2d_110/BiasAdd/ReadVariableOp!conv2d_110/BiasAdd/ReadVariableOp2D
 conv2d_110/Conv2D/ReadVariableOp conv2d_110/Conv2D/ReadVariableOp2D
 dense_108/BiasAdd/ReadVariableOp dense_108/BiasAdd/ReadVariableOp2B
dense_108/MatMul/ReadVariableOpdense_108/MatMul/ReadVariableOp2D
 dense_109/BiasAdd/ReadVariableOp dense_109/BiasAdd/ReadVariableOp2B
dense_109/MatMul/ReadVariableOpdense_109/MatMul/ReadVariableOp2D
 dense_110/BiasAdd/ReadVariableOp dense_110/BiasAdd/ReadVariableOp2B
dense_110/MatMul/ReadVariableOpdense_110/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_36_layer_call_and_return_conditional_losses_99384

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
d
E__inference_dropout_36_layer_call_and_return_conditional_losses_99488

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
F__inference_conv2d_109_layer_call_and_return_conditional_losses_100016

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????<< : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????<< 
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_99352

inputs
identity?
MaxPoolMaxPoolinputs*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
a
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_36_layer_call_and_return_conditional_losses_100134

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?1
?
H__inference_sequential_36_layer_call_and_return_conditional_losses_99622

inputs*
conv2d_108_99586: 
conv2d_108_99588: *
conv2d_109_99592: @
conv2d_109_99594:@+
conv2d_110_99598:@?
conv2d_110_99600:	?"
dense_108_99605:	?@
dense_108_99607:@!
dense_109_99611:@
dense_109_99613:!
dense_110_99616:
dense_110_99618:
identity??"conv2d_108/StatefulPartitionedCall?"conv2d_109/StatefulPartitionedCall?"conv2d_110/StatefulPartitionedCall?!dense_108/StatefulPartitionedCall?!dense_109/StatefulPartitionedCall?!dense_110/StatefulPartitionedCall?"dropout_36/StatefulPartitionedCall?
"conv2d_108/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_108_99586conv2d_108_99588*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_108_layer_call_and_return_conditional_losses_99296?
!max_pooling2d_108/PartitionedCallPartitionedCall+conv2d_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<< * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_99306?
"conv2d_109/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_108/PartitionedCall:output:0conv2d_109_99592conv2d_109_99594*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_109_layer_call_and_return_conditional_losses_99319?
!max_pooling2d_109/PartitionedCallPartitionedCall+conv2d_109/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????

@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_99329?
"conv2d_110/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_109/PartitionedCall:output:0conv2d_110_99598conv2d_110_99600*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_110_layer_call_and_return_conditional_losses_99342?
!max_pooling2d_110/PartitionedCallPartitionedCall+conv2d_110/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_99352?
flatten_36/PartitionedCallPartitionedCall*max_pooling2d_110/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_36_layer_call_and_return_conditional_losses_99360?
!dense_108/StatefulPartitionedCallStatefulPartitionedCall#flatten_36/PartitionedCall:output:0dense_108_99605dense_108_99607*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_108_layer_call_and_return_conditional_losses_99373?
"dropout_36/StatefulPartitionedCallStatefulPartitionedCall*dense_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_36_layer_call_and_return_conditional_losses_99488?
!dense_109/StatefulPartitionedCallStatefulPartitionedCall+dropout_36/StatefulPartitionedCall:output:0dense_109_99611dense_109_99613*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_109_layer_call_and_return_conditional_losses_99397?
!dense_110/StatefulPartitionedCallStatefulPartitionedCall*dense_109/StatefulPartitionedCall:output:0dense_110_99616dense_110_99618*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_110_layer_call_and_return_conditional_losses_99414y
IdentityIdentity*dense_110/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_108/StatefulPartitionedCall#^conv2d_109/StatefulPartitionedCall#^conv2d_110/StatefulPartitionedCall"^dense_108/StatefulPartitionedCall"^dense_109/StatefulPartitionedCall"^dense_110/StatefulPartitionedCall#^dropout_36/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_108/StatefulPartitionedCall"conv2d_108/StatefulPartitionedCall2H
"conv2d_109/StatefulPartitionedCall"conv2d_109/StatefulPartitionedCall2H
"conv2d_110/StatefulPartitionedCall"conv2d_110/StatefulPartitionedCall2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2H
"dropout_36/StatefulPartitionedCall"dropout_36/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_109_layer_call_fn_100005

inputs!
unknown: @
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
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_109_layer_call_and_return_conditional_losses_99319w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????<< : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<< 
 
_user_specified_nameinputs
?
G
+__inference_dropout_36_layer_call_fn_100112

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_36_layer_call_and_return_conditional_losses_99384`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_100076

inputs
identity?
MaxPoolMaxPoolinputs*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
a
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_108_layer_call_fn_99981

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
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_99251?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_110_layer_call_fn_100045

inputs"
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_110_layer_call_and_return_conditional_losses_99342x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????

@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????

@
 
_user_specified_nameinputs
?
a
E__inference_flatten_36_layer_call_and_return_conditional_losses_99360

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_36_layer_call_and_return_conditional_losses_100122

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
b
F__inference_flatten_36_layer_call_and_return_conditional_losses_100087

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
D__inference_dense_110_layer_call_and_return_conditional_losses_99414

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_110_layer_call_fn_100061

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
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_99275?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
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
F__inference_conv2d_110_layer_call_and_return_conditional_losses_100056

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????

@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????

@
 
_user_specified_nameinputs
?(
?
__inference__traced_save_100245
file_prefix0
,savev2_conv2d_108_kernel_read_readvariableop.
*savev2_conv2d_108_bias_read_readvariableop0
,savev2_conv2d_109_kernel_read_readvariableop.
*savev2_conv2d_109_bias_read_readvariableop0
,savev2_conv2d_110_kernel_read_readvariableop.
*savev2_conv2d_110_bias_read_readvariableop/
+savev2_dense_108_kernel_read_readvariableop-
)savev2_dense_108_bias_read_readvariableop/
+savev2_dense_109_kernel_read_readvariableop-
)savev2_dense_109_bias_read_readvariableop/
+savev2_dense_110_kernel_read_readvariableop-
)savev2_dense_110_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_108_kernel_read_readvariableop*savev2_conv2d_108_bias_read_readvariableop,savev2_conv2d_109_kernel_read_readvariableop*savev2_conv2d_109_bias_read_readvariableop,savev2_conv2d_110_kernel_read_readvariableop*savev2_conv2d_110_bias_read_readvariableop+savev2_dense_108_kernel_read_readvariableop)savev2_dense_108_bias_read_readvariableop+savev2_dense_109_kernel_read_readvariableop)savev2_dense_109_bias_read_readvariableop+savev2_dense_110_kernel_read_readvariableop)savev2_dense_110_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : @:@:@?:?:	?@:@:@:::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$	 

_output_shapes

:@: 


_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
i
M__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_100036

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????

@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????

@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
D__inference_dense_109_layer_call_and_return_conditional_losses_99397

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_100031

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
*__inference_dense_110_layer_call_fn_100163

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_110_layer_call_and_return_conditional_losses_99414o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_109_layer_call_and_return_conditional_losses_99319

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????<< : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????<< 
 
_user_specified_nameinputs
?0
?
H__inference_sequential_36_layer_call_and_return_conditional_losses_99717
conv2d_108_input*
conv2d_108_99681: 
conv2d_108_99683: *
conv2d_109_99687: @
conv2d_109_99689:@+
conv2d_110_99693:@?
conv2d_110_99695:	?"
dense_108_99700:	?@
dense_108_99702:@!
dense_109_99706:@
dense_109_99708:!
dense_110_99711:
dense_110_99713:
identity??"conv2d_108/StatefulPartitionedCall?"conv2d_109/StatefulPartitionedCall?"conv2d_110/StatefulPartitionedCall?!dense_108/StatefulPartitionedCall?!dense_109/StatefulPartitionedCall?!dense_110/StatefulPartitionedCall?
"conv2d_108/StatefulPartitionedCallStatefulPartitionedCallconv2d_108_inputconv2d_108_99681conv2d_108_99683*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_108_layer_call_and_return_conditional_losses_99296?
!max_pooling2d_108/PartitionedCallPartitionedCall+conv2d_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<< * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_99306?
"conv2d_109/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_108/PartitionedCall:output:0conv2d_109_99687conv2d_109_99689*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_109_layer_call_and_return_conditional_losses_99319?
!max_pooling2d_109/PartitionedCallPartitionedCall+conv2d_109/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????

@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_99329?
"conv2d_110/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_109/PartitionedCall:output:0conv2d_110_99693conv2d_110_99695*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_110_layer_call_and_return_conditional_losses_99342?
!max_pooling2d_110/PartitionedCallPartitionedCall+conv2d_110/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_99352?
flatten_36/PartitionedCallPartitionedCall*max_pooling2d_110/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_36_layer_call_and_return_conditional_losses_99360?
!dense_108/StatefulPartitionedCallStatefulPartitionedCall#flatten_36/PartitionedCall:output:0dense_108_99700dense_108_99702*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_108_layer_call_and_return_conditional_losses_99373?
dropout_36/PartitionedCallPartitionedCall*dense_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_36_layer_call_and_return_conditional_losses_99384?
!dense_109/StatefulPartitionedCallStatefulPartitionedCall#dropout_36/PartitionedCall:output:0dense_109_99706dense_109_99708*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_109_layer_call_and_return_conditional_losses_99397?
!dense_110/StatefulPartitionedCallStatefulPartitionedCall*dense_109/StatefulPartitionedCall:output:0dense_110_99711dense_110_99713*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_110_layer_call_and_return_conditional_losses_99414y
IdentityIdentity*dense_110/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_108/StatefulPartitionedCall#^conv2d_109/StatefulPartitionedCall#^conv2d_110/StatefulPartitionedCall"^dense_108/StatefulPartitionedCall"^dense_109/StatefulPartitionedCall"^dense_110/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_108/StatefulPartitionedCall"conv2d_108/StatefulPartitionedCall2H
"conv2d_109/StatefulPartitionedCall"conv2d_109/StatefulPartitionedCall2H
"conv2d_110/StatefulPartitionedCall"conv2d_110/StatefulPartitionedCall2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_108_input
?
h
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_99991

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
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
E__inference_conv2d_108_layer_call_and_return_conditional_losses_99976

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????xx i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????xx w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_99263

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
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
E__inference_dense_110_layer_call_and_return_conditional_losses_100174

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?A
?	
"__inference__traced_restore_100303
file_prefix<
"assignvariableop_conv2d_108_kernel: 0
"assignvariableop_1_conv2d_108_bias: >
$assignvariableop_2_conv2d_109_kernel: @0
"assignvariableop_3_conv2d_109_bias:@?
$assignvariableop_4_conv2d_110_kernel:@?1
"assignvariableop_5_conv2d_110_bias:	?6
#assignvariableop_6_dense_108_kernel:	?@/
!assignvariableop_7_dense_108_bias:@5
#assignvariableop_8_dense_109_kernel:@/
!assignvariableop_9_dense_109_bias:6
$assignvariableop_10_dense_110_kernel:0
"assignvariableop_11_dense_110_bias:#
assignvariableop_12_total: #
assignvariableop_13_count: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: 
identity_17??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_108_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_108_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_109_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_109_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_110_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_110_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_108_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_108_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_109_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_109_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_110_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_110_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_17IdentityIdentity_16:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_17Identity_17:output:0*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_2AssignVariableOp_22(
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
?
?
*__inference_dense_108_layer_call_fn_100096

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_108_layer_call_and_return_conditional_losses_99373o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_109_layer_call_fn_100026

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
:?????????

@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_99329h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????

@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
d
+__inference_dropout_36_layer_call_fn_100117

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_36_layer_call_and_return_conditional_losses_99488o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?1
?
H__inference_sequential_36_layer_call_and_return_conditional_losses_99756
conv2d_108_input*
conv2d_108_99720: 
conv2d_108_99722: *
conv2d_109_99726: @
conv2d_109_99728:@+
conv2d_110_99732:@?
conv2d_110_99734:	?"
dense_108_99739:	?@
dense_108_99741:@!
dense_109_99745:@
dense_109_99747:!
dense_110_99750:
dense_110_99752:
identity??"conv2d_108/StatefulPartitionedCall?"conv2d_109/StatefulPartitionedCall?"conv2d_110/StatefulPartitionedCall?!dense_108/StatefulPartitionedCall?!dense_109/StatefulPartitionedCall?!dense_110/StatefulPartitionedCall?"dropout_36/StatefulPartitionedCall?
"conv2d_108/StatefulPartitionedCallStatefulPartitionedCallconv2d_108_inputconv2d_108_99720conv2d_108_99722*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_108_layer_call_and_return_conditional_losses_99296?
!max_pooling2d_108/PartitionedCallPartitionedCall+conv2d_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<< * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_99306?
"conv2d_109/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_108/PartitionedCall:output:0conv2d_109_99726conv2d_109_99728*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_109_layer_call_and_return_conditional_losses_99319?
!max_pooling2d_109/PartitionedCallPartitionedCall+conv2d_109/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????

@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_99329?
"conv2d_110/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_109/PartitionedCall:output:0conv2d_110_99732conv2d_110_99734*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_110_layer_call_and_return_conditional_losses_99342?
!max_pooling2d_110/PartitionedCallPartitionedCall+conv2d_110/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_99352?
flatten_36/PartitionedCallPartitionedCall*max_pooling2d_110/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_36_layer_call_and_return_conditional_losses_99360?
!dense_108/StatefulPartitionedCallStatefulPartitionedCall#flatten_36/PartitionedCall:output:0dense_108_99739dense_108_99741*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_108_layer_call_and_return_conditional_losses_99373?
"dropout_36/StatefulPartitionedCallStatefulPartitionedCall*dense_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_36_layer_call_and_return_conditional_losses_99488?
!dense_109/StatefulPartitionedCallStatefulPartitionedCall+dropout_36/StatefulPartitionedCall:output:0dense_109_99745dense_109_99747*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_109_layer_call_and_return_conditional_losses_99397?
!dense_110/StatefulPartitionedCallStatefulPartitionedCall*dense_109/StatefulPartitionedCall:output:0dense_110_99750dense_110_99752*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_110_layer_call_and_return_conditional_losses_99414y
IdentityIdentity*dense_110/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_108/StatefulPartitionedCall#^conv2d_109/StatefulPartitionedCall#^conv2d_110/StatefulPartitionedCall"^dense_108/StatefulPartitionedCall"^dense_109/StatefulPartitionedCall"^dense_110/StatefulPartitionedCall#^dropout_36/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_108/StatefulPartitionedCall"conv2d_108/StatefulPartitionedCall2H
"conv2d_109/StatefulPartitionedCall"conv2d_109/StatefulPartitionedCall2H
"conv2d_110/StatefulPartitionedCall"conv2d_110/StatefulPartitionedCall2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2H
"dropout_36/StatefulPartitionedCall"dropout_36/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_108_input
?
?
#__inference_signature_wrapper_99787
conv2d_108_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?
	unknown_5:	?@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_108_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_99242o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_108_input
?
h
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_99306

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????<< *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????<< "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????xx :W S
/
_output_shapes
:?????????xx 
 
_user_specified_nameinputs
?0
?
H__inference_sequential_36_layer_call_and_return_conditional_losses_99421

inputs*
conv2d_108_99297: 
conv2d_108_99299: *
conv2d_109_99320: @
conv2d_109_99322:@+
conv2d_110_99343:@?
conv2d_110_99345:	?"
dense_108_99374:	?@
dense_108_99376:@!
dense_109_99398:@
dense_109_99400:!
dense_110_99415:
dense_110_99417:
identity??"conv2d_108/StatefulPartitionedCall?"conv2d_109/StatefulPartitionedCall?"conv2d_110/StatefulPartitionedCall?!dense_108/StatefulPartitionedCall?!dense_109/StatefulPartitionedCall?!dense_110/StatefulPartitionedCall?
"conv2d_108/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_108_99297conv2d_108_99299*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_108_layer_call_and_return_conditional_losses_99296?
!max_pooling2d_108/PartitionedCallPartitionedCall+conv2d_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<< * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_99306?
"conv2d_109/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_108/PartitionedCall:output:0conv2d_109_99320conv2d_109_99322*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_109_layer_call_and_return_conditional_losses_99319?
!max_pooling2d_109/PartitionedCallPartitionedCall+conv2d_109/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????

@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_99329?
"conv2d_110/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_109/PartitionedCall:output:0conv2d_110_99343conv2d_110_99345*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_110_layer_call_and_return_conditional_losses_99342?
!max_pooling2d_110/PartitionedCallPartitionedCall+conv2d_110/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_99352?
flatten_36/PartitionedCallPartitionedCall*max_pooling2d_110/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_36_layer_call_and_return_conditional_losses_99360?
!dense_108/StatefulPartitionedCallStatefulPartitionedCall#flatten_36/PartitionedCall:output:0dense_108_99374dense_108_99376*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_108_layer_call_and_return_conditional_losses_99373?
dropout_36/PartitionedCallPartitionedCall*dense_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_36_layer_call_and_return_conditional_losses_99384?
!dense_109/StatefulPartitionedCallStatefulPartitionedCall#dropout_36/PartitionedCall:output:0dense_109_99398dense_109_99400*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_109_layer_call_and_return_conditional_losses_99397?
!dense_110/StatefulPartitionedCallStatefulPartitionedCall*dense_109/StatefulPartitionedCall:output:0dense_110_99415dense_110_99417*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_110_layer_call_and_return_conditional_losses_99414y
IdentityIdentity*dense_110/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_108/StatefulPartitionedCall#^conv2d_109/StatefulPartitionedCall#^conv2d_110/StatefulPartitionedCall"^dense_108/StatefulPartitionedCall"^dense_109/StatefulPartitionedCall"^dense_110/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_108/StatefulPartitionedCall"conv2d_108/StatefulPartitionedCall2H
"conv2d_109/StatefulPartitionedCall"conv2d_109/StatefulPartitionedCall2H
"conv2d_110/StatefulPartitionedCall"conv2d_110/StatefulPartitionedCall2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_99251

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
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
E__inference_dense_108_layer_call_and_return_conditional_losses_100107

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_36_layer_call_fn_99845

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?
	unknown_5:	?@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_36_layer_call_and_return_conditional_losses_99622o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_36_layer_call_fn_99448
conv2d_108_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?
	unknown_5:	?@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_108_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_36_layer_call_and_return_conditional_losses_99421o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_108_input
?
?
*__inference_dense_109_layer_call_fn_100143

inputs
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_109_layer_call_and_return_conditional_losses_99397o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_108_layer_call_fn_99986

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
:?????????<< * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_99306h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????<< "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????xx :W S
/
_output_shapes
:?????????xx 
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_99329

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????

@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????

@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_100071

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
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
2__inference_max_pooling2d_110_layer_call_fn_100066

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_99352i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_108_layer_call_fn_99965

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_108_layer_call_and_return_conditional_losses_99296w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????xx `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_109_layer_call_fn_100021

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
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_99263?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?O
?
 __inference__wrapped_model_99242
conv2d_108_inputQ
7sequential_36_conv2d_108_conv2d_readvariableop_resource: F
8sequential_36_conv2d_108_biasadd_readvariableop_resource: Q
7sequential_36_conv2d_109_conv2d_readvariableop_resource: @F
8sequential_36_conv2d_109_biasadd_readvariableop_resource:@R
7sequential_36_conv2d_110_conv2d_readvariableop_resource:@?G
8sequential_36_conv2d_110_biasadd_readvariableop_resource:	?I
6sequential_36_dense_108_matmul_readvariableop_resource:	?@E
7sequential_36_dense_108_biasadd_readvariableop_resource:@H
6sequential_36_dense_109_matmul_readvariableop_resource:@E
7sequential_36_dense_109_biasadd_readvariableop_resource:H
6sequential_36_dense_110_matmul_readvariableop_resource:E
7sequential_36_dense_110_biasadd_readvariableop_resource:
identity??/sequential_36/conv2d_108/BiasAdd/ReadVariableOp?.sequential_36/conv2d_108/Conv2D/ReadVariableOp?/sequential_36/conv2d_109/BiasAdd/ReadVariableOp?.sequential_36/conv2d_109/Conv2D/ReadVariableOp?/sequential_36/conv2d_110/BiasAdd/ReadVariableOp?.sequential_36/conv2d_110/Conv2D/ReadVariableOp?.sequential_36/dense_108/BiasAdd/ReadVariableOp?-sequential_36/dense_108/MatMul/ReadVariableOp?.sequential_36/dense_109/BiasAdd/ReadVariableOp?-sequential_36/dense_109/MatMul/ReadVariableOp?.sequential_36/dense_110/BiasAdd/ReadVariableOp?-sequential_36/dense_110/MatMul/ReadVariableOp?
.sequential_36/conv2d_108/Conv2D/ReadVariableOpReadVariableOp7sequential_36_conv2d_108_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
sequential_36/conv2d_108/Conv2DConv2Dconv2d_108_input6sequential_36/conv2d_108/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx *
paddingVALID*
strides
?
/sequential_36/conv2d_108/BiasAdd/ReadVariableOpReadVariableOp8sequential_36_conv2d_108_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
 sequential_36/conv2d_108/BiasAddBiasAdd(sequential_36/conv2d_108/Conv2D:output:07sequential_36/conv2d_108/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx ?
sequential_36/conv2d_108/ReluRelu)sequential_36/conv2d_108/BiasAdd:output:0*
T0*/
_output_shapes
:?????????xx ?
'sequential_36/max_pooling2d_108/MaxPoolMaxPool+sequential_36/conv2d_108/Relu:activations:0*/
_output_shapes
:?????????<< *
ksize
*
paddingVALID*
strides
?
.sequential_36/conv2d_109/Conv2D/ReadVariableOpReadVariableOp7sequential_36_conv2d_109_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
sequential_36/conv2d_109/Conv2DConv2D0sequential_36/max_pooling2d_108/MaxPool:output:06sequential_36/conv2d_109/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
/sequential_36/conv2d_109/BiasAdd/ReadVariableOpReadVariableOp8sequential_36_conv2d_109_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
 sequential_36/conv2d_109/BiasAddBiasAdd(sequential_36/conv2d_109/Conv2D:output:07sequential_36/conv2d_109/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
sequential_36/conv2d_109/ReluRelu)sequential_36/conv2d_109/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
'sequential_36/max_pooling2d_109/MaxPoolMaxPool+sequential_36/conv2d_109/Relu:activations:0*/
_output_shapes
:?????????

@*
ksize
*
paddingVALID*
strides
?
.sequential_36/conv2d_110/Conv2D/ReadVariableOpReadVariableOp7sequential_36_conv2d_110_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
sequential_36/conv2d_110/Conv2DConv2D0sequential_36/max_pooling2d_109/MaxPool:output:06sequential_36/conv2d_110/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
/sequential_36/conv2d_110/BiasAdd/ReadVariableOpReadVariableOp8sequential_36_conv2d_110_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
 sequential_36/conv2d_110/BiasAddBiasAdd(sequential_36/conv2d_110/Conv2D:output:07sequential_36/conv2d_110/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
sequential_36/conv2d_110/ReluRelu)sequential_36/conv2d_110/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
'sequential_36/max_pooling2d_110/MaxPoolMaxPool+sequential_36/conv2d_110/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
o
sequential_36/flatten_36/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
 sequential_36/flatten_36/ReshapeReshape0sequential_36/max_pooling2d_110/MaxPool:output:0'sequential_36/flatten_36/Const:output:0*
T0*(
_output_shapes
:???????????
-sequential_36/dense_108/MatMul/ReadVariableOpReadVariableOp6sequential_36_dense_108_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
sequential_36/dense_108/MatMulMatMul)sequential_36/flatten_36/Reshape:output:05sequential_36/dense_108/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
.sequential_36/dense_108/BiasAdd/ReadVariableOpReadVariableOp7sequential_36_dense_108_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_36/dense_108/BiasAddBiasAdd(sequential_36/dense_108/MatMul:product:06sequential_36/dense_108/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
sequential_36/dense_108/TanhTanh(sequential_36/dense_108/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
!sequential_36/dropout_36/IdentityIdentity sequential_36/dense_108/Tanh:y:0*
T0*'
_output_shapes
:?????????@?
-sequential_36/dense_109/MatMul/ReadVariableOpReadVariableOp6sequential_36_dense_109_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
sequential_36/dense_109/MatMulMatMul*sequential_36/dropout_36/Identity:output:05sequential_36/dense_109/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
.sequential_36/dense_109/BiasAdd/ReadVariableOpReadVariableOp7sequential_36_dense_109_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_36/dense_109/BiasAddBiasAdd(sequential_36/dense_109/MatMul:product:06sequential_36/dense_109/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_36/dense_109/TanhTanh(sequential_36/dense_109/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
-sequential_36/dense_110/MatMul/ReadVariableOpReadVariableOp6sequential_36_dense_110_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_36/dense_110/MatMulMatMul sequential_36/dense_109/Tanh:y:05sequential_36/dense_110/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
.sequential_36/dense_110/BiasAdd/ReadVariableOpReadVariableOp7sequential_36_dense_110_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_36/dense_110/BiasAddBiasAdd(sequential_36/dense_110/MatMul:product:06sequential_36/dense_110/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_36/dense_110/SigmoidSigmoid(sequential_36/dense_110/BiasAdd:output:0*
T0*'
_output_shapes
:?????????r
IdentityIdentity#sequential_36/dense_110/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_36/conv2d_108/BiasAdd/ReadVariableOp/^sequential_36/conv2d_108/Conv2D/ReadVariableOp0^sequential_36/conv2d_109/BiasAdd/ReadVariableOp/^sequential_36/conv2d_109/Conv2D/ReadVariableOp0^sequential_36/conv2d_110/BiasAdd/ReadVariableOp/^sequential_36/conv2d_110/Conv2D/ReadVariableOp/^sequential_36/dense_108/BiasAdd/ReadVariableOp.^sequential_36/dense_108/MatMul/ReadVariableOp/^sequential_36/dense_109/BiasAdd/ReadVariableOp.^sequential_36/dense_109/MatMul/ReadVariableOp/^sequential_36/dense_110/BiasAdd/ReadVariableOp.^sequential_36/dense_110/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2b
/sequential_36/conv2d_108/BiasAdd/ReadVariableOp/sequential_36/conv2d_108/BiasAdd/ReadVariableOp2`
.sequential_36/conv2d_108/Conv2D/ReadVariableOp.sequential_36/conv2d_108/Conv2D/ReadVariableOp2b
/sequential_36/conv2d_109/BiasAdd/ReadVariableOp/sequential_36/conv2d_109/BiasAdd/ReadVariableOp2`
.sequential_36/conv2d_109/Conv2D/ReadVariableOp.sequential_36/conv2d_109/Conv2D/ReadVariableOp2b
/sequential_36/conv2d_110/BiasAdd/ReadVariableOp/sequential_36/conv2d_110/BiasAdd/ReadVariableOp2`
.sequential_36/conv2d_110/Conv2D/ReadVariableOp.sequential_36/conv2d_110/Conv2D/ReadVariableOp2`
.sequential_36/dense_108/BiasAdd/ReadVariableOp.sequential_36/dense_108/BiasAdd/ReadVariableOp2^
-sequential_36/dense_108/MatMul/ReadVariableOp-sequential_36/dense_108/MatMul/ReadVariableOp2`
.sequential_36/dense_109/BiasAdd/ReadVariableOp.sequential_36/dense_109/BiasAdd/ReadVariableOp2^
-sequential_36/dense_109/MatMul/ReadVariableOp-sequential_36/dense_109/MatMul/ReadVariableOp2`
.sequential_36/dense_110/BiasAdd/ReadVariableOp.sequential_36/dense_110/BiasAdd/ReadVariableOp2^
-sequential_36/dense_110/MatMul/ReadVariableOp-sequential_36/dense_110/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_108_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
W
conv2d_108_inputC
"serving_default_conv2d_108_input:0???????????=
	dense_1100
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
	optimizer

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_sequential
?

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
 bias
#!_self_saveable_object_factories
"	variables
#trainable_variables
$regularization_losses
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#&_self_saveable_object_factories
'	variables
(trainable_variables
)regularization_losses
*	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

+kernel
,bias
#-_self_saveable_object_factories
.	variables
/trainable_variables
0regularization_losses
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#2_self_saveable_object_factories
3	variables
4trainable_variables
5regularization_losses
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#7_self_saveable_object_factories
8	variables
9trainable_variables
:regularization_losses
;	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

<kernel
=bias
#>_self_saveable_object_factories
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#C_self_saveable_object_factories
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Hkernel
Ibias
#J_self_saveable_object_factories
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Okernel
Pbias
#Q_self_saveable_object_factories
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
"
	optimizer
-
?serving_default"
signature_map
 "
trackable_dict_wrapper
v
0
1
2
 3
+4
,5
<6
=7
H8
I9
O10
P11"
trackable_list_wrapper
v
0
1
2
 3
+4
,5
<6
=7
H8
I9
O10
P11"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:) 2conv2d_108/kernel
: 2conv2d_108/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:) @2conv2d_109/kernel
:@2conv2d_109/bias
 "
trackable_dict_wrapper
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
"	variables
#trainable_variables
$regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
'	variables
(trainable_variables
)regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*@?2conv2d_110/kernel
:?2conv2d_110/bias
 "
trackable_dict_wrapper
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
.	variables
/trainable_variables
0regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
3	variables
4trainable_variables
5regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
8	variables
9trainable_variables
:regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!	?@2dense_108/kernel
:@2dense_108/bias
 "
trackable_dict_wrapper
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
~non_trainable_variables

layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
@trainable_variables
Aregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": @2dense_109/kernel
:2dense_109/bias
 "
trackable_dict_wrapper
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 2dense_110/kernel
:2dense_110/bias
 "
trackable_dict_wrapper
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
R	variables
Strainable_variables
Tregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
0
?0
?1"
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
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
?2?
-__inference_sequential_36_layer_call_fn_99448
-__inference_sequential_36_layer_call_fn_99816
-__inference_sequential_36_layer_call_fn_99845
-__inference_sequential_36_layer_call_fn_99678?
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
?2?
H__inference_sequential_36_layer_call_and_return_conditional_losses_99897
H__inference_sequential_36_layer_call_and_return_conditional_losses_99956
H__inference_sequential_36_layer_call_and_return_conditional_losses_99717
H__inference_sequential_36_layer_call_and_return_conditional_losses_99756?
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
 __inference__wrapped_model_99242conv2d_108_input"?
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
*__inference_conv2d_108_layer_call_fn_99965?
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
E__inference_conv2d_108_layer_call_and_return_conditional_losses_99976?
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
1__inference_max_pooling2d_108_layer_call_fn_99981
1__inference_max_pooling2d_108_layer_call_fn_99986?
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
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_99991
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_99996?
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
+__inference_conv2d_109_layer_call_fn_100005?
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
F__inference_conv2d_109_layer_call_and_return_conditional_losses_100016?
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
2__inference_max_pooling2d_109_layer_call_fn_100021
2__inference_max_pooling2d_109_layer_call_fn_100026?
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
M__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_100031
M__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_100036?
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
+__inference_conv2d_110_layer_call_fn_100045?
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
F__inference_conv2d_110_layer_call_and_return_conditional_losses_100056?
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
2__inference_max_pooling2d_110_layer_call_fn_100061
2__inference_max_pooling2d_110_layer_call_fn_100066?
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
M__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_100071
M__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_100076?
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
+__inference_flatten_36_layer_call_fn_100081?
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
F__inference_flatten_36_layer_call_and_return_conditional_losses_100087?
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
*__inference_dense_108_layer_call_fn_100096?
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
E__inference_dense_108_layer_call_and_return_conditional_losses_100107?
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
+__inference_dropout_36_layer_call_fn_100112
+__inference_dropout_36_layer_call_fn_100117?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_36_layer_call_and_return_conditional_losses_100122
F__inference_dropout_36_layer_call_and_return_conditional_losses_100134?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dense_109_layer_call_fn_100143?
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
E__inference_dense_109_layer_call_and_return_conditional_losses_100154?
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
*__inference_dense_110_layer_call_fn_100163?
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
E__inference_dense_110_layer_call_and_return_conditional_losses_100174?
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
#__inference_signature_wrapper_99787conv2d_108_input"?
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
 __inference__wrapped_model_99242? +,<=HIOPC?@
9?6
4?1
conv2d_108_input???????????
? "5?2
0
	dense_110#? 
	dense_110??????????
E__inference_conv2d_108_layer_call_and_return_conditional_losses_99976n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????xx 
? ?
*__inference_conv2d_108_layer_call_fn_99965a9?6
/?,
*?'
inputs???????????
? " ??????????xx ?
F__inference_conv2d_109_layer_call_and_return_conditional_losses_100016l 7?4
-?*
(?%
inputs?????????<< 
? "-?*
#? 
0?????????@
? ?
+__inference_conv2d_109_layer_call_fn_100005_ 7?4
-?*
(?%
inputs?????????<< 
? " ??????????@?
F__inference_conv2d_110_layer_call_and_return_conditional_losses_100056m+,7?4
-?*
(?%
inputs?????????

@
? ".?+
$?!
0??????????
? ?
+__inference_conv2d_110_layer_call_fn_100045`+,7?4
-?*
(?%
inputs?????????

@
? "!????????????
E__inference_dense_108_layer_call_and_return_conditional_losses_100107]<=0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? ~
*__inference_dense_108_layer_call_fn_100096P<=0?-
&?#
!?
inputs??????????
? "??????????@?
E__inference_dense_109_layer_call_and_return_conditional_losses_100154\HI/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? }
*__inference_dense_109_layer_call_fn_100143OHI/?,
%?"
 ?
inputs?????????@
? "???????????
E__inference_dense_110_layer_call_and_return_conditional_losses_100174\OP/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? }
*__inference_dense_110_layer_call_fn_100163OOP/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_dropout_36_layer_call_and_return_conditional_losses_100122\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
F__inference_dropout_36_layer_call_and_return_conditional_losses_100134\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ~
+__inference_dropout_36_layer_call_fn_100112O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@~
+__inference_dropout_36_layer_call_fn_100117O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
F__inference_flatten_36_layer_call_and_return_conditional_losses_100087b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_flatten_36_layer_call_fn_100081U8?5
.?+
)?&
inputs??????????
? "????????????
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_99991?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
L__inference_max_pooling2d_108_layer_call_and_return_conditional_losses_99996h7?4
-?*
(?%
inputs?????????xx 
? "-?*
#? 
0?????????<< 
? ?
1__inference_max_pooling2d_108_layer_call_fn_99981?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
1__inference_max_pooling2d_108_layer_call_fn_99986[7?4
-?*
(?%
inputs?????????xx 
? " ??????????<< ?
M__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_100031?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_109_layer_call_and_return_conditional_losses_100036h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????

@
? ?
2__inference_max_pooling2d_109_layer_call_fn_100021?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_109_layer_call_fn_100026[7?4
-?*
(?%
inputs?????????@
? " ??????????

@?
M__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_100071?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_110_layer_call_and_return_conditional_losses_100076j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
2__inference_max_pooling2d_110_layer_call_fn_100061?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_110_layer_call_fn_100066]8?5
.?+
)?&
inputs??????????
? "!????????????
H__inference_sequential_36_layer_call_and_return_conditional_losses_99717? +,<=HIOPK?H
A?>
4?1
conv2d_108_input???????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_36_layer_call_and_return_conditional_losses_99756? +,<=HIOPK?H
A?>
4?1
conv2d_108_input???????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_36_layer_call_and_return_conditional_losses_99897x +,<=HIOPA?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_36_layer_call_and_return_conditional_losses_99956x +,<=HIOPA?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????
? ?
-__inference_sequential_36_layer_call_fn_99448u +,<=HIOPK?H
A?>
4?1
conv2d_108_input???????????
p 

 
? "???????????
-__inference_sequential_36_layer_call_fn_99678u +,<=HIOPK?H
A?>
4?1
conv2d_108_input???????????
p

 
? "???????????
-__inference_sequential_36_layer_call_fn_99816k +,<=HIOPA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
-__inference_sequential_36_layer_call_fn_99845k +,<=HIOPA?>
7?4
*?'
inputs???????????
p

 
? "???????????
#__inference_signature_wrapper_99787? +,<=HIOPW?T
? 
M?J
H
conv2d_108_input4?1
conv2d_108_input???????????"5?2
0
	dense_110#? 
	dense_110?????????