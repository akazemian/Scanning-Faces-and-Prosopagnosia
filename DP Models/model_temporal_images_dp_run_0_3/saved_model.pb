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
conv2d_309/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_309/kernel

%conv2d_309/kernel/Read/ReadVariableOpReadVariableOpconv2d_309/kernel*&
_output_shapes
: *
dtype0
v
conv2d_309/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_309/bias
o
#conv2d_309/bias/Read/ReadVariableOpReadVariableOpconv2d_309/bias*
_output_shapes
: *
dtype0
?
conv2d_310/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_310/kernel

%conv2d_310/kernel/Read/ReadVariableOpReadVariableOpconv2d_310/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_310/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_310/bias
o
#conv2d_310/bias/Read/ReadVariableOpReadVariableOpconv2d_310/bias*
_output_shapes
:@*
dtype0
?
conv2d_311/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*"
shared_nameconv2d_311/kernel
?
%conv2d_311/kernel/Read/ReadVariableOpReadVariableOpconv2d_311/kernel*'
_output_shapes
:@?*
dtype0
w
conv2d_311/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_311/bias
p
#conv2d_311/bias/Read/ReadVariableOpReadVariableOpconv2d_311/bias*
_output_shapes	
:?*
dtype0
}
dense_309/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*!
shared_namedense_309/kernel
v
$dense_309/kernel/Read/ReadVariableOpReadVariableOpdense_309/kernel*
_output_shapes
:	?@*
dtype0
t
dense_309/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_309/bias
m
"dense_309/bias/Read/ReadVariableOpReadVariableOpdense_309/bias*
_output_shapes
:@*
dtype0
|
dense_310/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_310/kernel
u
$dense_310/kernel/Read/ReadVariableOpReadVariableOpdense_310/kernel*
_output_shapes

:@*
dtype0
t
dense_310/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_310/bias
m
"dense_310/bias/Read/ReadVariableOpReadVariableOpdense_310/bias*
_output_shapes
:*
dtype0
|
dense_311/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_311/kernel
u
$dense_311/kernel/Read/ReadVariableOpReadVariableOpdense_311/kernel*
_output_shapes

:*
dtype0
t
dense_311/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_311/bias
m
"dense_311/bias/Read/ReadVariableOpReadVariableOpdense_311/bias*
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
VARIABLE_VALUEconv2d_309/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_309/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_310/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_310/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_311/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_311/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_309/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_309/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_310/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_310/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_311/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_311/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
 serving_default_conv2d_309_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_309_inputconv2d_309/kernelconv2d_309/biasconv2d_310/kernelconv2d_310/biasconv2d_311/kernelconv2d_311/biasdense_309/kerneldense_309/biasdense_310/kerneldense_310/biasdense_311/kerneldense_311/bias*
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
GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_866990
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_309/kernel/Read/ReadVariableOp#conv2d_309/bias/Read/ReadVariableOp%conv2d_310/kernel/Read/ReadVariableOp#conv2d_310/bias/Read/ReadVariableOp%conv2d_311/kernel/Read/ReadVariableOp#conv2d_311/bias/Read/ReadVariableOp$dense_309/kernel/Read/ReadVariableOp"dense_309/bias/Read/ReadVariableOp$dense_310/kernel/Read/ReadVariableOp"dense_310/bias/Read/ReadVariableOp$dense_311/kernel/Read/ReadVariableOp"dense_311/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
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
__inference__traced_save_867448
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_309/kernelconv2d_309/biasconv2d_310/kernelconv2d_310/biasconv2d_311/kernelconv2d_311/biasdense_309/kerneldense_309/biasdense_310/kerneldense_310/biasdense_311/kerneldense_311/biastotalcounttotal_1count_1*
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
"__inference__traced_restore_867506??
?
?
F__inference_conv2d_309_layer_call_and_return_conditional_losses_866499

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
?G
?	
J__inference_sequential_103_layer_call_and_return_conditional_losses_867159

inputsC
)conv2d_309_conv2d_readvariableop_resource: 8
*conv2d_309_biasadd_readvariableop_resource: C
)conv2d_310_conv2d_readvariableop_resource: @8
*conv2d_310_biasadd_readvariableop_resource:@D
)conv2d_311_conv2d_readvariableop_resource:@?9
*conv2d_311_biasadd_readvariableop_resource:	?;
(dense_309_matmul_readvariableop_resource:	?@7
)dense_309_biasadd_readvariableop_resource:@:
(dense_310_matmul_readvariableop_resource:@7
)dense_310_biasadd_readvariableop_resource::
(dense_311_matmul_readvariableop_resource:7
)dense_311_biasadd_readvariableop_resource:
identity??!conv2d_309/BiasAdd/ReadVariableOp? conv2d_309/Conv2D/ReadVariableOp?!conv2d_310/BiasAdd/ReadVariableOp? conv2d_310/Conv2D/ReadVariableOp?!conv2d_311/BiasAdd/ReadVariableOp? conv2d_311/Conv2D/ReadVariableOp? dense_309/BiasAdd/ReadVariableOp?dense_309/MatMul/ReadVariableOp? dense_310/BiasAdd/ReadVariableOp?dense_310/MatMul/ReadVariableOp? dense_311/BiasAdd/ReadVariableOp?dense_311/MatMul/ReadVariableOp?
 conv2d_309/Conv2D/ReadVariableOpReadVariableOp)conv2d_309_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_309/Conv2DConv2Dinputs(conv2d_309/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
?
!conv2d_309/BiasAdd/ReadVariableOpReadVariableOp*conv2d_309_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_309/BiasAddBiasAddconv2d_309/Conv2D:output:0)conv2d_309/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] n
conv2d_309/ReluReluconv2d_309/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] ?
max_pooling2d_309/MaxPoolMaxPoolconv2d_309/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
?
 conv2d_310/Conv2D/ReadVariableOpReadVariableOp)conv2d_310_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_310/Conv2DConv2D"max_pooling2d_309/MaxPool:output:0(conv2d_310/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
!conv2d_310/BiasAdd/ReadVariableOpReadVariableOp*conv2d_310_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_310/BiasAddBiasAddconv2d_310/Conv2D:output:0)conv2d_310/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@n
conv2d_310/ReluReluconv2d_310/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_310/MaxPoolMaxPoolconv2d_310/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
?
 conv2d_311/Conv2D/ReadVariableOpReadVariableOp)conv2d_311_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_311/Conv2DConv2D"max_pooling2d_310/MaxPool:output:0(conv2d_311/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
!conv2d_311/BiasAdd/ReadVariableOpReadVariableOp*conv2d_311_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_311/BiasAddBiasAddconv2d_311/Conv2D:output:0)conv2d_311/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????o
conv2d_311/ReluReluconv2d_311/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
max_pooling2d_311/MaxPoolMaxPoolconv2d_311/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
b
flatten_103/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_103/ReshapeReshape"max_pooling2d_311/MaxPool:output:0flatten_103/Const:output:0*
T0*(
_output_shapes
:???????????
dense_309/MatMul/ReadVariableOpReadVariableOp(dense_309_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_309/MatMulMatMulflatten_103/Reshape:output:0'dense_309/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
 dense_309/BiasAdd/ReadVariableOpReadVariableOp)dense_309_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_309/BiasAddBiasAdddense_309/MatMul:product:0(dense_309/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_309/TanhTanhdense_309/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@^
dropout_103/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_103/dropout/MulMuldense_309/Tanh:y:0"dropout_103/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@[
dropout_103/dropout/ShapeShapedense_309/Tanh:y:0*
T0*
_output_shapes
:?
0dropout_103/dropout/random_uniform/RandomUniformRandomUniform"dropout_103/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0g
"dropout_103/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
 dropout_103/dropout/GreaterEqualGreaterEqual9dropout_103/dropout/random_uniform/RandomUniform:output:0+dropout_103/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@?
dropout_103/dropout/CastCast$dropout_103/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
dropout_103/dropout/Mul_1Muldropout_103/dropout/Mul:z:0dropout_103/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@?
dense_310/MatMul/ReadVariableOpReadVariableOp(dense_310_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_310/MatMulMatMuldropout_103/dropout/Mul_1:z:0'dense_310/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_310/BiasAdd/ReadVariableOpReadVariableOp)dense_310_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_310/BiasAddBiasAdddense_310/MatMul:product:0(dense_310/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_310/TanhTanhdense_310/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_311/MatMul/ReadVariableOpReadVariableOp(dense_311_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_311/MatMulMatMuldense_310/Tanh:y:0'dense_311/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_311/BiasAdd/ReadVariableOpReadVariableOp)dense_311_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_311/BiasAddBiasAdddense_311/MatMul:product:0(dense_311/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_311/SigmoidSigmoiddense_311/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_311/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_309/BiasAdd/ReadVariableOp!^conv2d_309/Conv2D/ReadVariableOp"^conv2d_310/BiasAdd/ReadVariableOp!^conv2d_310/Conv2D/ReadVariableOp"^conv2d_311/BiasAdd/ReadVariableOp!^conv2d_311/Conv2D/ReadVariableOp!^dense_309/BiasAdd/ReadVariableOp ^dense_309/MatMul/ReadVariableOp!^dense_310/BiasAdd/ReadVariableOp ^dense_310/MatMul/ReadVariableOp!^dense_311/BiasAdd/ReadVariableOp ^dense_311/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_309/BiasAdd/ReadVariableOp!conv2d_309/BiasAdd/ReadVariableOp2D
 conv2d_309/Conv2D/ReadVariableOp conv2d_309/Conv2D/ReadVariableOp2F
!conv2d_310/BiasAdd/ReadVariableOp!conv2d_310/BiasAdd/ReadVariableOp2D
 conv2d_310/Conv2D/ReadVariableOp conv2d_310/Conv2D/ReadVariableOp2F
!conv2d_311/BiasAdd/ReadVariableOp!conv2d_311/BiasAdd/ReadVariableOp2D
 conv2d_311/Conv2D/ReadVariableOp conv2d_311/Conv2D/ReadVariableOp2D
 dense_309/BiasAdd/ReadVariableOp dense_309/BiasAdd/ReadVariableOp2B
dense_309/MatMul/ReadVariableOpdense_309/MatMul/ReadVariableOp2D
 dense_310/BiasAdd/ReadVariableOp dense_310/BiasAdd/ReadVariableOp2B
dense_310/MatMul/ReadVariableOpdense_310/MatMul/ReadVariableOp2D
 dense_311/BiasAdd/ReadVariableOp dense_311/BiasAdd/ReadVariableOp2B
dense_311/MatMul/ReadVariableOpdense_311/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
f
G__inference_dropout_103_layer_call_and_return_conditional_losses_867337

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
E__inference_dense_311_layer_call_and_return_conditional_losses_867377

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
H
,__inference_dropout_103_layer_call_fn_867315

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
GPU2*0J 8? *P
fKRI
G__inference_dropout_103_layer_call_and_return_conditional_losses_866587`
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
?
?
$__inference_signature_wrapper_866990
conv2d_309_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_309_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? **
f%R#
!__inference__wrapped_model_866445o
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
_user_specified_nameconv2d_309_input
?

?
E__inference_dense_310_layer_call_and_return_conditional_losses_867357

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
?
i
M__inference_max_pooling2d_310_layer_call_and_return_conditional_losses_866532

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
*__inference_dense_310_layer_call_fn_867346

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
GPU2*0J 8? *N
fIRG
E__inference_dense_310_layer_call_and_return_conditional_losses_866600o
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

?
E__inference_dense_309_layer_call_and_return_conditional_losses_867310

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
?
?
*__inference_dense_311_layer_call_fn_867366

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
GPU2*0J 8? *N
fIRG
E__inference_dense_311_layer_call_and_return_conditional_losses_866617o
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
?
c
G__inference_flatten_103_layer_call_and_return_conditional_losses_866563

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
F__inference_conv2d_310_layer_call_and_return_conditional_losses_866522

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
?
i
M__inference_max_pooling2d_311_layer_call_and_return_conditional_losses_866478

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
F__inference_conv2d_309_layer_call_and_return_conditional_losses_867179

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
i
M__inference_max_pooling2d_311_layer_call_and_return_conditional_losses_867274

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
/__inference_sequential_103_layer_call_fn_867048

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
GPU2*0J 8? *S
fNRL
J__inference_sequential_103_layer_call_and_return_conditional_losses_866825o
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
?P
?
!__inference__wrapped_model_866445
conv2d_309_inputR
8sequential_103_conv2d_309_conv2d_readvariableop_resource: G
9sequential_103_conv2d_309_biasadd_readvariableop_resource: R
8sequential_103_conv2d_310_conv2d_readvariableop_resource: @G
9sequential_103_conv2d_310_biasadd_readvariableop_resource:@S
8sequential_103_conv2d_311_conv2d_readvariableop_resource:@?H
9sequential_103_conv2d_311_biasadd_readvariableop_resource:	?J
7sequential_103_dense_309_matmul_readvariableop_resource:	?@F
8sequential_103_dense_309_biasadd_readvariableop_resource:@I
7sequential_103_dense_310_matmul_readvariableop_resource:@F
8sequential_103_dense_310_biasadd_readvariableop_resource:I
7sequential_103_dense_311_matmul_readvariableop_resource:F
8sequential_103_dense_311_biasadd_readvariableop_resource:
identity??0sequential_103/conv2d_309/BiasAdd/ReadVariableOp?/sequential_103/conv2d_309/Conv2D/ReadVariableOp?0sequential_103/conv2d_310/BiasAdd/ReadVariableOp?/sequential_103/conv2d_310/Conv2D/ReadVariableOp?0sequential_103/conv2d_311/BiasAdd/ReadVariableOp?/sequential_103/conv2d_311/Conv2D/ReadVariableOp?/sequential_103/dense_309/BiasAdd/ReadVariableOp?.sequential_103/dense_309/MatMul/ReadVariableOp?/sequential_103/dense_310/BiasAdd/ReadVariableOp?.sequential_103/dense_310/MatMul/ReadVariableOp?/sequential_103/dense_311/BiasAdd/ReadVariableOp?.sequential_103/dense_311/MatMul/ReadVariableOp?
/sequential_103/conv2d_309/Conv2D/ReadVariableOpReadVariableOp8sequential_103_conv2d_309_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
 sequential_103/conv2d_309/Conv2DConv2Dconv2d_309_input7sequential_103/conv2d_309/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
?
0sequential_103/conv2d_309/BiasAdd/ReadVariableOpReadVariableOp9sequential_103_conv2d_309_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
!sequential_103/conv2d_309/BiasAddBiasAdd)sequential_103/conv2d_309/Conv2D:output:08sequential_103/conv2d_309/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] ?
sequential_103/conv2d_309/ReluRelu*sequential_103/conv2d_309/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] ?
(sequential_103/max_pooling2d_309/MaxPoolMaxPool,sequential_103/conv2d_309/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
?
/sequential_103/conv2d_310/Conv2D/ReadVariableOpReadVariableOp8sequential_103_conv2d_310_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
 sequential_103/conv2d_310/Conv2DConv2D1sequential_103/max_pooling2d_309/MaxPool:output:07sequential_103/conv2d_310/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
0sequential_103/conv2d_310/BiasAdd/ReadVariableOpReadVariableOp9sequential_103_conv2d_310_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
!sequential_103/conv2d_310/BiasAddBiasAdd)sequential_103/conv2d_310/Conv2D:output:08sequential_103/conv2d_310/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
sequential_103/conv2d_310/ReluRelu*sequential_103/conv2d_310/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
(sequential_103/max_pooling2d_310/MaxPoolMaxPool,sequential_103/conv2d_310/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
?
/sequential_103/conv2d_311/Conv2D/ReadVariableOpReadVariableOp8sequential_103_conv2d_311_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
 sequential_103/conv2d_311/Conv2DConv2D1sequential_103/max_pooling2d_310/MaxPool:output:07sequential_103/conv2d_311/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
0sequential_103/conv2d_311/BiasAdd/ReadVariableOpReadVariableOp9sequential_103_conv2d_311_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!sequential_103/conv2d_311/BiasAddBiasAdd)sequential_103/conv2d_311/Conv2D:output:08sequential_103/conv2d_311/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
sequential_103/conv2d_311/ReluRelu*sequential_103/conv2d_311/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
(sequential_103/max_pooling2d_311/MaxPoolMaxPool,sequential_103/conv2d_311/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
q
 sequential_103/flatten_103/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"sequential_103/flatten_103/ReshapeReshape1sequential_103/max_pooling2d_311/MaxPool:output:0)sequential_103/flatten_103/Const:output:0*
T0*(
_output_shapes
:???????????
.sequential_103/dense_309/MatMul/ReadVariableOpReadVariableOp7sequential_103_dense_309_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
sequential_103/dense_309/MatMulMatMul+sequential_103/flatten_103/Reshape:output:06sequential_103/dense_309/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
/sequential_103/dense_309/BiasAdd/ReadVariableOpReadVariableOp8sequential_103_dense_309_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
 sequential_103/dense_309/BiasAddBiasAdd)sequential_103/dense_309/MatMul:product:07sequential_103/dense_309/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
sequential_103/dense_309/TanhTanh)sequential_103/dense_309/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
#sequential_103/dropout_103/IdentityIdentity!sequential_103/dense_309/Tanh:y:0*
T0*'
_output_shapes
:?????????@?
.sequential_103/dense_310/MatMul/ReadVariableOpReadVariableOp7sequential_103_dense_310_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
sequential_103/dense_310/MatMulMatMul,sequential_103/dropout_103/Identity:output:06sequential_103/dense_310/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_103/dense_310/BiasAdd/ReadVariableOpReadVariableOp8sequential_103_dense_310_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_103/dense_310/BiasAddBiasAdd)sequential_103/dense_310/MatMul:product:07sequential_103/dense_310/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_103/dense_310/TanhTanh)sequential_103/dense_310/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
.sequential_103/dense_311/MatMul/ReadVariableOpReadVariableOp7sequential_103_dense_311_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_103/dense_311/MatMulMatMul!sequential_103/dense_310/Tanh:y:06sequential_103/dense_311/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_103/dense_311/BiasAdd/ReadVariableOpReadVariableOp8sequential_103_dense_311_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_103/dense_311/BiasAddBiasAdd)sequential_103/dense_311/MatMul:product:07sequential_103/dense_311/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 sequential_103/dense_311/SigmoidSigmoid)sequential_103/dense_311/BiasAdd:output:0*
T0*'
_output_shapes
:?????????s
IdentityIdentity$sequential_103/dense_311/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp1^sequential_103/conv2d_309/BiasAdd/ReadVariableOp0^sequential_103/conv2d_309/Conv2D/ReadVariableOp1^sequential_103/conv2d_310/BiasAdd/ReadVariableOp0^sequential_103/conv2d_310/Conv2D/ReadVariableOp1^sequential_103/conv2d_311/BiasAdd/ReadVariableOp0^sequential_103/conv2d_311/Conv2D/ReadVariableOp0^sequential_103/dense_309/BiasAdd/ReadVariableOp/^sequential_103/dense_309/MatMul/ReadVariableOp0^sequential_103/dense_310/BiasAdd/ReadVariableOp/^sequential_103/dense_310/MatMul/ReadVariableOp0^sequential_103/dense_311/BiasAdd/ReadVariableOp/^sequential_103/dense_311/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2d
0sequential_103/conv2d_309/BiasAdd/ReadVariableOp0sequential_103/conv2d_309/BiasAdd/ReadVariableOp2b
/sequential_103/conv2d_309/Conv2D/ReadVariableOp/sequential_103/conv2d_309/Conv2D/ReadVariableOp2d
0sequential_103/conv2d_310/BiasAdd/ReadVariableOp0sequential_103/conv2d_310/BiasAdd/ReadVariableOp2b
/sequential_103/conv2d_310/Conv2D/ReadVariableOp/sequential_103/conv2d_310/Conv2D/ReadVariableOp2d
0sequential_103/conv2d_311/BiasAdd/ReadVariableOp0sequential_103/conv2d_311/BiasAdd/ReadVariableOp2b
/sequential_103/conv2d_311/Conv2D/ReadVariableOp/sequential_103/conv2d_311/Conv2D/ReadVariableOp2b
/sequential_103/dense_309/BiasAdd/ReadVariableOp/sequential_103/dense_309/BiasAdd/ReadVariableOp2`
.sequential_103/dense_309/MatMul/ReadVariableOp.sequential_103/dense_309/MatMul/ReadVariableOp2b
/sequential_103/dense_310/BiasAdd/ReadVariableOp/sequential_103/dense_310/BiasAdd/ReadVariableOp2`
.sequential_103/dense_310/MatMul/ReadVariableOp.sequential_103/dense_310/MatMul/ReadVariableOp2b
/sequential_103/dense_311/BiasAdd/ReadVariableOp/sequential_103/dense_311/BiasAdd/ReadVariableOp2`
.sequential_103/dense_311/MatMul/ReadVariableOp.sequential_103/dense_311/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_309_input
?
?
+__inference_conv2d_310_layer_call_fn_867208

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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_310_layer_call_and_return_conditional_losses_866522w
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
?
i
M__inference_max_pooling2d_310_layer_call_and_return_conditional_losses_867234

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
/__inference_sequential_103_layer_call_fn_866651
conv2d_309_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_309_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *S
fNRL
J__inference_sequential_103_layer_call_and_return_conditional_losses_866624o
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
_user_specified_nameconv2d_309_input
?
i
M__inference_max_pooling2d_309_layer_call_and_return_conditional_losses_867194

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
F__inference_conv2d_311_layer_call_and_return_conditional_losses_867259

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
?	
f
G__inference_dropout_103_layer_call_and_return_conditional_losses_866691

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
?
e
,__inference_dropout_103_layer_call_fn_867320

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
GPU2*0J 8? *P
fKRI
G__inference_dropout_103_layer_call_and_return_conditional_losses_866691o
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
?
i
M__inference_max_pooling2d_309_layer_call_and_return_conditional_losses_867199

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
?
i
M__inference_max_pooling2d_311_layer_call_and_return_conditional_losses_866555

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
?
e
G__inference_dropout_103_layer_call_and_return_conditional_losses_866587

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
?
i
M__inference_max_pooling2d_309_layer_call_and_return_conditional_losses_866454

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
?0
?
J__inference_sequential_103_layer_call_and_return_conditional_losses_866624

inputs+
conv2d_309_866500: 
conv2d_309_866502: +
conv2d_310_866523: @
conv2d_310_866525:@,
conv2d_311_866546:@? 
conv2d_311_866548:	?#
dense_309_866577:	?@
dense_309_866579:@"
dense_310_866601:@
dense_310_866603:"
dense_311_866618:
dense_311_866620:
identity??"conv2d_309/StatefulPartitionedCall?"conv2d_310/StatefulPartitionedCall?"conv2d_311/StatefulPartitionedCall?!dense_309/StatefulPartitionedCall?!dense_310/StatefulPartitionedCall?!dense_311/StatefulPartitionedCall?
"conv2d_309/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_309_866500conv2d_309_866502*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_309_layer_call_and_return_conditional_losses_866499?
!max_pooling2d_309/PartitionedCallPartitionedCall+conv2d_309/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_309_layer_call_and_return_conditional_losses_866509?
"conv2d_310/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_309/PartitionedCall:output:0conv2d_310_866523conv2d_310_866525*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_310_layer_call_and_return_conditional_losses_866522?
!max_pooling2d_310/PartitionedCallPartitionedCall+conv2d_310/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_310_layer_call_and_return_conditional_losses_866532?
"conv2d_311/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_310/PartitionedCall:output:0conv2d_311_866546conv2d_311_866548*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_311_layer_call_and_return_conditional_losses_866545?
!max_pooling2d_311/PartitionedCallPartitionedCall+conv2d_311/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_311_layer_call_and_return_conditional_losses_866555?
flatten_103/PartitionedCallPartitionedCall*max_pooling2d_311/PartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_flatten_103_layer_call_and_return_conditional_losses_866563?
!dense_309/StatefulPartitionedCallStatefulPartitionedCall$flatten_103/PartitionedCall:output:0dense_309_866577dense_309_866579*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_309_layer_call_and_return_conditional_losses_866576?
dropout_103/PartitionedCallPartitionedCall*dense_309/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_dropout_103_layer_call_and_return_conditional_losses_866587?
!dense_310/StatefulPartitionedCallStatefulPartitionedCall$dropout_103/PartitionedCall:output:0dense_310_866601dense_310_866603*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_310_layer_call_and_return_conditional_losses_866600?
!dense_311/StatefulPartitionedCallStatefulPartitionedCall*dense_310/StatefulPartitionedCall:output:0dense_311_866618dense_311_866620*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_311_layer_call_and_return_conditional_losses_866617y
IdentityIdentity*dense_311/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_309/StatefulPartitionedCall#^conv2d_310/StatefulPartitionedCall#^conv2d_311/StatefulPartitionedCall"^dense_309/StatefulPartitionedCall"^dense_310/StatefulPartitionedCall"^dense_311/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_309/StatefulPartitionedCall"conv2d_309/StatefulPartitionedCall2H
"conv2d_310/StatefulPartitionedCall"conv2d_310/StatefulPartitionedCall2H
"conv2d_311/StatefulPartitionedCall"conv2d_311/StatefulPartitionedCall2F
!dense_309/StatefulPartitionedCall!dense_309/StatefulPartitionedCall2F
!dense_310/StatefulPartitionedCall!dense_310/StatefulPartitionedCall2F
!dense_311/StatefulPartitionedCall!dense_311/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
H
,__inference_flatten_103_layer_call_fn_867284

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
GPU2*0J 8? *P
fKRI
G__inference_flatten_103_layer_call_and_return_conditional_losses_866563a
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
?
i
M__inference_max_pooling2d_309_layer_call_and_return_conditional_losses_866509

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
E__inference_dense_309_layer_call_and_return_conditional_losses_866576

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
?(
?
__inference__traced_save_867448
file_prefix0
,savev2_conv2d_309_kernel_read_readvariableop.
*savev2_conv2d_309_bias_read_readvariableop0
,savev2_conv2d_310_kernel_read_readvariableop.
*savev2_conv2d_310_bias_read_readvariableop0
,savev2_conv2d_311_kernel_read_readvariableop.
*savev2_conv2d_311_bias_read_readvariableop/
+savev2_dense_309_kernel_read_readvariableop-
)savev2_dense_309_bias_read_readvariableop/
+savev2_dense_310_kernel_read_readvariableop-
)savev2_dense_310_bias_read_readvariableop/
+savev2_dense_311_kernel_read_readvariableop-
)savev2_dense_311_bias_read_readvariableop$
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_309_kernel_read_readvariableop*savev2_conv2d_309_bias_read_readvariableop,savev2_conv2d_310_kernel_read_readvariableop*savev2_conv2d_310_bias_read_readvariableop,savev2_conv2d_311_kernel_read_readvariableop*savev2_conv2d_311_bias_read_readvariableop+savev2_dense_309_kernel_read_readvariableop)savev2_dense_309_bias_read_readvariableop+savev2_dense_310_kernel_read_readvariableop)savev2_dense_310_bias_read_readvariableop+savev2_dense_311_kernel_read_readvariableop)savev2_dense_311_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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
M__inference_max_pooling2d_310_layer_call_and_return_conditional_losses_867239

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
?
e
G__inference_dropout_103_layer_call_and_return_conditional_losses_867325

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
?
/__inference_sequential_103_layer_call_fn_867019

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
GPU2*0J 8? *S
fNRL
J__inference_sequential_103_layer_call_and_return_conditional_losses_866624o
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
/__inference_sequential_103_layer_call_fn_866881
conv2d_309_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_309_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *S
fNRL
J__inference_sequential_103_layer_call_and_return_conditional_losses_866825o
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
_user_specified_nameconv2d_309_input
?
N
2__inference_max_pooling2d_309_layer_call_fn_867184

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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_309_layer_call_and_return_conditional_losses_866454?
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
N
2__inference_max_pooling2d_311_layer_call_fn_867269

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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_311_layer_call_and_return_conditional_losses_866555i
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
??
?	
J__inference_sequential_103_layer_call_and_return_conditional_losses_867100

inputsC
)conv2d_309_conv2d_readvariableop_resource: 8
*conv2d_309_biasadd_readvariableop_resource: C
)conv2d_310_conv2d_readvariableop_resource: @8
*conv2d_310_biasadd_readvariableop_resource:@D
)conv2d_311_conv2d_readvariableop_resource:@?9
*conv2d_311_biasadd_readvariableop_resource:	?;
(dense_309_matmul_readvariableop_resource:	?@7
)dense_309_biasadd_readvariableop_resource:@:
(dense_310_matmul_readvariableop_resource:@7
)dense_310_biasadd_readvariableop_resource::
(dense_311_matmul_readvariableop_resource:7
)dense_311_biasadd_readvariableop_resource:
identity??!conv2d_309/BiasAdd/ReadVariableOp? conv2d_309/Conv2D/ReadVariableOp?!conv2d_310/BiasAdd/ReadVariableOp? conv2d_310/Conv2D/ReadVariableOp?!conv2d_311/BiasAdd/ReadVariableOp? conv2d_311/Conv2D/ReadVariableOp? dense_309/BiasAdd/ReadVariableOp?dense_309/MatMul/ReadVariableOp? dense_310/BiasAdd/ReadVariableOp?dense_310/MatMul/ReadVariableOp? dense_311/BiasAdd/ReadVariableOp?dense_311/MatMul/ReadVariableOp?
 conv2d_309/Conv2D/ReadVariableOpReadVariableOp)conv2d_309_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_309/Conv2DConv2Dinputs(conv2d_309/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
?
!conv2d_309/BiasAdd/ReadVariableOpReadVariableOp*conv2d_309_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_309/BiasAddBiasAddconv2d_309/Conv2D:output:0)conv2d_309/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] n
conv2d_309/ReluReluconv2d_309/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] ?
max_pooling2d_309/MaxPoolMaxPoolconv2d_309/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
?
 conv2d_310/Conv2D/ReadVariableOpReadVariableOp)conv2d_310_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_310/Conv2DConv2D"max_pooling2d_309/MaxPool:output:0(conv2d_310/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
!conv2d_310/BiasAdd/ReadVariableOpReadVariableOp*conv2d_310_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_310/BiasAddBiasAddconv2d_310/Conv2D:output:0)conv2d_310/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@n
conv2d_310/ReluReluconv2d_310/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_310/MaxPoolMaxPoolconv2d_310/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
?
 conv2d_311/Conv2D/ReadVariableOpReadVariableOp)conv2d_311_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_311/Conv2DConv2D"max_pooling2d_310/MaxPool:output:0(conv2d_311/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
!conv2d_311/BiasAdd/ReadVariableOpReadVariableOp*conv2d_311_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_311/BiasAddBiasAddconv2d_311/Conv2D:output:0)conv2d_311/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????o
conv2d_311/ReluReluconv2d_311/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
max_pooling2d_311/MaxPoolMaxPoolconv2d_311/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
b
flatten_103/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_103/ReshapeReshape"max_pooling2d_311/MaxPool:output:0flatten_103/Const:output:0*
T0*(
_output_shapes
:???????????
dense_309/MatMul/ReadVariableOpReadVariableOp(dense_309_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_309/MatMulMatMulflatten_103/Reshape:output:0'dense_309/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
 dense_309/BiasAdd/ReadVariableOpReadVariableOp)dense_309_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_309/BiasAddBiasAdddense_309/MatMul:product:0(dense_309/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_309/TanhTanhdense_309/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@f
dropout_103/IdentityIdentitydense_309/Tanh:y:0*
T0*'
_output_shapes
:?????????@?
dense_310/MatMul/ReadVariableOpReadVariableOp(dense_310_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_310/MatMulMatMuldropout_103/Identity:output:0'dense_310/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_310/BiasAdd/ReadVariableOpReadVariableOp)dense_310_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_310/BiasAddBiasAdddense_310/MatMul:product:0(dense_310/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_310/TanhTanhdense_310/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_311/MatMul/ReadVariableOpReadVariableOp(dense_311_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_311/MatMulMatMuldense_310/Tanh:y:0'dense_311/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_311/BiasAdd/ReadVariableOpReadVariableOp)dense_311_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_311/BiasAddBiasAdddense_311/MatMul:product:0(dense_311/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_311/SigmoidSigmoiddense_311/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_311/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_309/BiasAdd/ReadVariableOp!^conv2d_309/Conv2D/ReadVariableOp"^conv2d_310/BiasAdd/ReadVariableOp!^conv2d_310/Conv2D/ReadVariableOp"^conv2d_311/BiasAdd/ReadVariableOp!^conv2d_311/Conv2D/ReadVariableOp!^dense_309/BiasAdd/ReadVariableOp ^dense_309/MatMul/ReadVariableOp!^dense_310/BiasAdd/ReadVariableOp ^dense_310/MatMul/ReadVariableOp!^dense_311/BiasAdd/ReadVariableOp ^dense_311/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_309/BiasAdd/ReadVariableOp!conv2d_309/BiasAdd/ReadVariableOp2D
 conv2d_309/Conv2D/ReadVariableOp conv2d_309/Conv2D/ReadVariableOp2F
!conv2d_310/BiasAdd/ReadVariableOp!conv2d_310/BiasAdd/ReadVariableOp2D
 conv2d_310/Conv2D/ReadVariableOp conv2d_310/Conv2D/ReadVariableOp2F
!conv2d_311/BiasAdd/ReadVariableOp!conv2d_311/BiasAdd/ReadVariableOp2D
 conv2d_311/Conv2D/ReadVariableOp conv2d_311/Conv2D/ReadVariableOp2D
 dense_309/BiasAdd/ReadVariableOp dense_309/BiasAdd/ReadVariableOp2B
dense_309/MatMul/ReadVariableOpdense_309/MatMul/ReadVariableOp2D
 dense_310/BiasAdd/ReadVariableOp dense_310/BiasAdd/ReadVariableOp2B
dense_310/MatMul/ReadVariableOpdense_310/MatMul/ReadVariableOp2D
 dense_311/BiasAdd/ReadVariableOp dense_311/BiasAdd/ReadVariableOp2B
dense_311/MatMul/ReadVariableOpdense_311/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
F__inference_conv2d_311_layer_call_and_return_conditional_losses_866545

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
?A
?	
"__inference__traced_restore_867506
file_prefix<
"assignvariableop_conv2d_309_kernel: 0
"assignvariableop_1_conv2d_309_bias: >
$assignvariableop_2_conv2d_310_kernel: @0
"assignvariableop_3_conv2d_310_bias:@?
$assignvariableop_4_conv2d_311_kernel:@?1
"assignvariableop_5_conv2d_311_bias:	?6
#assignvariableop_6_dense_309_kernel:	?@/
!assignvariableop_7_dense_309_bias:@5
#assignvariableop_8_dense_310_kernel:@/
!assignvariableop_9_dense_310_bias:6
$assignvariableop_10_dense_311_kernel:0
"assignvariableop_11_dense_311_bias:#
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_309_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_309_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_310_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_310_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_311_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_311_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_309_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_309_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_310_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_310_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_311_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_311_biasIdentity_11:output:0"/device:CPU:0*
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
+__inference_conv2d_311_layer_call_fn_867248

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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_311_layer_call_and_return_conditional_losses_866545x
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
?

?
E__inference_dense_310_layer_call_and_return_conditional_losses_866600

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
?
?
*__inference_dense_309_layer_call_fn_867299

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
GPU2*0J 8? *N
fIRG
E__inference_dense_309_layer_call_and_return_conditional_losses_866576o
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
i
M__inference_max_pooling2d_310_layer_call_and_return_conditional_losses_866466

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
+__inference_conv2d_309_layer_call_fn_867168

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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_309_layer_call_and_return_conditional_losses_866499w
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
?
i
M__inference_max_pooling2d_311_layer_call_and_return_conditional_losses_867279

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
?0
?
J__inference_sequential_103_layer_call_and_return_conditional_losses_866920
conv2d_309_input+
conv2d_309_866884: 
conv2d_309_866886: +
conv2d_310_866890: @
conv2d_310_866892:@,
conv2d_311_866896:@? 
conv2d_311_866898:	?#
dense_309_866903:	?@
dense_309_866905:@"
dense_310_866909:@
dense_310_866911:"
dense_311_866914:
dense_311_866916:
identity??"conv2d_309/StatefulPartitionedCall?"conv2d_310/StatefulPartitionedCall?"conv2d_311/StatefulPartitionedCall?!dense_309/StatefulPartitionedCall?!dense_310/StatefulPartitionedCall?!dense_311/StatefulPartitionedCall?
"conv2d_309/StatefulPartitionedCallStatefulPartitionedCallconv2d_309_inputconv2d_309_866884conv2d_309_866886*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_309_layer_call_and_return_conditional_losses_866499?
!max_pooling2d_309/PartitionedCallPartitionedCall+conv2d_309/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_309_layer_call_and_return_conditional_losses_866509?
"conv2d_310/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_309/PartitionedCall:output:0conv2d_310_866890conv2d_310_866892*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_310_layer_call_and_return_conditional_losses_866522?
!max_pooling2d_310/PartitionedCallPartitionedCall+conv2d_310/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_310_layer_call_and_return_conditional_losses_866532?
"conv2d_311/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_310/PartitionedCall:output:0conv2d_311_866896conv2d_311_866898*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_311_layer_call_and_return_conditional_losses_866545?
!max_pooling2d_311/PartitionedCallPartitionedCall+conv2d_311/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_311_layer_call_and_return_conditional_losses_866555?
flatten_103/PartitionedCallPartitionedCall*max_pooling2d_311/PartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_flatten_103_layer_call_and_return_conditional_losses_866563?
!dense_309/StatefulPartitionedCallStatefulPartitionedCall$flatten_103/PartitionedCall:output:0dense_309_866903dense_309_866905*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_309_layer_call_and_return_conditional_losses_866576?
dropout_103/PartitionedCallPartitionedCall*dense_309/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_dropout_103_layer_call_and_return_conditional_losses_866587?
!dense_310/StatefulPartitionedCallStatefulPartitionedCall$dropout_103/PartitionedCall:output:0dense_310_866909dense_310_866911*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_310_layer_call_and_return_conditional_losses_866600?
!dense_311/StatefulPartitionedCallStatefulPartitionedCall*dense_310/StatefulPartitionedCall:output:0dense_311_866914dense_311_866916*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_311_layer_call_and_return_conditional_losses_866617y
IdentityIdentity*dense_311/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_309/StatefulPartitionedCall#^conv2d_310/StatefulPartitionedCall#^conv2d_311/StatefulPartitionedCall"^dense_309/StatefulPartitionedCall"^dense_310/StatefulPartitionedCall"^dense_311/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_309/StatefulPartitionedCall"conv2d_309/StatefulPartitionedCall2H
"conv2d_310/StatefulPartitionedCall"conv2d_310/StatefulPartitionedCall2H
"conv2d_311/StatefulPartitionedCall"conv2d_311/StatefulPartitionedCall2F
!dense_309/StatefulPartitionedCall!dense_309/StatefulPartitionedCall2F
!dense_310/StatefulPartitionedCall!dense_310/StatefulPartitionedCall2F
!dense_311/StatefulPartitionedCall!dense_311/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_309_input
?
N
2__inference_max_pooling2d_310_layer_call_fn_867224

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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_310_layer_call_and_return_conditional_losses_866466?
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
N
2__inference_max_pooling2d_310_layer_call_fn_867229

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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_310_layer_call_and_return_conditional_losses_866532h
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
?1
?
J__inference_sequential_103_layer_call_and_return_conditional_losses_866825

inputs+
conv2d_309_866789: 
conv2d_309_866791: +
conv2d_310_866795: @
conv2d_310_866797:@,
conv2d_311_866801:@? 
conv2d_311_866803:	?#
dense_309_866808:	?@
dense_309_866810:@"
dense_310_866814:@
dense_310_866816:"
dense_311_866819:
dense_311_866821:
identity??"conv2d_309/StatefulPartitionedCall?"conv2d_310/StatefulPartitionedCall?"conv2d_311/StatefulPartitionedCall?!dense_309/StatefulPartitionedCall?!dense_310/StatefulPartitionedCall?!dense_311/StatefulPartitionedCall?#dropout_103/StatefulPartitionedCall?
"conv2d_309/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_309_866789conv2d_309_866791*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_309_layer_call_and_return_conditional_losses_866499?
!max_pooling2d_309/PartitionedCallPartitionedCall+conv2d_309/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_309_layer_call_and_return_conditional_losses_866509?
"conv2d_310/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_309/PartitionedCall:output:0conv2d_310_866795conv2d_310_866797*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_310_layer_call_and_return_conditional_losses_866522?
!max_pooling2d_310/PartitionedCallPartitionedCall+conv2d_310/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_310_layer_call_and_return_conditional_losses_866532?
"conv2d_311/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_310/PartitionedCall:output:0conv2d_311_866801conv2d_311_866803*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_311_layer_call_and_return_conditional_losses_866545?
!max_pooling2d_311/PartitionedCallPartitionedCall+conv2d_311/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_311_layer_call_and_return_conditional_losses_866555?
flatten_103/PartitionedCallPartitionedCall*max_pooling2d_311/PartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_flatten_103_layer_call_and_return_conditional_losses_866563?
!dense_309/StatefulPartitionedCallStatefulPartitionedCall$flatten_103/PartitionedCall:output:0dense_309_866808dense_309_866810*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_309_layer_call_and_return_conditional_losses_866576?
#dropout_103/StatefulPartitionedCallStatefulPartitionedCall*dense_309/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_dropout_103_layer_call_and_return_conditional_losses_866691?
!dense_310/StatefulPartitionedCallStatefulPartitionedCall,dropout_103/StatefulPartitionedCall:output:0dense_310_866814dense_310_866816*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_310_layer_call_and_return_conditional_losses_866600?
!dense_311/StatefulPartitionedCallStatefulPartitionedCall*dense_310/StatefulPartitionedCall:output:0dense_311_866819dense_311_866821*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_311_layer_call_and_return_conditional_losses_866617y
IdentityIdentity*dense_311/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_309/StatefulPartitionedCall#^conv2d_310/StatefulPartitionedCall#^conv2d_311/StatefulPartitionedCall"^dense_309/StatefulPartitionedCall"^dense_310/StatefulPartitionedCall"^dense_311/StatefulPartitionedCall$^dropout_103/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_309/StatefulPartitionedCall"conv2d_309/StatefulPartitionedCall2H
"conv2d_310/StatefulPartitionedCall"conv2d_310/StatefulPartitionedCall2H
"conv2d_311/StatefulPartitionedCall"conv2d_311/StatefulPartitionedCall2F
!dense_309/StatefulPartitionedCall!dense_309/StatefulPartitionedCall2F
!dense_310/StatefulPartitionedCall!dense_310/StatefulPartitionedCall2F
!dense_311/StatefulPartitionedCall!dense_311/StatefulPartitionedCall2J
#dropout_103/StatefulPartitionedCall#dropout_103/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
c
G__inference_flatten_103_layer_call_and_return_conditional_losses_867290

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
F__inference_conv2d_310_layer_call_and_return_conditional_losses_867219

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
?2
?
J__inference_sequential_103_layer_call_and_return_conditional_losses_866959
conv2d_309_input+
conv2d_309_866923: 
conv2d_309_866925: +
conv2d_310_866929: @
conv2d_310_866931:@,
conv2d_311_866935:@? 
conv2d_311_866937:	?#
dense_309_866942:	?@
dense_309_866944:@"
dense_310_866948:@
dense_310_866950:"
dense_311_866953:
dense_311_866955:
identity??"conv2d_309/StatefulPartitionedCall?"conv2d_310/StatefulPartitionedCall?"conv2d_311/StatefulPartitionedCall?!dense_309/StatefulPartitionedCall?!dense_310/StatefulPartitionedCall?!dense_311/StatefulPartitionedCall?#dropout_103/StatefulPartitionedCall?
"conv2d_309/StatefulPartitionedCallStatefulPartitionedCallconv2d_309_inputconv2d_309_866923conv2d_309_866925*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_309_layer_call_and_return_conditional_losses_866499?
!max_pooling2d_309/PartitionedCallPartitionedCall+conv2d_309/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_309_layer_call_and_return_conditional_losses_866509?
"conv2d_310/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_309/PartitionedCall:output:0conv2d_310_866929conv2d_310_866931*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_310_layer_call_and_return_conditional_losses_866522?
!max_pooling2d_310/PartitionedCallPartitionedCall+conv2d_310/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_310_layer_call_and_return_conditional_losses_866532?
"conv2d_311/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_310/PartitionedCall:output:0conv2d_311_866935conv2d_311_866937*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_311_layer_call_and_return_conditional_losses_866545?
!max_pooling2d_311/PartitionedCallPartitionedCall+conv2d_311/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_311_layer_call_and_return_conditional_losses_866555?
flatten_103/PartitionedCallPartitionedCall*max_pooling2d_311/PartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_flatten_103_layer_call_and_return_conditional_losses_866563?
!dense_309/StatefulPartitionedCallStatefulPartitionedCall$flatten_103/PartitionedCall:output:0dense_309_866942dense_309_866944*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_309_layer_call_and_return_conditional_losses_866576?
#dropout_103/StatefulPartitionedCallStatefulPartitionedCall*dense_309/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_dropout_103_layer_call_and_return_conditional_losses_866691?
!dense_310/StatefulPartitionedCallStatefulPartitionedCall,dropout_103/StatefulPartitionedCall:output:0dense_310_866948dense_310_866950*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_310_layer_call_and_return_conditional_losses_866600?
!dense_311/StatefulPartitionedCallStatefulPartitionedCall*dense_310/StatefulPartitionedCall:output:0dense_311_866953dense_311_866955*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_311_layer_call_and_return_conditional_losses_866617y
IdentityIdentity*dense_311/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_309/StatefulPartitionedCall#^conv2d_310/StatefulPartitionedCall#^conv2d_311/StatefulPartitionedCall"^dense_309/StatefulPartitionedCall"^dense_310/StatefulPartitionedCall"^dense_311/StatefulPartitionedCall$^dropout_103/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_309/StatefulPartitionedCall"conv2d_309/StatefulPartitionedCall2H
"conv2d_310/StatefulPartitionedCall"conv2d_310/StatefulPartitionedCall2H
"conv2d_311/StatefulPartitionedCall"conv2d_311/StatefulPartitionedCall2F
!dense_309/StatefulPartitionedCall!dense_309/StatefulPartitionedCall2F
!dense_310/StatefulPartitionedCall!dense_310/StatefulPartitionedCall2F
!dense_311/StatefulPartitionedCall!dense_311/StatefulPartitionedCall2J
#dropout_103/StatefulPartitionedCall#dropout_103/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_309_input
?
N
2__inference_max_pooling2d_309_layer_call_fn_867189

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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_309_layer_call_and_return_conditional_losses_866509h
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

?
E__inference_dense_311_layer_call_and_return_conditional_losses_866617

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
2__inference_max_pooling2d_311_layer_call_fn_867264

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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_311_layer_call_and_return_conditional_losses_866478?
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
conv2d_309_inputC
"serving_default_conv2d_309_input:0???????????=
	dense_3110
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
+:) 2conv2d_309/kernel
: 2conv2d_309/bias
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
+:) @2conv2d_310/kernel
:@2conv2d_310/bias
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
,:*@?2conv2d_311/kernel
:?2conv2d_311/bias
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
#:!	?@2dense_309/kernel
:@2dense_309/bias
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
": @2dense_310/kernel
:2dense_310/bias
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
": 2dense_311/kernel
:2dense_311/bias
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
/__inference_sequential_103_layer_call_fn_866651
/__inference_sequential_103_layer_call_fn_867019
/__inference_sequential_103_layer_call_fn_867048
/__inference_sequential_103_layer_call_fn_866881?
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
J__inference_sequential_103_layer_call_and_return_conditional_losses_867100
J__inference_sequential_103_layer_call_and_return_conditional_losses_867159
J__inference_sequential_103_layer_call_and_return_conditional_losses_866920
J__inference_sequential_103_layer_call_and_return_conditional_losses_866959?
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
!__inference__wrapped_model_866445conv2d_309_input"?
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
+__inference_conv2d_309_layer_call_fn_867168?
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
F__inference_conv2d_309_layer_call_and_return_conditional_losses_867179?
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
2__inference_max_pooling2d_309_layer_call_fn_867184
2__inference_max_pooling2d_309_layer_call_fn_867189?
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
M__inference_max_pooling2d_309_layer_call_and_return_conditional_losses_867194
M__inference_max_pooling2d_309_layer_call_and_return_conditional_losses_867199?
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
+__inference_conv2d_310_layer_call_fn_867208?
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
F__inference_conv2d_310_layer_call_and_return_conditional_losses_867219?
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
2__inference_max_pooling2d_310_layer_call_fn_867224
2__inference_max_pooling2d_310_layer_call_fn_867229?
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
M__inference_max_pooling2d_310_layer_call_and_return_conditional_losses_867234
M__inference_max_pooling2d_310_layer_call_and_return_conditional_losses_867239?
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
+__inference_conv2d_311_layer_call_fn_867248?
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
F__inference_conv2d_311_layer_call_and_return_conditional_losses_867259?
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
2__inference_max_pooling2d_311_layer_call_fn_867264
2__inference_max_pooling2d_311_layer_call_fn_867269?
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
M__inference_max_pooling2d_311_layer_call_and_return_conditional_losses_867274
M__inference_max_pooling2d_311_layer_call_and_return_conditional_losses_867279?
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
,__inference_flatten_103_layer_call_fn_867284?
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
G__inference_flatten_103_layer_call_and_return_conditional_losses_867290?
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
*__inference_dense_309_layer_call_fn_867299?
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
E__inference_dense_309_layer_call_and_return_conditional_losses_867310?
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
,__inference_dropout_103_layer_call_fn_867315
,__inference_dropout_103_layer_call_fn_867320?
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
G__inference_dropout_103_layer_call_and_return_conditional_losses_867325
G__inference_dropout_103_layer_call_and_return_conditional_losses_867337?
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
*__inference_dense_310_layer_call_fn_867346?
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
E__inference_dense_310_layer_call_and_return_conditional_losses_867357?
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
*__inference_dense_311_layer_call_fn_867366?
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
E__inference_dense_311_layer_call_and_return_conditional_losses_867377?
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
$__inference_signature_wrapper_866990conv2d_309_input"?
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
!__inference__wrapped_model_866445? +,<=HIOPC?@
9?6
4?1
conv2d_309_input???????????
? "5?2
0
	dense_311#? 
	dense_311??????????
F__inference_conv2d_309_layer_call_and_return_conditional_losses_867179n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????Z] 
? ?
+__inference_conv2d_309_layer_call_fn_867168a9?6
/?,
*?'
inputs???????????
? " ??????????Z] ?
F__inference_conv2d_310_layer_call_and_return_conditional_losses_867219l 7?4
-?*
(?%
inputs?????????-. 
? "-?*
#? 
0?????????@
? ?
+__inference_conv2d_310_layer_call_fn_867208_ 7?4
-?*
(?%
inputs?????????-. 
? " ??????????@?
F__inference_conv2d_311_layer_call_and_return_conditional_losses_867259m+,7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
+__inference_conv2d_311_layer_call_fn_867248`+,7?4
-?*
(?%
inputs?????????@
? "!????????????
E__inference_dense_309_layer_call_and_return_conditional_losses_867310]<=0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? ~
*__inference_dense_309_layer_call_fn_867299P<=0?-
&?#
!?
inputs??????????
? "??????????@?
E__inference_dense_310_layer_call_and_return_conditional_losses_867357\HI/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? }
*__inference_dense_310_layer_call_fn_867346OHI/?,
%?"
 ?
inputs?????????@
? "???????????
E__inference_dense_311_layer_call_and_return_conditional_losses_867377\OP/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? }
*__inference_dense_311_layer_call_fn_867366OOP/?,
%?"
 ?
inputs?????????
? "???????????
G__inference_dropout_103_layer_call_and_return_conditional_losses_867325\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
G__inference_dropout_103_layer_call_and_return_conditional_losses_867337\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? 
,__inference_dropout_103_layer_call_fn_867315O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@
,__inference_dropout_103_layer_call_fn_867320O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
G__inference_flatten_103_layer_call_and_return_conditional_losses_867290b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????
? ?
,__inference_flatten_103_layer_call_fn_867284U8?5
.?+
)?&
inputs??????????
? "????????????
M__inference_max_pooling2d_309_layer_call_and_return_conditional_losses_867194?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_309_layer_call_and_return_conditional_losses_867199h7?4
-?*
(?%
inputs?????????Z] 
? "-?*
#? 
0?????????-. 
? ?
2__inference_max_pooling2d_309_layer_call_fn_867184?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_309_layer_call_fn_867189[7?4
-?*
(?%
inputs?????????Z] 
? " ??????????-. ?
M__inference_max_pooling2d_310_layer_call_and_return_conditional_losses_867234?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_310_layer_call_and_return_conditional_losses_867239h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
2__inference_max_pooling2d_310_layer_call_fn_867224?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_310_layer_call_fn_867229[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
M__inference_max_pooling2d_311_layer_call_and_return_conditional_losses_867274?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_311_layer_call_and_return_conditional_losses_867279j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
2__inference_max_pooling2d_311_layer_call_fn_867264?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_311_layer_call_fn_867269]8?5
.?+
)?&
inputs??????????
? "!????????????
J__inference_sequential_103_layer_call_and_return_conditional_losses_866920? +,<=HIOPK?H
A?>
4?1
conv2d_309_input???????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_103_layer_call_and_return_conditional_losses_866959? +,<=HIOPK?H
A?>
4?1
conv2d_309_input???????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_103_layer_call_and_return_conditional_losses_867100x +,<=HIOPA?>
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
J__inference_sequential_103_layer_call_and_return_conditional_losses_867159x +,<=HIOPA?>
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
/__inference_sequential_103_layer_call_fn_866651u +,<=HIOPK?H
A?>
4?1
conv2d_309_input???????????
p 

 
? "???????????
/__inference_sequential_103_layer_call_fn_866881u +,<=HIOPK?H
A?>
4?1
conv2d_309_input???????????
p

 
? "???????????
/__inference_sequential_103_layer_call_fn_867019k +,<=HIOPA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
/__inference_sequential_103_layer_call_fn_867048k +,<=HIOPA?>
7?4
*?'
inputs???????????
p

 
? "???????????
$__inference_signature_wrapper_866990? +,<=HIOPW?T
? 
M?J
H
conv2d_309_input4?1
conv2d_309_input???????????"5?2
0
	dense_311#? 
	dense_311?????????