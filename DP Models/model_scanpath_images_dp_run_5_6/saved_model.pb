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
conv2d_168/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_168/kernel

%conv2d_168/kernel/Read/ReadVariableOpReadVariableOpconv2d_168/kernel*&
_output_shapes
: *
dtype0
v
conv2d_168/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_168/bias
o
#conv2d_168/bias/Read/ReadVariableOpReadVariableOpconv2d_168/bias*
_output_shapes
: *
dtype0
?
conv2d_169/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_169/kernel

%conv2d_169/kernel/Read/ReadVariableOpReadVariableOpconv2d_169/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_169/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_169/bias
o
#conv2d_169/bias/Read/ReadVariableOpReadVariableOpconv2d_169/bias*
_output_shapes
:@*
dtype0
?
conv2d_170/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*"
shared_nameconv2d_170/kernel
?
%conv2d_170/kernel/Read/ReadVariableOpReadVariableOpconv2d_170/kernel*'
_output_shapes
:@?*
dtype0
w
conv2d_170/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_170/bias
p
#conv2d_170/bias/Read/ReadVariableOpReadVariableOpconv2d_170/bias*
_output_shapes	
:?*
dtype0
}
dense_168/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*!
shared_namedense_168/kernel
v
$dense_168/kernel/Read/ReadVariableOpReadVariableOpdense_168/kernel*
_output_shapes
:	?@*
dtype0
t
dense_168/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_168/bias
m
"dense_168/bias/Read/ReadVariableOpReadVariableOpdense_168/bias*
_output_shapes
:@*
dtype0
|
dense_169/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_169/kernel
u
$dense_169/kernel/Read/ReadVariableOpReadVariableOpdense_169/kernel*
_output_shapes

:@*
dtype0
t
dense_169/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_169/bias
m
"dense_169/bias/Read/ReadVariableOpReadVariableOpdense_169/bias*
_output_shapes
:*
dtype0
|
dense_170/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_170/kernel
u
$dense_170/kernel/Read/ReadVariableOpReadVariableOpdense_170/kernel*
_output_shapes

:*
dtype0
t
dense_170/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_170/bias
m
"dense_170/bias/Read/ReadVariableOpReadVariableOpdense_170/bias*
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
VARIABLE_VALUEconv2d_168/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_168/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_169/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_169/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_170/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_170/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_168/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_168/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_169/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_169/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_170/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_170/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
 serving_default_conv2d_168_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_168_inputconv2d_168/kernelconv2d_168/biasconv2d_169/kernelconv2d_169/biasconv2d_170/kernelconv2d_170/biasdense_168/kerneldense_168/biasdense_169/kerneldense_169/biasdense_170/kerneldense_170/bias*
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
$__inference_signature_wrapper_154047
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_168/kernel/Read/ReadVariableOp#conv2d_168/bias/Read/ReadVariableOp%conv2d_169/kernel/Read/ReadVariableOp#conv2d_169/bias/Read/ReadVariableOp%conv2d_170/kernel/Read/ReadVariableOp#conv2d_170/bias/Read/ReadVariableOp$dense_168/kernel/Read/ReadVariableOp"dense_168/bias/Read/ReadVariableOp$dense_169/kernel/Read/ReadVariableOp"dense_169/bias/Read/ReadVariableOp$dense_170/kernel/Read/ReadVariableOp"dense_170/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
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
__inference__traced_save_154505
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_168/kernelconv2d_168/biasconv2d_169/kernelconv2d_169/biasconv2d_170/kernelconv2d_170/biasdense_168/kerneldense_168/biasdense_169/kerneldense_169/biasdense_170/kerneldense_170/biastotalcounttotal_1count_1*
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
"__inference__traced_restore_154563??
?
?
*__inference_dense_170_layer_call_fn_154423

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
E__inference_dense_170_layer_call_and_return_conditional_losses_153674o
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
E__inference_dense_170_layer_call_and_return_conditional_losses_154434

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
+__inference_dropout_56_layer_call_fn_154377

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
F__inference_dropout_56_layer_call_and_return_conditional_losses_153748o
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
?
.__inference_sequential_56_layer_call_fn_154105

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
I__inference_sequential_56_layer_call_and_return_conditional_losses_153882o
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
?
i
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_154256

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
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_153523

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
E__inference_dense_170_layer_call_and_return_conditional_losses_153674

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
?(
?
__inference__traced_save_154505
file_prefix0
,savev2_conv2d_168_kernel_read_readvariableop.
*savev2_conv2d_168_bias_read_readvariableop0
,savev2_conv2d_169_kernel_read_readvariableop.
*savev2_conv2d_169_bias_read_readvariableop0
,savev2_conv2d_170_kernel_read_readvariableop.
*savev2_conv2d_170_bias_read_readvariableop/
+savev2_dense_168_kernel_read_readvariableop-
)savev2_dense_168_bias_read_readvariableop/
+savev2_dense_169_kernel_read_readvariableop-
)savev2_dense_169_bias_read_readvariableop/
+savev2_dense_170_kernel_read_readvariableop-
)savev2_dense_170_bias_read_readvariableop$
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_168_kernel_read_readvariableop*savev2_conv2d_168_bias_read_readvariableop,savev2_conv2d_169_kernel_read_readvariableop*savev2_conv2d_169_bias_read_readvariableop,savev2_conv2d_170_kernel_read_readvariableop*savev2_conv2d_170_bias_read_readvariableop+savev2_dense_168_kernel_read_readvariableop)savev2_dense_168_bias_read_readvariableop+savev2_dense_169_kernel_read_readvariableop)savev2_dense_169_bias_read_readvariableop+savev2_dense_170_kernel_read_readvariableop)savev2_dense_170_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
+__inference_conv2d_169_layer_call_fn_154265

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
F__inference_conv2d_169_layer_call_and_return_conditional_losses_153579w
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
?
?
$__inference_signature_wrapper_154047
conv2d_168_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_168_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
!__inference__wrapped_model_153502o
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
_user_specified_nameconv2d_168_input
?
?
*__inference_dense_168_layer_call_fn_154356

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
E__inference_dense_168_layer_call_and_return_conditional_losses_153633o
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
?
F__inference_conv2d_168_layer_call_and_return_conditional_losses_153556

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
?0
?
I__inference_sequential_56_layer_call_and_return_conditional_losses_153977
conv2d_168_input+
conv2d_168_153941: 
conv2d_168_153943: +
conv2d_169_153947: @
conv2d_169_153949:@,
conv2d_170_153953:@? 
conv2d_170_153955:	?#
dense_168_153960:	?@
dense_168_153962:@"
dense_169_153966:@
dense_169_153968:"
dense_170_153971:
dense_170_153973:
identity??"conv2d_168/StatefulPartitionedCall?"conv2d_169/StatefulPartitionedCall?"conv2d_170/StatefulPartitionedCall?!dense_168/StatefulPartitionedCall?!dense_169/StatefulPartitionedCall?!dense_170/StatefulPartitionedCall?
"conv2d_168/StatefulPartitionedCallStatefulPartitionedCallconv2d_168_inputconv2d_168_153941conv2d_168_153943*
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
F__inference_conv2d_168_layer_call_and_return_conditional_losses_153556?
!max_pooling2d_168/PartitionedCallPartitionedCall+conv2d_168/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_153566?
"conv2d_169/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_168/PartitionedCall:output:0conv2d_169_153947conv2d_169_153949*
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
F__inference_conv2d_169_layer_call_and_return_conditional_losses_153579?
!max_pooling2d_169/PartitionedCallPartitionedCall+conv2d_169/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_153589?
"conv2d_170/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_169/PartitionedCall:output:0conv2d_170_153953conv2d_170_153955*
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
F__inference_conv2d_170_layer_call_and_return_conditional_losses_153602?
!max_pooling2d_170/PartitionedCallPartitionedCall+conv2d_170/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_153612?
flatten_56/PartitionedCallPartitionedCall*max_pooling2d_170/PartitionedCall:output:0*
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
F__inference_flatten_56_layer_call_and_return_conditional_losses_153620?
!dense_168/StatefulPartitionedCallStatefulPartitionedCall#flatten_56/PartitionedCall:output:0dense_168_153960dense_168_153962*
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
E__inference_dense_168_layer_call_and_return_conditional_losses_153633?
dropout_56/PartitionedCallPartitionedCall*dense_168/StatefulPartitionedCall:output:0*
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
F__inference_dropout_56_layer_call_and_return_conditional_losses_153644?
!dense_169/StatefulPartitionedCallStatefulPartitionedCall#dropout_56/PartitionedCall:output:0dense_169_153966dense_169_153968*
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
E__inference_dense_169_layer_call_and_return_conditional_losses_153657?
!dense_170/StatefulPartitionedCallStatefulPartitionedCall*dense_169/StatefulPartitionedCall:output:0dense_170_153971dense_170_153973*
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
E__inference_dense_170_layer_call_and_return_conditional_losses_153674y
IdentityIdentity*dense_170/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_168/StatefulPartitionedCall#^conv2d_169/StatefulPartitionedCall#^conv2d_170/StatefulPartitionedCall"^dense_168/StatefulPartitionedCall"^dense_169/StatefulPartitionedCall"^dense_170/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_168/StatefulPartitionedCall"conv2d_168/StatefulPartitionedCall2H
"conv2d_169/StatefulPartitionedCall"conv2d_169/StatefulPartitionedCall2H
"conv2d_170/StatefulPartitionedCall"conv2d_170/StatefulPartitionedCall2F
!dense_168/StatefulPartitionedCall!dense_168/StatefulPartitionedCall2F
!dense_169/StatefulPartitionedCall!dense_169/StatefulPartitionedCall2F
!dense_170/StatefulPartitionedCall!dense_170/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_168_input
?

?
E__inference_dense_169_layer_call_and_return_conditional_losses_153657

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
e
F__inference_dropout_56_layer_call_and_return_conditional_losses_153748

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
G
+__inference_flatten_56_layer_call_fn_154341

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
F__inference_flatten_56_layer_call_and_return_conditional_losses_153620a
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
F__inference_conv2d_169_layer_call_and_return_conditional_losses_154276

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
?

?
E__inference_dense_168_layer_call_and_return_conditional_losses_153633

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
?O
?
!__inference__wrapped_model_153502
conv2d_168_inputQ
7sequential_56_conv2d_168_conv2d_readvariableop_resource: F
8sequential_56_conv2d_168_biasadd_readvariableop_resource: Q
7sequential_56_conv2d_169_conv2d_readvariableop_resource: @F
8sequential_56_conv2d_169_biasadd_readvariableop_resource:@R
7sequential_56_conv2d_170_conv2d_readvariableop_resource:@?G
8sequential_56_conv2d_170_biasadd_readvariableop_resource:	?I
6sequential_56_dense_168_matmul_readvariableop_resource:	?@E
7sequential_56_dense_168_biasadd_readvariableop_resource:@H
6sequential_56_dense_169_matmul_readvariableop_resource:@E
7sequential_56_dense_169_biasadd_readvariableop_resource:H
6sequential_56_dense_170_matmul_readvariableop_resource:E
7sequential_56_dense_170_biasadd_readvariableop_resource:
identity??/sequential_56/conv2d_168/BiasAdd/ReadVariableOp?.sequential_56/conv2d_168/Conv2D/ReadVariableOp?/sequential_56/conv2d_169/BiasAdd/ReadVariableOp?.sequential_56/conv2d_169/Conv2D/ReadVariableOp?/sequential_56/conv2d_170/BiasAdd/ReadVariableOp?.sequential_56/conv2d_170/Conv2D/ReadVariableOp?.sequential_56/dense_168/BiasAdd/ReadVariableOp?-sequential_56/dense_168/MatMul/ReadVariableOp?.sequential_56/dense_169/BiasAdd/ReadVariableOp?-sequential_56/dense_169/MatMul/ReadVariableOp?.sequential_56/dense_170/BiasAdd/ReadVariableOp?-sequential_56/dense_170/MatMul/ReadVariableOp?
.sequential_56/conv2d_168/Conv2D/ReadVariableOpReadVariableOp7sequential_56_conv2d_168_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
sequential_56/conv2d_168/Conv2DConv2Dconv2d_168_input6sequential_56/conv2d_168/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx *
paddingVALID*
strides
?
/sequential_56/conv2d_168/BiasAdd/ReadVariableOpReadVariableOp8sequential_56_conv2d_168_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
 sequential_56/conv2d_168/BiasAddBiasAdd(sequential_56/conv2d_168/Conv2D:output:07sequential_56/conv2d_168/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx ?
sequential_56/conv2d_168/ReluRelu)sequential_56/conv2d_168/BiasAdd:output:0*
T0*/
_output_shapes
:?????????xx ?
'sequential_56/max_pooling2d_168/MaxPoolMaxPool+sequential_56/conv2d_168/Relu:activations:0*/
_output_shapes
:?????????<< *
ksize
*
paddingVALID*
strides
?
.sequential_56/conv2d_169/Conv2D/ReadVariableOpReadVariableOp7sequential_56_conv2d_169_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
sequential_56/conv2d_169/Conv2DConv2D0sequential_56/max_pooling2d_168/MaxPool:output:06sequential_56/conv2d_169/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
/sequential_56/conv2d_169/BiasAdd/ReadVariableOpReadVariableOp8sequential_56_conv2d_169_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
 sequential_56/conv2d_169/BiasAddBiasAdd(sequential_56/conv2d_169/Conv2D:output:07sequential_56/conv2d_169/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
sequential_56/conv2d_169/ReluRelu)sequential_56/conv2d_169/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
'sequential_56/max_pooling2d_169/MaxPoolMaxPool+sequential_56/conv2d_169/Relu:activations:0*/
_output_shapes
:?????????

@*
ksize
*
paddingVALID*
strides
?
.sequential_56/conv2d_170/Conv2D/ReadVariableOpReadVariableOp7sequential_56_conv2d_170_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
sequential_56/conv2d_170/Conv2DConv2D0sequential_56/max_pooling2d_169/MaxPool:output:06sequential_56/conv2d_170/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
/sequential_56/conv2d_170/BiasAdd/ReadVariableOpReadVariableOp8sequential_56_conv2d_170_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
 sequential_56/conv2d_170/BiasAddBiasAdd(sequential_56/conv2d_170/Conv2D:output:07sequential_56/conv2d_170/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
sequential_56/conv2d_170/ReluRelu)sequential_56/conv2d_170/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
'sequential_56/max_pooling2d_170/MaxPoolMaxPool+sequential_56/conv2d_170/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
o
sequential_56/flatten_56/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
 sequential_56/flatten_56/ReshapeReshape0sequential_56/max_pooling2d_170/MaxPool:output:0'sequential_56/flatten_56/Const:output:0*
T0*(
_output_shapes
:???????????
-sequential_56/dense_168/MatMul/ReadVariableOpReadVariableOp6sequential_56_dense_168_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
sequential_56/dense_168/MatMulMatMul)sequential_56/flatten_56/Reshape:output:05sequential_56/dense_168/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
.sequential_56/dense_168/BiasAdd/ReadVariableOpReadVariableOp7sequential_56_dense_168_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_56/dense_168/BiasAddBiasAdd(sequential_56/dense_168/MatMul:product:06sequential_56/dense_168/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
sequential_56/dense_168/TanhTanh(sequential_56/dense_168/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
!sequential_56/dropout_56/IdentityIdentity sequential_56/dense_168/Tanh:y:0*
T0*'
_output_shapes
:?????????@?
-sequential_56/dense_169/MatMul/ReadVariableOpReadVariableOp6sequential_56_dense_169_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
sequential_56/dense_169/MatMulMatMul*sequential_56/dropout_56/Identity:output:05sequential_56/dense_169/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
.sequential_56/dense_169/BiasAdd/ReadVariableOpReadVariableOp7sequential_56_dense_169_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_56/dense_169/BiasAddBiasAdd(sequential_56/dense_169/MatMul:product:06sequential_56/dense_169/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_56/dense_169/TanhTanh(sequential_56/dense_169/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
-sequential_56/dense_170/MatMul/ReadVariableOpReadVariableOp6sequential_56_dense_170_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_56/dense_170/MatMulMatMul sequential_56/dense_169/Tanh:y:05sequential_56/dense_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
.sequential_56/dense_170/BiasAdd/ReadVariableOpReadVariableOp7sequential_56_dense_170_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_56/dense_170/BiasAddBiasAdd(sequential_56/dense_170/MatMul:product:06sequential_56/dense_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_56/dense_170/SigmoidSigmoid(sequential_56/dense_170/BiasAdd:output:0*
T0*'
_output_shapes
:?????????r
IdentityIdentity#sequential_56/dense_170/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_56/conv2d_168/BiasAdd/ReadVariableOp/^sequential_56/conv2d_168/Conv2D/ReadVariableOp0^sequential_56/conv2d_169/BiasAdd/ReadVariableOp/^sequential_56/conv2d_169/Conv2D/ReadVariableOp0^sequential_56/conv2d_170/BiasAdd/ReadVariableOp/^sequential_56/conv2d_170/Conv2D/ReadVariableOp/^sequential_56/dense_168/BiasAdd/ReadVariableOp.^sequential_56/dense_168/MatMul/ReadVariableOp/^sequential_56/dense_169/BiasAdd/ReadVariableOp.^sequential_56/dense_169/MatMul/ReadVariableOp/^sequential_56/dense_170/BiasAdd/ReadVariableOp.^sequential_56/dense_170/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2b
/sequential_56/conv2d_168/BiasAdd/ReadVariableOp/sequential_56/conv2d_168/BiasAdd/ReadVariableOp2`
.sequential_56/conv2d_168/Conv2D/ReadVariableOp.sequential_56/conv2d_168/Conv2D/ReadVariableOp2b
/sequential_56/conv2d_169/BiasAdd/ReadVariableOp/sequential_56/conv2d_169/BiasAdd/ReadVariableOp2`
.sequential_56/conv2d_169/Conv2D/ReadVariableOp.sequential_56/conv2d_169/Conv2D/ReadVariableOp2b
/sequential_56/conv2d_170/BiasAdd/ReadVariableOp/sequential_56/conv2d_170/BiasAdd/ReadVariableOp2`
.sequential_56/conv2d_170/Conv2D/ReadVariableOp.sequential_56/conv2d_170/Conv2D/ReadVariableOp2`
.sequential_56/dense_168/BiasAdd/ReadVariableOp.sequential_56/dense_168/BiasAdd/ReadVariableOp2^
-sequential_56/dense_168/MatMul/ReadVariableOp-sequential_56/dense_168/MatMul/ReadVariableOp2`
.sequential_56/dense_169/BiasAdd/ReadVariableOp.sequential_56/dense_169/BiasAdd/ReadVariableOp2^
-sequential_56/dense_169/MatMul/ReadVariableOp-sequential_56/dense_169/MatMul/ReadVariableOp2`
.sequential_56/dense_170/BiasAdd/ReadVariableOp.sequential_56/dense_170/BiasAdd/ReadVariableOp2^
-sequential_56/dense_170/MatMul/ReadVariableOp-sequential_56/dense_170/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_168_input
?
?
*__inference_dense_169_layer_call_fn_154403

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
E__inference_dense_169_layer_call_and_return_conditional_losses_153657o
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
N
2__inference_max_pooling2d_170_layer_call_fn_154326

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
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_153612i
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
I__inference_sequential_56_layer_call_and_return_conditional_losses_154016
conv2d_168_input+
conv2d_168_153980: 
conv2d_168_153982: +
conv2d_169_153986: @
conv2d_169_153988:@,
conv2d_170_153992:@? 
conv2d_170_153994:	?#
dense_168_153999:	?@
dense_168_154001:@"
dense_169_154005:@
dense_169_154007:"
dense_170_154010:
dense_170_154012:
identity??"conv2d_168/StatefulPartitionedCall?"conv2d_169/StatefulPartitionedCall?"conv2d_170/StatefulPartitionedCall?!dense_168/StatefulPartitionedCall?!dense_169/StatefulPartitionedCall?!dense_170/StatefulPartitionedCall?"dropout_56/StatefulPartitionedCall?
"conv2d_168/StatefulPartitionedCallStatefulPartitionedCallconv2d_168_inputconv2d_168_153980conv2d_168_153982*
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
F__inference_conv2d_168_layer_call_and_return_conditional_losses_153556?
!max_pooling2d_168/PartitionedCallPartitionedCall+conv2d_168/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_153566?
"conv2d_169/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_168/PartitionedCall:output:0conv2d_169_153986conv2d_169_153988*
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
F__inference_conv2d_169_layer_call_and_return_conditional_losses_153579?
!max_pooling2d_169/PartitionedCallPartitionedCall+conv2d_169/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_153589?
"conv2d_170/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_169/PartitionedCall:output:0conv2d_170_153992conv2d_170_153994*
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
F__inference_conv2d_170_layer_call_and_return_conditional_losses_153602?
!max_pooling2d_170/PartitionedCallPartitionedCall+conv2d_170/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_153612?
flatten_56/PartitionedCallPartitionedCall*max_pooling2d_170/PartitionedCall:output:0*
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
F__inference_flatten_56_layer_call_and_return_conditional_losses_153620?
!dense_168/StatefulPartitionedCallStatefulPartitionedCall#flatten_56/PartitionedCall:output:0dense_168_153999dense_168_154001*
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
E__inference_dense_168_layer_call_and_return_conditional_losses_153633?
"dropout_56/StatefulPartitionedCallStatefulPartitionedCall*dense_168/StatefulPartitionedCall:output:0*
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
F__inference_dropout_56_layer_call_and_return_conditional_losses_153748?
!dense_169/StatefulPartitionedCallStatefulPartitionedCall+dropout_56/StatefulPartitionedCall:output:0dense_169_154005dense_169_154007*
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
E__inference_dense_169_layer_call_and_return_conditional_losses_153657?
!dense_170/StatefulPartitionedCallStatefulPartitionedCall*dense_169/StatefulPartitionedCall:output:0dense_170_154010dense_170_154012*
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
E__inference_dense_170_layer_call_and_return_conditional_losses_153674y
IdentityIdentity*dense_170/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_168/StatefulPartitionedCall#^conv2d_169/StatefulPartitionedCall#^conv2d_170/StatefulPartitionedCall"^dense_168/StatefulPartitionedCall"^dense_169/StatefulPartitionedCall"^dense_170/StatefulPartitionedCall#^dropout_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_168/StatefulPartitionedCall"conv2d_168/StatefulPartitionedCall2H
"conv2d_169/StatefulPartitionedCall"conv2d_169/StatefulPartitionedCall2H
"conv2d_170/StatefulPartitionedCall"conv2d_170/StatefulPartitionedCall2F
!dense_168/StatefulPartitionedCall!dense_168/StatefulPartitionedCall2F
!dense_169/StatefulPartitionedCall!dense_169/StatefulPartitionedCall2F
!dense_170/StatefulPartitionedCall!dense_170/StatefulPartitionedCall2H
"dropout_56/StatefulPartitionedCall"dropout_56/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_168_input
?
?
F__inference_conv2d_170_layer_call_and_return_conditional_losses_154316

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
?0
?
I__inference_sequential_56_layer_call_and_return_conditional_losses_153681

inputs+
conv2d_168_153557: 
conv2d_168_153559: +
conv2d_169_153580: @
conv2d_169_153582:@,
conv2d_170_153603:@? 
conv2d_170_153605:	?#
dense_168_153634:	?@
dense_168_153636:@"
dense_169_153658:@
dense_169_153660:"
dense_170_153675:
dense_170_153677:
identity??"conv2d_168/StatefulPartitionedCall?"conv2d_169/StatefulPartitionedCall?"conv2d_170/StatefulPartitionedCall?!dense_168/StatefulPartitionedCall?!dense_169/StatefulPartitionedCall?!dense_170/StatefulPartitionedCall?
"conv2d_168/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_168_153557conv2d_168_153559*
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
F__inference_conv2d_168_layer_call_and_return_conditional_losses_153556?
!max_pooling2d_168/PartitionedCallPartitionedCall+conv2d_168/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_153566?
"conv2d_169/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_168/PartitionedCall:output:0conv2d_169_153580conv2d_169_153582*
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
F__inference_conv2d_169_layer_call_and_return_conditional_losses_153579?
!max_pooling2d_169/PartitionedCallPartitionedCall+conv2d_169/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_153589?
"conv2d_170/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_169/PartitionedCall:output:0conv2d_170_153603conv2d_170_153605*
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
F__inference_conv2d_170_layer_call_and_return_conditional_losses_153602?
!max_pooling2d_170/PartitionedCallPartitionedCall+conv2d_170/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_153612?
flatten_56/PartitionedCallPartitionedCall*max_pooling2d_170/PartitionedCall:output:0*
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
F__inference_flatten_56_layer_call_and_return_conditional_losses_153620?
!dense_168/StatefulPartitionedCallStatefulPartitionedCall#flatten_56/PartitionedCall:output:0dense_168_153634dense_168_153636*
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
E__inference_dense_168_layer_call_and_return_conditional_losses_153633?
dropout_56/PartitionedCallPartitionedCall*dense_168/StatefulPartitionedCall:output:0*
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
F__inference_dropout_56_layer_call_and_return_conditional_losses_153644?
!dense_169/StatefulPartitionedCallStatefulPartitionedCall#dropout_56/PartitionedCall:output:0dense_169_153658dense_169_153660*
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
E__inference_dense_169_layer_call_and_return_conditional_losses_153657?
!dense_170/StatefulPartitionedCallStatefulPartitionedCall*dense_169/StatefulPartitionedCall:output:0dense_170_153675dense_170_153677*
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
E__inference_dense_170_layer_call_and_return_conditional_losses_153674y
IdentityIdentity*dense_170/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_168/StatefulPartitionedCall#^conv2d_169/StatefulPartitionedCall#^conv2d_170/StatefulPartitionedCall"^dense_168/StatefulPartitionedCall"^dense_169/StatefulPartitionedCall"^dense_170/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_168/StatefulPartitionedCall"conv2d_168/StatefulPartitionedCall2H
"conv2d_169/StatefulPartitionedCall"conv2d_169/StatefulPartitionedCall2H
"conv2d_170/StatefulPartitionedCall"conv2d_170/StatefulPartitionedCall2F
!dense_168/StatefulPartitionedCall!dense_168/StatefulPartitionedCall2F
!dense_169/StatefulPartitionedCall!dense_169/StatefulPartitionedCall2F
!dense_170/StatefulPartitionedCall!dense_170/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_56_layer_call_and_return_conditional_losses_154394

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
N
2__inference_max_pooling2d_168_layer_call_fn_154241

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
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_153511?
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
i
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_154331

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
?
i
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_154296

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
?
i
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_153566

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
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_153535

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
F__inference_conv2d_168_layer_call_and_return_conditional_losses_154236

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
.__inference_sequential_56_layer_call_fn_153938
conv2d_168_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_168_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
I__inference_sequential_56_layer_call_and_return_conditional_losses_153882o
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
_user_specified_nameconv2d_168_input
?

?
E__inference_dense_168_layer_call_and_return_conditional_losses_154367

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

?
E__inference_dense_169_layer_call_and_return_conditional_losses_154414

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
N
2__inference_max_pooling2d_169_layer_call_fn_154281

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
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_153523?
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
2__inference_max_pooling2d_169_layer_call_fn_154286

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
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_153589h
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
?A
?	
"__inference__traced_restore_154563
file_prefix<
"assignvariableop_conv2d_168_kernel: 0
"assignvariableop_1_conv2d_168_bias: >
$assignvariableop_2_conv2d_169_kernel: @0
"assignvariableop_3_conv2d_169_bias:@?
$assignvariableop_4_conv2d_170_kernel:@?1
"assignvariableop_5_conv2d_170_bias:	?6
#assignvariableop_6_dense_168_kernel:	?@/
!assignvariableop_7_dense_168_bias:@5
#assignvariableop_8_dense_169_kernel:@/
!assignvariableop_9_dense_169_bias:6
$assignvariableop_10_dense_170_kernel:0
"assignvariableop_11_dense_170_bias:#
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_168_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_168_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_169_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_169_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_170_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_170_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_168_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_168_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_169_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_169_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_170_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_170_biasIdentity_11:output:0"/device:CPU:0*
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
?
G
+__inference_dropout_56_layer_call_fn_154372

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
F__inference_dropout_56_layer_call_and_return_conditional_losses_153644`
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
?
i
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_153511

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
?
i
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_153612

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
?G
?	
I__inference_sequential_56_layer_call_and_return_conditional_losses_154216

inputsC
)conv2d_168_conv2d_readvariableop_resource: 8
*conv2d_168_biasadd_readvariableop_resource: C
)conv2d_169_conv2d_readvariableop_resource: @8
*conv2d_169_biasadd_readvariableop_resource:@D
)conv2d_170_conv2d_readvariableop_resource:@?9
*conv2d_170_biasadd_readvariableop_resource:	?;
(dense_168_matmul_readvariableop_resource:	?@7
)dense_168_biasadd_readvariableop_resource:@:
(dense_169_matmul_readvariableop_resource:@7
)dense_169_biasadd_readvariableop_resource::
(dense_170_matmul_readvariableop_resource:7
)dense_170_biasadd_readvariableop_resource:
identity??!conv2d_168/BiasAdd/ReadVariableOp? conv2d_168/Conv2D/ReadVariableOp?!conv2d_169/BiasAdd/ReadVariableOp? conv2d_169/Conv2D/ReadVariableOp?!conv2d_170/BiasAdd/ReadVariableOp? conv2d_170/Conv2D/ReadVariableOp? dense_168/BiasAdd/ReadVariableOp?dense_168/MatMul/ReadVariableOp? dense_169/BiasAdd/ReadVariableOp?dense_169/MatMul/ReadVariableOp? dense_170/BiasAdd/ReadVariableOp?dense_170/MatMul/ReadVariableOp?
 conv2d_168/Conv2D/ReadVariableOpReadVariableOp)conv2d_168_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_168/Conv2DConv2Dinputs(conv2d_168/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx *
paddingVALID*
strides
?
!conv2d_168/BiasAdd/ReadVariableOpReadVariableOp*conv2d_168_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_168/BiasAddBiasAddconv2d_168/Conv2D:output:0)conv2d_168/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx n
conv2d_168/ReluReluconv2d_168/BiasAdd:output:0*
T0*/
_output_shapes
:?????????xx ?
max_pooling2d_168/MaxPoolMaxPoolconv2d_168/Relu:activations:0*/
_output_shapes
:?????????<< *
ksize
*
paddingVALID*
strides
?
 conv2d_169/Conv2D/ReadVariableOpReadVariableOp)conv2d_169_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_169/Conv2DConv2D"max_pooling2d_168/MaxPool:output:0(conv2d_169/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
!conv2d_169/BiasAdd/ReadVariableOpReadVariableOp*conv2d_169_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_169/BiasAddBiasAddconv2d_169/Conv2D:output:0)conv2d_169/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@n
conv2d_169/ReluReluconv2d_169/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_169/MaxPoolMaxPoolconv2d_169/Relu:activations:0*/
_output_shapes
:?????????

@*
ksize
*
paddingVALID*
strides
?
 conv2d_170/Conv2D/ReadVariableOpReadVariableOp)conv2d_170_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_170/Conv2DConv2D"max_pooling2d_169/MaxPool:output:0(conv2d_170/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
!conv2d_170/BiasAdd/ReadVariableOpReadVariableOp*conv2d_170_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_170/BiasAddBiasAddconv2d_170/Conv2D:output:0)conv2d_170/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????o
conv2d_170/ReluReluconv2d_170/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
max_pooling2d_170/MaxPoolMaxPoolconv2d_170/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
a
flatten_56/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_56/ReshapeReshape"max_pooling2d_170/MaxPool:output:0flatten_56/Const:output:0*
T0*(
_output_shapes
:???????????
dense_168/MatMul/ReadVariableOpReadVariableOp(dense_168_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_168/MatMulMatMulflatten_56/Reshape:output:0'dense_168/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
 dense_168/BiasAdd/ReadVariableOpReadVariableOp)dense_168_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_168/BiasAddBiasAdddense_168/MatMul:product:0(dense_168/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_168/TanhTanhdense_168/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@]
dropout_56/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_56/dropout/MulMuldense_168/Tanh:y:0!dropout_56/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@Z
dropout_56/dropout/ShapeShapedense_168/Tanh:y:0*
T0*
_output_shapes
:?
/dropout_56/dropout/random_uniform/RandomUniformRandomUniform!dropout_56/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0f
!dropout_56/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_56/dropout/GreaterEqualGreaterEqual8dropout_56/dropout/random_uniform/RandomUniform:output:0*dropout_56/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@?
dropout_56/dropout/CastCast#dropout_56/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
dropout_56/dropout/Mul_1Muldropout_56/dropout/Mul:z:0dropout_56/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@?
dense_169/MatMul/ReadVariableOpReadVariableOp(dense_169_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_169/MatMulMatMuldropout_56/dropout/Mul_1:z:0'dense_169/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_169/BiasAdd/ReadVariableOpReadVariableOp)dense_169_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_169/BiasAddBiasAdddense_169/MatMul:product:0(dense_169/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_169/TanhTanhdense_169/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_170/MatMul/ReadVariableOpReadVariableOp(dense_170_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_170/MatMulMatMuldense_169/Tanh:y:0'dense_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_170/BiasAdd/ReadVariableOpReadVariableOp)dense_170_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_170/BiasAddBiasAdddense_170/MatMul:product:0(dense_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_170/SigmoidSigmoiddense_170/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_170/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_168/BiasAdd/ReadVariableOp!^conv2d_168/Conv2D/ReadVariableOp"^conv2d_169/BiasAdd/ReadVariableOp!^conv2d_169/Conv2D/ReadVariableOp"^conv2d_170/BiasAdd/ReadVariableOp!^conv2d_170/Conv2D/ReadVariableOp!^dense_168/BiasAdd/ReadVariableOp ^dense_168/MatMul/ReadVariableOp!^dense_169/BiasAdd/ReadVariableOp ^dense_169/MatMul/ReadVariableOp!^dense_170/BiasAdd/ReadVariableOp ^dense_170/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_168/BiasAdd/ReadVariableOp!conv2d_168/BiasAdd/ReadVariableOp2D
 conv2d_168/Conv2D/ReadVariableOp conv2d_168/Conv2D/ReadVariableOp2F
!conv2d_169/BiasAdd/ReadVariableOp!conv2d_169/BiasAdd/ReadVariableOp2D
 conv2d_169/Conv2D/ReadVariableOp conv2d_169/Conv2D/ReadVariableOp2F
!conv2d_170/BiasAdd/ReadVariableOp!conv2d_170/BiasAdd/ReadVariableOp2D
 conv2d_170/Conv2D/ReadVariableOp conv2d_170/Conv2D/ReadVariableOp2D
 dense_168/BiasAdd/ReadVariableOp dense_168/BiasAdd/ReadVariableOp2B
dense_168/MatMul/ReadVariableOpdense_168/MatMul/ReadVariableOp2D
 dense_169/BiasAdd/ReadVariableOp dense_169/BiasAdd/ReadVariableOp2B
dense_169/MatMul/ReadVariableOpdense_169/MatMul/ReadVariableOp2D
 dense_170/BiasAdd/ReadVariableOp dense_170/BiasAdd/ReadVariableOp2B
dense_170/MatMul/ReadVariableOpdense_170/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
F__inference_conv2d_169_layer_call_and_return_conditional_losses_153579

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
??
?	
I__inference_sequential_56_layer_call_and_return_conditional_losses_154157

inputsC
)conv2d_168_conv2d_readvariableop_resource: 8
*conv2d_168_biasadd_readvariableop_resource: C
)conv2d_169_conv2d_readvariableop_resource: @8
*conv2d_169_biasadd_readvariableop_resource:@D
)conv2d_170_conv2d_readvariableop_resource:@?9
*conv2d_170_biasadd_readvariableop_resource:	?;
(dense_168_matmul_readvariableop_resource:	?@7
)dense_168_biasadd_readvariableop_resource:@:
(dense_169_matmul_readvariableop_resource:@7
)dense_169_biasadd_readvariableop_resource::
(dense_170_matmul_readvariableop_resource:7
)dense_170_biasadd_readvariableop_resource:
identity??!conv2d_168/BiasAdd/ReadVariableOp? conv2d_168/Conv2D/ReadVariableOp?!conv2d_169/BiasAdd/ReadVariableOp? conv2d_169/Conv2D/ReadVariableOp?!conv2d_170/BiasAdd/ReadVariableOp? conv2d_170/Conv2D/ReadVariableOp? dense_168/BiasAdd/ReadVariableOp?dense_168/MatMul/ReadVariableOp? dense_169/BiasAdd/ReadVariableOp?dense_169/MatMul/ReadVariableOp? dense_170/BiasAdd/ReadVariableOp?dense_170/MatMul/ReadVariableOp?
 conv2d_168/Conv2D/ReadVariableOpReadVariableOp)conv2d_168_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_168/Conv2DConv2Dinputs(conv2d_168/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx *
paddingVALID*
strides
?
!conv2d_168/BiasAdd/ReadVariableOpReadVariableOp*conv2d_168_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_168/BiasAddBiasAddconv2d_168/Conv2D:output:0)conv2d_168/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx n
conv2d_168/ReluReluconv2d_168/BiasAdd:output:0*
T0*/
_output_shapes
:?????????xx ?
max_pooling2d_168/MaxPoolMaxPoolconv2d_168/Relu:activations:0*/
_output_shapes
:?????????<< *
ksize
*
paddingVALID*
strides
?
 conv2d_169/Conv2D/ReadVariableOpReadVariableOp)conv2d_169_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_169/Conv2DConv2D"max_pooling2d_168/MaxPool:output:0(conv2d_169/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
!conv2d_169/BiasAdd/ReadVariableOpReadVariableOp*conv2d_169_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_169/BiasAddBiasAddconv2d_169/Conv2D:output:0)conv2d_169/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@n
conv2d_169/ReluReluconv2d_169/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_169/MaxPoolMaxPoolconv2d_169/Relu:activations:0*/
_output_shapes
:?????????

@*
ksize
*
paddingVALID*
strides
?
 conv2d_170/Conv2D/ReadVariableOpReadVariableOp)conv2d_170_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_170/Conv2DConv2D"max_pooling2d_169/MaxPool:output:0(conv2d_170/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
!conv2d_170/BiasAdd/ReadVariableOpReadVariableOp*conv2d_170_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_170/BiasAddBiasAddconv2d_170/Conv2D:output:0)conv2d_170/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????o
conv2d_170/ReluReluconv2d_170/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
max_pooling2d_170/MaxPoolMaxPoolconv2d_170/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
a
flatten_56/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_56/ReshapeReshape"max_pooling2d_170/MaxPool:output:0flatten_56/Const:output:0*
T0*(
_output_shapes
:???????????
dense_168/MatMul/ReadVariableOpReadVariableOp(dense_168_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_168/MatMulMatMulflatten_56/Reshape:output:0'dense_168/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
 dense_168/BiasAdd/ReadVariableOpReadVariableOp)dense_168_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_168/BiasAddBiasAdddense_168/MatMul:product:0(dense_168/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_168/TanhTanhdense_168/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@e
dropout_56/IdentityIdentitydense_168/Tanh:y:0*
T0*'
_output_shapes
:?????????@?
dense_169/MatMul/ReadVariableOpReadVariableOp(dense_169_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_169/MatMulMatMuldropout_56/Identity:output:0'dense_169/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_169/BiasAdd/ReadVariableOpReadVariableOp)dense_169_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_169/BiasAddBiasAdddense_169/MatMul:product:0(dense_169/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_169/TanhTanhdense_169/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_170/MatMul/ReadVariableOpReadVariableOp(dense_170_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_170/MatMulMatMuldense_169/Tanh:y:0'dense_170/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_170/BiasAdd/ReadVariableOpReadVariableOp)dense_170_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_170/BiasAddBiasAdddense_170/MatMul:product:0(dense_170/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_170/SigmoidSigmoiddense_170/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_170/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_168/BiasAdd/ReadVariableOp!^conv2d_168/Conv2D/ReadVariableOp"^conv2d_169/BiasAdd/ReadVariableOp!^conv2d_169/Conv2D/ReadVariableOp"^conv2d_170/BiasAdd/ReadVariableOp!^conv2d_170/Conv2D/ReadVariableOp!^dense_168/BiasAdd/ReadVariableOp ^dense_168/MatMul/ReadVariableOp!^dense_169/BiasAdd/ReadVariableOp ^dense_169/MatMul/ReadVariableOp!^dense_170/BiasAdd/ReadVariableOp ^dense_170/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_168/BiasAdd/ReadVariableOp!conv2d_168/BiasAdd/ReadVariableOp2D
 conv2d_168/Conv2D/ReadVariableOp conv2d_168/Conv2D/ReadVariableOp2F
!conv2d_169/BiasAdd/ReadVariableOp!conv2d_169/BiasAdd/ReadVariableOp2D
 conv2d_169/Conv2D/ReadVariableOp conv2d_169/Conv2D/ReadVariableOp2F
!conv2d_170/BiasAdd/ReadVariableOp!conv2d_170/BiasAdd/ReadVariableOp2D
 conv2d_170/Conv2D/ReadVariableOp conv2d_170/Conv2D/ReadVariableOp2D
 dense_168/BiasAdd/ReadVariableOp dense_168/BiasAdd/ReadVariableOp2B
dense_168/MatMul/ReadVariableOpdense_168/MatMul/ReadVariableOp2D
 dense_169/BiasAdd/ReadVariableOp dense_169/BiasAdd/ReadVariableOp2B
dense_169/MatMul/ReadVariableOpdense_169/MatMul/ReadVariableOp2D
 dense_170/BiasAdd/ReadVariableOp dense_170/BiasAdd/ReadVariableOp2B
dense_170/MatMul/ReadVariableOpdense_170/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_153589

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
?
N
2__inference_max_pooling2d_170_layer_call_fn_154321

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
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_153535?
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
+__inference_conv2d_170_layer_call_fn_154305

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
F__inference_conv2d_170_layer_call_and_return_conditional_losses_153602x
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
?
?
+__inference_conv2d_168_layer_call_fn_154225

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
F__inference_conv2d_168_layer_call_and_return_conditional_losses_153556w
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
?
N
2__inference_max_pooling2d_168_layer_call_fn_154246

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
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_153566h
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
?
?
.__inference_sequential_56_layer_call_fn_153708
conv2d_168_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_168_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
I__inference_sequential_56_layer_call_and_return_conditional_losses_153681o
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
_user_specified_nameconv2d_168_input
?
d
F__inference_dropout_56_layer_call_and_return_conditional_losses_153644

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
F__inference_flatten_56_layer_call_and_return_conditional_losses_154347

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
?
b
F__inference_flatten_56_layer_call_and_return_conditional_losses_153620

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
F__inference_dropout_56_layer_call_and_return_conditional_losses_154382

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
?
F__inference_conv2d_170_layer_call_and_return_conditional_losses_153602

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
?
.__inference_sequential_56_layer_call_fn_154076

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
I__inference_sequential_56_layer_call_and_return_conditional_losses_153681o
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
?1
?
I__inference_sequential_56_layer_call_and_return_conditional_losses_153882

inputs+
conv2d_168_153846: 
conv2d_168_153848: +
conv2d_169_153852: @
conv2d_169_153854:@,
conv2d_170_153858:@? 
conv2d_170_153860:	?#
dense_168_153865:	?@
dense_168_153867:@"
dense_169_153871:@
dense_169_153873:"
dense_170_153876:
dense_170_153878:
identity??"conv2d_168/StatefulPartitionedCall?"conv2d_169/StatefulPartitionedCall?"conv2d_170/StatefulPartitionedCall?!dense_168/StatefulPartitionedCall?!dense_169/StatefulPartitionedCall?!dense_170/StatefulPartitionedCall?"dropout_56/StatefulPartitionedCall?
"conv2d_168/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_168_153846conv2d_168_153848*
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
F__inference_conv2d_168_layer_call_and_return_conditional_losses_153556?
!max_pooling2d_168/PartitionedCallPartitionedCall+conv2d_168/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_153566?
"conv2d_169/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_168/PartitionedCall:output:0conv2d_169_153852conv2d_169_153854*
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
F__inference_conv2d_169_layer_call_and_return_conditional_losses_153579?
!max_pooling2d_169/PartitionedCallPartitionedCall+conv2d_169/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_153589?
"conv2d_170/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_169/PartitionedCall:output:0conv2d_170_153858conv2d_170_153860*
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
F__inference_conv2d_170_layer_call_and_return_conditional_losses_153602?
!max_pooling2d_170/PartitionedCallPartitionedCall+conv2d_170/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_153612?
flatten_56/PartitionedCallPartitionedCall*max_pooling2d_170/PartitionedCall:output:0*
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
F__inference_flatten_56_layer_call_and_return_conditional_losses_153620?
!dense_168/StatefulPartitionedCallStatefulPartitionedCall#flatten_56/PartitionedCall:output:0dense_168_153865dense_168_153867*
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
E__inference_dense_168_layer_call_and_return_conditional_losses_153633?
"dropout_56/StatefulPartitionedCallStatefulPartitionedCall*dense_168/StatefulPartitionedCall:output:0*
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
F__inference_dropout_56_layer_call_and_return_conditional_losses_153748?
!dense_169/StatefulPartitionedCallStatefulPartitionedCall+dropout_56/StatefulPartitionedCall:output:0dense_169_153871dense_169_153873*
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
E__inference_dense_169_layer_call_and_return_conditional_losses_153657?
!dense_170/StatefulPartitionedCallStatefulPartitionedCall*dense_169/StatefulPartitionedCall:output:0dense_170_153876dense_170_153878*
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
E__inference_dense_170_layer_call_and_return_conditional_losses_153674y
IdentityIdentity*dense_170/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_168/StatefulPartitionedCall#^conv2d_169/StatefulPartitionedCall#^conv2d_170/StatefulPartitionedCall"^dense_168/StatefulPartitionedCall"^dense_169/StatefulPartitionedCall"^dense_170/StatefulPartitionedCall#^dropout_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_168/StatefulPartitionedCall"conv2d_168/StatefulPartitionedCall2H
"conv2d_169/StatefulPartitionedCall"conv2d_169/StatefulPartitionedCall2H
"conv2d_170/StatefulPartitionedCall"conv2d_170/StatefulPartitionedCall2F
!dense_168/StatefulPartitionedCall!dense_168/StatefulPartitionedCall2F
!dense_169/StatefulPartitionedCall!dense_169/StatefulPartitionedCall2F
!dense_170/StatefulPartitionedCall!dense_170/StatefulPartitionedCall2H
"dropout_56/StatefulPartitionedCall"dropout_56/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_154291

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
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_154251

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
?
i
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_154336

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
conv2d_168_inputC
"serving_default_conv2d_168_input:0???????????=
	dense_1700
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
+:) 2conv2d_168/kernel
: 2conv2d_168/bias
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
+:) @2conv2d_169/kernel
:@2conv2d_169/bias
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
,:*@?2conv2d_170/kernel
:?2conv2d_170/bias
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
#:!	?@2dense_168/kernel
:@2dense_168/bias
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
": @2dense_169/kernel
:2dense_169/bias
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
": 2dense_170/kernel
:2dense_170/bias
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
.__inference_sequential_56_layer_call_fn_153708
.__inference_sequential_56_layer_call_fn_154076
.__inference_sequential_56_layer_call_fn_154105
.__inference_sequential_56_layer_call_fn_153938?
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
I__inference_sequential_56_layer_call_and_return_conditional_losses_154157
I__inference_sequential_56_layer_call_and_return_conditional_losses_154216
I__inference_sequential_56_layer_call_and_return_conditional_losses_153977
I__inference_sequential_56_layer_call_and_return_conditional_losses_154016?
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
!__inference__wrapped_model_153502conv2d_168_input"?
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
+__inference_conv2d_168_layer_call_fn_154225?
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
F__inference_conv2d_168_layer_call_and_return_conditional_losses_154236?
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
2__inference_max_pooling2d_168_layer_call_fn_154241
2__inference_max_pooling2d_168_layer_call_fn_154246?
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
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_154251
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_154256?
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
+__inference_conv2d_169_layer_call_fn_154265?
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
F__inference_conv2d_169_layer_call_and_return_conditional_losses_154276?
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
2__inference_max_pooling2d_169_layer_call_fn_154281
2__inference_max_pooling2d_169_layer_call_fn_154286?
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
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_154291
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_154296?
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
+__inference_conv2d_170_layer_call_fn_154305?
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
F__inference_conv2d_170_layer_call_and_return_conditional_losses_154316?
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
2__inference_max_pooling2d_170_layer_call_fn_154321
2__inference_max_pooling2d_170_layer_call_fn_154326?
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
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_154331
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_154336?
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
+__inference_flatten_56_layer_call_fn_154341?
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
F__inference_flatten_56_layer_call_and_return_conditional_losses_154347?
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
*__inference_dense_168_layer_call_fn_154356?
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
E__inference_dense_168_layer_call_and_return_conditional_losses_154367?
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
+__inference_dropout_56_layer_call_fn_154372
+__inference_dropout_56_layer_call_fn_154377?
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
F__inference_dropout_56_layer_call_and_return_conditional_losses_154382
F__inference_dropout_56_layer_call_and_return_conditional_losses_154394?
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
*__inference_dense_169_layer_call_fn_154403?
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
E__inference_dense_169_layer_call_and_return_conditional_losses_154414?
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
*__inference_dense_170_layer_call_fn_154423?
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
E__inference_dense_170_layer_call_and_return_conditional_losses_154434?
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
$__inference_signature_wrapper_154047conv2d_168_input"?
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
!__inference__wrapped_model_153502? +,<=HIOPC?@
9?6
4?1
conv2d_168_input???????????
? "5?2
0
	dense_170#? 
	dense_170??????????
F__inference_conv2d_168_layer_call_and_return_conditional_losses_154236n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????xx 
? ?
+__inference_conv2d_168_layer_call_fn_154225a9?6
/?,
*?'
inputs???????????
? " ??????????xx ?
F__inference_conv2d_169_layer_call_and_return_conditional_losses_154276l 7?4
-?*
(?%
inputs?????????<< 
? "-?*
#? 
0?????????@
? ?
+__inference_conv2d_169_layer_call_fn_154265_ 7?4
-?*
(?%
inputs?????????<< 
? " ??????????@?
F__inference_conv2d_170_layer_call_and_return_conditional_losses_154316m+,7?4
-?*
(?%
inputs?????????

@
? ".?+
$?!
0??????????
? ?
+__inference_conv2d_170_layer_call_fn_154305`+,7?4
-?*
(?%
inputs?????????

@
? "!????????????
E__inference_dense_168_layer_call_and_return_conditional_losses_154367]<=0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? ~
*__inference_dense_168_layer_call_fn_154356P<=0?-
&?#
!?
inputs??????????
? "??????????@?
E__inference_dense_169_layer_call_and_return_conditional_losses_154414\HI/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? }
*__inference_dense_169_layer_call_fn_154403OHI/?,
%?"
 ?
inputs?????????@
? "???????????
E__inference_dense_170_layer_call_and_return_conditional_losses_154434\OP/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? }
*__inference_dense_170_layer_call_fn_154423OOP/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_dropout_56_layer_call_and_return_conditional_losses_154382\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
F__inference_dropout_56_layer_call_and_return_conditional_losses_154394\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ~
+__inference_dropout_56_layer_call_fn_154372O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@~
+__inference_dropout_56_layer_call_fn_154377O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
F__inference_flatten_56_layer_call_and_return_conditional_losses_154347b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_flatten_56_layer_call_fn_154341U8?5
.?+
)?&
inputs??????????
? "????????????
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_154251?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_154256h7?4
-?*
(?%
inputs?????????xx 
? "-?*
#? 
0?????????<< 
? ?
2__inference_max_pooling2d_168_layer_call_fn_154241?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_168_layer_call_fn_154246[7?4
-?*
(?%
inputs?????????xx 
? " ??????????<< ?
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_154291?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_154296h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????

@
? ?
2__inference_max_pooling2d_169_layer_call_fn_154281?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_169_layer_call_fn_154286[7?4
-?*
(?%
inputs?????????@
? " ??????????

@?
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_154331?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_154336j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
2__inference_max_pooling2d_170_layer_call_fn_154321?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_170_layer_call_fn_154326]8?5
.?+
)?&
inputs??????????
? "!????????????
I__inference_sequential_56_layer_call_and_return_conditional_losses_153977? +,<=HIOPK?H
A?>
4?1
conv2d_168_input???????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_56_layer_call_and_return_conditional_losses_154016? +,<=HIOPK?H
A?>
4?1
conv2d_168_input???????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_56_layer_call_and_return_conditional_losses_154157x +,<=HIOPA?>
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
I__inference_sequential_56_layer_call_and_return_conditional_losses_154216x +,<=HIOPA?>
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
.__inference_sequential_56_layer_call_fn_153708u +,<=HIOPK?H
A?>
4?1
conv2d_168_input???????????
p 

 
? "???????????
.__inference_sequential_56_layer_call_fn_153938u +,<=HIOPK?H
A?>
4?1
conv2d_168_input???????????
p

 
? "???????????
.__inference_sequential_56_layer_call_fn_154076k +,<=HIOPA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
.__inference_sequential_56_layer_call_fn_154105k +,<=HIOPA?>
7?4
*?'
inputs???????????
p

 
? "???????????
$__inference_signature_wrapper_154047? +,<=HIOPW?T
? 
M?J
H
conv2d_168_input4?1
conv2d_168_input???????????"5?2
0
	dense_170#? 
	dense_170?????????