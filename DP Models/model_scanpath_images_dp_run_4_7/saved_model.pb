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
conv2d_141/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_141/kernel

%conv2d_141/kernel/Read/ReadVariableOpReadVariableOpconv2d_141/kernel*&
_output_shapes
: *
dtype0
v
conv2d_141/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_141/bias
o
#conv2d_141/bias/Read/ReadVariableOpReadVariableOpconv2d_141/bias*
_output_shapes
: *
dtype0
?
conv2d_142/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_142/kernel

%conv2d_142/kernel/Read/ReadVariableOpReadVariableOpconv2d_142/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_142/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_142/bias
o
#conv2d_142/bias/Read/ReadVariableOpReadVariableOpconv2d_142/bias*
_output_shapes
:@*
dtype0
?
conv2d_143/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*"
shared_nameconv2d_143/kernel
?
%conv2d_143/kernel/Read/ReadVariableOpReadVariableOpconv2d_143/kernel*'
_output_shapes
:@?*
dtype0
w
conv2d_143/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_143/bias
p
#conv2d_143/bias/Read/ReadVariableOpReadVariableOpconv2d_143/bias*
_output_shapes	
:?*
dtype0
}
dense_141/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*!
shared_namedense_141/kernel
v
$dense_141/kernel/Read/ReadVariableOpReadVariableOpdense_141/kernel*
_output_shapes
:	?@*
dtype0
t
dense_141/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_141/bias
m
"dense_141/bias/Read/ReadVariableOpReadVariableOpdense_141/bias*
_output_shapes
:@*
dtype0
|
dense_142/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_142/kernel
u
$dense_142/kernel/Read/ReadVariableOpReadVariableOpdense_142/kernel*
_output_shapes

:@*
dtype0
t
dense_142/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_142/bias
m
"dense_142/bias/Read/ReadVariableOpReadVariableOpdense_142/bias*
_output_shapes
:*
dtype0
|
dense_143/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_143/kernel
u
$dense_143/kernel/Read/ReadVariableOpReadVariableOpdense_143/kernel*
_output_shapes

:*
dtype0
t
dense_143/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_143/bias
m
"dense_143/bias/Read/ReadVariableOpReadVariableOpdense_143/bias*
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
VARIABLE_VALUEconv2d_141/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_141/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_142/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_142/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_143/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_143/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_141/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_141/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_142/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_142/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_143/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_143/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
 serving_default_conv2d_141_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_141_inputconv2d_141/kernelconv2d_141/biasconv2d_142/kernelconv2d_142/biasconv2d_143/kernelconv2d_143/biasdense_141/kerneldense_141/biasdense_142/kerneldense_142/biasdense_143/kerneldense_143/bias*
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
$__inference_signature_wrapper_129630
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_141/kernel/Read/ReadVariableOp#conv2d_141/bias/Read/ReadVariableOp%conv2d_142/kernel/Read/ReadVariableOp#conv2d_142/bias/Read/ReadVariableOp%conv2d_143/kernel/Read/ReadVariableOp#conv2d_143/bias/Read/ReadVariableOp$dense_141/kernel/Read/ReadVariableOp"dense_141/bias/Read/ReadVariableOp$dense_142/kernel/Read/ReadVariableOp"dense_142/bias/Read/ReadVariableOp$dense_143/kernel/Read/ReadVariableOp"dense_143/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
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
__inference__traced_save_130088
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_141/kernelconv2d_141/biasconv2d_142/kernelconv2d_142/biasconv2d_143/kernelconv2d_143/biasdense_141/kerneldense_141/biasdense_142/kerneldense_142/biasdense_143/kerneldense_143/biastotalcounttotal_1count_1*
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
"__inference__traced_restore_130146??
?
?
*__inference_dense_142_layer_call_fn_129986

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
E__inference_dense_142_layer_call_and_return_conditional_losses_129240o
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
e
F__inference_dropout_47_layer_call_and_return_conditional_losses_129977

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
i
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_129149

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
?
?
.__inference_sequential_47_layer_call_fn_129291
conv2d_141_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_141_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *R
fMRK
I__inference_sequential_47_layer_call_and_return_conditional_losses_129264o
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
_user_specified_nameconv2d_141_input
?
G
+__inference_dropout_47_layer_call_fn_129955

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
GPU2*0J 8? *O
fJRH
F__inference_dropout_47_layer_call_and_return_conditional_losses_129227`
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
+__inference_conv2d_141_layer_call_fn_129808

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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_141_layer_call_and_return_conditional_losses_129139w
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
?O
?
!__inference__wrapped_model_129085
conv2d_141_inputQ
7sequential_47_conv2d_141_conv2d_readvariableop_resource: F
8sequential_47_conv2d_141_biasadd_readvariableop_resource: Q
7sequential_47_conv2d_142_conv2d_readvariableop_resource: @F
8sequential_47_conv2d_142_biasadd_readvariableop_resource:@R
7sequential_47_conv2d_143_conv2d_readvariableop_resource:@?G
8sequential_47_conv2d_143_biasadd_readvariableop_resource:	?I
6sequential_47_dense_141_matmul_readvariableop_resource:	?@E
7sequential_47_dense_141_biasadd_readvariableop_resource:@H
6sequential_47_dense_142_matmul_readvariableop_resource:@E
7sequential_47_dense_142_biasadd_readvariableop_resource:H
6sequential_47_dense_143_matmul_readvariableop_resource:E
7sequential_47_dense_143_biasadd_readvariableop_resource:
identity??/sequential_47/conv2d_141/BiasAdd/ReadVariableOp?.sequential_47/conv2d_141/Conv2D/ReadVariableOp?/sequential_47/conv2d_142/BiasAdd/ReadVariableOp?.sequential_47/conv2d_142/Conv2D/ReadVariableOp?/sequential_47/conv2d_143/BiasAdd/ReadVariableOp?.sequential_47/conv2d_143/Conv2D/ReadVariableOp?.sequential_47/dense_141/BiasAdd/ReadVariableOp?-sequential_47/dense_141/MatMul/ReadVariableOp?.sequential_47/dense_142/BiasAdd/ReadVariableOp?-sequential_47/dense_142/MatMul/ReadVariableOp?.sequential_47/dense_143/BiasAdd/ReadVariableOp?-sequential_47/dense_143/MatMul/ReadVariableOp?
.sequential_47/conv2d_141/Conv2D/ReadVariableOpReadVariableOp7sequential_47_conv2d_141_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
sequential_47/conv2d_141/Conv2DConv2Dconv2d_141_input6sequential_47/conv2d_141/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx *
paddingVALID*
strides
?
/sequential_47/conv2d_141/BiasAdd/ReadVariableOpReadVariableOp8sequential_47_conv2d_141_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
 sequential_47/conv2d_141/BiasAddBiasAdd(sequential_47/conv2d_141/Conv2D:output:07sequential_47/conv2d_141/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx ?
sequential_47/conv2d_141/ReluRelu)sequential_47/conv2d_141/BiasAdd:output:0*
T0*/
_output_shapes
:?????????xx ?
'sequential_47/max_pooling2d_141/MaxPoolMaxPool+sequential_47/conv2d_141/Relu:activations:0*/
_output_shapes
:?????????<< *
ksize
*
paddingVALID*
strides
?
.sequential_47/conv2d_142/Conv2D/ReadVariableOpReadVariableOp7sequential_47_conv2d_142_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
sequential_47/conv2d_142/Conv2DConv2D0sequential_47/max_pooling2d_141/MaxPool:output:06sequential_47/conv2d_142/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
/sequential_47/conv2d_142/BiasAdd/ReadVariableOpReadVariableOp8sequential_47_conv2d_142_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
 sequential_47/conv2d_142/BiasAddBiasAdd(sequential_47/conv2d_142/Conv2D:output:07sequential_47/conv2d_142/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
sequential_47/conv2d_142/ReluRelu)sequential_47/conv2d_142/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
'sequential_47/max_pooling2d_142/MaxPoolMaxPool+sequential_47/conv2d_142/Relu:activations:0*/
_output_shapes
:?????????

@*
ksize
*
paddingVALID*
strides
?
.sequential_47/conv2d_143/Conv2D/ReadVariableOpReadVariableOp7sequential_47_conv2d_143_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
sequential_47/conv2d_143/Conv2DConv2D0sequential_47/max_pooling2d_142/MaxPool:output:06sequential_47/conv2d_143/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
/sequential_47/conv2d_143/BiasAdd/ReadVariableOpReadVariableOp8sequential_47_conv2d_143_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
 sequential_47/conv2d_143/BiasAddBiasAdd(sequential_47/conv2d_143/Conv2D:output:07sequential_47/conv2d_143/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
sequential_47/conv2d_143/ReluRelu)sequential_47/conv2d_143/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
'sequential_47/max_pooling2d_143/MaxPoolMaxPool+sequential_47/conv2d_143/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
o
sequential_47/flatten_47/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
 sequential_47/flatten_47/ReshapeReshape0sequential_47/max_pooling2d_143/MaxPool:output:0'sequential_47/flatten_47/Const:output:0*
T0*(
_output_shapes
:???????????
-sequential_47/dense_141/MatMul/ReadVariableOpReadVariableOp6sequential_47_dense_141_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
sequential_47/dense_141/MatMulMatMul)sequential_47/flatten_47/Reshape:output:05sequential_47/dense_141/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
.sequential_47/dense_141/BiasAdd/ReadVariableOpReadVariableOp7sequential_47_dense_141_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_47/dense_141/BiasAddBiasAdd(sequential_47/dense_141/MatMul:product:06sequential_47/dense_141/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
sequential_47/dense_141/TanhTanh(sequential_47/dense_141/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
!sequential_47/dropout_47/IdentityIdentity sequential_47/dense_141/Tanh:y:0*
T0*'
_output_shapes
:?????????@?
-sequential_47/dense_142/MatMul/ReadVariableOpReadVariableOp6sequential_47_dense_142_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
sequential_47/dense_142/MatMulMatMul*sequential_47/dropout_47/Identity:output:05sequential_47/dense_142/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
.sequential_47/dense_142/BiasAdd/ReadVariableOpReadVariableOp7sequential_47_dense_142_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_47/dense_142/BiasAddBiasAdd(sequential_47/dense_142/MatMul:product:06sequential_47/dense_142/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_47/dense_142/TanhTanh(sequential_47/dense_142/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
-sequential_47/dense_143/MatMul/ReadVariableOpReadVariableOp6sequential_47_dense_143_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_47/dense_143/MatMulMatMul sequential_47/dense_142/Tanh:y:05sequential_47/dense_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
.sequential_47/dense_143/BiasAdd/ReadVariableOpReadVariableOp7sequential_47_dense_143_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_47/dense_143/BiasAddBiasAdd(sequential_47/dense_143/MatMul:product:06sequential_47/dense_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_47/dense_143/SigmoidSigmoid(sequential_47/dense_143/BiasAdd:output:0*
T0*'
_output_shapes
:?????????r
IdentityIdentity#sequential_47/dense_143/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_47/conv2d_141/BiasAdd/ReadVariableOp/^sequential_47/conv2d_141/Conv2D/ReadVariableOp0^sequential_47/conv2d_142/BiasAdd/ReadVariableOp/^sequential_47/conv2d_142/Conv2D/ReadVariableOp0^sequential_47/conv2d_143/BiasAdd/ReadVariableOp/^sequential_47/conv2d_143/Conv2D/ReadVariableOp/^sequential_47/dense_141/BiasAdd/ReadVariableOp.^sequential_47/dense_141/MatMul/ReadVariableOp/^sequential_47/dense_142/BiasAdd/ReadVariableOp.^sequential_47/dense_142/MatMul/ReadVariableOp/^sequential_47/dense_143/BiasAdd/ReadVariableOp.^sequential_47/dense_143/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2b
/sequential_47/conv2d_141/BiasAdd/ReadVariableOp/sequential_47/conv2d_141/BiasAdd/ReadVariableOp2`
.sequential_47/conv2d_141/Conv2D/ReadVariableOp.sequential_47/conv2d_141/Conv2D/ReadVariableOp2b
/sequential_47/conv2d_142/BiasAdd/ReadVariableOp/sequential_47/conv2d_142/BiasAdd/ReadVariableOp2`
.sequential_47/conv2d_142/Conv2D/ReadVariableOp.sequential_47/conv2d_142/Conv2D/ReadVariableOp2b
/sequential_47/conv2d_143/BiasAdd/ReadVariableOp/sequential_47/conv2d_143/BiasAdd/ReadVariableOp2`
.sequential_47/conv2d_143/Conv2D/ReadVariableOp.sequential_47/conv2d_143/Conv2D/ReadVariableOp2`
.sequential_47/dense_141/BiasAdd/ReadVariableOp.sequential_47/dense_141/BiasAdd/ReadVariableOp2^
-sequential_47/dense_141/MatMul/ReadVariableOp-sequential_47/dense_141/MatMul/ReadVariableOp2`
.sequential_47/dense_142/BiasAdd/ReadVariableOp.sequential_47/dense_142/BiasAdd/ReadVariableOp2^
-sequential_47/dense_142/MatMul/ReadVariableOp-sequential_47/dense_142/MatMul/ReadVariableOp2`
.sequential_47/dense_143/BiasAdd/ReadVariableOp.sequential_47/dense_143/BiasAdd/ReadVariableOp2^
-sequential_47/dense_143/MatMul/ReadVariableOp-sequential_47/dense_143/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_141_input
?
G
+__inference_flatten_47_layer_call_fn_129924

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
GPU2*0J 8? *O
fJRH
F__inference_flatten_47_layer_call_and_return_conditional_losses_129203a
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
?0
?
I__inference_sequential_47_layer_call_and_return_conditional_losses_129264

inputs+
conv2d_141_129140: 
conv2d_141_129142: +
conv2d_142_129163: @
conv2d_142_129165:@,
conv2d_143_129186:@? 
conv2d_143_129188:	?#
dense_141_129217:	?@
dense_141_129219:@"
dense_142_129241:@
dense_142_129243:"
dense_143_129258:
dense_143_129260:
identity??"conv2d_141/StatefulPartitionedCall?"conv2d_142/StatefulPartitionedCall?"conv2d_143/StatefulPartitionedCall?!dense_141/StatefulPartitionedCall?!dense_142/StatefulPartitionedCall?!dense_143/StatefulPartitionedCall?
"conv2d_141/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_141_129140conv2d_141_129142*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_141_layer_call_and_return_conditional_losses_129139?
!max_pooling2d_141/PartitionedCallPartitionedCall+conv2d_141/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_129149?
"conv2d_142/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_141/PartitionedCall:output:0conv2d_142_129163conv2d_142_129165*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_142_layer_call_and_return_conditional_losses_129162?
!max_pooling2d_142/PartitionedCallPartitionedCall+conv2d_142/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_129172?
"conv2d_143/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_142/PartitionedCall:output:0conv2d_143_129186conv2d_143_129188*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_143_layer_call_and_return_conditional_losses_129185?
!max_pooling2d_143/PartitionedCallPartitionedCall+conv2d_143/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_143_layer_call_and_return_conditional_losses_129195?
flatten_47/PartitionedCallPartitionedCall*max_pooling2d_143/PartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_flatten_47_layer_call_and_return_conditional_losses_129203?
!dense_141/StatefulPartitionedCallStatefulPartitionedCall#flatten_47/PartitionedCall:output:0dense_141_129217dense_141_129219*
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
E__inference_dense_141_layer_call_and_return_conditional_losses_129216?
dropout_47/PartitionedCallPartitionedCall*dense_141/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_dropout_47_layer_call_and_return_conditional_losses_129227?
!dense_142/StatefulPartitionedCallStatefulPartitionedCall#dropout_47/PartitionedCall:output:0dense_142_129241dense_142_129243*
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
E__inference_dense_142_layer_call_and_return_conditional_losses_129240?
!dense_143/StatefulPartitionedCallStatefulPartitionedCall*dense_142/StatefulPartitionedCall:output:0dense_143_129258dense_143_129260*
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
E__inference_dense_143_layer_call_and_return_conditional_losses_129257y
IdentityIdentity*dense_143/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_141/StatefulPartitionedCall#^conv2d_142/StatefulPartitionedCall#^conv2d_143/StatefulPartitionedCall"^dense_141/StatefulPartitionedCall"^dense_142/StatefulPartitionedCall"^dense_143/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_141/StatefulPartitionedCall"conv2d_141/StatefulPartitionedCall2H
"conv2d_142/StatefulPartitionedCall"conv2d_142/StatefulPartitionedCall2H
"conv2d_143/StatefulPartitionedCall"conv2d_143/StatefulPartitionedCall2F
!dense_141/StatefulPartitionedCall!dense_141/StatefulPartitionedCall2F
!dense_142/StatefulPartitionedCall!dense_142/StatefulPartitionedCall2F
!dense_143/StatefulPartitionedCall!dense_143/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_143_layer_call_fn_129904

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
M__inference_max_pooling2d_143_layer_call_and_return_conditional_losses_129118?
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
F__inference_conv2d_143_layer_call_and_return_conditional_losses_129899

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
?
i
M__inference_max_pooling2d_143_layer_call_and_return_conditional_losses_129914

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
.__inference_sequential_47_layer_call_fn_129688

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
GPU2*0J 8? *R
fMRK
I__inference_sequential_47_layer_call_and_return_conditional_losses_129465o
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
?
F__inference_conv2d_141_layer_call_and_return_conditional_losses_129819

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
?
i
M__inference_max_pooling2d_143_layer_call_and_return_conditional_losses_129919

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
N
2__inference_max_pooling2d_141_layer_call_fn_129824

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
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_129094?
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
2__inference_max_pooling2d_141_layer_call_fn_129829

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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_129149h
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
i
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_129879

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
?G
?	
I__inference_sequential_47_layer_call_and_return_conditional_losses_129799

inputsC
)conv2d_141_conv2d_readvariableop_resource: 8
*conv2d_141_biasadd_readvariableop_resource: C
)conv2d_142_conv2d_readvariableop_resource: @8
*conv2d_142_biasadd_readvariableop_resource:@D
)conv2d_143_conv2d_readvariableop_resource:@?9
*conv2d_143_biasadd_readvariableop_resource:	?;
(dense_141_matmul_readvariableop_resource:	?@7
)dense_141_biasadd_readvariableop_resource:@:
(dense_142_matmul_readvariableop_resource:@7
)dense_142_biasadd_readvariableop_resource::
(dense_143_matmul_readvariableop_resource:7
)dense_143_biasadd_readvariableop_resource:
identity??!conv2d_141/BiasAdd/ReadVariableOp? conv2d_141/Conv2D/ReadVariableOp?!conv2d_142/BiasAdd/ReadVariableOp? conv2d_142/Conv2D/ReadVariableOp?!conv2d_143/BiasAdd/ReadVariableOp? conv2d_143/Conv2D/ReadVariableOp? dense_141/BiasAdd/ReadVariableOp?dense_141/MatMul/ReadVariableOp? dense_142/BiasAdd/ReadVariableOp?dense_142/MatMul/ReadVariableOp? dense_143/BiasAdd/ReadVariableOp?dense_143/MatMul/ReadVariableOp?
 conv2d_141/Conv2D/ReadVariableOpReadVariableOp)conv2d_141_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_141/Conv2DConv2Dinputs(conv2d_141/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx *
paddingVALID*
strides
?
!conv2d_141/BiasAdd/ReadVariableOpReadVariableOp*conv2d_141_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_141/BiasAddBiasAddconv2d_141/Conv2D:output:0)conv2d_141/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx n
conv2d_141/ReluReluconv2d_141/BiasAdd:output:0*
T0*/
_output_shapes
:?????????xx ?
max_pooling2d_141/MaxPoolMaxPoolconv2d_141/Relu:activations:0*/
_output_shapes
:?????????<< *
ksize
*
paddingVALID*
strides
?
 conv2d_142/Conv2D/ReadVariableOpReadVariableOp)conv2d_142_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_142/Conv2DConv2D"max_pooling2d_141/MaxPool:output:0(conv2d_142/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
!conv2d_142/BiasAdd/ReadVariableOpReadVariableOp*conv2d_142_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_142/BiasAddBiasAddconv2d_142/Conv2D:output:0)conv2d_142/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@n
conv2d_142/ReluReluconv2d_142/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_142/MaxPoolMaxPoolconv2d_142/Relu:activations:0*/
_output_shapes
:?????????

@*
ksize
*
paddingVALID*
strides
?
 conv2d_143/Conv2D/ReadVariableOpReadVariableOp)conv2d_143_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_143/Conv2DConv2D"max_pooling2d_142/MaxPool:output:0(conv2d_143/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
!conv2d_143/BiasAdd/ReadVariableOpReadVariableOp*conv2d_143_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_143/BiasAddBiasAddconv2d_143/Conv2D:output:0)conv2d_143/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????o
conv2d_143/ReluReluconv2d_143/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
max_pooling2d_143/MaxPoolMaxPoolconv2d_143/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
a
flatten_47/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_47/ReshapeReshape"max_pooling2d_143/MaxPool:output:0flatten_47/Const:output:0*
T0*(
_output_shapes
:???????????
dense_141/MatMul/ReadVariableOpReadVariableOp(dense_141_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_141/MatMulMatMulflatten_47/Reshape:output:0'dense_141/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
 dense_141/BiasAdd/ReadVariableOpReadVariableOp)dense_141_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_141/BiasAddBiasAdddense_141/MatMul:product:0(dense_141/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_141/TanhTanhdense_141/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@]
dropout_47/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_47/dropout/MulMuldense_141/Tanh:y:0!dropout_47/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@Z
dropout_47/dropout/ShapeShapedense_141/Tanh:y:0*
T0*
_output_shapes
:?
/dropout_47/dropout/random_uniform/RandomUniformRandomUniform!dropout_47/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0f
!dropout_47/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_47/dropout/GreaterEqualGreaterEqual8dropout_47/dropout/random_uniform/RandomUniform:output:0*dropout_47/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@?
dropout_47/dropout/CastCast#dropout_47/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
dropout_47/dropout/Mul_1Muldropout_47/dropout/Mul:z:0dropout_47/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@?
dense_142/MatMul/ReadVariableOpReadVariableOp(dense_142_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_142/MatMulMatMuldropout_47/dropout/Mul_1:z:0'dense_142/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_142/BiasAdd/ReadVariableOpReadVariableOp)dense_142_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_142/BiasAddBiasAdddense_142/MatMul:product:0(dense_142/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_142/TanhTanhdense_142/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_143/MatMul/ReadVariableOpReadVariableOp(dense_143_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_143/MatMulMatMuldense_142/Tanh:y:0'dense_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_143/BiasAdd/ReadVariableOpReadVariableOp)dense_143_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_143/BiasAddBiasAdddense_143/MatMul:product:0(dense_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_143/SigmoidSigmoiddense_143/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_143/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_141/BiasAdd/ReadVariableOp!^conv2d_141/Conv2D/ReadVariableOp"^conv2d_142/BiasAdd/ReadVariableOp!^conv2d_142/Conv2D/ReadVariableOp"^conv2d_143/BiasAdd/ReadVariableOp!^conv2d_143/Conv2D/ReadVariableOp!^dense_141/BiasAdd/ReadVariableOp ^dense_141/MatMul/ReadVariableOp!^dense_142/BiasAdd/ReadVariableOp ^dense_142/MatMul/ReadVariableOp!^dense_143/BiasAdd/ReadVariableOp ^dense_143/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_141/BiasAdd/ReadVariableOp!conv2d_141/BiasAdd/ReadVariableOp2D
 conv2d_141/Conv2D/ReadVariableOp conv2d_141/Conv2D/ReadVariableOp2F
!conv2d_142/BiasAdd/ReadVariableOp!conv2d_142/BiasAdd/ReadVariableOp2D
 conv2d_142/Conv2D/ReadVariableOp conv2d_142/Conv2D/ReadVariableOp2F
!conv2d_143/BiasAdd/ReadVariableOp!conv2d_143/BiasAdd/ReadVariableOp2D
 conv2d_143/Conv2D/ReadVariableOp conv2d_143/Conv2D/ReadVariableOp2D
 dense_141/BiasAdd/ReadVariableOp dense_141/BiasAdd/ReadVariableOp2B
dense_141/MatMul/ReadVariableOpdense_141/MatMul/ReadVariableOp2D
 dense_142/BiasAdd/ReadVariableOp dense_142/BiasAdd/ReadVariableOp2B
dense_142/MatMul/ReadVariableOpdense_142/MatMul/ReadVariableOp2D
 dense_143/BiasAdd/ReadVariableOp dense_143/BiasAdd/ReadVariableOp2B
dense_143/MatMul/ReadVariableOpdense_143/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_47_layer_call_and_return_conditional_losses_129930

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
?
$__inference_signature_wrapper_129630
conv2d_141_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_141_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
!__inference__wrapped_model_129085o
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
_user_specified_nameconv2d_141_input
?
i
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_129839

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
?
i
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_129874

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
*__inference_dense_143_layer_call_fn_130006

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
E__inference_dense_143_layer_call_and_return_conditional_losses_129257o
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
F__inference_conv2d_141_layer_call_and_return_conditional_losses_129139

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

?
E__inference_dense_143_layer_call_and_return_conditional_losses_130017

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
d
+__inference_dropout_47_layer_call_fn_129960

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
GPU2*0J 8? *O
fJRH
F__inference_dropout_47_layer_call_and_return_conditional_losses_129331o
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
?
F__inference_conv2d_142_layer_call_and_return_conditional_losses_129162

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
?
I__inference_sequential_47_layer_call_and_return_conditional_losses_129560
conv2d_141_input+
conv2d_141_129524: 
conv2d_141_129526: +
conv2d_142_129530: @
conv2d_142_129532:@,
conv2d_143_129536:@? 
conv2d_143_129538:	?#
dense_141_129543:	?@
dense_141_129545:@"
dense_142_129549:@
dense_142_129551:"
dense_143_129554:
dense_143_129556:
identity??"conv2d_141/StatefulPartitionedCall?"conv2d_142/StatefulPartitionedCall?"conv2d_143/StatefulPartitionedCall?!dense_141/StatefulPartitionedCall?!dense_142/StatefulPartitionedCall?!dense_143/StatefulPartitionedCall?
"conv2d_141/StatefulPartitionedCallStatefulPartitionedCallconv2d_141_inputconv2d_141_129524conv2d_141_129526*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_141_layer_call_and_return_conditional_losses_129139?
!max_pooling2d_141/PartitionedCallPartitionedCall+conv2d_141/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_129149?
"conv2d_142/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_141/PartitionedCall:output:0conv2d_142_129530conv2d_142_129532*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_142_layer_call_and_return_conditional_losses_129162?
!max_pooling2d_142/PartitionedCallPartitionedCall+conv2d_142/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_129172?
"conv2d_143/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_142/PartitionedCall:output:0conv2d_143_129536conv2d_143_129538*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_143_layer_call_and_return_conditional_losses_129185?
!max_pooling2d_143/PartitionedCallPartitionedCall+conv2d_143/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_143_layer_call_and_return_conditional_losses_129195?
flatten_47/PartitionedCallPartitionedCall*max_pooling2d_143/PartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_flatten_47_layer_call_and_return_conditional_losses_129203?
!dense_141/StatefulPartitionedCallStatefulPartitionedCall#flatten_47/PartitionedCall:output:0dense_141_129543dense_141_129545*
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
E__inference_dense_141_layer_call_and_return_conditional_losses_129216?
dropout_47/PartitionedCallPartitionedCall*dense_141/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_dropout_47_layer_call_and_return_conditional_losses_129227?
!dense_142/StatefulPartitionedCallStatefulPartitionedCall#dropout_47/PartitionedCall:output:0dense_142_129549dense_142_129551*
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
E__inference_dense_142_layer_call_and_return_conditional_losses_129240?
!dense_143/StatefulPartitionedCallStatefulPartitionedCall*dense_142/StatefulPartitionedCall:output:0dense_143_129554dense_143_129556*
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
E__inference_dense_143_layer_call_and_return_conditional_losses_129257y
IdentityIdentity*dense_143/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_141/StatefulPartitionedCall#^conv2d_142/StatefulPartitionedCall#^conv2d_143/StatefulPartitionedCall"^dense_141/StatefulPartitionedCall"^dense_142/StatefulPartitionedCall"^dense_143/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_141/StatefulPartitionedCall"conv2d_141/StatefulPartitionedCall2H
"conv2d_142/StatefulPartitionedCall"conv2d_142/StatefulPartitionedCall2H
"conv2d_143/StatefulPartitionedCall"conv2d_143/StatefulPartitionedCall2F
!dense_141/StatefulPartitionedCall!dense_141/StatefulPartitionedCall2F
!dense_142/StatefulPartitionedCall!dense_142/StatefulPartitionedCall2F
!dense_143/StatefulPartitionedCall!dense_143/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_141_input
?
N
2__inference_max_pooling2d_142_layer_call_fn_129864

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
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_129106?
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
2__inference_max_pooling2d_143_layer_call_fn_129909

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
M__inference_max_pooling2d_143_layer_call_and_return_conditional_losses_129195i
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
?1
?
I__inference_sequential_47_layer_call_and_return_conditional_losses_129599
conv2d_141_input+
conv2d_141_129563: 
conv2d_141_129565: +
conv2d_142_129569: @
conv2d_142_129571:@,
conv2d_143_129575:@? 
conv2d_143_129577:	?#
dense_141_129582:	?@
dense_141_129584:@"
dense_142_129588:@
dense_142_129590:"
dense_143_129593:
dense_143_129595:
identity??"conv2d_141/StatefulPartitionedCall?"conv2d_142/StatefulPartitionedCall?"conv2d_143/StatefulPartitionedCall?!dense_141/StatefulPartitionedCall?!dense_142/StatefulPartitionedCall?!dense_143/StatefulPartitionedCall?"dropout_47/StatefulPartitionedCall?
"conv2d_141/StatefulPartitionedCallStatefulPartitionedCallconv2d_141_inputconv2d_141_129563conv2d_141_129565*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_141_layer_call_and_return_conditional_losses_129139?
!max_pooling2d_141/PartitionedCallPartitionedCall+conv2d_141/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_129149?
"conv2d_142/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_141/PartitionedCall:output:0conv2d_142_129569conv2d_142_129571*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_142_layer_call_and_return_conditional_losses_129162?
!max_pooling2d_142/PartitionedCallPartitionedCall+conv2d_142/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_129172?
"conv2d_143/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_142/PartitionedCall:output:0conv2d_143_129575conv2d_143_129577*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_143_layer_call_and_return_conditional_losses_129185?
!max_pooling2d_143/PartitionedCallPartitionedCall+conv2d_143/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_143_layer_call_and_return_conditional_losses_129195?
flatten_47/PartitionedCallPartitionedCall*max_pooling2d_143/PartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_flatten_47_layer_call_and_return_conditional_losses_129203?
!dense_141/StatefulPartitionedCallStatefulPartitionedCall#flatten_47/PartitionedCall:output:0dense_141_129582dense_141_129584*
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
E__inference_dense_141_layer_call_and_return_conditional_losses_129216?
"dropout_47/StatefulPartitionedCallStatefulPartitionedCall*dense_141/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_dropout_47_layer_call_and_return_conditional_losses_129331?
!dense_142/StatefulPartitionedCallStatefulPartitionedCall+dropout_47/StatefulPartitionedCall:output:0dense_142_129588dense_142_129590*
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
E__inference_dense_142_layer_call_and_return_conditional_losses_129240?
!dense_143/StatefulPartitionedCallStatefulPartitionedCall*dense_142/StatefulPartitionedCall:output:0dense_143_129593dense_143_129595*
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
E__inference_dense_143_layer_call_and_return_conditional_losses_129257y
IdentityIdentity*dense_143/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_141/StatefulPartitionedCall#^conv2d_142/StatefulPartitionedCall#^conv2d_143/StatefulPartitionedCall"^dense_141/StatefulPartitionedCall"^dense_142/StatefulPartitionedCall"^dense_143/StatefulPartitionedCall#^dropout_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_141/StatefulPartitionedCall"conv2d_141/StatefulPartitionedCall2H
"conv2d_142/StatefulPartitionedCall"conv2d_142/StatefulPartitionedCall2H
"conv2d_143/StatefulPartitionedCall"conv2d_143/StatefulPartitionedCall2F
!dense_141/StatefulPartitionedCall!dense_141/StatefulPartitionedCall2F
!dense_142/StatefulPartitionedCall!dense_142/StatefulPartitionedCall2F
!dense_143/StatefulPartitionedCall!dense_143/StatefulPartitionedCall2H
"dropout_47/StatefulPartitionedCall"dropout_47/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_141_input
??
?	
I__inference_sequential_47_layer_call_and_return_conditional_losses_129740

inputsC
)conv2d_141_conv2d_readvariableop_resource: 8
*conv2d_141_biasadd_readvariableop_resource: C
)conv2d_142_conv2d_readvariableop_resource: @8
*conv2d_142_biasadd_readvariableop_resource:@D
)conv2d_143_conv2d_readvariableop_resource:@?9
*conv2d_143_biasadd_readvariableop_resource:	?;
(dense_141_matmul_readvariableop_resource:	?@7
)dense_141_biasadd_readvariableop_resource:@:
(dense_142_matmul_readvariableop_resource:@7
)dense_142_biasadd_readvariableop_resource::
(dense_143_matmul_readvariableop_resource:7
)dense_143_biasadd_readvariableop_resource:
identity??!conv2d_141/BiasAdd/ReadVariableOp? conv2d_141/Conv2D/ReadVariableOp?!conv2d_142/BiasAdd/ReadVariableOp? conv2d_142/Conv2D/ReadVariableOp?!conv2d_143/BiasAdd/ReadVariableOp? conv2d_143/Conv2D/ReadVariableOp? dense_141/BiasAdd/ReadVariableOp?dense_141/MatMul/ReadVariableOp? dense_142/BiasAdd/ReadVariableOp?dense_142/MatMul/ReadVariableOp? dense_143/BiasAdd/ReadVariableOp?dense_143/MatMul/ReadVariableOp?
 conv2d_141/Conv2D/ReadVariableOpReadVariableOp)conv2d_141_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_141/Conv2DConv2Dinputs(conv2d_141/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx *
paddingVALID*
strides
?
!conv2d_141/BiasAdd/ReadVariableOpReadVariableOp*conv2d_141_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_141/BiasAddBiasAddconv2d_141/Conv2D:output:0)conv2d_141/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx n
conv2d_141/ReluReluconv2d_141/BiasAdd:output:0*
T0*/
_output_shapes
:?????????xx ?
max_pooling2d_141/MaxPoolMaxPoolconv2d_141/Relu:activations:0*/
_output_shapes
:?????????<< *
ksize
*
paddingVALID*
strides
?
 conv2d_142/Conv2D/ReadVariableOpReadVariableOp)conv2d_142_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_142/Conv2DConv2D"max_pooling2d_141/MaxPool:output:0(conv2d_142/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
!conv2d_142/BiasAdd/ReadVariableOpReadVariableOp*conv2d_142_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_142/BiasAddBiasAddconv2d_142/Conv2D:output:0)conv2d_142/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@n
conv2d_142/ReluReluconv2d_142/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_142/MaxPoolMaxPoolconv2d_142/Relu:activations:0*/
_output_shapes
:?????????

@*
ksize
*
paddingVALID*
strides
?
 conv2d_143/Conv2D/ReadVariableOpReadVariableOp)conv2d_143_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_143/Conv2DConv2D"max_pooling2d_142/MaxPool:output:0(conv2d_143/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
!conv2d_143/BiasAdd/ReadVariableOpReadVariableOp*conv2d_143_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_143/BiasAddBiasAddconv2d_143/Conv2D:output:0)conv2d_143/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????o
conv2d_143/ReluReluconv2d_143/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
max_pooling2d_143/MaxPoolMaxPoolconv2d_143/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
a
flatten_47/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_47/ReshapeReshape"max_pooling2d_143/MaxPool:output:0flatten_47/Const:output:0*
T0*(
_output_shapes
:???????????
dense_141/MatMul/ReadVariableOpReadVariableOp(dense_141_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_141/MatMulMatMulflatten_47/Reshape:output:0'dense_141/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
 dense_141/BiasAdd/ReadVariableOpReadVariableOp)dense_141_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_141/BiasAddBiasAdddense_141/MatMul:product:0(dense_141/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_141/TanhTanhdense_141/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@e
dropout_47/IdentityIdentitydense_141/Tanh:y:0*
T0*'
_output_shapes
:?????????@?
dense_142/MatMul/ReadVariableOpReadVariableOp(dense_142_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_142/MatMulMatMuldropout_47/Identity:output:0'dense_142/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_142/BiasAdd/ReadVariableOpReadVariableOp)dense_142_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_142/BiasAddBiasAdddense_142/MatMul:product:0(dense_142/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_142/TanhTanhdense_142/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_143/MatMul/ReadVariableOpReadVariableOp(dense_143_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_143/MatMulMatMuldense_142/Tanh:y:0'dense_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_143/BiasAdd/ReadVariableOpReadVariableOp)dense_143_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_143/BiasAddBiasAdddense_143/MatMul:product:0(dense_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_143/SigmoidSigmoiddense_143/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_143/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_141/BiasAdd/ReadVariableOp!^conv2d_141/Conv2D/ReadVariableOp"^conv2d_142/BiasAdd/ReadVariableOp!^conv2d_142/Conv2D/ReadVariableOp"^conv2d_143/BiasAdd/ReadVariableOp!^conv2d_143/Conv2D/ReadVariableOp!^dense_141/BiasAdd/ReadVariableOp ^dense_141/MatMul/ReadVariableOp!^dense_142/BiasAdd/ReadVariableOp ^dense_142/MatMul/ReadVariableOp!^dense_143/BiasAdd/ReadVariableOp ^dense_143/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_141/BiasAdd/ReadVariableOp!conv2d_141/BiasAdd/ReadVariableOp2D
 conv2d_141/Conv2D/ReadVariableOp conv2d_141/Conv2D/ReadVariableOp2F
!conv2d_142/BiasAdd/ReadVariableOp!conv2d_142/BiasAdd/ReadVariableOp2D
 conv2d_142/Conv2D/ReadVariableOp conv2d_142/Conv2D/ReadVariableOp2F
!conv2d_143/BiasAdd/ReadVariableOp!conv2d_143/BiasAdd/ReadVariableOp2D
 conv2d_143/Conv2D/ReadVariableOp conv2d_143/Conv2D/ReadVariableOp2D
 dense_141/BiasAdd/ReadVariableOp dense_141/BiasAdd/ReadVariableOp2B
dense_141/MatMul/ReadVariableOpdense_141/MatMul/ReadVariableOp2D
 dense_142/BiasAdd/ReadVariableOp dense_142/BiasAdd/ReadVariableOp2B
dense_142/MatMul/ReadVariableOpdense_142/MatMul/ReadVariableOp2D
 dense_143/BiasAdd/ReadVariableOp dense_143/BiasAdd/ReadVariableOp2B
dense_143/MatMul/ReadVariableOpdense_143/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
E__inference_dense_143_layer_call_and_return_conditional_losses_129257

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
?

?
E__inference_dense_142_layer_call_and_return_conditional_losses_129240

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
?
d
F__inference_dropout_47_layer_call_and_return_conditional_losses_129965

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
.__inference_sequential_47_layer_call_fn_129659

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
GPU2*0J 8? *R
fMRK
I__inference_sequential_47_layer_call_and_return_conditional_losses_129264o
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

?
E__inference_dense_141_layer_call_and_return_conditional_losses_129950

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
?A
?	
"__inference__traced_restore_130146
file_prefix<
"assignvariableop_conv2d_141_kernel: 0
"assignvariableop_1_conv2d_141_bias: >
$assignvariableop_2_conv2d_142_kernel: @0
"assignvariableop_3_conv2d_142_bias:@?
$assignvariableop_4_conv2d_143_kernel:@?1
"assignvariableop_5_conv2d_143_bias:	?6
#assignvariableop_6_dense_141_kernel:	?@/
!assignvariableop_7_dense_141_bias:@5
#assignvariableop_8_dense_142_kernel:@/
!assignvariableop_9_dense_142_bias:6
$assignvariableop_10_dense_143_kernel:0
"assignvariableop_11_dense_143_bias:#
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_141_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_141_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_142_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_142_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_143_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_143_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_141_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_141_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_142_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_142_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_143_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_143_biasIdentity_11:output:0"/device:CPU:0*
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
?
?
F__inference_conv2d_143_layer_call_and_return_conditional_losses_129185

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
?
b
F__inference_flatten_47_layer_call_and_return_conditional_losses_129203

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
?
?
*__inference_dense_141_layer_call_fn_129939

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
E__inference_dense_141_layer_call_and_return_conditional_losses_129216o
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
?	
e
F__inference_dropout_47_layer_call_and_return_conditional_losses_129331

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
?
i
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_129834

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
i
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_129106

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
E__inference_dense_142_layer_call_and_return_conditional_losses_129997

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
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_129094

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
F__inference_conv2d_142_layer_call_and_return_conditional_losses_129859

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
?
?
+__inference_conv2d_143_layer_call_fn_129888

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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_143_layer_call_and_return_conditional_losses_129185x
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
?1
?
I__inference_sequential_47_layer_call_and_return_conditional_losses_129465

inputs+
conv2d_141_129429: 
conv2d_141_129431: +
conv2d_142_129435: @
conv2d_142_129437:@,
conv2d_143_129441:@? 
conv2d_143_129443:	?#
dense_141_129448:	?@
dense_141_129450:@"
dense_142_129454:@
dense_142_129456:"
dense_143_129459:
dense_143_129461:
identity??"conv2d_141/StatefulPartitionedCall?"conv2d_142/StatefulPartitionedCall?"conv2d_143/StatefulPartitionedCall?!dense_141/StatefulPartitionedCall?!dense_142/StatefulPartitionedCall?!dense_143/StatefulPartitionedCall?"dropout_47/StatefulPartitionedCall?
"conv2d_141/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_141_129429conv2d_141_129431*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_141_layer_call_and_return_conditional_losses_129139?
!max_pooling2d_141/PartitionedCallPartitionedCall+conv2d_141/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_129149?
"conv2d_142/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_141/PartitionedCall:output:0conv2d_142_129435conv2d_142_129437*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_142_layer_call_and_return_conditional_losses_129162?
!max_pooling2d_142/PartitionedCallPartitionedCall+conv2d_142/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_129172?
"conv2d_143/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_142/PartitionedCall:output:0conv2d_143_129441conv2d_143_129443*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_143_layer_call_and_return_conditional_losses_129185?
!max_pooling2d_143/PartitionedCallPartitionedCall+conv2d_143/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_143_layer_call_and_return_conditional_losses_129195?
flatten_47/PartitionedCallPartitionedCall*max_pooling2d_143/PartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_flatten_47_layer_call_and_return_conditional_losses_129203?
!dense_141/StatefulPartitionedCallStatefulPartitionedCall#flatten_47/PartitionedCall:output:0dense_141_129448dense_141_129450*
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
E__inference_dense_141_layer_call_and_return_conditional_losses_129216?
"dropout_47/StatefulPartitionedCallStatefulPartitionedCall*dense_141/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_dropout_47_layer_call_and_return_conditional_losses_129331?
!dense_142/StatefulPartitionedCallStatefulPartitionedCall+dropout_47/StatefulPartitionedCall:output:0dense_142_129454dense_142_129456*
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
E__inference_dense_142_layer_call_and_return_conditional_losses_129240?
!dense_143/StatefulPartitionedCallStatefulPartitionedCall*dense_142/StatefulPartitionedCall:output:0dense_143_129459dense_143_129461*
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
E__inference_dense_143_layer_call_and_return_conditional_losses_129257y
IdentityIdentity*dense_143/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_141/StatefulPartitionedCall#^conv2d_142/StatefulPartitionedCall#^conv2d_143/StatefulPartitionedCall"^dense_141/StatefulPartitionedCall"^dense_142/StatefulPartitionedCall"^dense_143/StatefulPartitionedCall#^dropout_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_141/StatefulPartitionedCall"conv2d_141/StatefulPartitionedCall2H
"conv2d_142/StatefulPartitionedCall"conv2d_142/StatefulPartitionedCall2H
"conv2d_143/StatefulPartitionedCall"conv2d_143/StatefulPartitionedCall2F
!dense_141/StatefulPartitionedCall!dense_141/StatefulPartitionedCall2F
!dense_142/StatefulPartitionedCall!dense_142/StatefulPartitionedCall2F
!dense_143/StatefulPartitionedCall!dense_143/StatefulPartitionedCall2H
"dropout_47/StatefulPartitionedCall"dropout_47/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_143_layer_call_and_return_conditional_losses_129118

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
?
d
F__inference_dropout_47_layer_call_and_return_conditional_losses_129227

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
i
M__inference_max_pooling2d_143_layer_call_and_return_conditional_losses_129195

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
?
N
2__inference_max_pooling2d_142_layer_call_fn_129869

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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_129172h
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
?
i
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_129172

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
?
.__inference_sequential_47_layer_call_fn_129521
conv2d_141_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_141_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *R
fMRK
I__inference_sequential_47_layer_call_and_return_conditional_losses_129465o
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
_user_specified_nameconv2d_141_input
?(
?
__inference__traced_save_130088
file_prefix0
,savev2_conv2d_141_kernel_read_readvariableop.
*savev2_conv2d_141_bias_read_readvariableop0
,savev2_conv2d_142_kernel_read_readvariableop.
*savev2_conv2d_142_bias_read_readvariableop0
,savev2_conv2d_143_kernel_read_readvariableop.
*savev2_conv2d_143_bias_read_readvariableop/
+savev2_dense_141_kernel_read_readvariableop-
)savev2_dense_141_bias_read_readvariableop/
+savev2_dense_142_kernel_read_readvariableop-
)savev2_dense_142_bias_read_readvariableop/
+savev2_dense_143_kernel_read_readvariableop-
)savev2_dense_143_bias_read_readvariableop$
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_141_kernel_read_readvariableop*savev2_conv2d_141_bias_read_readvariableop,savev2_conv2d_142_kernel_read_readvariableop*savev2_conv2d_142_bias_read_readvariableop,savev2_conv2d_143_kernel_read_readvariableop*savev2_conv2d_143_bias_read_readvariableop+savev2_dense_141_kernel_read_readvariableop)savev2_dense_141_bias_read_readvariableop+savev2_dense_142_kernel_read_readvariableop)savev2_dense_142_bias_read_readvariableop+savev2_dense_143_kernel_read_readvariableop)savev2_dense_143_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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
?

?
E__inference_dense_141_layer_call_and_return_conditional_losses_129216

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
+__inference_conv2d_142_layer_call_fn_129848

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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_142_layer_call_and_return_conditional_losses_129162w
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
conv2d_141_inputC
"serving_default_conv2d_141_input:0???????????=
	dense_1430
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
+:) 2conv2d_141/kernel
: 2conv2d_141/bias
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
+:) @2conv2d_142/kernel
:@2conv2d_142/bias
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
,:*@?2conv2d_143/kernel
:?2conv2d_143/bias
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
#:!	?@2dense_141/kernel
:@2dense_141/bias
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
": @2dense_142/kernel
:2dense_142/bias
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
": 2dense_143/kernel
:2dense_143/bias
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
.__inference_sequential_47_layer_call_fn_129291
.__inference_sequential_47_layer_call_fn_129659
.__inference_sequential_47_layer_call_fn_129688
.__inference_sequential_47_layer_call_fn_129521?
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
I__inference_sequential_47_layer_call_and_return_conditional_losses_129740
I__inference_sequential_47_layer_call_and_return_conditional_losses_129799
I__inference_sequential_47_layer_call_and_return_conditional_losses_129560
I__inference_sequential_47_layer_call_and_return_conditional_losses_129599?
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
!__inference__wrapped_model_129085conv2d_141_input"?
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
+__inference_conv2d_141_layer_call_fn_129808?
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
F__inference_conv2d_141_layer_call_and_return_conditional_losses_129819?
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
2__inference_max_pooling2d_141_layer_call_fn_129824
2__inference_max_pooling2d_141_layer_call_fn_129829?
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
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_129834
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_129839?
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
+__inference_conv2d_142_layer_call_fn_129848?
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
F__inference_conv2d_142_layer_call_and_return_conditional_losses_129859?
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
2__inference_max_pooling2d_142_layer_call_fn_129864
2__inference_max_pooling2d_142_layer_call_fn_129869?
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
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_129874
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_129879?
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
+__inference_conv2d_143_layer_call_fn_129888?
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
F__inference_conv2d_143_layer_call_and_return_conditional_losses_129899?
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
2__inference_max_pooling2d_143_layer_call_fn_129904
2__inference_max_pooling2d_143_layer_call_fn_129909?
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
M__inference_max_pooling2d_143_layer_call_and_return_conditional_losses_129914
M__inference_max_pooling2d_143_layer_call_and_return_conditional_losses_129919?
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
+__inference_flatten_47_layer_call_fn_129924?
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
F__inference_flatten_47_layer_call_and_return_conditional_losses_129930?
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
*__inference_dense_141_layer_call_fn_129939?
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
E__inference_dense_141_layer_call_and_return_conditional_losses_129950?
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
+__inference_dropout_47_layer_call_fn_129955
+__inference_dropout_47_layer_call_fn_129960?
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
F__inference_dropout_47_layer_call_and_return_conditional_losses_129965
F__inference_dropout_47_layer_call_and_return_conditional_losses_129977?
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
*__inference_dense_142_layer_call_fn_129986?
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
E__inference_dense_142_layer_call_and_return_conditional_losses_129997?
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
*__inference_dense_143_layer_call_fn_130006?
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
E__inference_dense_143_layer_call_and_return_conditional_losses_130017?
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
$__inference_signature_wrapper_129630conv2d_141_input"?
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
!__inference__wrapped_model_129085? +,<=HIOPC?@
9?6
4?1
conv2d_141_input???????????
? "5?2
0
	dense_143#? 
	dense_143??????????
F__inference_conv2d_141_layer_call_and_return_conditional_losses_129819n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????xx 
? ?
+__inference_conv2d_141_layer_call_fn_129808a9?6
/?,
*?'
inputs???????????
? " ??????????xx ?
F__inference_conv2d_142_layer_call_and_return_conditional_losses_129859l 7?4
-?*
(?%
inputs?????????<< 
? "-?*
#? 
0?????????@
? ?
+__inference_conv2d_142_layer_call_fn_129848_ 7?4
-?*
(?%
inputs?????????<< 
? " ??????????@?
F__inference_conv2d_143_layer_call_and_return_conditional_losses_129899m+,7?4
-?*
(?%
inputs?????????

@
? ".?+
$?!
0??????????
? ?
+__inference_conv2d_143_layer_call_fn_129888`+,7?4
-?*
(?%
inputs?????????

@
? "!????????????
E__inference_dense_141_layer_call_and_return_conditional_losses_129950]<=0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? ~
*__inference_dense_141_layer_call_fn_129939P<=0?-
&?#
!?
inputs??????????
? "??????????@?
E__inference_dense_142_layer_call_and_return_conditional_losses_129997\HI/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? }
*__inference_dense_142_layer_call_fn_129986OHI/?,
%?"
 ?
inputs?????????@
? "???????????
E__inference_dense_143_layer_call_and_return_conditional_losses_130017\OP/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? }
*__inference_dense_143_layer_call_fn_130006OOP/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_dropout_47_layer_call_and_return_conditional_losses_129965\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
F__inference_dropout_47_layer_call_and_return_conditional_losses_129977\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ~
+__inference_dropout_47_layer_call_fn_129955O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@~
+__inference_dropout_47_layer_call_fn_129960O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
F__inference_flatten_47_layer_call_and_return_conditional_losses_129930b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_flatten_47_layer_call_fn_129924U8?5
.?+
)?&
inputs??????????
? "????????????
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_129834?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_129839h7?4
-?*
(?%
inputs?????????xx 
? "-?*
#? 
0?????????<< 
? ?
2__inference_max_pooling2d_141_layer_call_fn_129824?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_141_layer_call_fn_129829[7?4
-?*
(?%
inputs?????????xx 
? " ??????????<< ?
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_129874?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_129879h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????

@
? ?
2__inference_max_pooling2d_142_layer_call_fn_129864?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_142_layer_call_fn_129869[7?4
-?*
(?%
inputs?????????@
? " ??????????

@?
M__inference_max_pooling2d_143_layer_call_and_return_conditional_losses_129914?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_143_layer_call_and_return_conditional_losses_129919j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
2__inference_max_pooling2d_143_layer_call_fn_129904?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_143_layer_call_fn_129909]8?5
.?+
)?&
inputs??????????
? "!????????????
I__inference_sequential_47_layer_call_and_return_conditional_losses_129560? +,<=HIOPK?H
A?>
4?1
conv2d_141_input???????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_47_layer_call_and_return_conditional_losses_129599? +,<=HIOPK?H
A?>
4?1
conv2d_141_input???????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_47_layer_call_and_return_conditional_losses_129740x +,<=HIOPA?>
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
I__inference_sequential_47_layer_call_and_return_conditional_losses_129799x +,<=HIOPA?>
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
.__inference_sequential_47_layer_call_fn_129291u +,<=HIOPK?H
A?>
4?1
conv2d_141_input???????????
p 

 
? "???????????
.__inference_sequential_47_layer_call_fn_129521u +,<=HIOPK?H
A?>
4?1
conv2d_141_input???????????
p

 
? "???????????
.__inference_sequential_47_layer_call_fn_129659k +,<=HIOPA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
.__inference_sequential_47_layer_call_fn_129688k +,<=HIOPA?>
7?4
*?'
inputs???????????
p

 
? "???????????
$__inference_signature_wrapper_129630? +,<=HIOPW?T
? 
M?J
H
conv2d_141_input4?1
conv2d_141_input???????????"5?2
0
	dense_143#? 
	dense_143?????????