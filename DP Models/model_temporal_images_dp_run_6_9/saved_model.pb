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
conv2d_507/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_507/kernel

%conv2d_507/kernel/Read/ReadVariableOpReadVariableOpconv2d_507/kernel*&
_output_shapes
: *
dtype0
v
conv2d_507/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_507/bias
o
#conv2d_507/bias/Read/ReadVariableOpReadVariableOpconv2d_507/bias*
_output_shapes
: *
dtype0
?
conv2d_508/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_508/kernel

%conv2d_508/kernel/Read/ReadVariableOpReadVariableOpconv2d_508/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_508/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_508/bias
o
#conv2d_508/bias/Read/ReadVariableOpReadVariableOpconv2d_508/bias*
_output_shapes
:@*
dtype0
?
conv2d_509/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*"
shared_nameconv2d_509/kernel
?
%conv2d_509/kernel/Read/ReadVariableOpReadVariableOpconv2d_509/kernel*'
_output_shapes
:@?*
dtype0
w
conv2d_509/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_509/bias
p
#conv2d_509/bias/Read/ReadVariableOpReadVariableOpconv2d_509/bias*
_output_shapes	
:?*
dtype0
}
dense_507/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*!
shared_namedense_507/kernel
v
$dense_507/kernel/Read/ReadVariableOpReadVariableOpdense_507/kernel*
_output_shapes
:	?@*
dtype0
t
dense_507/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_507/bias
m
"dense_507/bias/Read/ReadVariableOpReadVariableOpdense_507/bias*
_output_shapes
:@*
dtype0
|
dense_508/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_508/kernel
u
$dense_508/kernel/Read/ReadVariableOpReadVariableOpdense_508/kernel*
_output_shapes

:@*
dtype0
t
dense_508/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_508/bias
m
"dense_508/bias/Read/ReadVariableOpReadVariableOpdense_508/bias*
_output_shapes
:*
dtype0
|
dense_509/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_509/kernel
u
$dense_509/kernel/Read/ReadVariableOpReadVariableOpdense_509/kernel*
_output_shapes

:*
dtype0
t
dense_509/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_509/bias
m
"dense_509/bias/Read/ReadVariableOpReadVariableOpdense_509/bias*
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
VARIABLE_VALUEconv2d_507/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_507/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_508/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_508/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_509/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_509/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_507/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_507/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_508/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_508/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_509/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_509/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
 serving_default_conv2d_507_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_507_inputconv2d_507/kernelconv2d_507/biasconv2d_508/kernelconv2d_508/biasconv2d_509/kernelconv2d_509/biasdense_507/kerneldense_507/biasdense_508/kerneldense_508/biasdense_509/kerneldense_509/bias*
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
%__inference_signature_wrapper_1046048
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_507/kernel/Read/ReadVariableOp#conv2d_507/bias/Read/ReadVariableOp%conv2d_508/kernel/Read/ReadVariableOp#conv2d_508/bias/Read/ReadVariableOp%conv2d_509/kernel/Read/ReadVariableOp#conv2d_509/bias/Read/ReadVariableOp$dense_507/kernel/Read/ReadVariableOp"dense_507/bias/Read/ReadVariableOp$dense_508/kernel/Read/ReadVariableOp"dense_508/bias/Read/ReadVariableOp$dense_509/kernel/Read/ReadVariableOp"dense_509/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
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
 __inference__traced_save_1046506
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_507/kernelconv2d_507/biasconv2d_508/kernelconv2d_508/biasconv2d_509/kernelconv2d_509/biasdense_507/kerneldense_507/biasdense_508/kerneldense_508/biasdense_509/kerneldense_509/biastotalcounttotal_1count_1*
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
#__inference__traced_restore_1046564ۃ
?
O
3__inference_max_pooling2d_509_layer_call_fn_1046322

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
N__inference_max_pooling2d_509_layer_call_and_return_conditional_losses_1045536?
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
?(
?
 __inference__traced_save_1046506
file_prefix0
,savev2_conv2d_507_kernel_read_readvariableop.
*savev2_conv2d_507_bias_read_readvariableop0
,savev2_conv2d_508_kernel_read_readvariableop.
*savev2_conv2d_508_bias_read_readvariableop0
,savev2_conv2d_509_kernel_read_readvariableop.
*savev2_conv2d_509_bias_read_readvariableop/
+savev2_dense_507_kernel_read_readvariableop-
)savev2_dense_507_bias_read_readvariableop/
+savev2_dense_508_kernel_read_readvariableop-
)savev2_dense_508_bias_read_readvariableop/
+savev2_dense_509_kernel_read_readvariableop-
)savev2_dense_509_bias_read_readvariableop$
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_507_kernel_read_readvariableop*savev2_conv2d_507_bias_read_readvariableop,savev2_conv2d_508_kernel_read_readvariableop*savev2_conv2d_508_bias_read_readvariableop,savev2_conv2d_509_kernel_read_readvariableop*savev2_conv2d_509_bias_read_readvariableop+savev2_dense_507_kernel_read_readvariableop)savev2_dense_507_bias_read_readvariableop+savev2_dense_508_kernel_read_readvariableop)savev2_dense_508_bias_read_readvariableop+savev2_dense_509_kernel_read_readvariableop)savev2_dense_509_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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
?
G__inference_conv2d_509_layer_call_and_return_conditional_losses_1045603

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
?
G__inference_conv2d_509_layer_call_and_return_conditional_losses_1046317

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
?
j
N__inference_max_pooling2d_507_layer_call_and_return_conditional_losses_1046257

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
j
N__inference_max_pooling2d_509_layer_call_and_return_conditional_losses_1046337

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
?
j
N__inference_max_pooling2d_508_layer_call_and_return_conditional_losses_1045590

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
?

?
F__inference_dense_509_layer_call_and_return_conditional_losses_1045675

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
#__inference__traced_restore_1046564
file_prefix<
"assignvariableop_conv2d_507_kernel: 0
"assignvariableop_1_conv2d_507_bias: >
$assignvariableop_2_conv2d_508_kernel: @0
"assignvariableop_3_conv2d_508_bias:@?
$assignvariableop_4_conv2d_509_kernel:@?1
"assignvariableop_5_conv2d_509_bias:	?6
#assignvariableop_6_dense_507_kernel:	?@/
!assignvariableop_7_dense_507_bias:@5
#assignvariableop_8_dense_508_kernel:@/
!assignvariableop_9_dense_508_bias:6
$assignvariableop_10_dense_509_kernel:0
"assignvariableop_11_dense_509_bias:#
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_507_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_507_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_508_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_508_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_509_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_509_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_507_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_507_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_508_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_508_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_509_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_509_biasIdentity_11:output:0"/device:CPU:0*
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
??
?	
K__inference_sequential_169_layer_call_and_return_conditional_losses_1046158

inputsC
)conv2d_507_conv2d_readvariableop_resource: 8
*conv2d_507_biasadd_readvariableop_resource: C
)conv2d_508_conv2d_readvariableop_resource: @8
*conv2d_508_biasadd_readvariableop_resource:@D
)conv2d_509_conv2d_readvariableop_resource:@?9
*conv2d_509_biasadd_readvariableop_resource:	?;
(dense_507_matmul_readvariableop_resource:	?@7
)dense_507_biasadd_readvariableop_resource:@:
(dense_508_matmul_readvariableop_resource:@7
)dense_508_biasadd_readvariableop_resource::
(dense_509_matmul_readvariableop_resource:7
)dense_509_biasadd_readvariableop_resource:
identity??!conv2d_507/BiasAdd/ReadVariableOp? conv2d_507/Conv2D/ReadVariableOp?!conv2d_508/BiasAdd/ReadVariableOp? conv2d_508/Conv2D/ReadVariableOp?!conv2d_509/BiasAdd/ReadVariableOp? conv2d_509/Conv2D/ReadVariableOp? dense_507/BiasAdd/ReadVariableOp?dense_507/MatMul/ReadVariableOp? dense_508/BiasAdd/ReadVariableOp?dense_508/MatMul/ReadVariableOp? dense_509/BiasAdd/ReadVariableOp?dense_509/MatMul/ReadVariableOp?
 conv2d_507/Conv2D/ReadVariableOpReadVariableOp)conv2d_507_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_507/Conv2DConv2Dinputs(conv2d_507/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
?
!conv2d_507/BiasAdd/ReadVariableOpReadVariableOp*conv2d_507_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_507/BiasAddBiasAddconv2d_507/Conv2D:output:0)conv2d_507/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] n
conv2d_507/ReluReluconv2d_507/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] ?
max_pooling2d_507/MaxPoolMaxPoolconv2d_507/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
?
 conv2d_508/Conv2D/ReadVariableOpReadVariableOp)conv2d_508_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_508/Conv2DConv2D"max_pooling2d_507/MaxPool:output:0(conv2d_508/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
!conv2d_508/BiasAdd/ReadVariableOpReadVariableOp*conv2d_508_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_508/BiasAddBiasAddconv2d_508/Conv2D:output:0)conv2d_508/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@n
conv2d_508/ReluReluconv2d_508/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_508/MaxPoolMaxPoolconv2d_508/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
?
 conv2d_509/Conv2D/ReadVariableOpReadVariableOp)conv2d_509_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_509/Conv2DConv2D"max_pooling2d_508/MaxPool:output:0(conv2d_509/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
!conv2d_509/BiasAdd/ReadVariableOpReadVariableOp*conv2d_509_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_509/BiasAddBiasAddconv2d_509/Conv2D:output:0)conv2d_509/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????o
conv2d_509/ReluReluconv2d_509/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
max_pooling2d_509/MaxPoolMaxPoolconv2d_509/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
b
flatten_169/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_169/ReshapeReshape"max_pooling2d_509/MaxPool:output:0flatten_169/Const:output:0*
T0*(
_output_shapes
:???????????
dense_507/MatMul/ReadVariableOpReadVariableOp(dense_507_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_507/MatMulMatMulflatten_169/Reshape:output:0'dense_507/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
 dense_507/BiasAdd/ReadVariableOpReadVariableOp)dense_507_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_507/BiasAddBiasAdddense_507/MatMul:product:0(dense_507/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_507/TanhTanhdense_507/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@f
dropout_169/IdentityIdentitydense_507/Tanh:y:0*
T0*'
_output_shapes
:?????????@?
dense_508/MatMul/ReadVariableOpReadVariableOp(dense_508_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_508/MatMulMatMuldropout_169/Identity:output:0'dense_508/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_508/BiasAdd/ReadVariableOpReadVariableOp)dense_508_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_508/BiasAddBiasAdddense_508/MatMul:product:0(dense_508/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_508/TanhTanhdense_508/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_509/MatMul/ReadVariableOpReadVariableOp(dense_509_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_509/MatMulMatMuldense_508/Tanh:y:0'dense_509/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_509/BiasAdd/ReadVariableOpReadVariableOp)dense_509_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_509/BiasAddBiasAdddense_509/MatMul:product:0(dense_509/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_509/SigmoidSigmoiddense_509/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_509/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_507/BiasAdd/ReadVariableOp!^conv2d_507/Conv2D/ReadVariableOp"^conv2d_508/BiasAdd/ReadVariableOp!^conv2d_508/Conv2D/ReadVariableOp"^conv2d_509/BiasAdd/ReadVariableOp!^conv2d_509/Conv2D/ReadVariableOp!^dense_507/BiasAdd/ReadVariableOp ^dense_507/MatMul/ReadVariableOp!^dense_508/BiasAdd/ReadVariableOp ^dense_508/MatMul/ReadVariableOp!^dense_509/BiasAdd/ReadVariableOp ^dense_509/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_507/BiasAdd/ReadVariableOp!conv2d_507/BiasAdd/ReadVariableOp2D
 conv2d_507/Conv2D/ReadVariableOp conv2d_507/Conv2D/ReadVariableOp2F
!conv2d_508/BiasAdd/ReadVariableOp!conv2d_508/BiasAdd/ReadVariableOp2D
 conv2d_508/Conv2D/ReadVariableOp conv2d_508/Conv2D/ReadVariableOp2F
!conv2d_509/BiasAdd/ReadVariableOp!conv2d_509/BiasAdd/ReadVariableOp2D
 conv2d_509/Conv2D/ReadVariableOp conv2d_509/Conv2D/ReadVariableOp2D
 dense_507/BiasAdd/ReadVariableOp dense_507/BiasAdd/ReadVariableOp2B
dense_507/MatMul/ReadVariableOpdense_507/MatMul/ReadVariableOp2D
 dense_508/BiasAdd/ReadVariableOp dense_508/BiasAdd/ReadVariableOp2B
dense_508/MatMul/ReadVariableOpdense_508/MatMul/ReadVariableOp2D
 dense_509/BiasAdd/ReadVariableOp dense_509/BiasAdd/ReadVariableOp2B
dense_509/MatMul/ReadVariableOpdense_509/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
j
N__inference_max_pooling2d_509_layer_call_and_return_conditional_losses_1046332

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
%__inference_signature_wrapper_1046048
conv2d_507_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_507_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_1045503o
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
_user_specified_nameconv2d_507_input
?
O
3__inference_max_pooling2d_508_layer_call_fn_1046287

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
N__inference_max_pooling2d_508_layer_call_and_return_conditional_losses_1045590h
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
?	
g
H__inference_dropout_169_layer_call_and_return_conditional_losses_1045749

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
I
-__inference_flatten_169_layer_call_fn_1046342

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
H__inference_flatten_169_layer_call_and_return_conditional_losses_1045621a
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
,__inference_conv2d_508_layer_call_fn_1046266

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
G__inference_conv2d_508_layer_call_and_return_conditional_losses_1045580w
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
j
N__inference_max_pooling2d_507_layer_call_and_return_conditional_losses_1045512

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
?2
?
K__inference_sequential_169_layer_call_and_return_conditional_losses_1045883

inputs,
conv2d_507_1045847:  
conv2d_507_1045849: ,
conv2d_508_1045853: @ 
conv2d_508_1045855:@-
conv2d_509_1045859:@?!
conv2d_509_1045861:	?$
dense_507_1045866:	?@
dense_507_1045868:@#
dense_508_1045872:@
dense_508_1045874:#
dense_509_1045877:
dense_509_1045879:
identity??"conv2d_507/StatefulPartitionedCall?"conv2d_508/StatefulPartitionedCall?"conv2d_509/StatefulPartitionedCall?!dense_507/StatefulPartitionedCall?!dense_508/StatefulPartitionedCall?!dense_509/StatefulPartitionedCall?#dropout_169/StatefulPartitionedCall?
"conv2d_507/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_507_1045847conv2d_507_1045849*
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
G__inference_conv2d_507_layer_call_and_return_conditional_losses_1045557?
!max_pooling2d_507/PartitionedCallPartitionedCall+conv2d_507/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_507_layer_call_and_return_conditional_losses_1045567?
"conv2d_508/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_507/PartitionedCall:output:0conv2d_508_1045853conv2d_508_1045855*
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
G__inference_conv2d_508_layer_call_and_return_conditional_losses_1045580?
!max_pooling2d_508/PartitionedCallPartitionedCall+conv2d_508/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_508_layer_call_and_return_conditional_losses_1045590?
"conv2d_509/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_508/PartitionedCall:output:0conv2d_509_1045859conv2d_509_1045861*
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
G__inference_conv2d_509_layer_call_and_return_conditional_losses_1045603?
!max_pooling2d_509/PartitionedCallPartitionedCall+conv2d_509/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_509_layer_call_and_return_conditional_losses_1045613?
flatten_169/PartitionedCallPartitionedCall*max_pooling2d_509/PartitionedCall:output:0*
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
H__inference_flatten_169_layer_call_and_return_conditional_losses_1045621?
!dense_507/StatefulPartitionedCallStatefulPartitionedCall$flatten_169/PartitionedCall:output:0dense_507_1045866dense_507_1045868*
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
F__inference_dense_507_layer_call_and_return_conditional_losses_1045634?
#dropout_169/StatefulPartitionedCallStatefulPartitionedCall*dense_507/StatefulPartitionedCall:output:0*
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
H__inference_dropout_169_layer_call_and_return_conditional_losses_1045749?
!dense_508/StatefulPartitionedCallStatefulPartitionedCall,dropout_169/StatefulPartitionedCall:output:0dense_508_1045872dense_508_1045874*
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
F__inference_dense_508_layer_call_and_return_conditional_losses_1045658?
!dense_509/StatefulPartitionedCallStatefulPartitionedCall*dense_508/StatefulPartitionedCall:output:0dense_509_1045877dense_509_1045879*
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
F__inference_dense_509_layer_call_and_return_conditional_losses_1045675y
IdentityIdentity*dense_509/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_507/StatefulPartitionedCall#^conv2d_508/StatefulPartitionedCall#^conv2d_509/StatefulPartitionedCall"^dense_507/StatefulPartitionedCall"^dense_508/StatefulPartitionedCall"^dense_509/StatefulPartitionedCall$^dropout_169/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_507/StatefulPartitionedCall"conv2d_507/StatefulPartitionedCall2H
"conv2d_508/StatefulPartitionedCall"conv2d_508/StatefulPartitionedCall2H
"conv2d_509/StatefulPartitionedCall"conv2d_509/StatefulPartitionedCall2F
!dense_507/StatefulPartitionedCall!dense_507/StatefulPartitionedCall2F
!dense_508/StatefulPartitionedCall!dense_508/StatefulPartitionedCall2F
!dense_509/StatefulPartitionedCall!dense_509/StatefulPartitionedCall2J
#dropout_169/StatefulPartitionedCall#dropout_169/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
+__inference_dense_508_layer_call_fn_1046404

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
F__inference_dense_508_layer_call_and_return_conditional_losses_1045658o
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
?
0__inference_sequential_169_layer_call_fn_1046106

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
K__inference_sequential_169_layer_call_and_return_conditional_losses_1045883o
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
F__inference_dense_508_layer_call_and_return_conditional_losses_1045658

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
I
-__inference_dropout_169_layer_call_fn_1046373

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
H__inference_dropout_169_layer_call_and_return_conditional_losses_1045645`
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
j
N__inference_max_pooling2d_507_layer_call_and_return_conditional_losses_1045567

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
?
?
,__inference_conv2d_509_layer_call_fn_1046306

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
G__inference_conv2d_509_layer_call_and_return_conditional_losses_1045603x
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
g
H__inference_dropout_169_layer_call_and_return_conditional_losses_1046395

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
j
N__inference_max_pooling2d_507_layer_call_and_return_conditional_losses_1046252

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
F__inference_dense_507_layer_call_and_return_conditional_losses_1046368

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
+__inference_dense_507_layer_call_fn_1046357

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
F__inference_dense_507_layer_call_and_return_conditional_losses_1045634o
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
?0
?
K__inference_sequential_169_layer_call_and_return_conditional_losses_1045978
conv2d_507_input,
conv2d_507_1045942:  
conv2d_507_1045944: ,
conv2d_508_1045948: @ 
conv2d_508_1045950:@-
conv2d_509_1045954:@?!
conv2d_509_1045956:	?$
dense_507_1045961:	?@
dense_507_1045963:@#
dense_508_1045967:@
dense_508_1045969:#
dense_509_1045972:
dense_509_1045974:
identity??"conv2d_507/StatefulPartitionedCall?"conv2d_508/StatefulPartitionedCall?"conv2d_509/StatefulPartitionedCall?!dense_507/StatefulPartitionedCall?!dense_508/StatefulPartitionedCall?!dense_509/StatefulPartitionedCall?
"conv2d_507/StatefulPartitionedCallStatefulPartitionedCallconv2d_507_inputconv2d_507_1045942conv2d_507_1045944*
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
G__inference_conv2d_507_layer_call_and_return_conditional_losses_1045557?
!max_pooling2d_507/PartitionedCallPartitionedCall+conv2d_507/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_507_layer_call_and_return_conditional_losses_1045567?
"conv2d_508/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_507/PartitionedCall:output:0conv2d_508_1045948conv2d_508_1045950*
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
G__inference_conv2d_508_layer_call_and_return_conditional_losses_1045580?
!max_pooling2d_508/PartitionedCallPartitionedCall+conv2d_508/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_508_layer_call_and_return_conditional_losses_1045590?
"conv2d_509/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_508/PartitionedCall:output:0conv2d_509_1045954conv2d_509_1045956*
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
G__inference_conv2d_509_layer_call_and_return_conditional_losses_1045603?
!max_pooling2d_509/PartitionedCallPartitionedCall+conv2d_509/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_509_layer_call_and_return_conditional_losses_1045613?
flatten_169/PartitionedCallPartitionedCall*max_pooling2d_509/PartitionedCall:output:0*
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
H__inference_flatten_169_layer_call_and_return_conditional_losses_1045621?
!dense_507/StatefulPartitionedCallStatefulPartitionedCall$flatten_169/PartitionedCall:output:0dense_507_1045961dense_507_1045963*
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
F__inference_dense_507_layer_call_and_return_conditional_losses_1045634?
dropout_169/PartitionedCallPartitionedCall*dense_507/StatefulPartitionedCall:output:0*
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
H__inference_dropout_169_layer_call_and_return_conditional_losses_1045645?
!dense_508/StatefulPartitionedCallStatefulPartitionedCall$dropout_169/PartitionedCall:output:0dense_508_1045967dense_508_1045969*
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
F__inference_dense_508_layer_call_and_return_conditional_losses_1045658?
!dense_509/StatefulPartitionedCallStatefulPartitionedCall*dense_508/StatefulPartitionedCall:output:0dense_509_1045972dense_509_1045974*
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
F__inference_dense_509_layer_call_and_return_conditional_losses_1045675y
IdentityIdentity*dense_509/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_507/StatefulPartitionedCall#^conv2d_508/StatefulPartitionedCall#^conv2d_509/StatefulPartitionedCall"^dense_507/StatefulPartitionedCall"^dense_508/StatefulPartitionedCall"^dense_509/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_507/StatefulPartitionedCall"conv2d_507/StatefulPartitionedCall2H
"conv2d_508/StatefulPartitionedCall"conv2d_508/StatefulPartitionedCall2H
"conv2d_509/StatefulPartitionedCall"conv2d_509/StatefulPartitionedCall2F
!dense_507/StatefulPartitionedCall!dense_507/StatefulPartitionedCall2F
!dense_508/StatefulPartitionedCall!dense_508/StatefulPartitionedCall2F
!dense_509/StatefulPartitionedCall!dense_509/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_507_input
?
?
0__inference_sequential_169_layer_call_fn_1045939
conv2d_507_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_507_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
K__inference_sequential_169_layer_call_and_return_conditional_losses_1045883o
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
_user_specified_nameconv2d_507_input
?
f
-__inference_dropout_169_layer_call_fn_1046378

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
H__inference_dropout_169_layer_call_and_return_conditional_losses_1045749o
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
?
G__inference_conv2d_508_layer_call_and_return_conditional_losses_1045580

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
?
f
H__inference_dropout_169_layer_call_and_return_conditional_losses_1045645

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
?2
?
K__inference_sequential_169_layer_call_and_return_conditional_losses_1046017
conv2d_507_input,
conv2d_507_1045981:  
conv2d_507_1045983: ,
conv2d_508_1045987: @ 
conv2d_508_1045989:@-
conv2d_509_1045993:@?!
conv2d_509_1045995:	?$
dense_507_1046000:	?@
dense_507_1046002:@#
dense_508_1046006:@
dense_508_1046008:#
dense_509_1046011:
dense_509_1046013:
identity??"conv2d_507/StatefulPartitionedCall?"conv2d_508/StatefulPartitionedCall?"conv2d_509/StatefulPartitionedCall?!dense_507/StatefulPartitionedCall?!dense_508/StatefulPartitionedCall?!dense_509/StatefulPartitionedCall?#dropout_169/StatefulPartitionedCall?
"conv2d_507/StatefulPartitionedCallStatefulPartitionedCallconv2d_507_inputconv2d_507_1045981conv2d_507_1045983*
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
G__inference_conv2d_507_layer_call_and_return_conditional_losses_1045557?
!max_pooling2d_507/PartitionedCallPartitionedCall+conv2d_507/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_507_layer_call_and_return_conditional_losses_1045567?
"conv2d_508/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_507/PartitionedCall:output:0conv2d_508_1045987conv2d_508_1045989*
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
G__inference_conv2d_508_layer_call_and_return_conditional_losses_1045580?
!max_pooling2d_508/PartitionedCallPartitionedCall+conv2d_508/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_508_layer_call_and_return_conditional_losses_1045590?
"conv2d_509/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_508/PartitionedCall:output:0conv2d_509_1045993conv2d_509_1045995*
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
G__inference_conv2d_509_layer_call_and_return_conditional_losses_1045603?
!max_pooling2d_509/PartitionedCallPartitionedCall+conv2d_509/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_509_layer_call_and_return_conditional_losses_1045613?
flatten_169/PartitionedCallPartitionedCall*max_pooling2d_509/PartitionedCall:output:0*
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
H__inference_flatten_169_layer_call_and_return_conditional_losses_1045621?
!dense_507/StatefulPartitionedCallStatefulPartitionedCall$flatten_169/PartitionedCall:output:0dense_507_1046000dense_507_1046002*
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
F__inference_dense_507_layer_call_and_return_conditional_losses_1045634?
#dropout_169/StatefulPartitionedCallStatefulPartitionedCall*dense_507/StatefulPartitionedCall:output:0*
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
H__inference_dropout_169_layer_call_and_return_conditional_losses_1045749?
!dense_508/StatefulPartitionedCallStatefulPartitionedCall,dropout_169/StatefulPartitionedCall:output:0dense_508_1046006dense_508_1046008*
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
F__inference_dense_508_layer_call_and_return_conditional_losses_1045658?
!dense_509/StatefulPartitionedCallStatefulPartitionedCall*dense_508/StatefulPartitionedCall:output:0dense_509_1046011dense_509_1046013*
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
F__inference_dense_509_layer_call_and_return_conditional_losses_1045675y
IdentityIdentity*dense_509/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_507/StatefulPartitionedCall#^conv2d_508/StatefulPartitionedCall#^conv2d_509/StatefulPartitionedCall"^dense_507/StatefulPartitionedCall"^dense_508/StatefulPartitionedCall"^dense_509/StatefulPartitionedCall$^dropout_169/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_507/StatefulPartitionedCall"conv2d_507/StatefulPartitionedCall2H
"conv2d_508/StatefulPartitionedCall"conv2d_508/StatefulPartitionedCall2H
"conv2d_509/StatefulPartitionedCall"conv2d_509/StatefulPartitionedCall2F
!dense_507/StatefulPartitionedCall!dense_507/StatefulPartitionedCall2F
!dense_508/StatefulPartitionedCall!dense_508/StatefulPartitionedCall2F
!dense_509/StatefulPartitionedCall!dense_509/StatefulPartitionedCall2J
#dropout_169/StatefulPartitionedCall#dropout_169/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_507_input
?
O
3__inference_max_pooling2d_509_layer_call_fn_1046327

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
N__inference_max_pooling2d_509_layer_call_and_return_conditional_losses_1045613i
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
?
j
N__inference_max_pooling2d_509_layer_call_and_return_conditional_losses_1045536

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
j
N__inference_max_pooling2d_509_layer_call_and_return_conditional_losses_1045613

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
?G
?	
K__inference_sequential_169_layer_call_and_return_conditional_losses_1046217

inputsC
)conv2d_507_conv2d_readvariableop_resource: 8
*conv2d_507_biasadd_readvariableop_resource: C
)conv2d_508_conv2d_readvariableop_resource: @8
*conv2d_508_biasadd_readvariableop_resource:@D
)conv2d_509_conv2d_readvariableop_resource:@?9
*conv2d_509_biasadd_readvariableop_resource:	?;
(dense_507_matmul_readvariableop_resource:	?@7
)dense_507_biasadd_readvariableop_resource:@:
(dense_508_matmul_readvariableop_resource:@7
)dense_508_biasadd_readvariableop_resource::
(dense_509_matmul_readvariableop_resource:7
)dense_509_biasadd_readvariableop_resource:
identity??!conv2d_507/BiasAdd/ReadVariableOp? conv2d_507/Conv2D/ReadVariableOp?!conv2d_508/BiasAdd/ReadVariableOp? conv2d_508/Conv2D/ReadVariableOp?!conv2d_509/BiasAdd/ReadVariableOp? conv2d_509/Conv2D/ReadVariableOp? dense_507/BiasAdd/ReadVariableOp?dense_507/MatMul/ReadVariableOp? dense_508/BiasAdd/ReadVariableOp?dense_508/MatMul/ReadVariableOp? dense_509/BiasAdd/ReadVariableOp?dense_509/MatMul/ReadVariableOp?
 conv2d_507/Conv2D/ReadVariableOpReadVariableOp)conv2d_507_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_507/Conv2DConv2Dinputs(conv2d_507/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
?
!conv2d_507/BiasAdd/ReadVariableOpReadVariableOp*conv2d_507_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_507/BiasAddBiasAddconv2d_507/Conv2D:output:0)conv2d_507/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] n
conv2d_507/ReluReluconv2d_507/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] ?
max_pooling2d_507/MaxPoolMaxPoolconv2d_507/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
?
 conv2d_508/Conv2D/ReadVariableOpReadVariableOp)conv2d_508_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_508/Conv2DConv2D"max_pooling2d_507/MaxPool:output:0(conv2d_508/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
!conv2d_508/BiasAdd/ReadVariableOpReadVariableOp*conv2d_508_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_508/BiasAddBiasAddconv2d_508/Conv2D:output:0)conv2d_508/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@n
conv2d_508/ReluReluconv2d_508/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_508/MaxPoolMaxPoolconv2d_508/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
?
 conv2d_509/Conv2D/ReadVariableOpReadVariableOp)conv2d_509_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_509/Conv2DConv2D"max_pooling2d_508/MaxPool:output:0(conv2d_509/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
!conv2d_509/BiasAdd/ReadVariableOpReadVariableOp*conv2d_509_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_509/BiasAddBiasAddconv2d_509/Conv2D:output:0)conv2d_509/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????o
conv2d_509/ReluReluconv2d_509/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
max_pooling2d_509/MaxPoolMaxPoolconv2d_509/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
b
flatten_169/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_169/ReshapeReshape"max_pooling2d_509/MaxPool:output:0flatten_169/Const:output:0*
T0*(
_output_shapes
:???????????
dense_507/MatMul/ReadVariableOpReadVariableOp(dense_507_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_507/MatMulMatMulflatten_169/Reshape:output:0'dense_507/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
 dense_507/BiasAdd/ReadVariableOpReadVariableOp)dense_507_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_507/BiasAddBiasAdddense_507/MatMul:product:0(dense_507/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_507/TanhTanhdense_507/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@^
dropout_169/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_169/dropout/MulMuldense_507/Tanh:y:0"dropout_169/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@[
dropout_169/dropout/ShapeShapedense_507/Tanh:y:0*
T0*
_output_shapes
:?
0dropout_169/dropout/random_uniform/RandomUniformRandomUniform"dropout_169/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0g
"dropout_169/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
 dropout_169/dropout/GreaterEqualGreaterEqual9dropout_169/dropout/random_uniform/RandomUniform:output:0+dropout_169/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@?
dropout_169/dropout/CastCast$dropout_169/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
dropout_169/dropout/Mul_1Muldropout_169/dropout/Mul:z:0dropout_169/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@?
dense_508/MatMul/ReadVariableOpReadVariableOp(dense_508_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_508/MatMulMatMuldropout_169/dropout/Mul_1:z:0'dense_508/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_508/BiasAdd/ReadVariableOpReadVariableOp)dense_508_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_508/BiasAddBiasAdddense_508/MatMul:product:0(dense_508/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_508/TanhTanhdense_508/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_509/MatMul/ReadVariableOpReadVariableOp(dense_509_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_509/MatMulMatMuldense_508/Tanh:y:0'dense_509/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_509/BiasAdd/ReadVariableOpReadVariableOp)dense_509_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_509/BiasAddBiasAdddense_509/MatMul:product:0(dense_509/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_509/SigmoidSigmoiddense_509/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_509/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_507/BiasAdd/ReadVariableOp!^conv2d_507/Conv2D/ReadVariableOp"^conv2d_508/BiasAdd/ReadVariableOp!^conv2d_508/Conv2D/ReadVariableOp"^conv2d_509/BiasAdd/ReadVariableOp!^conv2d_509/Conv2D/ReadVariableOp!^dense_507/BiasAdd/ReadVariableOp ^dense_507/MatMul/ReadVariableOp!^dense_508/BiasAdd/ReadVariableOp ^dense_508/MatMul/ReadVariableOp!^dense_509/BiasAdd/ReadVariableOp ^dense_509/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_507/BiasAdd/ReadVariableOp!conv2d_507/BiasAdd/ReadVariableOp2D
 conv2d_507/Conv2D/ReadVariableOp conv2d_507/Conv2D/ReadVariableOp2F
!conv2d_508/BiasAdd/ReadVariableOp!conv2d_508/BiasAdd/ReadVariableOp2D
 conv2d_508/Conv2D/ReadVariableOp conv2d_508/Conv2D/ReadVariableOp2F
!conv2d_509/BiasAdd/ReadVariableOp!conv2d_509/BiasAdd/ReadVariableOp2D
 conv2d_509/Conv2D/ReadVariableOp conv2d_509/Conv2D/ReadVariableOp2D
 dense_507/BiasAdd/ReadVariableOp dense_507/BiasAdd/ReadVariableOp2B
dense_507/MatMul/ReadVariableOpdense_507/MatMul/ReadVariableOp2D
 dense_508/BiasAdd/ReadVariableOp dense_508/BiasAdd/ReadVariableOp2B
dense_508/MatMul/ReadVariableOpdense_508/MatMul/ReadVariableOp2D
 dense_509/BiasAdd/ReadVariableOp dense_509/BiasAdd/ReadVariableOp2B
dense_509/MatMul/ReadVariableOpdense_509/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
O
3__inference_max_pooling2d_507_layer_call_fn_1046242

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
N__inference_max_pooling2d_507_layer_call_and_return_conditional_losses_1045512?
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

?
F__inference_dense_509_layer_call_and_return_conditional_losses_1046435

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
?
j
N__inference_max_pooling2d_508_layer_call_and_return_conditional_losses_1046297

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
?P
?
"__inference__wrapped_model_1045503
conv2d_507_inputR
8sequential_169_conv2d_507_conv2d_readvariableop_resource: G
9sequential_169_conv2d_507_biasadd_readvariableop_resource: R
8sequential_169_conv2d_508_conv2d_readvariableop_resource: @G
9sequential_169_conv2d_508_biasadd_readvariableop_resource:@S
8sequential_169_conv2d_509_conv2d_readvariableop_resource:@?H
9sequential_169_conv2d_509_biasadd_readvariableop_resource:	?J
7sequential_169_dense_507_matmul_readvariableop_resource:	?@F
8sequential_169_dense_507_biasadd_readvariableop_resource:@I
7sequential_169_dense_508_matmul_readvariableop_resource:@F
8sequential_169_dense_508_biasadd_readvariableop_resource:I
7sequential_169_dense_509_matmul_readvariableop_resource:F
8sequential_169_dense_509_biasadd_readvariableop_resource:
identity??0sequential_169/conv2d_507/BiasAdd/ReadVariableOp?/sequential_169/conv2d_507/Conv2D/ReadVariableOp?0sequential_169/conv2d_508/BiasAdd/ReadVariableOp?/sequential_169/conv2d_508/Conv2D/ReadVariableOp?0sequential_169/conv2d_509/BiasAdd/ReadVariableOp?/sequential_169/conv2d_509/Conv2D/ReadVariableOp?/sequential_169/dense_507/BiasAdd/ReadVariableOp?.sequential_169/dense_507/MatMul/ReadVariableOp?/sequential_169/dense_508/BiasAdd/ReadVariableOp?.sequential_169/dense_508/MatMul/ReadVariableOp?/sequential_169/dense_509/BiasAdd/ReadVariableOp?.sequential_169/dense_509/MatMul/ReadVariableOp?
/sequential_169/conv2d_507/Conv2D/ReadVariableOpReadVariableOp8sequential_169_conv2d_507_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
 sequential_169/conv2d_507/Conv2DConv2Dconv2d_507_input7sequential_169/conv2d_507/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
?
0sequential_169/conv2d_507/BiasAdd/ReadVariableOpReadVariableOp9sequential_169_conv2d_507_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
!sequential_169/conv2d_507/BiasAddBiasAdd)sequential_169/conv2d_507/Conv2D:output:08sequential_169/conv2d_507/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] ?
sequential_169/conv2d_507/ReluRelu*sequential_169/conv2d_507/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] ?
(sequential_169/max_pooling2d_507/MaxPoolMaxPool,sequential_169/conv2d_507/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
?
/sequential_169/conv2d_508/Conv2D/ReadVariableOpReadVariableOp8sequential_169_conv2d_508_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
 sequential_169/conv2d_508/Conv2DConv2D1sequential_169/max_pooling2d_507/MaxPool:output:07sequential_169/conv2d_508/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
0sequential_169/conv2d_508/BiasAdd/ReadVariableOpReadVariableOp9sequential_169_conv2d_508_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
!sequential_169/conv2d_508/BiasAddBiasAdd)sequential_169/conv2d_508/Conv2D:output:08sequential_169/conv2d_508/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
sequential_169/conv2d_508/ReluRelu*sequential_169/conv2d_508/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
(sequential_169/max_pooling2d_508/MaxPoolMaxPool,sequential_169/conv2d_508/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
?
/sequential_169/conv2d_509/Conv2D/ReadVariableOpReadVariableOp8sequential_169_conv2d_509_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
 sequential_169/conv2d_509/Conv2DConv2D1sequential_169/max_pooling2d_508/MaxPool:output:07sequential_169/conv2d_509/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
0sequential_169/conv2d_509/BiasAdd/ReadVariableOpReadVariableOp9sequential_169_conv2d_509_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!sequential_169/conv2d_509/BiasAddBiasAdd)sequential_169/conv2d_509/Conv2D:output:08sequential_169/conv2d_509/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
sequential_169/conv2d_509/ReluRelu*sequential_169/conv2d_509/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
(sequential_169/max_pooling2d_509/MaxPoolMaxPool,sequential_169/conv2d_509/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
q
 sequential_169/flatten_169/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"sequential_169/flatten_169/ReshapeReshape1sequential_169/max_pooling2d_509/MaxPool:output:0)sequential_169/flatten_169/Const:output:0*
T0*(
_output_shapes
:???????????
.sequential_169/dense_507/MatMul/ReadVariableOpReadVariableOp7sequential_169_dense_507_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
sequential_169/dense_507/MatMulMatMul+sequential_169/flatten_169/Reshape:output:06sequential_169/dense_507/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
/sequential_169/dense_507/BiasAdd/ReadVariableOpReadVariableOp8sequential_169_dense_507_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
 sequential_169/dense_507/BiasAddBiasAdd)sequential_169/dense_507/MatMul:product:07sequential_169/dense_507/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
sequential_169/dense_507/TanhTanh)sequential_169/dense_507/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
#sequential_169/dropout_169/IdentityIdentity!sequential_169/dense_507/Tanh:y:0*
T0*'
_output_shapes
:?????????@?
.sequential_169/dense_508/MatMul/ReadVariableOpReadVariableOp7sequential_169_dense_508_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
sequential_169/dense_508/MatMulMatMul,sequential_169/dropout_169/Identity:output:06sequential_169/dense_508/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_169/dense_508/BiasAdd/ReadVariableOpReadVariableOp8sequential_169_dense_508_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_169/dense_508/BiasAddBiasAdd)sequential_169/dense_508/MatMul:product:07sequential_169/dense_508/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_169/dense_508/TanhTanh)sequential_169/dense_508/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
.sequential_169/dense_509/MatMul/ReadVariableOpReadVariableOp7sequential_169_dense_509_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_169/dense_509/MatMulMatMul!sequential_169/dense_508/Tanh:y:06sequential_169/dense_509/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_169/dense_509/BiasAdd/ReadVariableOpReadVariableOp8sequential_169_dense_509_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_169/dense_509/BiasAddBiasAdd)sequential_169/dense_509/MatMul:product:07sequential_169/dense_509/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 sequential_169/dense_509/SigmoidSigmoid)sequential_169/dense_509/BiasAdd:output:0*
T0*'
_output_shapes
:?????????s
IdentityIdentity$sequential_169/dense_509/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp1^sequential_169/conv2d_507/BiasAdd/ReadVariableOp0^sequential_169/conv2d_507/Conv2D/ReadVariableOp1^sequential_169/conv2d_508/BiasAdd/ReadVariableOp0^sequential_169/conv2d_508/Conv2D/ReadVariableOp1^sequential_169/conv2d_509/BiasAdd/ReadVariableOp0^sequential_169/conv2d_509/Conv2D/ReadVariableOp0^sequential_169/dense_507/BiasAdd/ReadVariableOp/^sequential_169/dense_507/MatMul/ReadVariableOp0^sequential_169/dense_508/BiasAdd/ReadVariableOp/^sequential_169/dense_508/MatMul/ReadVariableOp0^sequential_169/dense_509/BiasAdd/ReadVariableOp/^sequential_169/dense_509/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2d
0sequential_169/conv2d_507/BiasAdd/ReadVariableOp0sequential_169/conv2d_507/BiasAdd/ReadVariableOp2b
/sequential_169/conv2d_507/Conv2D/ReadVariableOp/sequential_169/conv2d_507/Conv2D/ReadVariableOp2d
0sequential_169/conv2d_508/BiasAdd/ReadVariableOp0sequential_169/conv2d_508/BiasAdd/ReadVariableOp2b
/sequential_169/conv2d_508/Conv2D/ReadVariableOp/sequential_169/conv2d_508/Conv2D/ReadVariableOp2d
0sequential_169/conv2d_509/BiasAdd/ReadVariableOp0sequential_169/conv2d_509/BiasAdd/ReadVariableOp2b
/sequential_169/conv2d_509/Conv2D/ReadVariableOp/sequential_169/conv2d_509/Conv2D/ReadVariableOp2b
/sequential_169/dense_507/BiasAdd/ReadVariableOp/sequential_169/dense_507/BiasAdd/ReadVariableOp2`
.sequential_169/dense_507/MatMul/ReadVariableOp.sequential_169/dense_507/MatMul/ReadVariableOp2b
/sequential_169/dense_508/BiasAdd/ReadVariableOp/sequential_169/dense_508/BiasAdd/ReadVariableOp2`
.sequential_169/dense_508/MatMul/ReadVariableOp.sequential_169/dense_508/MatMul/ReadVariableOp2b
/sequential_169/dense_509/BiasAdd/ReadVariableOp/sequential_169/dense_509/BiasAdd/ReadVariableOp2`
.sequential_169/dense_509/MatMul/ReadVariableOp.sequential_169/dense_509/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_507_input
?
?
,__inference_conv2d_507_layer_call_fn_1046226

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
G__inference_conv2d_507_layer_call_and_return_conditional_losses_1045557w
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
?
?
0__inference_sequential_169_layer_call_fn_1045709
conv2d_507_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_507_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
K__inference_sequential_169_layer_call_and_return_conditional_losses_1045682o
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
_user_specified_nameconv2d_507_input
?0
?
K__inference_sequential_169_layer_call_and_return_conditional_losses_1045682

inputs,
conv2d_507_1045558:  
conv2d_507_1045560: ,
conv2d_508_1045581: @ 
conv2d_508_1045583:@-
conv2d_509_1045604:@?!
conv2d_509_1045606:	?$
dense_507_1045635:	?@
dense_507_1045637:@#
dense_508_1045659:@
dense_508_1045661:#
dense_509_1045676:
dense_509_1045678:
identity??"conv2d_507/StatefulPartitionedCall?"conv2d_508/StatefulPartitionedCall?"conv2d_509/StatefulPartitionedCall?!dense_507/StatefulPartitionedCall?!dense_508/StatefulPartitionedCall?!dense_509/StatefulPartitionedCall?
"conv2d_507/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_507_1045558conv2d_507_1045560*
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
G__inference_conv2d_507_layer_call_and_return_conditional_losses_1045557?
!max_pooling2d_507/PartitionedCallPartitionedCall+conv2d_507/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_507_layer_call_and_return_conditional_losses_1045567?
"conv2d_508/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_507/PartitionedCall:output:0conv2d_508_1045581conv2d_508_1045583*
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
G__inference_conv2d_508_layer_call_and_return_conditional_losses_1045580?
!max_pooling2d_508/PartitionedCallPartitionedCall+conv2d_508/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_508_layer_call_and_return_conditional_losses_1045590?
"conv2d_509/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_508/PartitionedCall:output:0conv2d_509_1045604conv2d_509_1045606*
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
G__inference_conv2d_509_layer_call_and_return_conditional_losses_1045603?
!max_pooling2d_509/PartitionedCallPartitionedCall+conv2d_509/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_509_layer_call_and_return_conditional_losses_1045613?
flatten_169/PartitionedCallPartitionedCall*max_pooling2d_509/PartitionedCall:output:0*
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
H__inference_flatten_169_layer_call_and_return_conditional_losses_1045621?
!dense_507/StatefulPartitionedCallStatefulPartitionedCall$flatten_169/PartitionedCall:output:0dense_507_1045635dense_507_1045637*
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
F__inference_dense_507_layer_call_and_return_conditional_losses_1045634?
dropout_169/PartitionedCallPartitionedCall*dense_507/StatefulPartitionedCall:output:0*
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
H__inference_dropout_169_layer_call_and_return_conditional_losses_1045645?
!dense_508/StatefulPartitionedCallStatefulPartitionedCall$dropout_169/PartitionedCall:output:0dense_508_1045659dense_508_1045661*
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
F__inference_dense_508_layer_call_and_return_conditional_losses_1045658?
!dense_509/StatefulPartitionedCallStatefulPartitionedCall*dense_508/StatefulPartitionedCall:output:0dense_509_1045676dense_509_1045678*
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
F__inference_dense_509_layer_call_and_return_conditional_losses_1045675y
IdentityIdentity*dense_509/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_507/StatefulPartitionedCall#^conv2d_508/StatefulPartitionedCall#^conv2d_509/StatefulPartitionedCall"^dense_507/StatefulPartitionedCall"^dense_508/StatefulPartitionedCall"^dense_509/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_507/StatefulPartitionedCall"conv2d_507/StatefulPartitionedCall2H
"conv2d_508/StatefulPartitionedCall"conv2d_508/StatefulPartitionedCall2H
"conv2d_509/StatefulPartitionedCall"conv2d_509/StatefulPartitionedCall2F
!dense_507/StatefulPartitionedCall!dense_507/StatefulPartitionedCall2F
!dense_508/StatefulPartitionedCall!dense_508/StatefulPartitionedCall2F
!dense_509/StatefulPartitionedCall!dense_509/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
d
H__inference_flatten_169_layer_call_and_return_conditional_losses_1045621

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
d
H__inference_flatten_169_layer_call_and_return_conditional_losses_1046348

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
?
G__inference_conv2d_507_layer_call_and_return_conditional_losses_1045557

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
?
G__inference_conv2d_507_layer_call_and_return_conditional_losses_1046237

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
O
3__inference_max_pooling2d_507_layer_call_fn_1046247

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
N__inference_max_pooling2d_507_layer_call_and_return_conditional_losses_1045567h
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
?
j
N__inference_max_pooling2d_508_layer_call_and_return_conditional_losses_1045524

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
F__inference_dense_507_layer_call_and_return_conditional_losses_1045634

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
F__inference_dense_508_layer_call_and_return_conditional_losses_1046415

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
?
G__inference_conv2d_508_layer_call_and_return_conditional_losses_1046277

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
j
N__inference_max_pooling2d_508_layer_call_and_return_conditional_losses_1046292

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
0__inference_sequential_169_layer_call_fn_1046077

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
K__inference_sequential_169_layer_call_and_return_conditional_losses_1045682o
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
?
O
3__inference_max_pooling2d_508_layer_call_fn_1046282

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
N__inference_max_pooling2d_508_layer_call_and_return_conditional_losses_1045524?
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
?
f
H__inference_dropout_169_layer_call_and_return_conditional_losses_1046383

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
?
?
+__inference_dense_509_layer_call_fn_1046424

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
F__inference_dense_509_layer_call_and_return_conditional_losses_1045675o
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
conv2d_507_inputC
"serving_default_conv2d_507_input:0???????????=
	dense_5090
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
+:) 2conv2d_507/kernel
: 2conv2d_507/bias
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
+:) @2conv2d_508/kernel
:@2conv2d_508/bias
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
,:*@?2conv2d_509/kernel
:?2conv2d_509/bias
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
#:!	?@2dense_507/kernel
:@2dense_507/bias
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
": @2dense_508/kernel
:2dense_508/bias
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
": 2dense_509/kernel
:2dense_509/bias
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
0__inference_sequential_169_layer_call_fn_1045709
0__inference_sequential_169_layer_call_fn_1046077
0__inference_sequential_169_layer_call_fn_1046106
0__inference_sequential_169_layer_call_fn_1045939?
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
K__inference_sequential_169_layer_call_and_return_conditional_losses_1046158
K__inference_sequential_169_layer_call_and_return_conditional_losses_1046217
K__inference_sequential_169_layer_call_and_return_conditional_losses_1045978
K__inference_sequential_169_layer_call_and_return_conditional_losses_1046017?
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
"__inference__wrapped_model_1045503conv2d_507_input"?
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
,__inference_conv2d_507_layer_call_fn_1046226?
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
G__inference_conv2d_507_layer_call_and_return_conditional_losses_1046237?
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
3__inference_max_pooling2d_507_layer_call_fn_1046242
3__inference_max_pooling2d_507_layer_call_fn_1046247?
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
N__inference_max_pooling2d_507_layer_call_and_return_conditional_losses_1046252
N__inference_max_pooling2d_507_layer_call_and_return_conditional_losses_1046257?
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
,__inference_conv2d_508_layer_call_fn_1046266?
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
G__inference_conv2d_508_layer_call_and_return_conditional_losses_1046277?
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
3__inference_max_pooling2d_508_layer_call_fn_1046282
3__inference_max_pooling2d_508_layer_call_fn_1046287?
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
N__inference_max_pooling2d_508_layer_call_and_return_conditional_losses_1046292
N__inference_max_pooling2d_508_layer_call_and_return_conditional_losses_1046297?
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
,__inference_conv2d_509_layer_call_fn_1046306?
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
G__inference_conv2d_509_layer_call_and_return_conditional_losses_1046317?
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
3__inference_max_pooling2d_509_layer_call_fn_1046322
3__inference_max_pooling2d_509_layer_call_fn_1046327?
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
N__inference_max_pooling2d_509_layer_call_and_return_conditional_losses_1046332
N__inference_max_pooling2d_509_layer_call_and_return_conditional_losses_1046337?
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
-__inference_flatten_169_layer_call_fn_1046342?
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
H__inference_flatten_169_layer_call_and_return_conditional_losses_1046348?
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
+__inference_dense_507_layer_call_fn_1046357?
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
F__inference_dense_507_layer_call_and_return_conditional_losses_1046368?
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
-__inference_dropout_169_layer_call_fn_1046373
-__inference_dropout_169_layer_call_fn_1046378?
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
H__inference_dropout_169_layer_call_and_return_conditional_losses_1046383
H__inference_dropout_169_layer_call_and_return_conditional_losses_1046395?
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
+__inference_dense_508_layer_call_fn_1046404?
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
F__inference_dense_508_layer_call_and_return_conditional_losses_1046415?
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
+__inference_dense_509_layer_call_fn_1046424?
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
F__inference_dense_509_layer_call_and_return_conditional_losses_1046435?
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
%__inference_signature_wrapper_1046048conv2d_507_input"?
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
"__inference__wrapped_model_1045503? +,<=HIOPC?@
9?6
4?1
conv2d_507_input???????????
? "5?2
0
	dense_509#? 
	dense_509??????????
G__inference_conv2d_507_layer_call_and_return_conditional_losses_1046237n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????Z] 
? ?
,__inference_conv2d_507_layer_call_fn_1046226a9?6
/?,
*?'
inputs???????????
? " ??????????Z] ?
G__inference_conv2d_508_layer_call_and_return_conditional_losses_1046277l 7?4
-?*
(?%
inputs?????????-. 
? "-?*
#? 
0?????????@
? ?
,__inference_conv2d_508_layer_call_fn_1046266_ 7?4
-?*
(?%
inputs?????????-. 
? " ??????????@?
G__inference_conv2d_509_layer_call_and_return_conditional_losses_1046317m+,7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_509_layer_call_fn_1046306`+,7?4
-?*
(?%
inputs?????????@
? "!????????????
F__inference_dense_507_layer_call_and_return_conditional_losses_1046368]<=0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? 
+__inference_dense_507_layer_call_fn_1046357P<=0?-
&?#
!?
inputs??????????
? "??????????@?
F__inference_dense_508_layer_call_and_return_conditional_losses_1046415\HI/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? ~
+__inference_dense_508_layer_call_fn_1046404OHI/?,
%?"
 ?
inputs?????????@
? "???????????
F__inference_dense_509_layer_call_and_return_conditional_losses_1046435\OP/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
+__inference_dense_509_layer_call_fn_1046424OOP/?,
%?"
 ?
inputs?????????
? "???????????
H__inference_dropout_169_layer_call_and_return_conditional_losses_1046383\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
H__inference_dropout_169_layer_call_and_return_conditional_losses_1046395\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
-__inference_dropout_169_layer_call_fn_1046373O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
-__inference_dropout_169_layer_call_fn_1046378O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
H__inference_flatten_169_layer_call_and_return_conditional_losses_1046348b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????
? ?
-__inference_flatten_169_layer_call_fn_1046342U8?5
.?+
)?&
inputs??????????
? "????????????
N__inference_max_pooling2d_507_layer_call_and_return_conditional_losses_1046252?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_507_layer_call_and_return_conditional_losses_1046257h7?4
-?*
(?%
inputs?????????Z] 
? "-?*
#? 
0?????????-. 
? ?
3__inference_max_pooling2d_507_layer_call_fn_1046242?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_507_layer_call_fn_1046247[7?4
-?*
(?%
inputs?????????Z] 
? " ??????????-. ?
N__inference_max_pooling2d_508_layer_call_and_return_conditional_losses_1046292?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_508_layer_call_and_return_conditional_losses_1046297h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
3__inference_max_pooling2d_508_layer_call_fn_1046282?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_508_layer_call_fn_1046287[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
N__inference_max_pooling2d_509_layer_call_and_return_conditional_losses_1046332?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_509_layer_call_and_return_conditional_losses_1046337j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
3__inference_max_pooling2d_509_layer_call_fn_1046322?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_509_layer_call_fn_1046327]8?5
.?+
)?&
inputs??????????
? "!????????????
K__inference_sequential_169_layer_call_and_return_conditional_losses_1045978? +,<=HIOPK?H
A?>
4?1
conv2d_507_input???????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_169_layer_call_and_return_conditional_losses_1046017? +,<=HIOPK?H
A?>
4?1
conv2d_507_input???????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_169_layer_call_and_return_conditional_losses_1046158x +,<=HIOPA?>
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
K__inference_sequential_169_layer_call_and_return_conditional_losses_1046217x +,<=HIOPA?>
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
0__inference_sequential_169_layer_call_fn_1045709u +,<=HIOPK?H
A?>
4?1
conv2d_507_input???????????
p 

 
? "???????????
0__inference_sequential_169_layer_call_fn_1045939u +,<=HIOPK?H
A?>
4?1
conv2d_507_input???????????
p

 
? "???????????
0__inference_sequential_169_layer_call_fn_1046077k +,<=HIOPA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
0__inference_sequential_169_layer_call_fn_1046106k +,<=HIOPA?>
7?4
*?'
inputs???????????
p

 
? "???????????
%__inference_signature_wrapper_1046048? +,<=HIOPW?T
? 
M?J
H
conv2d_507_input4?1
conv2d_507_input???????????"5?2
0
	dense_509#? 
	dense_509?????????