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
conv2d_171/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_171/kernel

%conv2d_171/kernel/Read/ReadVariableOpReadVariableOpconv2d_171/kernel*&
_output_shapes
: *
dtype0
v
conv2d_171/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_171/bias
o
#conv2d_171/bias/Read/ReadVariableOpReadVariableOpconv2d_171/bias*
_output_shapes
: *
dtype0
?
conv2d_172/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_172/kernel

%conv2d_172/kernel/Read/ReadVariableOpReadVariableOpconv2d_172/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_172/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_172/bias
o
#conv2d_172/bias/Read/ReadVariableOpReadVariableOpconv2d_172/bias*
_output_shapes
:@*
dtype0
?
conv2d_173/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*"
shared_nameconv2d_173/kernel
?
%conv2d_173/kernel/Read/ReadVariableOpReadVariableOpconv2d_173/kernel*'
_output_shapes
:@?*
dtype0
w
conv2d_173/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_173/bias
p
#conv2d_173/bias/Read/ReadVariableOpReadVariableOpconv2d_173/bias*
_output_shapes	
:?*
dtype0
}
dense_171/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*!
shared_namedense_171/kernel
v
$dense_171/kernel/Read/ReadVariableOpReadVariableOpdense_171/kernel*
_output_shapes
:	?@*
dtype0
t
dense_171/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_171/bias
m
"dense_171/bias/Read/ReadVariableOpReadVariableOpdense_171/bias*
_output_shapes
:@*
dtype0
|
dense_172/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_172/kernel
u
$dense_172/kernel/Read/ReadVariableOpReadVariableOpdense_172/kernel*
_output_shapes

:@*
dtype0
t
dense_172/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_172/bias
m
"dense_172/bias/Read/ReadVariableOpReadVariableOpdense_172/bias*
_output_shapes
:*
dtype0
|
dense_173/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_173/kernel
u
$dense_173/kernel/Read/ReadVariableOpReadVariableOpdense_173/kernel*
_output_shapes

:*
dtype0
t
dense_173/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_173/bias
m
"dense_173/bias/Read/ReadVariableOpReadVariableOpdense_173/bias*
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
VARIABLE_VALUEconv2d_171/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_171/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_172/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_172/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_173/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_173/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_171/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_171/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_172/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_172/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_173/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_173/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
 serving_default_conv2d_171_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_171_inputconv2d_171/kernelconv2d_171/biasconv2d_172/kernelconv2d_172/biasconv2d_173/kernelconv2d_173/biasdense_171/kerneldense_171/biasdense_172/kerneldense_172/biasdense_173/kerneldense_173/bias*
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
$__inference_signature_wrapper_156760
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_171/kernel/Read/ReadVariableOp#conv2d_171/bias/Read/ReadVariableOp%conv2d_172/kernel/Read/ReadVariableOp#conv2d_172/bias/Read/ReadVariableOp%conv2d_173/kernel/Read/ReadVariableOp#conv2d_173/bias/Read/ReadVariableOp$dense_171/kernel/Read/ReadVariableOp"dense_171/bias/Read/ReadVariableOp$dense_172/kernel/Read/ReadVariableOp"dense_172/bias/Read/ReadVariableOp$dense_173/kernel/Read/ReadVariableOp"dense_173/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
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
__inference__traced_save_157218
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_171/kernelconv2d_171/biasconv2d_172/kernelconv2d_172/biasconv2d_173/kernelconv2d_173/biasdense_171/kerneldense_171/biasdense_172/kerneldense_172/biasdense_173/kerneldense_173/biastotalcounttotal_1count_1*
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
"__inference__traced_restore_157276??
?
?
+__inference_conv2d_172_layer_call_fn_156978

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
F__inference_conv2d_172_layer_call_and_return_conditional_losses_156292w
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
.__inference_sequential_57_layer_call_fn_156818

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
I__inference_sequential_57_layer_call_and_return_conditional_losses_156595o
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
E__inference_dense_173_layer_call_and_return_conditional_losses_157147

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
F__inference_conv2d_171_layer_call_and_return_conditional_losses_156269

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
?
?
+__inference_conv2d_173_layer_call_fn_157018

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
F__inference_conv2d_173_layer_call_and_return_conditional_losses_156315x
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
?

?
E__inference_dense_171_layer_call_and_return_conditional_losses_157080

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
+__inference_conv2d_171_layer_call_fn_156938

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
F__inference_conv2d_171_layer_call_and_return_conditional_losses_156269w
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
?
i
M__inference_max_pooling2d_172_layer_call_and_return_conditional_losses_156302

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
??
?	
I__inference_sequential_57_layer_call_and_return_conditional_losses_156870

inputsC
)conv2d_171_conv2d_readvariableop_resource: 8
*conv2d_171_biasadd_readvariableop_resource: C
)conv2d_172_conv2d_readvariableop_resource: @8
*conv2d_172_biasadd_readvariableop_resource:@D
)conv2d_173_conv2d_readvariableop_resource:@?9
*conv2d_173_biasadd_readvariableop_resource:	?;
(dense_171_matmul_readvariableop_resource:	?@7
)dense_171_biasadd_readvariableop_resource:@:
(dense_172_matmul_readvariableop_resource:@7
)dense_172_biasadd_readvariableop_resource::
(dense_173_matmul_readvariableop_resource:7
)dense_173_biasadd_readvariableop_resource:
identity??!conv2d_171/BiasAdd/ReadVariableOp? conv2d_171/Conv2D/ReadVariableOp?!conv2d_172/BiasAdd/ReadVariableOp? conv2d_172/Conv2D/ReadVariableOp?!conv2d_173/BiasAdd/ReadVariableOp? conv2d_173/Conv2D/ReadVariableOp? dense_171/BiasAdd/ReadVariableOp?dense_171/MatMul/ReadVariableOp? dense_172/BiasAdd/ReadVariableOp?dense_172/MatMul/ReadVariableOp? dense_173/BiasAdd/ReadVariableOp?dense_173/MatMul/ReadVariableOp?
 conv2d_171/Conv2D/ReadVariableOpReadVariableOp)conv2d_171_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_171/Conv2DConv2Dinputs(conv2d_171/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx *
paddingVALID*
strides
?
!conv2d_171/BiasAdd/ReadVariableOpReadVariableOp*conv2d_171_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_171/BiasAddBiasAddconv2d_171/Conv2D:output:0)conv2d_171/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx n
conv2d_171/ReluReluconv2d_171/BiasAdd:output:0*
T0*/
_output_shapes
:?????????xx ?
max_pooling2d_171/MaxPoolMaxPoolconv2d_171/Relu:activations:0*/
_output_shapes
:?????????<< *
ksize
*
paddingVALID*
strides
?
 conv2d_172/Conv2D/ReadVariableOpReadVariableOp)conv2d_172_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_172/Conv2DConv2D"max_pooling2d_171/MaxPool:output:0(conv2d_172/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
!conv2d_172/BiasAdd/ReadVariableOpReadVariableOp*conv2d_172_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_172/BiasAddBiasAddconv2d_172/Conv2D:output:0)conv2d_172/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@n
conv2d_172/ReluReluconv2d_172/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_172/MaxPoolMaxPoolconv2d_172/Relu:activations:0*/
_output_shapes
:?????????

@*
ksize
*
paddingVALID*
strides
?
 conv2d_173/Conv2D/ReadVariableOpReadVariableOp)conv2d_173_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_173/Conv2DConv2D"max_pooling2d_172/MaxPool:output:0(conv2d_173/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
!conv2d_173/BiasAdd/ReadVariableOpReadVariableOp*conv2d_173_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_173/BiasAddBiasAddconv2d_173/Conv2D:output:0)conv2d_173/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????o
conv2d_173/ReluReluconv2d_173/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
max_pooling2d_173/MaxPoolMaxPoolconv2d_173/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
a
flatten_57/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_57/ReshapeReshape"max_pooling2d_173/MaxPool:output:0flatten_57/Const:output:0*
T0*(
_output_shapes
:???????????
dense_171/MatMul/ReadVariableOpReadVariableOp(dense_171_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_171/MatMulMatMulflatten_57/Reshape:output:0'dense_171/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
 dense_171/BiasAdd/ReadVariableOpReadVariableOp)dense_171_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_171/BiasAddBiasAdddense_171/MatMul:product:0(dense_171/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_171/TanhTanhdense_171/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@e
dropout_57/IdentityIdentitydense_171/Tanh:y:0*
T0*'
_output_shapes
:?????????@?
dense_172/MatMul/ReadVariableOpReadVariableOp(dense_172_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_172/MatMulMatMuldropout_57/Identity:output:0'dense_172/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_172/BiasAdd/ReadVariableOpReadVariableOp)dense_172_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_172/BiasAddBiasAdddense_172/MatMul:product:0(dense_172/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_172/TanhTanhdense_172/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_173/MatMul/ReadVariableOpReadVariableOp(dense_173_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_173/MatMulMatMuldense_172/Tanh:y:0'dense_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_173/BiasAdd/ReadVariableOpReadVariableOp)dense_173_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_173/BiasAddBiasAdddense_173/MatMul:product:0(dense_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_173/SigmoidSigmoiddense_173/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_173/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_171/BiasAdd/ReadVariableOp!^conv2d_171/Conv2D/ReadVariableOp"^conv2d_172/BiasAdd/ReadVariableOp!^conv2d_172/Conv2D/ReadVariableOp"^conv2d_173/BiasAdd/ReadVariableOp!^conv2d_173/Conv2D/ReadVariableOp!^dense_171/BiasAdd/ReadVariableOp ^dense_171/MatMul/ReadVariableOp!^dense_172/BiasAdd/ReadVariableOp ^dense_172/MatMul/ReadVariableOp!^dense_173/BiasAdd/ReadVariableOp ^dense_173/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_171/BiasAdd/ReadVariableOp!conv2d_171/BiasAdd/ReadVariableOp2D
 conv2d_171/Conv2D/ReadVariableOp conv2d_171/Conv2D/ReadVariableOp2F
!conv2d_172/BiasAdd/ReadVariableOp!conv2d_172/BiasAdd/ReadVariableOp2D
 conv2d_172/Conv2D/ReadVariableOp conv2d_172/Conv2D/ReadVariableOp2F
!conv2d_173/BiasAdd/ReadVariableOp!conv2d_173/BiasAdd/ReadVariableOp2D
 conv2d_173/Conv2D/ReadVariableOp conv2d_173/Conv2D/ReadVariableOp2D
 dense_171/BiasAdd/ReadVariableOp dense_171/BiasAdd/ReadVariableOp2B
dense_171/MatMul/ReadVariableOpdense_171/MatMul/ReadVariableOp2D
 dense_172/BiasAdd/ReadVariableOp dense_172/BiasAdd/ReadVariableOp2B
dense_172/MatMul/ReadVariableOpdense_172/MatMul/ReadVariableOp2D
 dense_173/BiasAdd/ReadVariableOp dense_173/BiasAdd/ReadVariableOp2B
dense_173/MatMul/ReadVariableOpdense_173/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_57_layer_call_and_return_conditional_losses_157095

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
*__inference_dense_173_layer_call_fn_157136

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
E__inference_dense_173_layer_call_and_return_conditional_losses_156387o
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
?
$__inference_signature_wrapper_156760
conv2d_171_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_171_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
!__inference__wrapped_model_156215o
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
_user_specified_nameconv2d_171_input
?
?
.__inference_sequential_57_layer_call_fn_156651
conv2d_171_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_171_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
I__inference_sequential_57_layer_call_and_return_conditional_losses_156595o
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
_user_specified_nameconv2d_171_input
?
N
2__inference_max_pooling2d_171_layer_call_fn_156954

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
M__inference_max_pooling2d_171_layer_call_and_return_conditional_losses_156224?
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
.__inference_sequential_57_layer_call_fn_156421
conv2d_171_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_171_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
I__inference_sequential_57_layer_call_and_return_conditional_losses_156394o
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
_user_specified_nameconv2d_171_input
?

?
E__inference_dense_173_layer_call_and_return_conditional_losses_156387

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
i
M__inference_max_pooling2d_171_layer_call_and_return_conditional_losses_156224

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
2__inference_max_pooling2d_171_layer_call_fn_156959

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
M__inference_max_pooling2d_171_layer_call_and_return_conditional_losses_156279h
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
?
G
+__inference_dropout_57_layer_call_fn_157085

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
F__inference_dropout_57_layer_call_and_return_conditional_losses_156357`
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
N
2__inference_max_pooling2d_173_layer_call_fn_157039

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
M__inference_max_pooling2d_173_layer_call_and_return_conditional_losses_156325i
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
?
b
F__inference_flatten_57_layer_call_and_return_conditional_losses_156333

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
i
M__inference_max_pooling2d_172_layer_call_and_return_conditional_losses_157009

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
?O
?
!__inference__wrapped_model_156215
conv2d_171_inputQ
7sequential_57_conv2d_171_conv2d_readvariableop_resource: F
8sequential_57_conv2d_171_biasadd_readvariableop_resource: Q
7sequential_57_conv2d_172_conv2d_readvariableop_resource: @F
8sequential_57_conv2d_172_biasadd_readvariableop_resource:@R
7sequential_57_conv2d_173_conv2d_readvariableop_resource:@?G
8sequential_57_conv2d_173_biasadd_readvariableop_resource:	?I
6sequential_57_dense_171_matmul_readvariableop_resource:	?@E
7sequential_57_dense_171_biasadd_readvariableop_resource:@H
6sequential_57_dense_172_matmul_readvariableop_resource:@E
7sequential_57_dense_172_biasadd_readvariableop_resource:H
6sequential_57_dense_173_matmul_readvariableop_resource:E
7sequential_57_dense_173_biasadd_readvariableop_resource:
identity??/sequential_57/conv2d_171/BiasAdd/ReadVariableOp?.sequential_57/conv2d_171/Conv2D/ReadVariableOp?/sequential_57/conv2d_172/BiasAdd/ReadVariableOp?.sequential_57/conv2d_172/Conv2D/ReadVariableOp?/sequential_57/conv2d_173/BiasAdd/ReadVariableOp?.sequential_57/conv2d_173/Conv2D/ReadVariableOp?.sequential_57/dense_171/BiasAdd/ReadVariableOp?-sequential_57/dense_171/MatMul/ReadVariableOp?.sequential_57/dense_172/BiasAdd/ReadVariableOp?-sequential_57/dense_172/MatMul/ReadVariableOp?.sequential_57/dense_173/BiasAdd/ReadVariableOp?-sequential_57/dense_173/MatMul/ReadVariableOp?
.sequential_57/conv2d_171/Conv2D/ReadVariableOpReadVariableOp7sequential_57_conv2d_171_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
sequential_57/conv2d_171/Conv2DConv2Dconv2d_171_input6sequential_57/conv2d_171/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx *
paddingVALID*
strides
?
/sequential_57/conv2d_171/BiasAdd/ReadVariableOpReadVariableOp8sequential_57_conv2d_171_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
 sequential_57/conv2d_171/BiasAddBiasAdd(sequential_57/conv2d_171/Conv2D:output:07sequential_57/conv2d_171/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx ?
sequential_57/conv2d_171/ReluRelu)sequential_57/conv2d_171/BiasAdd:output:0*
T0*/
_output_shapes
:?????????xx ?
'sequential_57/max_pooling2d_171/MaxPoolMaxPool+sequential_57/conv2d_171/Relu:activations:0*/
_output_shapes
:?????????<< *
ksize
*
paddingVALID*
strides
?
.sequential_57/conv2d_172/Conv2D/ReadVariableOpReadVariableOp7sequential_57_conv2d_172_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
sequential_57/conv2d_172/Conv2DConv2D0sequential_57/max_pooling2d_171/MaxPool:output:06sequential_57/conv2d_172/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
/sequential_57/conv2d_172/BiasAdd/ReadVariableOpReadVariableOp8sequential_57_conv2d_172_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
 sequential_57/conv2d_172/BiasAddBiasAdd(sequential_57/conv2d_172/Conv2D:output:07sequential_57/conv2d_172/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
sequential_57/conv2d_172/ReluRelu)sequential_57/conv2d_172/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
'sequential_57/max_pooling2d_172/MaxPoolMaxPool+sequential_57/conv2d_172/Relu:activations:0*/
_output_shapes
:?????????

@*
ksize
*
paddingVALID*
strides
?
.sequential_57/conv2d_173/Conv2D/ReadVariableOpReadVariableOp7sequential_57_conv2d_173_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
sequential_57/conv2d_173/Conv2DConv2D0sequential_57/max_pooling2d_172/MaxPool:output:06sequential_57/conv2d_173/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
/sequential_57/conv2d_173/BiasAdd/ReadVariableOpReadVariableOp8sequential_57_conv2d_173_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
 sequential_57/conv2d_173/BiasAddBiasAdd(sequential_57/conv2d_173/Conv2D:output:07sequential_57/conv2d_173/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
sequential_57/conv2d_173/ReluRelu)sequential_57/conv2d_173/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
'sequential_57/max_pooling2d_173/MaxPoolMaxPool+sequential_57/conv2d_173/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
o
sequential_57/flatten_57/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
 sequential_57/flatten_57/ReshapeReshape0sequential_57/max_pooling2d_173/MaxPool:output:0'sequential_57/flatten_57/Const:output:0*
T0*(
_output_shapes
:???????????
-sequential_57/dense_171/MatMul/ReadVariableOpReadVariableOp6sequential_57_dense_171_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
sequential_57/dense_171/MatMulMatMul)sequential_57/flatten_57/Reshape:output:05sequential_57/dense_171/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
.sequential_57/dense_171/BiasAdd/ReadVariableOpReadVariableOp7sequential_57_dense_171_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_57/dense_171/BiasAddBiasAdd(sequential_57/dense_171/MatMul:product:06sequential_57/dense_171/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
sequential_57/dense_171/TanhTanh(sequential_57/dense_171/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
!sequential_57/dropout_57/IdentityIdentity sequential_57/dense_171/Tanh:y:0*
T0*'
_output_shapes
:?????????@?
-sequential_57/dense_172/MatMul/ReadVariableOpReadVariableOp6sequential_57_dense_172_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
sequential_57/dense_172/MatMulMatMul*sequential_57/dropout_57/Identity:output:05sequential_57/dense_172/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
.sequential_57/dense_172/BiasAdd/ReadVariableOpReadVariableOp7sequential_57_dense_172_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_57/dense_172/BiasAddBiasAdd(sequential_57/dense_172/MatMul:product:06sequential_57/dense_172/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_57/dense_172/TanhTanh(sequential_57/dense_172/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
-sequential_57/dense_173/MatMul/ReadVariableOpReadVariableOp6sequential_57_dense_173_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_57/dense_173/MatMulMatMul sequential_57/dense_172/Tanh:y:05sequential_57/dense_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
.sequential_57/dense_173/BiasAdd/ReadVariableOpReadVariableOp7sequential_57_dense_173_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_57/dense_173/BiasAddBiasAdd(sequential_57/dense_173/MatMul:product:06sequential_57/dense_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_57/dense_173/SigmoidSigmoid(sequential_57/dense_173/BiasAdd:output:0*
T0*'
_output_shapes
:?????????r
IdentityIdentity#sequential_57/dense_173/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_57/conv2d_171/BiasAdd/ReadVariableOp/^sequential_57/conv2d_171/Conv2D/ReadVariableOp0^sequential_57/conv2d_172/BiasAdd/ReadVariableOp/^sequential_57/conv2d_172/Conv2D/ReadVariableOp0^sequential_57/conv2d_173/BiasAdd/ReadVariableOp/^sequential_57/conv2d_173/Conv2D/ReadVariableOp/^sequential_57/dense_171/BiasAdd/ReadVariableOp.^sequential_57/dense_171/MatMul/ReadVariableOp/^sequential_57/dense_172/BiasAdd/ReadVariableOp.^sequential_57/dense_172/MatMul/ReadVariableOp/^sequential_57/dense_173/BiasAdd/ReadVariableOp.^sequential_57/dense_173/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2b
/sequential_57/conv2d_171/BiasAdd/ReadVariableOp/sequential_57/conv2d_171/BiasAdd/ReadVariableOp2`
.sequential_57/conv2d_171/Conv2D/ReadVariableOp.sequential_57/conv2d_171/Conv2D/ReadVariableOp2b
/sequential_57/conv2d_172/BiasAdd/ReadVariableOp/sequential_57/conv2d_172/BiasAdd/ReadVariableOp2`
.sequential_57/conv2d_172/Conv2D/ReadVariableOp.sequential_57/conv2d_172/Conv2D/ReadVariableOp2b
/sequential_57/conv2d_173/BiasAdd/ReadVariableOp/sequential_57/conv2d_173/BiasAdd/ReadVariableOp2`
.sequential_57/conv2d_173/Conv2D/ReadVariableOp.sequential_57/conv2d_173/Conv2D/ReadVariableOp2`
.sequential_57/dense_171/BiasAdd/ReadVariableOp.sequential_57/dense_171/BiasAdd/ReadVariableOp2^
-sequential_57/dense_171/MatMul/ReadVariableOp-sequential_57/dense_171/MatMul/ReadVariableOp2`
.sequential_57/dense_172/BiasAdd/ReadVariableOp.sequential_57/dense_172/BiasAdd/ReadVariableOp2^
-sequential_57/dense_172/MatMul/ReadVariableOp-sequential_57/dense_172/MatMul/ReadVariableOp2`
.sequential_57/dense_173/BiasAdd/ReadVariableOp.sequential_57/dense_173/BiasAdd/ReadVariableOp2^
-sequential_57/dense_173/MatMul/ReadVariableOp-sequential_57/dense_173/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_171_input
?1
?
I__inference_sequential_57_layer_call_and_return_conditional_losses_156729
conv2d_171_input+
conv2d_171_156693: 
conv2d_171_156695: +
conv2d_172_156699: @
conv2d_172_156701:@,
conv2d_173_156705:@? 
conv2d_173_156707:	?#
dense_171_156712:	?@
dense_171_156714:@"
dense_172_156718:@
dense_172_156720:"
dense_173_156723:
dense_173_156725:
identity??"conv2d_171/StatefulPartitionedCall?"conv2d_172/StatefulPartitionedCall?"conv2d_173/StatefulPartitionedCall?!dense_171/StatefulPartitionedCall?!dense_172/StatefulPartitionedCall?!dense_173/StatefulPartitionedCall?"dropout_57/StatefulPartitionedCall?
"conv2d_171/StatefulPartitionedCallStatefulPartitionedCallconv2d_171_inputconv2d_171_156693conv2d_171_156695*
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
F__inference_conv2d_171_layer_call_and_return_conditional_losses_156269?
!max_pooling2d_171/PartitionedCallPartitionedCall+conv2d_171/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_171_layer_call_and_return_conditional_losses_156279?
"conv2d_172/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_171/PartitionedCall:output:0conv2d_172_156699conv2d_172_156701*
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
F__inference_conv2d_172_layer_call_and_return_conditional_losses_156292?
!max_pooling2d_172/PartitionedCallPartitionedCall+conv2d_172/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_172_layer_call_and_return_conditional_losses_156302?
"conv2d_173/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_172/PartitionedCall:output:0conv2d_173_156705conv2d_173_156707*
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
F__inference_conv2d_173_layer_call_and_return_conditional_losses_156315?
!max_pooling2d_173/PartitionedCallPartitionedCall+conv2d_173/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_173_layer_call_and_return_conditional_losses_156325?
flatten_57/PartitionedCallPartitionedCall*max_pooling2d_173/PartitionedCall:output:0*
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
F__inference_flatten_57_layer_call_and_return_conditional_losses_156333?
!dense_171/StatefulPartitionedCallStatefulPartitionedCall#flatten_57/PartitionedCall:output:0dense_171_156712dense_171_156714*
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
E__inference_dense_171_layer_call_and_return_conditional_losses_156346?
"dropout_57/StatefulPartitionedCallStatefulPartitionedCall*dense_171/StatefulPartitionedCall:output:0*
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
F__inference_dropout_57_layer_call_and_return_conditional_losses_156461?
!dense_172/StatefulPartitionedCallStatefulPartitionedCall+dropout_57/StatefulPartitionedCall:output:0dense_172_156718dense_172_156720*
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
E__inference_dense_172_layer_call_and_return_conditional_losses_156370?
!dense_173/StatefulPartitionedCallStatefulPartitionedCall*dense_172/StatefulPartitionedCall:output:0dense_173_156723dense_173_156725*
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
E__inference_dense_173_layer_call_and_return_conditional_losses_156387y
IdentityIdentity*dense_173/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_171/StatefulPartitionedCall#^conv2d_172/StatefulPartitionedCall#^conv2d_173/StatefulPartitionedCall"^dense_171/StatefulPartitionedCall"^dense_172/StatefulPartitionedCall"^dense_173/StatefulPartitionedCall#^dropout_57/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_171/StatefulPartitionedCall"conv2d_171/StatefulPartitionedCall2H
"conv2d_172/StatefulPartitionedCall"conv2d_172/StatefulPartitionedCall2H
"conv2d_173/StatefulPartitionedCall"conv2d_173/StatefulPartitionedCall2F
!dense_171/StatefulPartitionedCall!dense_171/StatefulPartitionedCall2F
!dense_172/StatefulPartitionedCall!dense_172/StatefulPartitionedCall2F
!dense_173/StatefulPartitionedCall!dense_173/StatefulPartitionedCall2H
"dropout_57/StatefulPartitionedCall"dropout_57/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_171_input
?
G
+__inference_flatten_57_layer_call_fn_157054

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
F__inference_flatten_57_layer_call_and_return_conditional_losses_156333a
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
e
F__inference_dropout_57_layer_call_and_return_conditional_losses_157107

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
M__inference_max_pooling2d_173_layer_call_and_return_conditional_losses_156325

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
i
M__inference_max_pooling2d_173_layer_call_and_return_conditional_losses_157044

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
?1
?
I__inference_sequential_57_layer_call_and_return_conditional_losses_156595

inputs+
conv2d_171_156559: 
conv2d_171_156561: +
conv2d_172_156565: @
conv2d_172_156567:@,
conv2d_173_156571:@? 
conv2d_173_156573:	?#
dense_171_156578:	?@
dense_171_156580:@"
dense_172_156584:@
dense_172_156586:"
dense_173_156589:
dense_173_156591:
identity??"conv2d_171/StatefulPartitionedCall?"conv2d_172/StatefulPartitionedCall?"conv2d_173/StatefulPartitionedCall?!dense_171/StatefulPartitionedCall?!dense_172/StatefulPartitionedCall?!dense_173/StatefulPartitionedCall?"dropout_57/StatefulPartitionedCall?
"conv2d_171/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_171_156559conv2d_171_156561*
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
F__inference_conv2d_171_layer_call_and_return_conditional_losses_156269?
!max_pooling2d_171/PartitionedCallPartitionedCall+conv2d_171/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_171_layer_call_and_return_conditional_losses_156279?
"conv2d_172/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_171/PartitionedCall:output:0conv2d_172_156565conv2d_172_156567*
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
F__inference_conv2d_172_layer_call_and_return_conditional_losses_156292?
!max_pooling2d_172/PartitionedCallPartitionedCall+conv2d_172/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_172_layer_call_and_return_conditional_losses_156302?
"conv2d_173/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_172/PartitionedCall:output:0conv2d_173_156571conv2d_173_156573*
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
F__inference_conv2d_173_layer_call_and_return_conditional_losses_156315?
!max_pooling2d_173/PartitionedCallPartitionedCall+conv2d_173/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_173_layer_call_and_return_conditional_losses_156325?
flatten_57/PartitionedCallPartitionedCall*max_pooling2d_173/PartitionedCall:output:0*
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
F__inference_flatten_57_layer_call_and_return_conditional_losses_156333?
!dense_171/StatefulPartitionedCallStatefulPartitionedCall#flatten_57/PartitionedCall:output:0dense_171_156578dense_171_156580*
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
E__inference_dense_171_layer_call_and_return_conditional_losses_156346?
"dropout_57/StatefulPartitionedCallStatefulPartitionedCall*dense_171/StatefulPartitionedCall:output:0*
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
F__inference_dropout_57_layer_call_and_return_conditional_losses_156461?
!dense_172/StatefulPartitionedCallStatefulPartitionedCall+dropout_57/StatefulPartitionedCall:output:0dense_172_156584dense_172_156586*
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
E__inference_dense_172_layer_call_and_return_conditional_losses_156370?
!dense_173/StatefulPartitionedCallStatefulPartitionedCall*dense_172/StatefulPartitionedCall:output:0dense_173_156589dense_173_156591*
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
E__inference_dense_173_layer_call_and_return_conditional_losses_156387y
IdentityIdentity*dense_173/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_171/StatefulPartitionedCall#^conv2d_172/StatefulPartitionedCall#^conv2d_173/StatefulPartitionedCall"^dense_171/StatefulPartitionedCall"^dense_172/StatefulPartitionedCall"^dense_173/StatefulPartitionedCall#^dropout_57/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_171/StatefulPartitionedCall"conv2d_171/StatefulPartitionedCall2H
"conv2d_172/StatefulPartitionedCall"conv2d_172/StatefulPartitionedCall2H
"conv2d_173/StatefulPartitionedCall"conv2d_173/StatefulPartitionedCall2F
!dense_171/StatefulPartitionedCall!dense_171/StatefulPartitionedCall2F
!dense_172/StatefulPartitionedCall!dense_172/StatefulPartitionedCall2F
!dense_173/StatefulPartitionedCall!dense_173/StatefulPartitionedCall2H
"dropout_57/StatefulPartitionedCall"dropout_57/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_172_layer_call_fn_156999

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
M__inference_max_pooling2d_172_layer_call_and_return_conditional_losses_156302h
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
?
i
M__inference_max_pooling2d_172_layer_call_and_return_conditional_losses_157004

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
M__inference_max_pooling2d_171_layer_call_and_return_conditional_losses_156964

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
F__inference_conv2d_171_layer_call_and_return_conditional_losses_156949

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
F__inference_conv2d_172_layer_call_and_return_conditional_losses_156989

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
i
M__inference_max_pooling2d_173_layer_call_and_return_conditional_losses_157049

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
2__inference_max_pooling2d_172_layer_call_fn_156994

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
M__inference_max_pooling2d_172_layer_call_and_return_conditional_losses_156236?
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
b
F__inference_flatten_57_layer_call_and_return_conditional_losses_157060

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
E__inference_dense_172_layer_call_and_return_conditional_losses_157127

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
?0
?
I__inference_sequential_57_layer_call_and_return_conditional_losses_156690
conv2d_171_input+
conv2d_171_156654: 
conv2d_171_156656: +
conv2d_172_156660: @
conv2d_172_156662:@,
conv2d_173_156666:@? 
conv2d_173_156668:	?#
dense_171_156673:	?@
dense_171_156675:@"
dense_172_156679:@
dense_172_156681:"
dense_173_156684:
dense_173_156686:
identity??"conv2d_171/StatefulPartitionedCall?"conv2d_172/StatefulPartitionedCall?"conv2d_173/StatefulPartitionedCall?!dense_171/StatefulPartitionedCall?!dense_172/StatefulPartitionedCall?!dense_173/StatefulPartitionedCall?
"conv2d_171/StatefulPartitionedCallStatefulPartitionedCallconv2d_171_inputconv2d_171_156654conv2d_171_156656*
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
F__inference_conv2d_171_layer_call_and_return_conditional_losses_156269?
!max_pooling2d_171/PartitionedCallPartitionedCall+conv2d_171/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_171_layer_call_and_return_conditional_losses_156279?
"conv2d_172/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_171/PartitionedCall:output:0conv2d_172_156660conv2d_172_156662*
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
F__inference_conv2d_172_layer_call_and_return_conditional_losses_156292?
!max_pooling2d_172/PartitionedCallPartitionedCall+conv2d_172/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_172_layer_call_and_return_conditional_losses_156302?
"conv2d_173/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_172/PartitionedCall:output:0conv2d_173_156666conv2d_173_156668*
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
F__inference_conv2d_173_layer_call_and_return_conditional_losses_156315?
!max_pooling2d_173/PartitionedCallPartitionedCall+conv2d_173/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_173_layer_call_and_return_conditional_losses_156325?
flatten_57/PartitionedCallPartitionedCall*max_pooling2d_173/PartitionedCall:output:0*
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
F__inference_flatten_57_layer_call_and_return_conditional_losses_156333?
!dense_171/StatefulPartitionedCallStatefulPartitionedCall#flatten_57/PartitionedCall:output:0dense_171_156673dense_171_156675*
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
E__inference_dense_171_layer_call_and_return_conditional_losses_156346?
dropout_57/PartitionedCallPartitionedCall*dense_171/StatefulPartitionedCall:output:0*
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
F__inference_dropout_57_layer_call_and_return_conditional_losses_156357?
!dense_172/StatefulPartitionedCallStatefulPartitionedCall#dropout_57/PartitionedCall:output:0dense_172_156679dense_172_156681*
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
E__inference_dense_172_layer_call_and_return_conditional_losses_156370?
!dense_173/StatefulPartitionedCallStatefulPartitionedCall*dense_172/StatefulPartitionedCall:output:0dense_173_156684dense_173_156686*
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
E__inference_dense_173_layer_call_and_return_conditional_losses_156387y
IdentityIdentity*dense_173/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_171/StatefulPartitionedCall#^conv2d_172/StatefulPartitionedCall#^conv2d_173/StatefulPartitionedCall"^dense_171/StatefulPartitionedCall"^dense_172/StatefulPartitionedCall"^dense_173/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_171/StatefulPartitionedCall"conv2d_171/StatefulPartitionedCall2H
"conv2d_172/StatefulPartitionedCall"conv2d_172/StatefulPartitionedCall2H
"conv2d_173/StatefulPartitionedCall"conv2d_173/StatefulPartitionedCall2F
!dense_171/StatefulPartitionedCall!dense_171/StatefulPartitionedCall2F
!dense_172/StatefulPartitionedCall!dense_172/StatefulPartitionedCall2F
!dense_173/StatefulPartitionedCall!dense_173/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_171_input
?
?
*__inference_dense_171_layer_call_fn_157069

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
E__inference_dense_171_layer_call_and_return_conditional_losses_156346o
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
?A
?	
"__inference__traced_restore_157276
file_prefix<
"assignvariableop_conv2d_171_kernel: 0
"assignvariableop_1_conv2d_171_bias: >
$assignvariableop_2_conv2d_172_kernel: @0
"assignvariableop_3_conv2d_172_bias:@?
$assignvariableop_4_conv2d_173_kernel:@?1
"assignvariableop_5_conv2d_173_bias:	?6
#assignvariableop_6_dense_171_kernel:	?@/
!assignvariableop_7_dense_171_bias:@5
#assignvariableop_8_dense_172_kernel:@/
!assignvariableop_9_dense_172_bias:6
$assignvariableop_10_dense_173_kernel:0
"assignvariableop_11_dense_173_bias:#
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_171_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_171_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_172_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_172_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_173_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_173_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_171_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_171_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_172_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_172_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_173_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_173_biasIdentity_11:output:0"/device:CPU:0*
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
?
F__inference_conv2d_172_layer_call_and_return_conditional_losses_156292

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
E__inference_dense_171_layer_call_and_return_conditional_losses_156346

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
*__inference_dense_172_layer_call_fn_157116

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
E__inference_dense_172_layer_call_and_return_conditional_losses_156370o
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
?
i
M__inference_max_pooling2d_171_layer_call_and_return_conditional_losses_156279

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
M__inference_max_pooling2d_172_layer_call_and_return_conditional_losses_156236

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
F__inference_conv2d_173_layer_call_and_return_conditional_losses_157029

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
__inference__traced_save_157218
file_prefix0
,savev2_conv2d_171_kernel_read_readvariableop.
*savev2_conv2d_171_bias_read_readvariableop0
,savev2_conv2d_172_kernel_read_readvariableop.
*savev2_conv2d_172_bias_read_readvariableop0
,savev2_conv2d_173_kernel_read_readvariableop.
*savev2_conv2d_173_bias_read_readvariableop/
+savev2_dense_171_kernel_read_readvariableop-
)savev2_dense_171_bias_read_readvariableop/
+savev2_dense_172_kernel_read_readvariableop-
)savev2_dense_172_bias_read_readvariableop/
+savev2_dense_173_kernel_read_readvariableop-
)savev2_dense_173_bias_read_readvariableop$
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_171_kernel_read_readvariableop*savev2_conv2d_171_bias_read_readvariableop,savev2_conv2d_172_kernel_read_readvariableop*savev2_conv2d_172_bias_read_readvariableop,savev2_conv2d_173_kernel_read_readvariableop*savev2_conv2d_173_bias_read_readvariableop+savev2_dense_171_kernel_read_readvariableop)savev2_dense_171_bias_read_readvariableop+savev2_dense_172_kernel_read_readvariableop)savev2_dense_172_bias_read_readvariableop+savev2_dense_173_kernel_read_readvariableop)savev2_dense_173_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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
E__inference_dense_172_layer_call_and_return_conditional_losses_156370

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
F__inference_conv2d_173_layer_call_and_return_conditional_losses_156315

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
?
d
F__inference_dropout_57_layer_call_and_return_conditional_losses_156357

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
?0
?
I__inference_sequential_57_layer_call_and_return_conditional_losses_156394

inputs+
conv2d_171_156270: 
conv2d_171_156272: +
conv2d_172_156293: @
conv2d_172_156295:@,
conv2d_173_156316:@? 
conv2d_173_156318:	?#
dense_171_156347:	?@
dense_171_156349:@"
dense_172_156371:@
dense_172_156373:"
dense_173_156388:
dense_173_156390:
identity??"conv2d_171/StatefulPartitionedCall?"conv2d_172/StatefulPartitionedCall?"conv2d_173/StatefulPartitionedCall?!dense_171/StatefulPartitionedCall?!dense_172/StatefulPartitionedCall?!dense_173/StatefulPartitionedCall?
"conv2d_171/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_171_156270conv2d_171_156272*
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
F__inference_conv2d_171_layer_call_and_return_conditional_losses_156269?
!max_pooling2d_171/PartitionedCallPartitionedCall+conv2d_171/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_171_layer_call_and_return_conditional_losses_156279?
"conv2d_172/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_171/PartitionedCall:output:0conv2d_172_156293conv2d_172_156295*
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
F__inference_conv2d_172_layer_call_and_return_conditional_losses_156292?
!max_pooling2d_172/PartitionedCallPartitionedCall+conv2d_172/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_172_layer_call_and_return_conditional_losses_156302?
"conv2d_173/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_172/PartitionedCall:output:0conv2d_173_156316conv2d_173_156318*
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
F__inference_conv2d_173_layer_call_and_return_conditional_losses_156315?
!max_pooling2d_173/PartitionedCallPartitionedCall+conv2d_173/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_173_layer_call_and_return_conditional_losses_156325?
flatten_57/PartitionedCallPartitionedCall*max_pooling2d_173/PartitionedCall:output:0*
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
F__inference_flatten_57_layer_call_and_return_conditional_losses_156333?
!dense_171/StatefulPartitionedCallStatefulPartitionedCall#flatten_57/PartitionedCall:output:0dense_171_156347dense_171_156349*
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
E__inference_dense_171_layer_call_and_return_conditional_losses_156346?
dropout_57/PartitionedCallPartitionedCall*dense_171/StatefulPartitionedCall:output:0*
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
F__inference_dropout_57_layer_call_and_return_conditional_losses_156357?
!dense_172/StatefulPartitionedCallStatefulPartitionedCall#dropout_57/PartitionedCall:output:0dense_172_156371dense_172_156373*
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
E__inference_dense_172_layer_call_and_return_conditional_losses_156370?
!dense_173/StatefulPartitionedCallStatefulPartitionedCall*dense_172/StatefulPartitionedCall:output:0dense_173_156388dense_173_156390*
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
E__inference_dense_173_layer_call_and_return_conditional_losses_156387y
IdentityIdentity*dense_173/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_171/StatefulPartitionedCall#^conv2d_172/StatefulPartitionedCall#^conv2d_173/StatefulPartitionedCall"^dense_171/StatefulPartitionedCall"^dense_172/StatefulPartitionedCall"^dense_173/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_171/StatefulPartitionedCall"conv2d_171/StatefulPartitionedCall2H
"conv2d_172/StatefulPartitionedCall"conv2d_172/StatefulPartitionedCall2H
"conv2d_173/StatefulPartitionedCall"conv2d_173/StatefulPartitionedCall2F
!dense_171/StatefulPartitionedCall!dense_171/StatefulPartitionedCall2F
!dense_172/StatefulPartitionedCall!dense_172/StatefulPartitionedCall2F
!dense_173/StatefulPartitionedCall!dense_173/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_173_layer_call_and_return_conditional_losses_156248

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
e
F__inference_dropout_57_layer_call_and_return_conditional_losses_156461

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
2__inference_max_pooling2d_173_layer_call_fn_157034

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
M__inference_max_pooling2d_173_layer_call_and_return_conditional_losses_156248?
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
?
d
+__inference_dropout_57_layer_call_fn_157090

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
F__inference_dropout_57_layer_call_and_return_conditional_losses_156461o
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
?G
?	
I__inference_sequential_57_layer_call_and_return_conditional_losses_156929

inputsC
)conv2d_171_conv2d_readvariableop_resource: 8
*conv2d_171_biasadd_readvariableop_resource: C
)conv2d_172_conv2d_readvariableop_resource: @8
*conv2d_172_biasadd_readvariableop_resource:@D
)conv2d_173_conv2d_readvariableop_resource:@?9
*conv2d_173_biasadd_readvariableop_resource:	?;
(dense_171_matmul_readvariableop_resource:	?@7
)dense_171_biasadd_readvariableop_resource:@:
(dense_172_matmul_readvariableop_resource:@7
)dense_172_biasadd_readvariableop_resource::
(dense_173_matmul_readvariableop_resource:7
)dense_173_biasadd_readvariableop_resource:
identity??!conv2d_171/BiasAdd/ReadVariableOp? conv2d_171/Conv2D/ReadVariableOp?!conv2d_172/BiasAdd/ReadVariableOp? conv2d_172/Conv2D/ReadVariableOp?!conv2d_173/BiasAdd/ReadVariableOp? conv2d_173/Conv2D/ReadVariableOp? dense_171/BiasAdd/ReadVariableOp?dense_171/MatMul/ReadVariableOp? dense_172/BiasAdd/ReadVariableOp?dense_172/MatMul/ReadVariableOp? dense_173/BiasAdd/ReadVariableOp?dense_173/MatMul/ReadVariableOp?
 conv2d_171/Conv2D/ReadVariableOpReadVariableOp)conv2d_171_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_171/Conv2DConv2Dinputs(conv2d_171/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx *
paddingVALID*
strides
?
!conv2d_171/BiasAdd/ReadVariableOpReadVariableOp*conv2d_171_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_171/BiasAddBiasAddconv2d_171/Conv2D:output:0)conv2d_171/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx n
conv2d_171/ReluReluconv2d_171/BiasAdd:output:0*
T0*/
_output_shapes
:?????????xx ?
max_pooling2d_171/MaxPoolMaxPoolconv2d_171/Relu:activations:0*/
_output_shapes
:?????????<< *
ksize
*
paddingVALID*
strides
?
 conv2d_172/Conv2D/ReadVariableOpReadVariableOp)conv2d_172_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_172/Conv2DConv2D"max_pooling2d_171/MaxPool:output:0(conv2d_172/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
!conv2d_172/BiasAdd/ReadVariableOpReadVariableOp*conv2d_172_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_172/BiasAddBiasAddconv2d_172/Conv2D:output:0)conv2d_172/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@n
conv2d_172/ReluReluconv2d_172/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_172/MaxPoolMaxPoolconv2d_172/Relu:activations:0*/
_output_shapes
:?????????

@*
ksize
*
paddingVALID*
strides
?
 conv2d_173/Conv2D/ReadVariableOpReadVariableOp)conv2d_173_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_173/Conv2DConv2D"max_pooling2d_172/MaxPool:output:0(conv2d_173/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
!conv2d_173/BiasAdd/ReadVariableOpReadVariableOp*conv2d_173_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_173/BiasAddBiasAddconv2d_173/Conv2D:output:0)conv2d_173/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????o
conv2d_173/ReluReluconv2d_173/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
max_pooling2d_173/MaxPoolMaxPoolconv2d_173/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
a
flatten_57/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_57/ReshapeReshape"max_pooling2d_173/MaxPool:output:0flatten_57/Const:output:0*
T0*(
_output_shapes
:???????????
dense_171/MatMul/ReadVariableOpReadVariableOp(dense_171_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_171/MatMulMatMulflatten_57/Reshape:output:0'dense_171/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
 dense_171/BiasAdd/ReadVariableOpReadVariableOp)dense_171_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_171/BiasAddBiasAdddense_171/MatMul:product:0(dense_171/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_171/TanhTanhdense_171/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@]
dropout_57/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_57/dropout/MulMuldense_171/Tanh:y:0!dropout_57/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@Z
dropout_57/dropout/ShapeShapedense_171/Tanh:y:0*
T0*
_output_shapes
:?
/dropout_57/dropout/random_uniform/RandomUniformRandomUniform!dropout_57/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0f
!dropout_57/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_57/dropout/GreaterEqualGreaterEqual8dropout_57/dropout/random_uniform/RandomUniform:output:0*dropout_57/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@?
dropout_57/dropout/CastCast#dropout_57/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
dropout_57/dropout/Mul_1Muldropout_57/dropout/Mul:z:0dropout_57/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@?
dense_172/MatMul/ReadVariableOpReadVariableOp(dense_172_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_172/MatMulMatMuldropout_57/dropout/Mul_1:z:0'dense_172/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_172/BiasAdd/ReadVariableOpReadVariableOp)dense_172_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_172/BiasAddBiasAdddense_172/MatMul:product:0(dense_172/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_172/TanhTanhdense_172/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_173/MatMul/ReadVariableOpReadVariableOp(dense_173_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_173/MatMulMatMuldense_172/Tanh:y:0'dense_173/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_173/BiasAdd/ReadVariableOpReadVariableOp)dense_173_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_173/BiasAddBiasAdddense_173/MatMul:product:0(dense_173/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_173/SigmoidSigmoiddense_173/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_173/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_171/BiasAdd/ReadVariableOp!^conv2d_171/Conv2D/ReadVariableOp"^conv2d_172/BiasAdd/ReadVariableOp!^conv2d_172/Conv2D/ReadVariableOp"^conv2d_173/BiasAdd/ReadVariableOp!^conv2d_173/Conv2D/ReadVariableOp!^dense_171/BiasAdd/ReadVariableOp ^dense_171/MatMul/ReadVariableOp!^dense_172/BiasAdd/ReadVariableOp ^dense_172/MatMul/ReadVariableOp!^dense_173/BiasAdd/ReadVariableOp ^dense_173/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_171/BiasAdd/ReadVariableOp!conv2d_171/BiasAdd/ReadVariableOp2D
 conv2d_171/Conv2D/ReadVariableOp conv2d_171/Conv2D/ReadVariableOp2F
!conv2d_172/BiasAdd/ReadVariableOp!conv2d_172/BiasAdd/ReadVariableOp2D
 conv2d_172/Conv2D/ReadVariableOp conv2d_172/Conv2D/ReadVariableOp2F
!conv2d_173/BiasAdd/ReadVariableOp!conv2d_173/BiasAdd/ReadVariableOp2D
 conv2d_173/Conv2D/ReadVariableOp conv2d_173/Conv2D/ReadVariableOp2D
 dense_171/BiasAdd/ReadVariableOp dense_171/BiasAdd/ReadVariableOp2B
dense_171/MatMul/ReadVariableOpdense_171/MatMul/ReadVariableOp2D
 dense_172/BiasAdd/ReadVariableOp dense_172/BiasAdd/ReadVariableOp2B
dense_172/MatMul/ReadVariableOpdense_172/MatMul/ReadVariableOp2D
 dense_173/BiasAdd/ReadVariableOp dense_173/BiasAdd/ReadVariableOp2B
dense_173/MatMul/ReadVariableOpdense_173/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_57_layer_call_fn_156789

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
I__inference_sequential_57_layer_call_and_return_conditional_losses_156394o
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
M__inference_max_pooling2d_171_layer_call_and_return_conditional_losses_156969

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
conv2d_171_inputC
"serving_default_conv2d_171_input:0???????????=
	dense_1730
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
+:) 2conv2d_171/kernel
: 2conv2d_171/bias
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
+:) @2conv2d_172/kernel
:@2conv2d_172/bias
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
,:*@?2conv2d_173/kernel
:?2conv2d_173/bias
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
#:!	?@2dense_171/kernel
:@2dense_171/bias
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
": @2dense_172/kernel
:2dense_172/bias
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
": 2dense_173/kernel
:2dense_173/bias
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
.__inference_sequential_57_layer_call_fn_156421
.__inference_sequential_57_layer_call_fn_156789
.__inference_sequential_57_layer_call_fn_156818
.__inference_sequential_57_layer_call_fn_156651?
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
I__inference_sequential_57_layer_call_and_return_conditional_losses_156870
I__inference_sequential_57_layer_call_and_return_conditional_losses_156929
I__inference_sequential_57_layer_call_and_return_conditional_losses_156690
I__inference_sequential_57_layer_call_and_return_conditional_losses_156729?
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
!__inference__wrapped_model_156215conv2d_171_input"?
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
+__inference_conv2d_171_layer_call_fn_156938?
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
F__inference_conv2d_171_layer_call_and_return_conditional_losses_156949?
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
2__inference_max_pooling2d_171_layer_call_fn_156954
2__inference_max_pooling2d_171_layer_call_fn_156959?
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
M__inference_max_pooling2d_171_layer_call_and_return_conditional_losses_156964
M__inference_max_pooling2d_171_layer_call_and_return_conditional_losses_156969?
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
+__inference_conv2d_172_layer_call_fn_156978?
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
F__inference_conv2d_172_layer_call_and_return_conditional_losses_156989?
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
2__inference_max_pooling2d_172_layer_call_fn_156994
2__inference_max_pooling2d_172_layer_call_fn_156999?
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
M__inference_max_pooling2d_172_layer_call_and_return_conditional_losses_157004
M__inference_max_pooling2d_172_layer_call_and_return_conditional_losses_157009?
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
+__inference_conv2d_173_layer_call_fn_157018?
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
F__inference_conv2d_173_layer_call_and_return_conditional_losses_157029?
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
2__inference_max_pooling2d_173_layer_call_fn_157034
2__inference_max_pooling2d_173_layer_call_fn_157039?
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
M__inference_max_pooling2d_173_layer_call_and_return_conditional_losses_157044
M__inference_max_pooling2d_173_layer_call_and_return_conditional_losses_157049?
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
+__inference_flatten_57_layer_call_fn_157054?
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
F__inference_flatten_57_layer_call_and_return_conditional_losses_157060?
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
*__inference_dense_171_layer_call_fn_157069?
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
E__inference_dense_171_layer_call_and_return_conditional_losses_157080?
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
+__inference_dropout_57_layer_call_fn_157085
+__inference_dropout_57_layer_call_fn_157090?
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
F__inference_dropout_57_layer_call_and_return_conditional_losses_157095
F__inference_dropout_57_layer_call_and_return_conditional_losses_157107?
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
*__inference_dense_172_layer_call_fn_157116?
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
E__inference_dense_172_layer_call_and_return_conditional_losses_157127?
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
*__inference_dense_173_layer_call_fn_157136?
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
E__inference_dense_173_layer_call_and_return_conditional_losses_157147?
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
$__inference_signature_wrapper_156760conv2d_171_input"?
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
!__inference__wrapped_model_156215? +,<=HIOPC?@
9?6
4?1
conv2d_171_input???????????
? "5?2
0
	dense_173#? 
	dense_173??????????
F__inference_conv2d_171_layer_call_and_return_conditional_losses_156949n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????xx 
? ?
+__inference_conv2d_171_layer_call_fn_156938a9?6
/?,
*?'
inputs???????????
? " ??????????xx ?
F__inference_conv2d_172_layer_call_and_return_conditional_losses_156989l 7?4
-?*
(?%
inputs?????????<< 
? "-?*
#? 
0?????????@
? ?
+__inference_conv2d_172_layer_call_fn_156978_ 7?4
-?*
(?%
inputs?????????<< 
? " ??????????@?
F__inference_conv2d_173_layer_call_and_return_conditional_losses_157029m+,7?4
-?*
(?%
inputs?????????

@
? ".?+
$?!
0??????????
? ?
+__inference_conv2d_173_layer_call_fn_157018`+,7?4
-?*
(?%
inputs?????????

@
? "!????????????
E__inference_dense_171_layer_call_and_return_conditional_losses_157080]<=0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? ~
*__inference_dense_171_layer_call_fn_157069P<=0?-
&?#
!?
inputs??????????
? "??????????@?
E__inference_dense_172_layer_call_and_return_conditional_losses_157127\HI/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? }
*__inference_dense_172_layer_call_fn_157116OHI/?,
%?"
 ?
inputs?????????@
? "???????????
E__inference_dense_173_layer_call_and_return_conditional_losses_157147\OP/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? }
*__inference_dense_173_layer_call_fn_157136OOP/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_dropout_57_layer_call_and_return_conditional_losses_157095\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
F__inference_dropout_57_layer_call_and_return_conditional_losses_157107\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ~
+__inference_dropout_57_layer_call_fn_157085O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@~
+__inference_dropout_57_layer_call_fn_157090O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
F__inference_flatten_57_layer_call_and_return_conditional_losses_157060b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_flatten_57_layer_call_fn_157054U8?5
.?+
)?&
inputs??????????
? "????????????
M__inference_max_pooling2d_171_layer_call_and_return_conditional_losses_156964?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_171_layer_call_and_return_conditional_losses_156969h7?4
-?*
(?%
inputs?????????xx 
? "-?*
#? 
0?????????<< 
? ?
2__inference_max_pooling2d_171_layer_call_fn_156954?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_171_layer_call_fn_156959[7?4
-?*
(?%
inputs?????????xx 
? " ??????????<< ?
M__inference_max_pooling2d_172_layer_call_and_return_conditional_losses_157004?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_172_layer_call_and_return_conditional_losses_157009h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????

@
? ?
2__inference_max_pooling2d_172_layer_call_fn_156994?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_172_layer_call_fn_156999[7?4
-?*
(?%
inputs?????????@
? " ??????????

@?
M__inference_max_pooling2d_173_layer_call_and_return_conditional_losses_157044?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_173_layer_call_and_return_conditional_losses_157049j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
2__inference_max_pooling2d_173_layer_call_fn_157034?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_173_layer_call_fn_157039]8?5
.?+
)?&
inputs??????????
? "!????????????
I__inference_sequential_57_layer_call_and_return_conditional_losses_156690? +,<=HIOPK?H
A?>
4?1
conv2d_171_input???????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_57_layer_call_and_return_conditional_losses_156729? +,<=HIOPK?H
A?>
4?1
conv2d_171_input???????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_57_layer_call_and_return_conditional_losses_156870x +,<=HIOPA?>
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
I__inference_sequential_57_layer_call_and_return_conditional_losses_156929x +,<=HIOPA?>
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
.__inference_sequential_57_layer_call_fn_156421u +,<=HIOPK?H
A?>
4?1
conv2d_171_input???????????
p 

 
? "???????????
.__inference_sequential_57_layer_call_fn_156651u +,<=HIOPK?H
A?>
4?1
conv2d_171_input???????????
p

 
? "???????????
.__inference_sequential_57_layer_call_fn_156789k +,<=HIOPA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
.__inference_sequential_57_layer_call_fn_156818k +,<=HIOPA?>
7?4
*?'
inputs???????????
p

 
? "???????????
$__inference_signature_wrapper_156760? +,<=HIOPW?T
? 
M?J
H
conv2d_171_input4?1
conv2d_171_input???????????"5?2
0
	dense_173#? 
	dense_173?????????