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
conv2d_495/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_495/kernel

%conv2d_495/kernel/Read/ReadVariableOpReadVariableOpconv2d_495/kernel*&
_output_shapes
: *
dtype0
v
conv2d_495/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_495/bias
o
#conv2d_495/bias/Read/ReadVariableOpReadVariableOpconv2d_495/bias*
_output_shapes
: *
dtype0
?
conv2d_496/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_496/kernel

%conv2d_496/kernel/Read/ReadVariableOpReadVariableOpconv2d_496/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_496/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_496/bias
o
#conv2d_496/bias/Read/ReadVariableOpReadVariableOpconv2d_496/bias*
_output_shapes
:@*
dtype0
?
conv2d_497/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*"
shared_nameconv2d_497/kernel
?
%conv2d_497/kernel/Read/ReadVariableOpReadVariableOpconv2d_497/kernel*'
_output_shapes
:@?*
dtype0
w
conv2d_497/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_497/bias
p
#conv2d_497/bias/Read/ReadVariableOpReadVariableOpconv2d_497/bias*
_output_shapes	
:?*
dtype0
}
dense_495/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*!
shared_namedense_495/kernel
v
$dense_495/kernel/Read/ReadVariableOpReadVariableOpdense_495/kernel*
_output_shapes
:	?@*
dtype0
t
dense_495/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_495/bias
m
"dense_495/bias/Read/ReadVariableOpReadVariableOpdense_495/bias*
_output_shapes
:@*
dtype0
|
dense_496/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_496/kernel
u
$dense_496/kernel/Read/ReadVariableOpReadVariableOpdense_496/kernel*
_output_shapes

:@*
dtype0
t
dense_496/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_496/bias
m
"dense_496/bias/Read/ReadVariableOpReadVariableOpdense_496/bias*
_output_shapes
:*
dtype0
|
dense_497/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_497/kernel
u
$dense_497/kernel/Read/ReadVariableOpReadVariableOpdense_497/kernel*
_output_shapes

:*
dtype0
t
dense_497/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_497/bias
m
"dense_497/bias/Read/ReadVariableOpReadVariableOpdense_497/bias*
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
VARIABLE_VALUEconv2d_495/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_495/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_496/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_496/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_497/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_497/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_495/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_495/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_496/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_496/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_497/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_497/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
 serving_default_conv2d_495_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_495_inputconv2d_495/kernelconv2d_495/biasconv2d_496/kernelconv2d_496/biasconv2d_497/kernelconv2d_497/biasdense_495/kerneldense_495/biasdense_496/kerneldense_496/biasdense_497/kerneldense_497/bias*
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
GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_1035196
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_495/kernel/Read/ReadVariableOp#conv2d_495/bias/Read/ReadVariableOp%conv2d_496/kernel/Read/ReadVariableOp#conv2d_496/bias/Read/ReadVariableOp%conv2d_497/kernel/Read/ReadVariableOp#conv2d_497/bias/Read/ReadVariableOp$dense_495/kernel/Read/ReadVariableOp"dense_495/bias/Read/ReadVariableOp$dense_496/kernel/Read/ReadVariableOp"dense_496/bias/Read/ReadVariableOp$dense_497/kernel/Read/ReadVariableOp"dense_497/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
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
GPU2*0J 8? *)
f$R"
 __inference__traced_save_1035654
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_495/kernelconv2d_495/biasconv2d_496/kernelconv2d_496/biasconv2d_497/kernelconv2d_497/biasdense_495/kerneldense_495/biasdense_496/kerneldense_496/biasdense_497/kerneldense_497/biastotalcounttotal_1count_1*
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
GPU2*0J 8? *,
f'R%
#__inference__traced_restore_1035712ۃ
??
?	
K__inference_sequential_165_layer_call_and_return_conditional_losses_1035306

inputsC
)conv2d_495_conv2d_readvariableop_resource: 8
*conv2d_495_biasadd_readvariableop_resource: C
)conv2d_496_conv2d_readvariableop_resource: @8
*conv2d_496_biasadd_readvariableop_resource:@D
)conv2d_497_conv2d_readvariableop_resource:@?9
*conv2d_497_biasadd_readvariableop_resource:	?;
(dense_495_matmul_readvariableop_resource:	?@7
)dense_495_biasadd_readvariableop_resource:@:
(dense_496_matmul_readvariableop_resource:@7
)dense_496_biasadd_readvariableop_resource::
(dense_497_matmul_readvariableop_resource:7
)dense_497_biasadd_readvariableop_resource:
identity??!conv2d_495/BiasAdd/ReadVariableOp? conv2d_495/Conv2D/ReadVariableOp?!conv2d_496/BiasAdd/ReadVariableOp? conv2d_496/Conv2D/ReadVariableOp?!conv2d_497/BiasAdd/ReadVariableOp? conv2d_497/Conv2D/ReadVariableOp? dense_495/BiasAdd/ReadVariableOp?dense_495/MatMul/ReadVariableOp? dense_496/BiasAdd/ReadVariableOp?dense_496/MatMul/ReadVariableOp? dense_497/BiasAdd/ReadVariableOp?dense_497/MatMul/ReadVariableOp?
 conv2d_495/Conv2D/ReadVariableOpReadVariableOp)conv2d_495_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_495/Conv2DConv2Dinputs(conv2d_495/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
?
!conv2d_495/BiasAdd/ReadVariableOpReadVariableOp*conv2d_495_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_495/BiasAddBiasAddconv2d_495/Conv2D:output:0)conv2d_495/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] n
conv2d_495/ReluReluconv2d_495/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] ?
max_pooling2d_495/MaxPoolMaxPoolconv2d_495/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
?
 conv2d_496/Conv2D/ReadVariableOpReadVariableOp)conv2d_496_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_496/Conv2DConv2D"max_pooling2d_495/MaxPool:output:0(conv2d_496/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
!conv2d_496/BiasAdd/ReadVariableOpReadVariableOp*conv2d_496_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_496/BiasAddBiasAddconv2d_496/Conv2D:output:0)conv2d_496/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@n
conv2d_496/ReluReluconv2d_496/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_496/MaxPoolMaxPoolconv2d_496/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
?
 conv2d_497/Conv2D/ReadVariableOpReadVariableOp)conv2d_497_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_497/Conv2DConv2D"max_pooling2d_496/MaxPool:output:0(conv2d_497/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
!conv2d_497/BiasAdd/ReadVariableOpReadVariableOp*conv2d_497_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_497/BiasAddBiasAddconv2d_497/Conv2D:output:0)conv2d_497/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????o
conv2d_497/ReluReluconv2d_497/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
max_pooling2d_497/MaxPoolMaxPoolconv2d_497/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
b
flatten_165/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_165/ReshapeReshape"max_pooling2d_497/MaxPool:output:0flatten_165/Const:output:0*
T0*(
_output_shapes
:???????????
dense_495/MatMul/ReadVariableOpReadVariableOp(dense_495_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_495/MatMulMatMulflatten_165/Reshape:output:0'dense_495/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
 dense_495/BiasAdd/ReadVariableOpReadVariableOp)dense_495_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_495/BiasAddBiasAdddense_495/MatMul:product:0(dense_495/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_495/TanhTanhdense_495/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@f
dropout_165/IdentityIdentitydense_495/Tanh:y:0*
T0*'
_output_shapes
:?????????@?
dense_496/MatMul/ReadVariableOpReadVariableOp(dense_496_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_496/MatMulMatMuldropout_165/Identity:output:0'dense_496/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_496/BiasAdd/ReadVariableOpReadVariableOp)dense_496_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_496/BiasAddBiasAdddense_496/MatMul:product:0(dense_496/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_496/TanhTanhdense_496/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_497/MatMul/ReadVariableOpReadVariableOp(dense_497_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_497/MatMulMatMuldense_496/Tanh:y:0'dense_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_497/BiasAdd/ReadVariableOpReadVariableOp)dense_497_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_497/BiasAddBiasAdddense_497/MatMul:product:0(dense_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_497/SigmoidSigmoiddense_497/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_497/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_495/BiasAdd/ReadVariableOp!^conv2d_495/Conv2D/ReadVariableOp"^conv2d_496/BiasAdd/ReadVariableOp!^conv2d_496/Conv2D/ReadVariableOp"^conv2d_497/BiasAdd/ReadVariableOp!^conv2d_497/Conv2D/ReadVariableOp!^dense_495/BiasAdd/ReadVariableOp ^dense_495/MatMul/ReadVariableOp!^dense_496/BiasAdd/ReadVariableOp ^dense_496/MatMul/ReadVariableOp!^dense_497/BiasAdd/ReadVariableOp ^dense_497/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_495/BiasAdd/ReadVariableOp!conv2d_495/BiasAdd/ReadVariableOp2D
 conv2d_495/Conv2D/ReadVariableOp conv2d_495/Conv2D/ReadVariableOp2F
!conv2d_496/BiasAdd/ReadVariableOp!conv2d_496/BiasAdd/ReadVariableOp2D
 conv2d_496/Conv2D/ReadVariableOp conv2d_496/Conv2D/ReadVariableOp2F
!conv2d_497/BiasAdd/ReadVariableOp!conv2d_497/BiasAdd/ReadVariableOp2D
 conv2d_497/Conv2D/ReadVariableOp conv2d_497/Conv2D/ReadVariableOp2D
 dense_495/BiasAdd/ReadVariableOp dense_495/BiasAdd/ReadVariableOp2B
dense_495/MatMul/ReadVariableOpdense_495/MatMul/ReadVariableOp2D
 dense_496/BiasAdd/ReadVariableOp dense_496/BiasAdd/ReadVariableOp2B
dense_496/MatMul/ReadVariableOpdense_496/MatMul/ReadVariableOp2D
 dense_497/BiasAdd/ReadVariableOp dense_497/BiasAdd/ReadVariableOp2B
dense_497/MatMul/ReadVariableOpdense_497/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
j
N__inference_max_pooling2d_497_layer_call_and_return_conditional_losses_1034761

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
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_conv2d_495_layer_call_and_return_conditional_losses_1035385

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
:?????????Z] *
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
:?????????Z] X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????Z] w
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
0__inference_sequential_165_layer_call_fn_1034857
conv2d_495_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_495_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *T
fORM
K__inference_sequential_165_layer_call_and_return_conditional_losses_1034830o
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
_user_specified_nameconv2d_495_input
?
O
3__inference_max_pooling2d_495_layer_call_fn_1035390

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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_495_layer_call_and_return_conditional_losses_1034660?
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
?
%__inference_signature_wrapper_1035196
conv2d_495_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_495_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_1034651o
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
_user_specified_nameconv2d_495_input
?
I
-__inference_dropout_165_layer_call_fn_1035521

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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_165_layer_call_and_return_conditional_losses_1034793`
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
?
?
+__inference_dense_496_layer_call_fn_1035552

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
GPU2*0J 8? *O
fJRH
F__inference_dense_496_layer_call_and_return_conditional_losses_1034806o
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
?
?
G__inference_conv2d_495_layer_call_and_return_conditional_losses_1034705

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
:?????????Z] *
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
:?????????Z] X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????Z] w
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
j
N__inference_max_pooling2d_495_layer_call_and_return_conditional_losses_1034660

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
?
G__inference_conv2d_497_layer_call_and_return_conditional_losses_1034751

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
:??????????*
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
:??????????Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?G
?	
K__inference_sequential_165_layer_call_and_return_conditional_losses_1035365

inputsC
)conv2d_495_conv2d_readvariableop_resource: 8
*conv2d_495_biasadd_readvariableop_resource: C
)conv2d_496_conv2d_readvariableop_resource: @8
*conv2d_496_biasadd_readvariableop_resource:@D
)conv2d_497_conv2d_readvariableop_resource:@?9
*conv2d_497_biasadd_readvariableop_resource:	?;
(dense_495_matmul_readvariableop_resource:	?@7
)dense_495_biasadd_readvariableop_resource:@:
(dense_496_matmul_readvariableop_resource:@7
)dense_496_biasadd_readvariableop_resource::
(dense_497_matmul_readvariableop_resource:7
)dense_497_biasadd_readvariableop_resource:
identity??!conv2d_495/BiasAdd/ReadVariableOp? conv2d_495/Conv2D/ReadVariableOp?!conv2d_496/BiasAdd/ReadVariableOp? conv2d_496/Conv2D/ReadVariableOp?!conv2d_497/BiasAdd/ReadVariableOp? conv2d_497/Conv2D/ReadVariableOp? dense_495/BiasAdd/ReadVariableOp?dense_495/MatMul/ReadVariableOp? dense_496/BiasAdd/ReadVariableOp?dense_496/MatMul/ReadVariableOp? dense_497/BiasAdd/ReadVariableOp?dense_497/MatMul/ReadVariableOp?
 conv2d_495/Conv2D/ReadVariableOpReadVariableOp)conv2d_495_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_495/Conv2DConv2Dinputs(conv2d_495/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
?
!conv2d_495/BiasAdd/ReadVariableOpReadVariableOp*conv2d_495_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_495/BiasAddBiasAddconv2d_495/Conv2D:output:0)conv2d_495/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] n
conv2d_495/ReluReluconv2d_495/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] ?
max_pooling2d_495/MaxPoolMaxPoolconv2d_495/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
?
 conv2d_496/Conv2D/ReadVariableOpReadVariableOp)conv2d_496_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_496/Conv2DConv2D"max_pooling2d_495/MaxPool:output:0(conv2d_496/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
!conv2d_496/BiasAdd/ReadVariableOpReadVariableOp*conv2d_496_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_496/BiasAddBiasAddconv2d_496/Conv2D:output:0)conv2d_496/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@n
conv2d_496/ReluReluconv2d_496/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_496/MaxPoolMaxPoolconv2d_496/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
?
 conv2d_497/Conv2D/ReadVariableOpReadVariableOp)conv2d_497_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_497/Conv2DConv2D"max_pooling2d_496/MaxPool:output:0(conv2d_497/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
!conv2d_497/BiasAdd/ReadVariableOpReadVariableOp*conv2d_497_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_497/BiasAddBiasAddconv2d_497/Conv2D:output:0)conv2d_497/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????o
conv2d_497/ReluReluconv2d_497/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
max_pooling2d_497/MaxPoolMaxPoolconv2d_497/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
b
flatten_165/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_165/ReshapeReshape"max_pooling2d_497/MaxPool:output:0flatten_165/Const:output:0*
T0*(
_output_shapes
:???????????
dense_495/MatMul/ReadVariableOpReadVariableOp(dense_495_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_495/MatMulMatMulflatten_165/Reshape:output:0'dense_495/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
 dense_495/BiasAdd/ReadVariableOpReadVariableOp)dense_495_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_495/BiasAddBiasAdddense_495/MatMul:product:0(dense_495/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_495/TanhTanhdense_495/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@^
dropout_165/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_165/dropout/MulMuldense_495/Tanh:y:0"dropout_165/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@[
dropout_165/dropout/ShapeShapedense_495/Tanh:y:0*
T0*
_output_shapes
:?
0dropout_165/dropout/random_uniform/RandomUniformRandomUniform"dropout_165/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0g
"dropout_165/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
 dropout_165/dropout/GreaterEqualGreaterEqual9dropout_165/dropout/random_uniform/RandomUniform:output:0+dropout_165/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@?
dropout_165/dropout/CastCast$dropout_165/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
dropout_165/dropout/Mul_1Muldropout_165/dropout/Mul:z:0dropout_165/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@?
dense_496/MatMul/ReadVariableOpReadVariableOp(dense_496_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_496/MatMulMatMuldropout_165/dropout/Mul_1:z:0'dense_496/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_496/BiasAdd/ReadVariableOpReadVariableOp)dense_496_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_496/BiasAddBiasAdddense_496/MatMul:product:0(dense_496/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_496/TanhTanhdense_496/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_497/MatMul/ReadVariableOpReadVariableOp(dense_497_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_497/MatMulMatMuldense_496/Tanh:y:0'dense_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_497/BiasAdd/ReadVariableOpReadVariableOp)dense_497_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_497/BiasAddBiasAdddense_497/MatMul:product:0(dense_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_497/SigmoidSigmoiddense_497/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_497/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_495/BiasAdd/ReadVariableOp!^conv2d_495/Conv2D/ReadVariableOp"^conv2d_496/BiasAdd/ReadVariableOp!^conv2d_496/Conv2D/ReadVariableOp"^conv2d_497/BiasAdd/ReadVariableOp!^conv2d_497/Conv2D/ReadVariableOp!^dense_495/BiasAdd/ReadVariableOp ^dense_495/MatMul/ReadVariableOp!^dense_496/BiasAdd/ReadVariableOp ^dense_496/MatMul/ReadVariableOp!^dense_497/BiasAdd/ReadVariableOp ^dense_497/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_495/BiasAdd/ReadVariableOp!conv2d_495/BiasAdd/ReadVariableOp2D
 conv2d_495/Conv2D/ReadVariableOp conv2d_495/Conv2D/ReadVariableOp2F
!conv2d_496/BiasAdd/ReadVariableOp!conv2d_496/BiasAdd/ReadVariableOp2D
 conv2d_496/Conv2D/ReadVariableOp conv2d_496/Conv2D/ReadVariableOp2F
!conv2d_497/BiasAdd/ReadVariableOp!conv2d_497/BiasAdd/ReadVariableOp2D
 conv2d_497/Conv2D/ReadVariableOp conv2d_497/Conv2D/ReadVariableOp2D
 dense_495/BiasAdd/ReadVariableOp dense_495/BiasAdd/ReadVariableOp2B
dense_495/MatMul/ReadVariableOpdense_495/MatMul/ReadVariableOp2D
 dense_496/BiasAdd/ReadVariableOp dense_496/BiasAdd/ReadVariableOp2B
dense_496/MatMul/ReadVariableOpdense_496/MatMul/ReadVariableOp2D
 dense_497/BiasAdd/ReadVariableOp dense_497/BiasAdd/ReadVariableOp2B
dense_497/MatMul/ReadVariableOpdense_497/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
O
3__inference_max_pooling2d_496_layer_call_fn_1035435

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
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_496_layer_call_and_return_conditional_losses_1034738h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
f
H__inference_dropout_165_layer_call_and_return_conditional_losses_1034793

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
j
N__inference_max_pooling2d_497_layer_call_and_return_conditional_losses_1035485

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
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_165_layer_call_fn_1035087
conv2d_495_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_495_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *T
fORM
K__inference_sequential_165_layer_call_and_return_conditional_losses_1035031o
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
_user_specified_nameconv2d_495_input
?

?
F__inference_dense_497_layer_call_and_return_conditional_losses_1034823

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
?
j
N__inference_max_pooling2d_495_layer_call_and_return_conditional_losses_1035400

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
?
G__inference_conv2d_497_layer_call_and_return_conditional_losses_1035465

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
:??????????*
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
:??????????Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
O
3__inference_max_pooling2d_495_layer_call_fn_1035395

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
:?????????-. * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_495_layer_call_and_return_conditional_losses_1034715h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????-. "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????Z] :W S
/
_output_shapes
:?????????Z] 
 
_user_specified_nameinputs
?
?
0__inference_sequential_165_layer_call_fn_1035225

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
GPU2*0J 8? *T
fORM
K__inference_sequential_165_layer_call_and_return_conditional_losses_1034830o
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
?
O
3__inference_max_pooling2d_497_layer_call_fn_1035475

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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_497_layer_call_and_return_conditional_losses_1034761i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
F__inference_dense_495_layer_call_and_return_conditional_losses_1034782

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
?
d
H__inference_flatten_165_layer_call_and_return_conditional_losses_1034769

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
?A
?	
#__inference__traced_restore_1035712
file_prefix<
"assignvariableop_conv2d_495_kernel: 0
"assignvariableop_1_conv2d_495_bias: >
$assignvariableop_2_conv2d_496_kernel: @0
"assignvariableop_3_conv2d_496_bias:@?
$assignvariableop_4_conv2d_497_kernel:@?1
"assignvariableop_5_conv2d_497_bias:	?6
#assignvariableop_6_dense_495_kernel:	?@/
!assignvariableop_7_dense_495_bias:@5
#assignvariableop_8_dense_496_kernel:@/
!assignvariableop_9_dense_496_bias:6
$assignvariableop_10_dense_497_kernel:0
"assignvariableop_11_dense_497_bias:#
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_495_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_495_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_496_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_496_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_497_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_497_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_495_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_495_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_496_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_496_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_497_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_497_biasIdentity_11:output:0"/device:CPU:0*
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
?
O
3__inference_max_pooling2d_496_layer_call_fn_1035430

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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_496_layer_call_and_return_conditional_losses_1034672?
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
?
I
-__inference_flatten_165_layer_call_fn_1035490

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
GPU2*0J 8? *Q
fLRJ
H__inference_flatten_165_layer_call_and_return_conditional_losses_1034769a
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
?
?
,__inference_conv2d_495_layer_call_fn_1035374

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
:?????????Z] *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_495_layer_call_and_return_conditional_losses_1034705w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????Z] `
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
?
f
H__inference_dropout_165_layer_call_and_return_conditional_losses_1035531

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
d
H__inference_flatten_165_layer_call_and_return_conditional_losses_1035496

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
F__inference_dense_497_layer_call_and_return_conditional_losses_1035583

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
?
?
+__inference_dense_495_layer_call_fn_1035505

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
GPU2*0J 8? *O
fJRH
F__inference_dense_495_layer_call_and_return_conditional_losses_1034782o
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
j
N__inference_max_pooling2d_497_layer_call_and_return_conditional_losses_1034684

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
F__inference_dense_496_layer_call_and_return_conditional_losses_1034806

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
?(
?
 __inference__traced_save_1035654
file_prefix0
,savev2_conv2d_495_kernel_read_readvariableop.
*savev2_conv2d_495_bias_read_readvariableop0
,savev2_conv2d_496_kernel_read_readvariableop.
*savev2_conv2d_496_bias_read_readvariableop0
,savev2_conv2d_497_kernel_read_readvariableop.
*savev2_conv2d_497_bias_read_readvariableop/
+savev2_dense_495_kernel_read_readvariableop-
)savev2_dense_495_bias_read_readvariableop/
+savev2_dense_496_kernel_read_readvariableop-
)savev2_dense_496_bias_read_readvariableop/
+savev2_dense_497_kernel_read_readvariableop-
)savev2_dense_497_bias_read_readvariableop$
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_495_kernel_read_readvariableop*savev2_conv2d_495_bias_read_readvariableop,savev2_conv2d_496_kernel_read_readvariableop*savev2_conv2d_496_bias_read_readvariableop,savev2_conv2d_497_kernel_read_readvariableop*savev2_conv2d_497_bias_read_readvariableop+savev2_dense_495_kernel_read_readvariableop)savev2_dense_495_bias_read_readvariableop+savev2_dense_496_kernel_read_readvariableop)savev2_dense_496_bias_read_readvariableop+savev2_dense_497_kernel_read_readvariableop)savev2_dense_497_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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
?0
?
K__inference_sequential_165_layer_call_and_return_conditional_losses_1035126
conv2d_495_input,
conv2d_495_1035090:  
conv2d_495_1035092: ,
conv2d_496_1035096: @ 
conv2d_496_1035098:@-
conv2d_497_1035102:@?!
conv2d_497_1035104:	?$
dense_495_1035109:	?@
dense_495_1035111:@#
dense_496_1035115:@
dense_496_1035117:#
dense_497_1035120:
dense_497_1035122:
identity??"conv2d_495/StatefulPartitionedCall?"conv2d_496/StatefulPartitionedCall?"conv2d_497/StatefulPartitionedCall?!dense_495/StatefulPartitionedCall?!dense_496/StatefulPartitionedCall?!dense_497/StatefulPartitionedCall?
"conv2d_495/StatefulPartitionedCallStatefulPartitionedCallconv2d_495_inputconv2d_495_1035090conv2d_495_1035092*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Z] *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_495_layer_call_and_return_conditional_losses_1034705?
!max_pooling2d_495/PartitionedCallPartitionedCall+conv2d_495/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-. * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_495_layer_call_and_return_conditional_losses_1034715?
"conv2d_496/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_495/PartitionedCall:output:0conv2d_496_1035096conv2d_496_1035098*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_496_layer_call_and_return_conditional_losses_1034728?
!max_pooling2d_496/PartitionedCallPartitionedCall+conv2d_496/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_496_layer_call_and_return_conditional_losses_1034738?
"conv2d_497/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_496/PartitionedCall:output:0conv2d_497_1035102conv2d_497_1035104*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_497_layer_call_and_return_conditional_losses_1034751?
!max_pooling2d_497/PartitionedCallPartitionedCall+conv2d_497/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_497_layer_call_and_return_conditional_losses_1034761?
flatten_165/PartitionedCallPartitionedCall*max_pooling2d_497/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_flatten_165_layer_call_and_return_conditional_losses_1034769?
!dense_495/StatefulPartitionedCallStatefulPartitionedCall$flatten_165/PartitionedCall:output:0dense_495_1035109dense_495_1035111*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_495_layer_call_and_return_conditional_losses_1034782?
dropout_165/PartitionedCallPartitionedCall*dense_495/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_165_layer_call_and_return_conditional_losses_1034793?
!dense_496/StatefulPartitionedCallStatefulPartitionedCall$dropout_165/PartitionedCall:output:0dense_496_1035115dense_496_1035117*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_496_layer_call_and_return_conditional_losses_1034806?
!dense_497/StatefulPartitionedCallStatefulPartitionedCall*dense_496/StatefulPartitionedCall:output:0dense_497_1035120dense_497_1035122*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_497_layer_call_and_return_conditional_losses_1034823y
IdentityIdentity*dense_497/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_495/StatefulPartitionedCall#^conv2d_496/StatefulPartitionedCall#^conv2d_497/StatefulPartitionedCall"^dense_495/StatefulPartitionedCall"^dense_496/StatefulPartitionedCall"^dense_497/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_495/StatefulPartitionedCall"conv2d_495/StatefulPartitionedCall2H
"conv2d_496/StatefulPartitionedCall"conv2d_496/StatefulPartitionedCall2H
"conv2d_497/StatefulPartitionedCall"conv2d_497/StatefulPartitionedCall2F
!dense_495/StatefulPartitionedCall!dense_495/StatefulPartitionedCall2F
!dense_496/StatefulPartitionedCall!dense_496/StatefulPartitionedCall2F
!dense_497/StatefulPartitionedCall!dense_497/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_495_input
?	
g
H__inference_dropout_165_layer_call_and_return_conditional_losses_1035543

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
?
j
N__inference_max_pooling2d_496_layer_call_and_return_conditional_losses_1034738

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
+__inference_dense_497_layer_call_fn_1035572

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
GPU2*0J 8? *O
fJRH
F__inference_dense_497_layer_call_and_return_conditional_losses_1034823o
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
?
?
,__inference_conv2d_496_layer_call_fn_1035414

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
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_496_layer_call_and_return_conditional_losses_1034728w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????-. : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????-. 
 
_user_specified_nameinputs
?2
?
K__inference_sequential_165_layer_call_and_return_conditional_losses_1035031

inputs,
conv2d_495_1034995:  
conv2d_495_1034997: ,
conv2d_496_1035001: @ 
conv2d_496_1035003:@-
conv2d_497_1035007:@?!
conv2d_497_1035009:	?$
dense_495_1035014:	?@
dense_495_1035016:@#
dense_496_1035020:@
dense_496_1035022:#
dense_497_1035025:
dense_497_1035027:
identity??"conv2d_495/StatefulPartitionedCall?"conv2d_496/StatefulPartitionedCall?"conv2d_497/StatefulPartitionedCall?!dense_495/StatefulPartitionedCall?!dense_496/StatefulPartitionedCall?!dense_497/StatefulPartitionedCall?#dropout_165/StatefulPartitionedCall?
"conv2d_495/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_495_1034995conv2d_495_1034997*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Z] *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_495_layer_call_and_return_conditional_losses_1034705?
!max_pooling2d_495/PartitionedCallPartitionedCall+conv2d_495/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-. * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_495_layer_call_and_return_conditional_losses_1034715?
"conv2d_496/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_495/PartitionedCall:output:0conv2d_496_1035001conv2d_496_1035003*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_496_layer_call_and_return_conditional_losses_1034728?
!max_pooling2d_496/PartitionedCallPartitionedCall+conv2d_496/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_496_layer_call_and_return_conditional_losses_1034738?
"conv2d_497/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_496/PartitionedCall:output:0conv2d_497_1035007conv2d_497_1035009*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_497_layer_call_and_return_conditional_losses_1034751?
!max_pooling2d_497/PartitionedCallPartitionedCall+conv2d_497/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_497_layer_call_and_return_conditional_losses_1034761?
flatten_165/PartitionedCallPartitionedCall*max_pooling2d_497/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_flatten_165_layer_call_and_return_conditional_losses_1034769?
!dense_495/StatefulPartitionedCallStatefulPartitionedCall$flatten_165/PartitionedCall:output:0dense_495_1035014dense_495_1035016*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_495_layer_call_and_return_conditional_losses_1034782?
#dropout_165/StatefulPartitionedCallStatefulPartitionedCall*dense_495/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_165_layer_call_and_return_conditional_losses_1034897?
!dense_496/StatefulPartitionedCallStatefulPartitionedCall,dropout_165/StatefulPartitionedCall:output:0dense_496_1035020dense_496_1035022*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_496_layer_call_and_return_conditional_losses_1034806?
!dense_497/StatefulPartitionedCallStatefulPartitionedCall*dense_496/StatefulPartitionedCall:output:0dense_497_1035025dense_497_1035027*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_497_layer_call_and_return_conditional_losses_1034823y
IdentityIdentity*dense_497/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_495/StatefulPartitionedCall#^conv2d_496/StatefulPartitionedCall#^conv2d_497/StatefulPartitionedCall"^dense_495/StatefulPartitionedCall"^dense_496/StatefulPartitionedCall"^dense_497/StatefulPartitionedCall$^dropout_165/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_495/StatefulPartitionedCall"conv2d_495/StatefulPartitionedCall2H
"conv2d_496/StatefulPartitionedCall"conv2d_496/StatefulPartitionedCall2H
"conv2d_497/StatefulPartitionedCall"conv2d_497/StatefulPartitionedCall2F
!dense_495/StatefulPartitionedCall!dense_495/StatefulPartitionedCall2F
!dense_496/StatefulPartitionedCall!dense_496/StatefulPartitionedCall2F
!dense_497/StatefulPartitionedCall!dense_497/StatefulPartitionedCall2J
#dropout_165/StatefulPartitionedCall#dropout_165/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?0
?
K__inference_sequential_165_layer_call_and_return_conditional_losses_1034830

inputs,
conv2d_495_1034706:  
conv2d_495_1034708: ,
conv2d_496_1034729: @ 
conv2d_496_1034731:@-
conv2d_497_1034752:@?!
conv2d_497_1034754:	?$
dense_495_1034783:	?@
dense_495_1034785:@#
dense_496_1034807:@
dense_496_1034809:#
dense_497_1034824:
dense_497_1034826:
identity??"conv2d_495/StatefulPartitionedCall?"conv2d_496/StatefulPartitionedCall?"conv2d_497/StatefulPartitionedCall?!dense_495/StatefulPartitionedCall?!dense_496/StatefulPartitionedCall?!dense_497/StatefulPartitionedCall?
"conv2d_495/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_495_1034706conv2d_495_1034708*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Z] *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_495_layer_call_and_return_conditional_losses_1034705?
!max_pooling2d_495/PartitionedCallPartitionedCall+conv2d_495/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-. * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_495_layer_call_and_return_conditional_losses_1034715?
"conv2d_496/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_495/PartitionedCall:output:0conv2d_496_1034729conv2d_496_1034731*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_496_layer_call_and_return_conditional_losses_1034728?
!max_pooling2d_496/PartitionedCallPartitionedCall+conv2d_496/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_496_layer_call_and_return_conditional_losses_1034738?
"conv2d_497/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_496/PartitionedCall:output:0conv2d_497_1034752conv2d_497_1034754*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_497_layer_call_and_return_conditional_losses_1034751?
!max_pooling2d_497/PartitionedCallPartitionedCall+conv2d_497/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_497_layer_call_and_return_conditional_losses_1034761?
flatten_165/PartitionedCallPartitionedCall*max_pooling2d_497/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_flatten_165_layer_call_and_return_conditional_losses_1034769?
!dense_495/StatefulPartitionedCallStatefulPartitionedCall$flatten_165/PartitionedCall:output:0dense_495_1034783dense_495_1034785*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_495_layer_call_and_return_conditional_losses_1034782?
dropout_165/PartitionedCallPartitionedCall*dense_495/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_165_layer_call_and_return_conditional_losses_1034793?
!dense_496/StatefulPartitionedCallStatefulPartitionedCall$dropout_165/PartitionedCall:output:0dense_496_1034807dense_496_1034809*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_496_layer_call_and_return_conditional_losses_1034806?
!dense_497/StatefulPartitionedCallStatefulPartitionedCall*dense_496/StatefulPartitionedCall:output:0dense_497_1034824dense_497_1034826*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_497_layer_call_and_return_conditional_losses_1034823y
IdentityIdentity*dense_497/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_495/StatefulPartitionedCall#^conv2d_496/StatefulPartitionedCall#^conv2d_497/StatefulPartitionedCall"^dense_495/StatefulPartitionedCall"^dense_496/StatefulPartitionedCall"^dense_497/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_495/StatefulPartitionedCall"conv2d_495/StatefulPartitionedCall2H
"conv2d_496/StatefulPartitionedCall"conv2d_496/StatefulPartitionedCall2H
"conv2d_497/StatefulPartitionedCall"conv2d_497/StatefulPartitionedCall2F
!dense_495/StatefulPartitionedCall!dense_495/StatefulPartitionedCall2F
!dense_496/StatefulPartitionedCall!dense_496/StatefulPartitionedCall2F
!dense_497/StatefulPartitionedCall!dense_497/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
j
N__inference_max_pooling2d_495_layer_call_and_return_conditional_losses_1035405

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????-. "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????Z] :W S
/
_output_shapes
:?????????Z] 
 
_user_specified_nameinputs
?
?
G__inference_conv2d_496_layer_call_and_return_conditional_losses_1035425

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
:?????????@*
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
:?????????@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????-. : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????-. 
 
_user_specified_nameinputs
?
?
,__inference_conv2d_497_layer_call_fn_1035454

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
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_497_layer_call_and_return_conditional_losses_1034751x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
j
N__inference_max_pooling2d_496_layer_call_and_return_conditional_losses_1035440

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
j
N__inference_max_pooling2d_496_layer_call_and_return_conditional_losses_1034672

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
?
O
3__inference_max_pooling2d_497_layer_call_fn_1035470

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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_497_layer_call_and_return_conditional_losses_1034684?
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
?
j
N__inference_max_pooling2d_495_layer_call_and_return_conditional_losses_1034715

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????-. "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????Z] :W S
/
_output_shapes
:?????????Z] 
 
_user_specified_nameinputs
?

?
F__inference_dense_495_layer_call_and_return_conditional_losses_1035516

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
?P
?
"__inference__wrapped_model_1034651
conv2d_495_inputR
8sequential_165_conv2d_495_conv2d_readvariableop_resource: G
9sequential_165_conv2d_495_biasadd_readvariableop_resource: R
8sequential_165_conv2d_496_conv2d_readvariableop_resource: @G
9sequential_165_conv2d_496_biasadd_readvariableop_resource:@S
8sequential_165_conv2d_497_conv2d_readvariableop_resource:@?H
9sequential_165_conv2d_497_biasadd_readvariableop_resource:	?J
7sequential_165_dense_495_matmul_readvariableop_resource:	?@F
8sequential_165_dense_495_biasadd_readvariableop_resource:@I
7sequential_165_dense_496_matmul_readvariableop_resource:@F
8sequential_165_dense_496_biasadd_readvariableop_resource:I
7sequential_165_dense_497_matmul_readvariableop_resource:F
8sequential_165_dense_497_biasadd_readvariableop_resource:
identity??0sequential_165/conv2d_495/BiasAdd/ReadVariableOp?/sequential_165/conv2d_495/Conv2D/ReadVariableOp?0sequential_165/conv2d_496/BiasAdd/ReadVariableOp?/sequential_165/conv2d_496/Conv2D/ReadVariableOp?0sequential_165/conv2d_497/BiasAdd/ReadVariableOp?/sequential_165/conv2d_497/Conv2D/ReadVariableOp?/sequential_165/dense_495/BiasAdd/ReadVariableOp?.sequential_165/dense_495/MatMul/ReadVariableOp?/sequential_165/dense_496/BiasAdd/ReadVariableOp?.sequential_165/dense_496/MatMul/ReadVariableOp?/sequential_165/dense_497/BiasAdd/ReadVariableOp?.sequential_165/dense_497/MatMul/ReadVariableOp?
/sequential_165/conv2d_495/Conv2D/ReadVariableOpReadVariableOp8sequential_165_conv2d_495_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
 sequential_165/conv2d_495/Conv2DConv2Dconv2d_495_input7sequential_165/conv2d_495/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
?
0sequential_165/conv2d_495/BiasAdd/ReadVariableOpReadVariableOp9sequential_165_conv2d_495_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
!sequential_165/conv2d_495/BiasAddBiasAdd)sequential_165/conv2d_495/Conv2D:output:08sequential_165/conv2d_495/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] ?
sequential_165/conv2d_495/ReluRelu*sequential_165/conv2d_495/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] ?
(sequential_165/max_pooling2d_495/MaxPoolMaxPool,sequential_165/conv2d_495/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
?
/sequential_165/conv2d_496/Conv2D/ReadVariableOpReadVariableOp8sequential_165_conv2d_496_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
 sequential_165/conv2d_496/Conv2DConv2D1sequential_165/max_pooling2d_495/MaxPool:output:07sequential_165/conv2d_496/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
0sequential_165/conv2d_496/BiasAdd/ReadVariableOpReadVariableOp9sequential_165_conv2d_496_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
!sequential_165/conv2d_496/BiasAddBiasAdd)sequential_165/conv2d_496/Conv2D:output:08sequential_165/conv2d_496/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
sequential_165/conv2d_496/ReluRelu*sequential_165/conv2d_496/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
(sequential_165/max_pooling2d_496/MaxPoolMaxPool,sequential_165/conv2d_496/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
?
/sequential_165/conv2d_497/Conv2D/ReadVariableOpReadVariableOp8sequential_165_conv2d_497_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
 sequential_165/conv2d_497/Conv2DConv2D1sequential_165/max_pooling2d_496/MaxPool:output:07sequential_165/conv2d_497/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
0sequential_165/conv2d_497/BiasAdd/ReadVariableOpReadVariableOp9sequential_165_conv2d_497_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!sequential_165/conv2d_497/BiasAddBiasAdd)sequential_165/conv2d_497/Conv2D:output:08sequential_165/conv2d_497/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
sequential_165/conv2d_497/ReluRelu*sequential_165/conv2d_497/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
(sequential_165/max_pooling2d_497/MaxPoolMaxPool,sequential_165/conv2d_497/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
q
 sequential_165/flatten_165/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"sequential_165/flatten_165/ReshapeReshape1sequential_165/max_pooling2d_497/MaxPool:output:0)sequential_165/flatten_165/Const:output:0*
T0*(
_output_shapes
:???????????
.sequential_165/dense_495/MatMul/ReadVariableOpReadVariableOp7sequential_165_dense_495_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
sequential_165/dense_495/MatMulMatMul+sequential_165/flatten_165/Reshape:output:06sequential_165/dense_495/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
/sequential_165/dense_495/BiasAdd/ReadVariableOpReadVariableOp8sequential_165_dense_495_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
 sequential_165/dense_495/BiasAddBiasAdd)sequential_165/dense_495/MatMul:product:07sequential_165/dense_495/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
sequential_165/dense_495/TanhTanh)sequential_165/dense_495/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
#sequential_165/dropout_165/IdentityIdentity!sequential_165/dense_495/Tanh:y:0*
T0*'
_output_shapes
:?????????@?
.sequential_165/dense_496/MatMul/ReadVariableOpReadVariableOp7sequential_165_dense_496_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
sequential_165/dense_496/MatMulMatMul,sequential_165/dropout_165/Identity:output:06sequential_165/dense_496/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_165/dense_496/BiasAdd/ReadVariableOpReadVariableOp8sequential_165_dense_496_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_165/dense_496/BiasAddBiasAdd)sequential_165/dense_496/MatMul:product:07sequential_165/dense_496/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_165/dense_496/TanhTanh)sequential_165/dense_496/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
.sequential_165/dense_497/MatMul/ReadVariableOpReadVariableOp7sequential_165_dense_497_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_165/dense_497/MatMulMatMul!sequential_165/dense_496/Tanh:y:06sequential_165/dense_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_165/dense_497/BiasAdd/ReadVariableOpReadVariableOp8sequential_165_dense_497_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_165/dense_497/BiasAddBiasAdd)sequential_165/dense_497/MatMul:product:07sequential_165/dense_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 sequential_165/dense_497/SigmoidSigmoid)sequential_165/dense_497/BiasAdd:output:0*
T0*'
_output_shapes
:?????????s
IdentityIdentity$sequential_165/dense_497/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp1^sequential_165/conv2d_495/BiasAdd/ReadVariableOp0^sequential_165/conv2d_495/Conv2D/ReadVariableOp1^sequential_165/conv2d_496/BiasAdd/ReadVariableOp0^sequential_165/conv2d_496/Conv2D/ReadVariableOp1^sequential_165/conv2d_497/BiasAdd/ReadVariableOp0^sequential_165/conv2d_497/Conv2D/ReadVariableOp0^sequential_165/dense_495/BiasAdd/ReadVariableOp/^sequential_165/dense_495/MatMul/ReadVariableOp0^sequential_165/dense_496/BiasAdd/ReadVariableOp/^sequential_165/dense_496/MatMul/ReadVariableOp0^sequential_165/dense_497/BiasAdd/ReadVariableOp/^sequential_165/dense_497/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2d
0sequential_165/conv2d_495/BiasAdd/ReadVariableOp0sequential_165/conv2d_495/BiasAdd/ReadVariableOp2b
/sequential_165/conv2d_495/Conv2D/ReadVariableOp/sequential_165/conv2d_495/Conv2D/ReadVariableOp2d
0sequential_165/conv2d_496/BiasAdd/ReadVariableOp0sequential_165/conv2d_496/BiasAdd/ReadVariableOp2b
/sequential_165/conv2d_496/Conv2D/ReadVariableOp/sequential_165/conv2d_496/Conv2D/ReadVariableOp2d
0sequential_165/conv2d_497/BiasAdd/ReadVariableOp0sequential_165/conv2d_497/BiasAdd/ReadVariableOp2b
/sequential_165/conv2d_497/Conv2D/ReadVariableOp/sequential_165/conv2d_497/Conv2D/ReadVariableOp2b
/sequential_165/dense_495/BiasAdd/ReadVariableOp/sequential_165/dense_495/BiasAdd/ReadVariableOp2`
.sequential_165/dense_495/MatMul/ReadVariableOp.sequential_165/dense_495/MatMul/ReadVariableOp2b
/sequential_165/dense_496/BiasAdd/ReadVariableOp/sequential_165/dense_496/BiasAdd/ReadVariableOp2`
.sequential_165/dense_496/MatMul/ReadVariableOp.sequential_165/dense_496/MatMul/ReadVariableOp2b
/sequential_165/dense_497/BiasAdd/ReadVariableOp/sequential_165/dense_497/BiasAdd/ReadVariableOp2`
.sequential_165/dense_497/MatMul/ReadVariableOp.sequential_165/dense_497/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_495_input
?
j
N__inference_max_pooling2d_496_layer_call_and_return_conditional_losses_1035445

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
j
N__inference_max_pooling2d_497_layer_call_and_return_conditional_losses_1035480

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
?
0__inference_sequential_165_layer_call_fn_1035254

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
GPU2*0J 8? *T
fORM
K__inference_sequential_165_layer_call_and_return_conditional_losses_1035031o
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
?2
?
K__inference_sequential_165_layer_call_and_return_conditional_losses_1035165
conv2d_495_input,
conv2d_495_1035129:  
conv2d_495_1035131: ,
conv2d_496_1035135: @ 
conv2d_496_1035137:@-
conv2d_497_1035141:@?!
conv2d_497_1035143:	?$
dense_495_1035148:	?@
dense_495_1035150:@#
dense_496_1035154:@
dense_496_1035156:#
dense_497_1035159:
dense_497_1035161:
identity??"conv2d_495/StatefulPartitionedCall?"conv2d_496/StatefulPartitionedCall?"conv2d_497/StatefulPartitionedCall?!dense_495/StatefulPartitionedCall?!dense_496/StatefulPartitionedCall?!dense_497/StatefulPartitionedCall?#dropout_165/StatefulPartitionedCall?
"conv2d_495/StatefulPartitionedCallStatefulPartitionedCallconv2d_495_inputconv2d_495_1035129conv2d_495_1035131*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Z] *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_495_layer_call_and_return_conditional_losses_1034705?
!max_pooling2d_495/PartitionedCallPartitionedCall+conv2d_495/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-. * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_495_layer_call_and_return_conditional_losses_1034715?
"conv2d_496/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_495/PartitionedCall:output:0conv2d_496_1035135conv2d_496_1035137*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_496_layer_call_and_return_conditional_losses_1034728?
!max_pooling2d_496/PartitionedCallPartitionedCall+conv2d_496/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_496_layer_call_and_return_conditional_losses_1034738?
"conv2d_497/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_496/PartitionedCall:output:0conv2d_497_1035141conv2d_497_1035143*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv2d_497_layer_call_and_return_conditional_losses_1034751?
!max_pooling2d_497/PartitionedCallPartitionedCall+conv2d_497/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_497_layer_call_and_return_conditional_losses_1034761?
flatten_165/PartitionedCallPartitionedCall*max_pooling2d_497/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_flatten_165_layer_call_and_return_conditional_losses_1034769?
!dense_495/StatefulPartitionedCallStatefulPartitionedCall$flatten_165/PartitionedCall:output:0dense_495_1035148dense_495_1035150*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_495_layer_call_and_return_conditional_losses_1034782?
#dropout_165/StatefulPartitionedCallStatefulPartitionedCall*dense_495/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_165_layer_call_and_return_conditional_losses_1034897?
!dense_496/StatefulPartitionedCallStatefulPartitionedCall,dropout_165/StatefulPartitionedCall:output:0dense_496_1035154dense_496_1035156*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_496_layer_call_and_return_conditional_losses_1034806?
!dense_497/StatefulPartitionedCallStatefulPartitionedCall*dense_496/StatefulPartitionedCall:output:0dense_497_1035159dense_497_1035161*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_497_layer_call_and_return_conditional_losses_1034823y
IdentityIdentity*dense_497/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_495/StatefulPartitionedCall#^conv2d_496/StatefulPartitionedCall#^conv2d_497/StatefulPartitionedCall"^dense_495/StatefulPartitionedCall"^dense_496/StatefulPartitionedCall"^dense_497/StatefulPartitionedCall$^dropout_165/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_495/StatefulPartitionedCall"conv2d_495/StatefulPartitionedCall2H
"conv2d_496/StatefulPartitionedCall"conv2d_496/StatefulPartitionedCall2H
"conv2d_497/StatefulPartitionedCall"conv2d_497/StatefulPartitionedCall2F
!dense_495/StatefulPartitionedCall!dense_495/StatefulPartitionedCall2F
!dense_496/StatefulPartitionedCall!dense_496/StatefulPartitionedCall2F
!dense_497/StatefulPartitionedCall!dense_497/StatefulPartitionedCall2J
#dropout_165/StatefulPartitionedCall#dropout_165/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_495_input
?
?
G__inference_conv2d_496_layer_call_and_return_conditional_losses_1034728

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
:?????????@*
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
:?????????@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????-. : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????-. 
 
_user_specified_nameinputs
?

?
F__inference_dense_496_layer_call_and_return_conditional_losses_1035563

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
?
f
-__inference_dropout_165_layer_call_fn_1035526

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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_165_layer_call_and_return_conditional_losses_1034897o
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
?	
g
H__inference_dropout_165_layer_call_and_return_conditional_losses_1034897

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
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
W
conv2d_495_inputC
"serving_default_conv2d_495_input:0???????????=
	dense_4970
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
+:) 2conv2d_495/kernel
: 2conv2d_495/bias
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
+:) @2conv2d_496/kernel
:@2conv2d_496/bias
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
,:*@?2conv2d_497/kernel
:?2conv2d_497/bias
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
#:!	?@2dense_495/kernel
:@2dense_495/bias
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
": @2dense_496/kernel
:2dense_496/bias
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
": 2dense_497/kernel
:2dense_497/bias
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
?2?
0__inference_sequential_165_layer_call_fn_1034857
0__inference_sequential_165_layer_call_fn_1035225
0__inference_sequential_165_layer_call_fn_1035254
0__inference_sequential_165_layer_call_fn_1035087?
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
K__inference_sequential_165_layer_call_and_return_conditional_losses_1035306
K__inference_sequential_165_layer_call_and_return_conditional_losses_1035365
K__inference_sequential_165_layer_call_and_return_conditional_losses_1035126
K__inference_sequential_165_layer_call_and_return_conditional_losses_1035165?
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
"__inference__wrapped_model_1034651conv2d_495_input"?
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
,__inference_conv2d_495_layer_call_fn_1035374?
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
G__inference_conv2d_495_layer_call_and_return_conditional_losses_1035385?
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
3__inference_max_pooling2d_495_layer_call_fn_1035390
3__inference_max_pooling2d_495_layer_call_fn_1035395?
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
N__inference_max_pooling2d_495_layer_call_and_return_conditional_losses_1035400
N__inference_max_pooling2d_495_layer_call_and_return_conditional_losses_1035405?
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
,__inference_conv2d_496_layer_call_fn_1035414?
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
G__inference_conv2d_496_layer_call_and_return_conditional_losses_1035425?
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
3__inference_max_pooling2d_496_layer_call_fn_1035430
3__inference_max_pooling2d_496_layer_call_fn_1035435?
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
N__inference_max_pooling2d_496_layer_call_and_return_conditional_losses_1035440
N__inference_max_pooling2d_496_layer_call_and_return_conditional_losses_1035445?
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
,__inference_conv2d_497_layer_call_fn_1035454?
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
G__inference_conv2d_497_layer_call_and_return_conditional_losses_1035465?
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
3__inference_max_pooling2d_497_layer_call_fn_1035470
3__inference_max_pooling2d_497_layer_call_fn_1035475?
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
N__inference_max_pooling2d_497_layer_call_and_return_conditional_losses_1035480
N__inference_max_pooling2d_497_layer_call_and_return_conditional_losses_1035485?
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
-__inference_flatten_165_layer_call_fn_1035490?
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
H__inference_flatten_165_layer_call_and_return_conditional_losses_1035496?
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
+__inference_dense_495_layer_call_fn_1035505?
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
F__inference_dense_495_layer_call_and_return_conditional_losses_1035516?
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
-__inference_dropout_165_layer_call_fn_1035521
-__inference_dropout_165_layer_call_fn_1035526?
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
H__inference_dropout_165_layer_call_and_return_conditional_losses_1035531
H__inference_dropout_165_layer_call_and_return_conditional_losses_1035543?
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
+__inference_dense_496_layer_call_fn_1035552?
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
F__inference_dense_496_layer_call_and_return_conditional_losses_1035563?
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
+__inference_dense_497_layer_call_fn_1035572?
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
F__inference_dense_497_layer_call_and_return_conditional_losses_1035583?
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
%__inference_signature_wrapper_1035196conv2d_495_input"?
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
"__inference__wrapped_model_1034651? +,<=HIOPC?@
9?6
4?1
conv2d_495_input???????????
? "5?2
0
	dense_497#? 
	dense_497??????????
G__inference_conv2d_495_layer_call_and_return_conditional_losses_1035385n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????Z] 
? ?
,__inference_conv2d_495_layer_call_fn_1035374a9?6
/?,
*?'
inputs???????????
? " ??????????Z] ?
G__inference_conv2d_496_layer_call_and_return_conditional_losses_1035425l 7?4
-?*
(?%
inputs?????????-. 
? "-?*
#? 
0?????????@
? ?
,__inference_conv2d_496_layer_call_fn_1035414_ 7?4
-?*
(?%
inputs?????????-. 
? " ??????????@?
G__inference_conv2d_497_layer_call_and_return_conditional_losses_1035465m+,7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_497_layer_call_fn_1035454`+,7?4
-?*
(?%
inputs?????????@
? "!????????????
F__inference_dense_495_layer_call_and_return_conditional_losses_1035516]<=0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? 
+__inference_dense_495_layer_call_fn_1035505P<=0?-
&?#
!?
inputs??????????
? "??????????@?
F__inference_dense_496_layer_call_and_return_conditional_losses_1035563\HI/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? ~
+__inference_dense_496_layer_call_fn_1035552OHI/?,
%?"
 ?
inputs?????????@
? "???????????
F__inference_dense_497_layer_call_and_return_conditional_losses_1035583\OP/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
+__inference_dense_497_layer_call_fn_1035572OOP/?,
%?"
 ?
inputs?????????
? "???????????
H__inference_dropout_165_layer_call_and_return_conditional_losses_1035531\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
H__inference_dropout_165_layer_call_and_return_conditional_losses_1035543\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
-__inference_dropout_165_layer_call_fn_1035521O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
-__inference_dropout_165_layer_call_fn_1035526O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
H__inference_flatten_165_layer_call_and_return_conditional_losses_1035496b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????
? ?
-__inference_flatten_165_layer_call_fn_1035490U8?5
.?+
)?&
inputs??????????
? "????????????
N__inference_max_pooling2d_495_layer_call_and_return_conditional_losses_1035400?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_495_layer_call_and_return_conditional_losses_1035405h7?4
-?*
(?%
inputs?????????Z] 
? "-?*
#? 
0?????????-. 
? ?
3__inference_max_pooling2d_495_layer_call_fn_1035390?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_495_layer_call_fn_1035395[7?4
-?*
(?%
inputs?????????Z] 
? " ??????????-. ?
N__inference_max_pooling2d_496_layer_call_and_return_conditional_losses_1035440?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_496_layer_call_and_return_conditional_losses_1035445h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
3__inference_max_pooling2d_496_layer_call_fn_1035430?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_496_layer_call_fn_1035435[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
N__inference_max_pooling2d_497_layer_call_and_return_conditional_losses_1035480?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_497_layer_call_and_return_conditional_losses_1035485j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
3__inference_max_pooling2d_497_layer_call_fn_1035470?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_497_layer_call_fn_1035475]8?5
.?+
)?&
inputs??????????
? "!????????????
K__inference_sequential_165_layer_call_and_return_conditional_losses_1035126? +,<=HIOPK?H
A?>
4?1
conv2d_495_input???????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_165_layer_call_and_return_conditional_losses_1035165? +,<=HIOPK?H
A?>
4?1
conv2d_495_input???????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_165_layer_call_and_return_conditional_losses_1035306x +,<=HIOPA?>
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
K__inference_sequential_165_layer_call_and_return_conditional_losses_1035365x +,<=HIOPA?>
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
0__inference_sequential_165_layer_call_fn_1034857u +,<=HIOPK?H
A?>
4?1
conv2d_495_input???????????
p 

 
? "???????????
0__inference_sequential_165_layer_call_fn_1035087u +,<=HIOPK?H
A?>
4?1
conv2d_495_input???????????
p

 
? "???????????
0__inference_sequential_165_layer_call_fn_1035225k +,<=HIOPA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
0__inference_sequential_165_layer_call_fn_1035254k +,<=HIOPA?>
7?4
*?'
inputs???????????
p

 
? "???????????
%__inference_signature_wrapper_1035196? +,<=HIOPW?T
? 
M?J
H
conv2d_495_input4?1
conv2d_495_input???????????"5?2
0
	dense_497#? 
	dense_497?????????