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
conv2d_321/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_321/kernel

%conv2d_321/kernel/Read/ReadVariableOpReadVariableOpconv2d_321/kernel*&
_output_shapes
: *
dtype0
v
conv2d_321/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_321/bias
o
#conv2d_321/bias/Read/ReadVariableOpReadVariableOpconv2d_321/bias*
_output_shapes
: *
dtype0
?
conv2d_322/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_322/kernel

%conv2d_322/kernel/Read/ReadVariableOpReadVariableOpconv2d_322/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_322/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_322/bias
o
#conv2d_322/bias/Read/ReadVariableOpReadVariableOpconv2d_322/bias*
_output_shapes
:@*
dtype0
?
conv2d_323/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*"
shared_nameconv2d_323/kernel
?
%conv2d_323/kernel/Read/ReadVariableOpReadVariableOpconv2d_323/kernel*'
_output_shapes
:@?*
dtype0
w
conv2d_323/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_323/bias
p
#conv2d_323/bias/Read/ReadVariableOpReadVariableOpconv2d_323/bias*
_output_shapes	
:?*
dtype0
}
dense_321/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*!
shared_namedense_321/kernel
v
$dense_321/kernel/Read/ReadVariableOpReadVariableOpdense_321/kernel*
_output_shapes
:	?@*
dtype0
t
dense_321/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_321/bias
m
"dense_321/bias/Read/ReadVariableOpReadVariableOpdense_321/bias*
_output_shapes
:@*
dtype0
|
dense_322/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_322/kernel
u
$dense_322/kernel/Read/ReadVariableOpReadVariableOpdense_322/kernel*
_output_shapes

:@*
dtype0
t
dense_322/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_322/bias
m
"dense_322/bias/Read/ReadVariableOpReadVariableOpdense_322/bias*
_output_shapes
:*
dtype0
|
dense_323/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_323/kernel
u
$dense_323/kernel/Read/ReadVariableOpReadVariableOpdense_323/kernel*
_output_shapes

:*
dtype0
t
dense_323/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_323/bias
m
"dense_323/bias/Read/ReadVariableOpReadVariableOpdense_323/bias*
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
VARIABLE_VALUEconv2d_321/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_321/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_322/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_322/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_323/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_323/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_321/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_321/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_322/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_322/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_323/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_323/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
 serving_default_conv2d_321_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_321_inputconv2d_321/kernelconv2d_321/biasconv2d_322/kernelconv2d_322/biasconv2d_323/kernelconv2d_323/biasdense_321/kerneldense_321/biasdense_322/kerneldense_322/biasdense_323/kerneldense_323/bias*
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
$__inference_signature_wrapper_877842
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_321/kernel/Read/ReadVariableOp#conv2d_321/bias/Read/ReadVariableOp%conv2d_322/kernel/Read/ReadVariableOp#conv2d_322/bias/Read/ReadVariableOp%conv2d_323/kernel/Read/ReadVariableOp#conv2d_323/bias/Read/ReadVariableOp$dense_321/kernel/Read/ReadVariableOp"dense_321/bias/Read/ReadVariableOp$dense_322/kernel/Read/ReadVariableOp"dense_322/bias/Read/ReadVariableOp$dense_323/kernel/Read/ReadVariableOp"dense_323/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
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
__inference__traced_save_878300
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_321/kernelconv2d_321/biasconv2d_322/kernelconv2d_322/biasconv2d_323/kernelconv2d_323/biasdense_321/kerneldense_321/biasdense_322/kerneldense_322/biasdense_323/kerneldense_323/biastotalcounttotal_1count_1*
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
"__inference__traced_restore_878358??
?
i
M__inference_max_pooling2d_323_layer_call_and_return_conditional_losses_878131

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
J__inference_sequential_107_layer_call_and_return_conditional_losses_877772
conv2d_321_input+
conv2d_321_877736: 
conv2d_321_877738: +
conv2d_322_877742: @
conv2d_322_877744:@,
conv2d_323_877748:@? 
conv2d_323_877750:	?#
dense_321_877755:	?@
dense_321_877757:@"
dense_322_877761:@
dense_322_877763:"
dense_323_877766:
dense_323_877768:
identity??"conv2d_321/StatefulPartitionedCall?"conv2d_322/StatefulPartitionedCall?"conv2d_323/StatefulPartitionedCall?!dense_321/StatefulPartitionedCall?!dense_322/StatefulPartitionedCall?!dense_323/StatefulPartitionedCall?
"conv2d_321/StatefulPartitionedCallStatefulPartitionedCallconv2d_321_inputconv2d_321_877736conv2d_321_877738*
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
F__inference_conv2d_321_layer_call_and_return_conditional_losses_877351?
!max_pooling2d_321/PartitionedCallPartitionedCall+conv2d_321/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_321_layer_call_and_return_conditional_losses_877361?
"conv2d_322/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_321/PartitionedCall:output:0conv2d_322_877742conv2d_322_877744*
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
F__inference_conv2d_322_layer_call_and_return_conditional_losses_877374?
!max_pooling2d_322/PartitionedCallPartitionedCall+conv2d_322/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_322_layer_call_and_return_conditional_losses_877384?
"conv2d_323/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_322/PartitionedCall:output:0conv2d_323_877748conv2d_323_877750*
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
F__inference_conv2d_323_layer_call_and_return_conditional_losses_877397?
!max_pooling2d_323/PartitionedCallPartitionedCall+conv2d_323/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_323_layer_call_and_return_conditional_losses_877407?
flatten_107/PartitionedCallPartitionedCall*max_pooling2d_323/PartitionedCall:output:0*
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
G__inference_flatten_107_layer_call_and_return_conditional_losses_877415?
!dense_321/StatefulPartitionedCallStatefulPartitionedCall$flatten_107/PartitionedCall:output:0dense_321_877755dense_321_877757*
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
E__inference_dense_321_layer_call_and_return_conditional_losses_877428?
dropout_107/PartitionedCallPartitionedCall*dense_321/StatefulPartitionedCall:output:0*
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
G__inference_dropout_107_layer_call_and_return_conditional_losses_877439?
!dense_322/StatefulPartitionedCallStatefulPartitionedCall$dropout_107/PartitionedCall:output:0dense_322_877761dense_322_877763*
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
E__inference_dense_322_layer_call_and_return_conditional_losses_877452?
!dense_323/StatefulPartitionedCallStatefulPartitionedCall*dense_322/StatefulPartitionedCall:output:0dense_323_877766dense_323_877768*
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
E__inference_dense_323_layer_call_and_return_conditional_losses_877469y
IdentityIdentity*dense_323/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_321/StatefulPartitionedCall#^conv2d_322/StatefulPartitionedCall#^conv2d_323/StatefulPartitionedCall"^dense_321/StatefulPartitionedCall"^dense_322/StatefulPartitionedCall"^dense_323/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_321/StatefulPartitionedCall"conv2d_321/StatefulPartitionedCall2H
"conv2d_322/StatefulPartitionedCall"conv2d_322/StatefulPartitionedCall2H
"conv2d_323/StatefulPartitionedCall"conv2d_323/StatefulPartitionedCall2F
!dense_321/StatefulPartitionedCall!dense_321/StatefulPartitionedCall2F
!dense_322/StatefulPartitionedCall!dense_322/StatefulPartitionedCall2F
!dense_323/StatefulPartitionedCall!dense_323/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_321_input
?

?
E__inference_dense_323_layer_call_and_return_conditional_losses_878229

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
?
F__inference_conv2d_323_layer_call_and_return_conditional_losses_878111

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
i
M__inference_max_pooling2d_321_layer_call_and_return_conditional_losses_877306

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
N
2__inference_max_pooling2d_323_layer_call_fn_878116

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
M__inference_max_pooling2d_323_layer_call_and_return_conditional_losses_877330?
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
e
G__inference_dropout_107_layer_call_and_return_conditional_losses_878177

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
M__inference_max_pooling2d_321_layer_call_and_return_conditional_losses_877361

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
*__inference_dense_321_layer_call_fn_878151

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
E__inference_dense_321_layer_call_and_return_conditional_losses_877428o
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
??
?	
J__inference_sequential_107_layer_call_and_return_conditional_losses_877952

inputsC
)conv2d_321_conv2d_readvariableop_resource: 8
*conv2d_321_biasadd_readvariableop_resource: C
)conv2d_322_conv2d_readvariableop_resource: @8
*conv2d_322_biasadd_readvariableop_resource:@D
)conv2d_323_conv2d_readvariableop_resource:@?9
*conv2d_323_biasadd_readvariableop_resource:	?;
(dense_321_matmul_readvariableop_resource:	?@7
)dense_321_biasadd_readvariableop_resource:@:
(dense_322_matmul_readvariableop_resource:@7
)dense_322_biasadd_readvariableop_resource::
(dense_323_matmul_readvariableop_resource:7
)dense_323_biasadd_readvariableop_resource:
identity??!conv2d_321/BiasAdd/ReadVariableOp? conv2d_321/Conv2D/ReadVariableOp?!conv2d_322/BiasAdd/ReadVariableOp? conv2d_322/Conv2D/ReadVariableOp?!conv2d_323/BiasAdd/ReadVariableOp? conv2d_323/Conv2D/ReadVariableOp? dense_321/BiasAdd/ReadVariableOp?dense_321/MatMul/ReadVariableOp? dense_322/BiasAdd/ReadVariableOp?dense_322/MatMul/ReadVariableOp? dense_323/BiasAdd/ReadVariableOp?dense_323/MatMul/ReadVariableOp?
 conv2d_321/Conv2D/ReadVariableOpReadVariableOp)conv2d_321_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_321/Conv2DConv2Dinputs(conv2d_321/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
?
!conv2d_321/BiasAdd/ReadVariableOpReadVariableOp*conv2d_321_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_321/BiasAddBiasAddconv2d_321/Conv2D:output:0)conv2d_321/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] n
conv2d_321/ReluReluconv2d_321/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] ?
max_pooling2d_321/MaxPoolMaxPoolconv2d_321/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
?
 conv2d_322/Conv2D/ReadVariableOpReadVariableOp)conv2d_322_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_322/Conv2DConv2D"max_pooling2d_321/MaxPool:output:0(conv2d_322/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
!conv2d_322/BiasAdd/ReadVariableOpReadVariableOp*conv2d_322_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_322/BiasAddBiasAddconv2d_322/Conv2D:output:0)conv2d_322/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@n
conv2d_322/ReluReluconv2d_322/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_322/MaxPoolMaxPoolconv2d_322/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
?
 conv2d_323/Conv2D/ReadVariableOpReadVariableOp)conv2d_323_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_323/Conv2DConv2D"max_pooling2d_322/MaxPool:output:0(conv2d_323/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
!conv2d_323/BiasAdd/ReadVariableOpReadVariableOp*conv2d_323_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_323/BiasAddBiasAddconv2d_323/Conv2D:output:0)conv2d_323/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????o
conv2d_323/ReluReluconv2d_323/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
max_pooling2d_323/MaxPoolMaxPoolconv2d_323/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
b
flatten_107/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_107/ReshapeReshape"max_pooling2d_323/MaxPool:output:0flatten_107/Const:output:0*
T0*(
_output_shapes
:???????????
dense_321/MatMul/ReadVariableOpReadVariableOp(dense_321_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_321/MatMulMatMulflatten_107/Reshape:output:0'dense_321/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
 dense_321/BiasAdd/ReadVariableOpReadVariableOp)dense_321_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_321/BiasAddBiasAdddense_321/MatMul:product:0(dense_321/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_321/TanhTanhdense_321/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@f
dropout_107/IdentityIdentitydense_321/Tanh:y:0*
T0*'
_output_shapes
:?????????@?
dense_322/MatMul/ReadVariableOpReadVariableOp(dense_322_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_322/MatMulMatMuldropout_107/Identity:output:0'dense_322/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_322/BiasAdd/ReadVariableOpReadVariableOp)dense_322_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_322/BiasAddBiasAdddense_322/MatMul:product:0(dense_322/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_322/TanhTanhdense_322/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_323/MatMul/ReadVariableOpReadVariableOp(dense_323_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_323/MatMulMatMuldense_322/Tanh:y:0'dense_323/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_323/BiasAdd/ReadVariableOpReadVariableOp)dense_323_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_323/BiasAddBiasAdddense_323/MatMul:product:0(dense_323/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_323/SigmoidSigmoiddense_323/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_323/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_321/BiasAdd/ReadVariableOp!^conv2d_321/Conv2D/ReadVariableOp"^conv2d_322/BiasAdd/ReadVariableOp!^conv2d_322/Conv2D/ReadVariableOp"^conv2d_323/BiasAdd/ReadVariableOp!^conv2d_323/Conv2D/ReadVariableOp!^dense_321/BiasAdd/ReadVariableOp ^dense_321/MatMul/ReadVariableOp!^dense_322/BiasAdd/ReadVariableOp ^dense_322/MatMul/ReadVariableOp!^dense_323/BiasAdd/ReadVariableOp ^dense_323/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_321/BiasAdd/ReadVariableOp!conv2d_321/BiasAdd/ReadVariableOp2D
 conv2d_321/Conv2D/ReadVariableOp conv2d_321/Conv2D/ReadVariableOp2F
!conv2d_322/BiasAdd/ReadVariableOp!conv2d_322/BiasAdd/ReadVariableOp2D
 conv2d_322/Conv2D/ReadVariableOp conv2d_322/Conv2D/ReadVariableOp2F
!conv2d_323/BiasAdd/ReadVariableOp!conv2d_323/BiasAdd/ReadVariableOp2D
 conv2d_323/Conv2D/ReadVariableOp conv2d_323/Conv2D/ReadVariableOp2D
 dense_321/BiasAdd/ReadVariableOp dense_321/BiasAdd/ReadVariableOp2B
dense_321/MatMul/ReadVariableOpdense_321/MatMul/ReadVariableOp2D
 dense_322/BiasAdd/ReadVariableOp dense_322/BiasAdd/ReadVariableOp2B
dense_322/MatMul/ReadVariableOpdense_322/MatMul/ReadVariableOp2D
 dense_323/BiasAdd/ReadVariableOp dense_323/BiasAdd/ReadVariableOp2B
dense_323/MatMul/ReadVariableOpdense_323/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?1
?
J__inference_sequential_107_layer_call_and_return_conditional_losses_877677

inputs+
conv2d_321_877641: 
conv2d_321_877643: +
conv2d_322_877647: @
conv2d_322_877649:@,
conv2d_323_877653:@? 
conv2d_323_877655:	?#
dense_321_877660:	?@
dense_321_877662:@"
dense_322_877666:@
dense_322_877668:"
dense_323_877671:
dense_323_877673:
identity??"conv2d_321/StatefulPartitionedCall?"conv2d_322/StatefulPartitionedCall?"conv2d_323/StatefulPartitionedCall?!dense_321/StatefulPartitionedCall?!dense_322/StatefulPartitionedCall?!dense_323/StatefulPartitionedCall?#dropout_107/StatefulPartitionedCall?
"conv2d_321/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_321_877641conv2d_321_877643*
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
F__inference_conv2d_321_layer_call_and_return_conditional_losses_877351?
!max_pooling2d_321/PartitionedCallPartitionedCall+conv2d_321/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_321_layer_call_and_return_conditional_losses_877361?
"conv2d_322/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_321/PartitionedCall:output:0conv2d_322_877647conv2d_322_877649*
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
F__inference_conv2d_322_layer_call_and_return_conditional_losses_877374?
!max_pooling2d_322/PartitionedCallPartitionedCall+conv2d_322/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_322_layer_call_and_return_conditional_losses_877384?
"conv2d_323/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_322/PartitionedCall:output:0conv2d_323_877653conv2d_323_877655*
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
F__inference_conv2d_323_layer_call_and_return_conditional_losses_877397?
!max_pooling2d_323/PartitionedCallPartitionedCall+conv2d_323/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_323_layer_call_and_return_conditional_losses_877407?
flatten_107/PartitionedCallPartitionedCall*max_pooling2d_323/PartitionedCall:output:0*
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
G__inference_flatten_107_layer_call_and_return_conditional_losses_877415?
!dense_321/StatefulPartitionedCallStatefulPartitionedCall$flatten_107/PartitionedCall:output:0dense_321_877660dense_321_877662*
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
E__inference_dense_321_layer_call_and_return_conditional_losses_877428?
#dropout_107/StatefulPartitionedCallStatefulPartitionedCall*dense_321/StatefulPartitionedCall:output:0*
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
G__inference_dropout_107_layer_call_and_return_conditional_losses_877543?
!dense_322/StatefulPartitionedCallStatefulPartitionedCall,dropout_107/StatefulPartitionedCall:output:0dense_322_877666dense_322_877668*
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
E__inference_dense_322_layer_call_and_return_conditional_losses_877452?
!dense_323/StatefulPartitionedCallStatefulPartitionedCall*dense_322/StatefulPartitionedCall:output:0dense_323_877671dense_323_877673*
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
E__inference_dense_323_layer_call_and_return_conditional_losses_877469y
IdentityIdentity*dense_323/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_321/StatefulPartitionedCall#^conv2d_322/StatefulPartitionedCall#^conv2d_323/StatefulPartitionedCall"^dense_321/StatefulPartitionedCall"^dense_322/StatefulPartitionedCall"^dense_323/StatefulPartitionedCall$^dropout_107/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_321/StatefulPartitionedCall"conv2d_321/StatefulPartitionedCall2H
"conv2d_322/StatefulPartitionedCall"conv2d_322/StatefulPartitionedCall2H
"conv2d_323/StatefulPartitionedCall"conv2d_323/StatefulPartitionedCall2F
!dense_321/StatefulPartitionedCall!dense_321/StatefulPartitionedCall2F
!dense_322/StatefulPartitionedCall!dense_322/StatefulPartitionedCall2F
!dense_323/StatefulPartitionedCall!dense_323/StatefulPartitionedCall2J
#dropout_107/StatefulPartitionedCall#dropout_107/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
F__inference_conv2d_321_layer_call_and_return_conditional_losses_877351

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
M__inference_max_pooling2d_322_layer_call_and_return_conditional_losses_877318

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
M__inference_max_pooling2d_323_layer_call_and_return_conditional_losses_877330

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
/__inference_sequential_107_layer_call_fn_877871

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
J__inference_sequential_107_layer_call_and_return_conditional_losses_877476o
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
?A
?	
"__inference__traced_restore_878358
file_prefix<
"assignvariableop_conv2d_321_kernel: 0
"assignvariableop_1_conv2d_321_bias: >
$assignvariableop_2_conv2d_322_kernel: @0
"assignvariableop_3_conv2d_322_bias:@?
$assignvariableop_4_conv2d_323_kernel:@?1
"assignvariableop_5_conv2d_323_bias:	?6
#assignvariableop_6_dense_321_kernel:	?@/
!assignvariableop_7_dense_321_bias:@5
#assignvariableop_8_dense_322_kernel:@/
!assignvariableop_9_dense_322_bias:6
$assignvariableop_10_dense_323_kernel:0
"assignvariableop_11_dense_323_bias:#
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_321_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_321_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_322_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_322_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_323_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_323_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_321_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_321_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_322_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_322_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_323_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_323_biasIdentity_11:output:0"/device:CPU:0*
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
?P
?
!__inference__wrapped_model_877297
conv2d_321_inputR
8sequential_107_conv2d_321_conv2d_readvariableop_resource: G
9sequential_107_conv2d_321_biasadd_readvariableop_resource: R
8sequential_107_conv2d_322_conv2d_readvariableop_resource: @G
9sequential_107_conv2d_322_biasadd_readvariableop_resource:@S
8sequential_107_conv2d_323_conv2d_readvariableop_resource:@?H
9sequential_107_conv2d_323_biasadd_readvariableop_resource:	?J
7sequential_107_dense_321_matmul_readvariableop_resource:	?@F
8sequential_107_dense_321_biasadd_readvariableop_resource:@I
7sequential_107_dense_322_matmul_readvariableop_resource:@F
8sequential_107_dense_322_biasadd_readvariableop_resource:I
7sequential_107_dense_323_matmul_readvariableop_resource:F
8sequential_107_dense_323_biasadd_readvariableop_resource:
identity??0sequential_107/conv2d_321/BiasAdd/ReadVariableOp?/sequential_107/conv2d_321/Conv2D/ReadVariableOp?0sequential_107/conv2d_322/BiasAdd/ReadVariableOp?/sequential_107/conv2d_322/Conv2D/ReadVariableOp?0sequential_107/conv2d_323/BiasAdd/ReadVariableOp?/sequential_107/conv2d_323/Conv2D/ReadVariableOp?/sequential_107/dense_321/BiasAdd/ReadVariableOp?.sequential_107/dense_321/MatMul/ReadVariableOp?/sequential_107/dense_322/BiasAdd/ReadVariableOp?.sequential_107/dense_322/MatMul/ReadVariableOp?/sequential_107/dense_323/BiasAdd/ReadVariableOp?.sequential_107/dense_323/MatMul/ReadVariableOp?
/sequential_107/conv2d_321/Conv2D/ReadVariableOpReadVariableOp8sequential_107_conv2d_321_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
 sequential_107/conv2d_321/Conv2DConv2Dconv2d_321_input7sequential_107/conv2d_321/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
?
0sequential_107/conv2d_321/BiasAdd/ReadVariableOpReadVariableOp9sequential_107_conv2d_321_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
!sequential_107/conv2d_321/BiasAddBiasAdd)sequential_107/conv2d_321/Conv2D:output:08sequential_107/conv2d_321/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] ?
sequential_107/conv2d_321/ReluRelu*sequential_107/conv2d_321/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] ?
(sequential_107/max_pooling2d_321/MaxPoolMaxPool,sequential_107/conv2d_321/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
?
/sequential_107/conv2d_322/Conv2D/ReadVariableOpReadVariableOp8sequential_107_conv2d_322_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
 sequential_107/conv2d_322/Conv2DConv2D1sequential_107/max_pooling2d_321/MaxPool:output:07sequential_107/conv2d_322/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
0sequential_107/conv2d_322/BiasAdd/ReadVariableOpReadVariableOp9sequential_107_conv2d_322_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
!sequential_107/conv2d_322/BiasAddBiasAdd)sequential_107/conv2d_322/Conv2D:output:08sequential_107/conv2d_322/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
sequential_107/conv2d_322/ReluRelu*sequential_107/conv2d_322/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
(sequential_107/max_pooling2d_322/MaxPoolMaxPool,sequential_107/conv2d_322/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
?
/sequential_107/conv2d_323/Conv2D/ReadVariableOpReadVariableOp8sequential_107_conv2d_323_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
 sequential_107/conv2d_323/Conv2DConv2D1sequential_107/max_pooling2d_322/MaxPool:output:07sequential_107/conv2d_323/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
0sequential_107/conv2d_323/BiasAdd/ReadVariableOpReadVariableOp9sequential_107_conv2d_323_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!sequential_107/conv2d_323/BiasAddBiasAdd)sequential_107/conv2d_323/Conv2D:output:08sequential_107/conv2d_323/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
sequential_107/conv2d_323/ReluRelu*sequential_107/conv2d_323/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
(sequential_107/max_pooling2d_323/MaxPoolMaxPool,sequential_107/conv2d_323/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
q
 sequential_107/flatten_107/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"sequential_107/flatten_107/ReshapeReshape1sequential_107/max_pooling2d_323/MaxPool:output:0)sequential_107/flatten_107/Const:output:0*
T0*(
_output_shapes
:???????????
.sequential_107/dense_321/MatMul/ReadVariableOpReadVariableOp7sequential_107_dense_321_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
sequential_107/dense_321/MatMulMatMul+sequential_107/flatten_107/Reshape:output:06sequential_107/dense_321/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
/sequential_107/dense_321/BiasAdd/ReadVariableOpReadVariableOp8sequential_107_dense_321_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
 sequential_107/dense_321/BiasAddBiasAdd)sequential_107/dense_321/MatMul:product:07sequential_107/dense_321/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
sequential_107/dense_321/TanhTanh)sequential_107/dense_321/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
#sequential_107/dropout_107/IdentityIdentity!sequential_107/dense_321/Tanh:y:0*
T0*'
_output_shapes
:?????????@?
.sequential_107/dense_322/MatMul/ReadVariableOpReadVariableOp7sequential_107_dense_322_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
sequential_107/dense_322/MatMulMatMul,sequential_107/dropout_107/Identity:output:06sequential_107/dense_322/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_107/dense_322/BiasAdd/ReadVariableOpReadVariableOp8sequential_107_dense_322_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_107/dense_322/BiasAddBiasAdd)sequential_107/dense_322/MatMul:product:07sequential_107/dense_322/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_107/dense_322/TanhTanh)sequential_107/dense_322/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
.sequential_107/dense_323/MatMul/ReadVariableOpReadVariableOp7sequential_107_dense_323_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_107/dense_323/MatMulMatMul!sequential_107/dense_322/Tanh:y:06sequential_107/dense_323/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_107/dense_323/BiasAdd/ReadVariableOpReadVariableOp8sequential_107_dense_323_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_107/dense_323/BiasAddBiasAdd)sequential_107/dense_323/MatMul:product:07sequential_107/dense_323/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 sequential_107/dense_323/SigmoidSigmoid)sequential_107/dense_323/BiasAdd:output:0*
T0*'
_output_shapes
:?????????s
IdentityIdentity$sequential_107/dense_323/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp1^sequential_107/conv2d_321/BiasAdd/ReadVariableOp0^sequential_107/conv2d_321/Conv2D/ReadVariableOp1^sequential_107/conv2d_322/BiasAdd/ReadVariableOp0^sequential_107/conv2d_322/Conv2D/ReadVariableOp1^sequential_107/conv2d_323/BiasAdd/ReadVariableOp0^sequential_107/conv2d_323/Conv2D/ReadVariableOp0^sequential_107/dense_321/BiasAdd/ReadVariableOp/^sequential_107/dense_321/MatMul/ReadVariableOp0^sequential_107/dense_322/BiasAdd/ReadVariableOp/^sequential_107/dense_322/MatMul/ReadVariableOp0^sequential_107/dense_323/BiasAdd/ReadVariableOp/^sequential_107/dense_323/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2d
0sequential_107/conv2d_321/BiasAdd/ReadVariableOp0sequential_107/conv2d_321/BiasAdd/ReadVariableOp2b
/sequential_107/conv2d_321/Conv2D/ReadVariableOp/sequential_107/conv2d_321/Conv2D/ReadVariableOp2d
0sequential_107/conv2d_322/BiasAdd/ReadVariableOp0sequential_107/conv2d_322/BiasAdd/ReadVariableOp2b
/sequential_107/conv2d_322/Conv2D/ReadVariableOp/sequential_107/conv2d_322/Conv2D/ReadVariableOp2d
0sequential_107/conv2d_323/BiasAdd/ReadVariableOp0sequential_107/conv2d_323/BiasAdd/ReadVariableOp2b
/sequential_107/conv2d_323/Conv2D/ReadVariableOp/sequential_107/conv2d_323/Conv2D/ReadVariableOp2b
/sequential_107/dense_321/BiasAdd/ReadVariableOp/sequential_107/dense_321/BiasAdd/ReadVariableOp2`
.sequential_107/dense_321/MatMul/ReadVariableOp.sequential_107/dense_321/MatMul/ReadVariableOp2b
/sequential_107/dense_322/BiasAdd/ReadVariableOp/sequential_107/dense_322/BiasAdd/ReadVariableOp2`
.sequential_107/dense_322/MatMul/ReadVariableOp.sequential_107/dense_322/MatMul/ReadVariableOp2b
/sequential_107/dense_323/BiasAdd/ReadVariableOp/sequential_107/dense_323/BiasAdd/ReadVariableOp2`
.sequential_107/dense_323/MatMul/ReadVariableOp.sequential_107/dense_323/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_321_input
?
?
F__inference_conv2d_323_layer_call_and_return_conditional_losses_877397

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
?
e
G__inference_dropout_107_layer_call_and_return_conditional_losses_877439

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
N
2__inference_max_pooling2d_323_layer_call_fn_878121

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
M__inference_max_pooling2d_323_layer_call_and_return_conditional_losses_877407i
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
E__inference_dense_323_layer_call_and_return_conditional_losses_877469

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
M__inference_max_pooling2d_321_layer_call_and_return_conditional_losses_878046

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
f
G__inference_dropout_107_layer_call_and_return_conditional_losses_878189

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
?0
?
J__inference_sequential_107_layer_call_and_return_conditional_losses_877476

inputs+
conv2d_321_877352: 
conv2d_321_877354: +
conv2d_322_877375: @
conv2d_322_877377:@,
conv2d_323_877398:@? 
conv2d_323_877400:	?#
dense_321_877429:	?@
dense_321_877431:@"
dense_322_877453:@
dense_322_877455:"
dense_323_877470:
dense_323_877472:
identity??"conv2d_321/StatefulPartitionedCall?"conv2d_322/StatefulPartitionedCall?"conv2d_323/StatefulPartitionedCall?!dense_321/StatefulPartitionedCall?!dense_322/StatefulPartitionedCall?!dense_323/StatefulPartitionedCall?
"conv2d_321/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_321_877352conv2d_321_877354*
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
F__inference_conv2d_321_layer_call_and_return_conditional_losses_877351?
!max_pooling2d_321/PartitionedCallPartitionedCall+conv2d_321/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_321_layer_call_and_return_conditional_losses_877361?
"conv2d_322/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_321/PartitionedCall:output:0conv2d_322_877375conv2d_322_877377*
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
F__inference_conv2d_322_layer_call_and_return_conditional_losses_877374?
!max_pooling2d_322/PartitionedCallPartitionedCall+conv2d_322/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_322_layer_call_and_return_conditional_losses_877384?
"conv2d_323/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_322/PartitionedCall:output:0conv2d_323_877398conv2d_323_877400*
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
F__inference_conv2d_323_layer_call_and_return_conditional_losses_877397?
!max_pooling2d_323/PartitionedCallPartitionedCall+conv2d_323/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_323_layer_call_and_return_conditional_losses_877407?
flatten_107/PartitionedCallPartitionedCall*max_pooling2d_323/PartitionedCall:output:0*
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
G__inference_flatten_107_layer_call_and_return_conditional_losses_877415?
!dense_321/StatefulPartitionedCallStatefulPartitionedCall$flatten_107/PartitionedCall:output:0dense_321_877429dense_321_877431*
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
E__inference_dense_321_layer_call_and_return_conditional_losses_877428?
dropout_107/PartitionedCallPartitionedCall*dense_321/StatefulPartitionedCall:output:0*
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
G__inference_dropout_107_layer_call_and_return_conditional_losses_877439?
!dense_322/StatefulPartitionedCallStatefulPartitionedCall$dropout_107/PartitionedCall:output:0dense_322_877453dense_322_877455*
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
E__inference_dense_322_layer_call_and_return_conditional_losses_877452?
!dense_323/StatefulPartitionedCallStatefulPartitionedCall*dense_322/StatefulPartitionedCall:output:0dense_323_877470dense_323_877472*
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
E__inference_dense_323_layer_call_and_return_conditional_losses_877469y
IdentityIdentity*dense_323/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_321/StatefulPartitionedCall#^conv2d_322/StatefulPartitionedCall#^conv2d_323/StatefulPartitionedCall"^dense_321/StatefulPartitionedCall"^dense_322/StatefulPartitionedCall"^dense_323/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_321/StatefulPartitionedCall"conv2d_321/StatefulPartitionedCall2H
"conv2d_322/StatefulPartitionedCall"conv2d_322/StatefulPartitionedCall2H
"conv2d_323/StatefulPartitionedCall"conv2d_323/StatefulPartitionedCall2F
!dense_321/StatefulPartitionedCall!dense_321/StatefulPartitionedCall2F
!dense_322/StatefulPartitionedCall!dense_322/StatefulPartitionedCall2F
!dense_323/StatefulPartitionedCall!dense_323/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
e
,__inference_dropout_107_layer_call_fn_878172

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
G__inference_dropout_107_layer_call_and_return_conditional_losses_877543o
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
c
G__inference_flatten_107_layer_call_and_return_conditional_losses_877415

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
?
i
M__inference_max_pooling2d_323_layer_call_and_return_conditional_losses_878126

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
2__inference_max_pooling2d_322_layer_call_fn_878081

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
M__inference_max_pooling2d_322_layer_call_and_return_conditional_losses_877384h
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
?
i
M__inference_max_pooling2d_323_layer_call_and_return_conditional_losses_877407

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
f
G__inference_dropout_107_layer_call_and_return_conditional_losses_877543

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
?
?
*__inference_dense_323_layer_call_fn_878218

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
E__inference_dense_323_layer_call_and_return_conditional_losses_877469o
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
E__inference_dense_321_layer_call_and_return_conditional_losses_878162

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
/__inference_sequential_107_layer_call_fn_877503
conv2d_321_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_321_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
J__inference_sequential_107_layer_call_and_return_conditional_losses_877476o
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
_user_specified_nameconv2d_321_input
?
?
F__inference_conv2d_322_layer_call_and_return_conditional_losses_877374

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
?
$__inference_signature_wrapper_877842
conv2d_321_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_321_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
!__inference__wrapped_model_877297o
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
_user_specified_nameconv2d_321_input
?
?
/__inference_sequential_107_layer_call_fn_877733
conv2d_321_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_321_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
J__inference_sequential_107_layer_call_and_return_conditional_losses_877677o
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
_user_specified_nameconv2d_321_input
?2
?
J__inference_sequential_107_layer_call_and_return_conditional_losses_877811
conv2d_321_input+
conv2d_321_877775: 
conv2d_321_877777: +
conv2d_322_877781: @
conv2d_322_877783:@,
conv2d_323_877787:@? 
conv2d_323_877789:	?#
dense_321_877794:	?@
dense_321_877796:@"
dense_322_877800:@
dense_322_877802:"
dense_323_877805:
dense_323_877807:
identity??"conv2d_321/StatefulPartitionedCall?"conv2d_322/StatefulPartitionedCall?"conv2d_323/StatefulPartitionedCall?!dense_321/StatefulPartitionedCall?!dense_322/StatefulPartitionedCall?!dense_323/StatefulPartitionedCall?#dropout_107/StatefulPartitionedCall?
"conv2d_321/StatefulPartitionedCallStatefulPartitionedCallconv2d_321_inputconv2d_321_877775conv2d_321_877777*
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
F__inference_conv2d_321_layer_call_and_return_conditional_losses_877351?
!max_pooling2d_321/PartitionedCallPartitionedCall+conv2d_321/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_321_layer_call_and_return_conditional_losses_877361?
"conv2d_322/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_321/PartitionedCall:output:0conv2d_322_877781conv2d_322_877783*
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
F__inference_conv2d_322_layer_call_and_return_conditional_losses_877374?
!max_pooling2d_322/PartitionedCallPartitionedCall+conv2d_322/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_322_layer_call_and_return_conditional_losses_877384?
"conv2d_323/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_322/PartitionedCall:output:0conv2d_323_877787conv2d_323_877789*
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
F__inference_conv2d_323_layer_call_and_return_conditional_losses_877397?
!max_pooling2d_323/PartitionedCallPartitionedCall+conv2d_323/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_323_layer_call_and_return_conditional_losses_877407?
flatten_107/PartitionedCallPartitionedCall*max_pooling2d_323/PartitionedCall:output:0*
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
G__inference_flatten_107_layer_call_and_return_conditional_losses_877415?
!dense_321/StatefulPartitionedCallStatefulPartitionedCall$flatten_107/PartitionedCall:output:0dense_321_877794dense_321_877796*
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
E__inference_dense_321_layer_call_and_return_conditional_losses_877428?
#dropout_107/StatefulPartitionedCallStatefulPartitionedCall*dense_321/StatefulPartitionedCall:output:0*
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
G__inference_dropout_107_layer_call_and_return_conditional_losses_877543?
!dense_322/StatefulPartitionedCallStatefulPartitionedCall,dropout_107/StatefulPartitionedCall:output:0dense_322_877800dense_322_877802*
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
E__inference_dense_322_layer_call_and_return_conditional_losses_877452?
!dense_323/StatefulPartitionedCallStatefulPartitionedCall*dense_322/StatefulPartitionedCall:output:0dense_323_877805dense_323_877807*
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
E__inference_dense_323_layer_call_and_return_conditional_losses_877469y
IdentityIdentity*dense_323/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_321/StatefulPartitionedCall#^conv2d_322/StatefulPartitionedCall#^conv2d_323/StatefulPartitionedCall"^dense_321/StatefulPartitionedCall"^dense_322/StatefulPartitionedCall"^dense_323/StatefulPartitionedCall$^dropout_107/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_321/StatefulPartitionedCall"conv2d_321/StatefulPartitionedCall2H
"conv2d_322/StatefulPartitionedCall"conv2d_322/StatefulPartitionedCall2H
"conv2d_323/StatefulPartitionedCall"conv2d_323/StatefulPartitionedCall2F
!dense_321/StatefulPartitionedCall!dense_321/StatefulPartitionedCall2F
!dense_322/StatefulPartitionedCall!dense_322/StatefulPartitionedCall2F
!dense_323/StatefulPartitionedCall!dense_323/StatefulPartitionedCall2J
#dropout_107/StatefulPartitionedCall#dropout_107/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_321_input
?

?
E__inference_dense_321_layer_call_and_return_conditional_losses_877428

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
c
G__inference_flatten_107_layer_call_and_return_conditional_losses_878142

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
?
N
2__inference_max_pooling2d_321_layer_call_fn_878041

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
M__inference_max_pooling2d_321_layer_call_and_return_conditional_losses_877361h
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
?
i
M__inference_max_pooling2d_321_layer_call_and_return_conditional_losses_878051

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
*__inference_dense_322_layer_call_fn_878198

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
E__inference_dense_322_layer_call_and_return_conditional_losses_877452o
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
?
N
2__inference_max_pooling2d_322_layer_call_fn_878076

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
M__inference_max_pooling2d_322_layer_call_and_return_conditional_losses_877318?
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
H
,__inference_dropout_107_layer_call_fn_878167

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
G__inference_dropout_107_layer_call_and_return_conditional_losses_877439`
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
?(
?
__inference__traced_save_878300
file_prefix0
,savev2_conv2d_321_kernel_read_readvariableop.
*savev2_conv2d_321_bias_read_readvariableop0
,savev2_conv2d_322_kernel_read_readvariableop.
*savev2_conv2d_322_bias_read_readvariableop0
,savev2_conv2d_323_kernel_read_readvariableop.
*savev2_conv2d_323_bias_read_readvariableop/
+savev2_dense_321_kernel_read_readvariableop-
)savev2_dense_321_bias_read_readvariableop/
+savev2_dense_322_kernel_read_readvariableop-
)savev2_dense_322_bias_read_readvariableop/
+savev2_dense_323_kernel_read_readvariableop-
)savev2_dense_323_bias_read_readvariableop$
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_321_kernel_read_readvariableop*savev2_conv2d_321_bias_read_readvariableop,savev2_conv2d_322_kernel_read_readvariableop*savev2_conv2d_322_bias_read_readvariableop,savev2_conv2d_323_kernel_read_readvariableop*savev2_conv2d_323_bias_read_readvariableop+savev2_dense_321_kernel_read_readvariableop)savev2_dense_321_bias_read_readvariableop+savev2_dense_322_kernel_read_readvariableop)savev2_dense_322_bias_read_readvariableop+savev2_dense_323_kernel_read_readvariableop)savev2_dense_323_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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
E__inference_dense_322_layer_call_and_return_conditional_losses_878209

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
+__inference_conv2d_323_layer_call_fn_878100

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
F__inference_conv2d_323_layer_call_and_return_conditional_losses_877397x
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
?
N
2__inference_max_pooling2d_321_layer_call_fn_878036

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
M__inference_max_pooling2d_321_layer_call_and_return_conditional_losses_877306?
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
i
M__inference_max_pooling2d_322_layer_call_and_return_conditional_losses_877384

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
i
M__inference_max_pooling2d_322_layer_call_and_return_conditional_losses_878086

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
/__inference_sequential_107_layer_call_fn_877900

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
J__inference_sequential_107_layer_call_and_return_conditional_losses_877677o
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
?
?
+__inference_conv2d_322_layer_call_fn_878060

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
F__inference_conv2d_322_layer_call_and_return_conditional_losses_877374w
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
?G
?	
J__inference_sequential_107_layer_call_and_return_conditional_losses_878011

inputsC
)conv2d_321_conv2d_readvariableop_resource: 8
*conv2d_321_biasadd_readvariableop_resource: C
)conv2d_322_conv2d_readvariableop_resource: @8
*conv2d_322_biasadd_readvariableop_resource:@D
)conv2d_323_conv2d_readvariableop_resource:@?9
*conv2d_323_biasadd_readvariableop_resource:	?;
(dense_321_matmul_readvariableop_resource:	?@7
)dense_321_biasadd_readvariableop_resource:@:
(dense_322_matmul_readvariableop_resource:@7
)dense_322_biasadd_readvariableop_resource::
(dense_323_matmul_readvariableop_resource:7
)dense_323_biasadd_readvariableop_resource:
identity??!conv2d_321/BiasAdd/ReadVariableOp? conv2d_321/Conv2D/ReadVariableOp?!conv2d_322/BiasAdd/ReadVariableOp? conv2d_322/Conv2D/ReadVariableOp?!conv2d_323/BiasAdd/ReadVariableOp? conv2d_323/Conv2D/ReadVariableOp? dense_321/BiasAdd/ReadVariableOp?dense_321/MatMul/ReadVariableOp? dense_322/BiasAdd/ReadVariableOp?dense_322/MatMul/ReadVariableOp? dense_323/BiasAdd/ReadVariableOp?dense_323/MatMul/ReadVariableOp?
 conv2d_321/Conv2D/ReadVariableOpReadVariableOp)conv2d_321_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_321/Conv2DConv2Dinputs(conv2d_321/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
?
!conv2d_321/BiasAdd/ReadVariableOpReadVariableOp*conv2d_321_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_321/BiasAddBiasAddconv2d_321/Conv2D:output:0)conv2d_321/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] n
conv2d_321/ReluReluconv2d_321/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] ?
max_pooling2d_321/MaxPoolMaxPoolconv2d_321/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
?
 conv2d_322/Conv2D/ReadVariableOpReadVariableOp)conv2d_322_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_322/Conv2DConv2D"max_pooling2d_321/MaxPool:output:0(conv2d_322/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
!conv2d_322/BiasAdd/ReadVariableOpReadVariableOp*conv2d_322_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_322/BiasAddBiasAddconv2d_322/Conv2D:output:0)conv2d_322/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@n
conv2d_322/ReluReluconv2d_322/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_322/MaxPoolMaxPoolconv2d_322/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
?
 conv2d_323/Conv2D/ReadVariableOpReadVariableOp)conv2d_323_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_323/Conv2DConv2D"max_pooling2d_322/MaxPool:output:0(conv2d_323/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
!conv2d_323/BiasAdd/ReadVariableOpReadVariableOp*conv2d_323_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_323/BiasAddBiasAddconv2d_323/Conv2D:output:0)conv2d_323/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????o
conv2d_323/ReluReluconv2d_323/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
max_pooling2d_323/MaxPoolMaxPoolconv2d_323/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
b
flatten_107/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_107/ReshapeReshape"max_pooling2d_323/MaxPool:output:0flatten_107/Const:output:0*
T0*(
_output_shapes
:???????????
dense_321/MatMul/ReadVariableOpReadVariableOp(dense_321_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_321/MatMulMatMulflatten_107/Reshape:output:0'dense_321/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
 dense_321/BiasAdd/ReadVariableOpReadVariableOp)dense_321_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_321/BiasAddBiasAdddense_321/MatMul:product:0(dense_321/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_321/TanhTanhdense_321/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@^
dropout_107/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_107/dropout/MulMuldense_321/Tanh:y:0"dropout_107/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@[
dropout_107/dropout/ShapeShapedense_321/Tanh:y:0*
T0*
_output_shapes
:?
0dropout_107/dropout/random_uniform/RandomUniformRandomUniform"dropout_107/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0g
"dropout_107/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
 dropout_107/dropout/GreaterEqualGreaterEqual9dropout_107/dropout/random_uniform/RandomUniform:output:0+dropout_107/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@?
dropout_107/dropout/CastCast$dropout_107/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
dropout_107/dropout/Mul_1Muldropout_107/dropout/Mul:z:0dropout_107/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@?
dense_322/MatMul/ReadVariableOpReadVariableOp(dense_322_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_322/MatMulMatMuldropout_107/dropout/Mul_1:z:0'dense_322/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_322/BiasAdd/ReadVariableOpReadVariableOp)dense_322_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_322/BiasAddBiasAdddense_322/MatMul:product:0(dense_322/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_322/TanhTanhdense_322/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_323/MatMul/ReadVariableOpReadVariableOp(dense_323_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_323/MatMulMatMuldense_322/Tanh:y:0'dense_323/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_323/BiasAdd/ReadVariableOpReadVariableOp)dense_323_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_323/BiasAddBiasAdddense_323/MatMul:product:0(dense_323/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_323/SigmoidSigmoiddense_323/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_323/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_321/BiasAdd/ReadVariableOp!^conv2d_321/Conv2D/ReadVariableOp"^conv2d_322/BiasAdd/ReadVariableOp!^conv2d_322/Conv2D/ReadVariableOp"^conv2d_323/BiasAdd/ReadVariableOp!^conv2d_323/Conv2D/ReadVariableOp!^dense_321/BiasAdd/ReadVariableOp ^dense_321/MatMul/ReadVariableOp!^dense_322/BiasAdd/ReadVariableOp ^dense_322/MatMul/ReadVariableOp!^dense_323/BiasAdd/ReadVariableOp ^dense_323/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_321/BiasAdd/ReadVariableOp!conv2d_321/BiasAdd/ReadVariableOp2D
 conv2d_321/Conv2D/ReadVariableOp conv2d_321/Conv2D/ReadVariableOp2F
!conv2d_322/BiasAdd/ReadVariableOp!conv2d_322/BiasAdd/ReadVariableOp2D
 conv2d_322/Conv2D/ReadVariableOp conv2d_322/Conv2D/ReadVariableOp2F
!conv2d_323/BiasAdd/ReadVariableOp!conv2d_323/BiasAdd/ReadVariableOp2D
 conv2d_323/Conv2D/ReadVariableOp conv2d_323/Conv2D/ReadVariableOp2D
 dense_321/BiasAdd/ReadVariableOp dense_321/BiasAdd/ReadVariableOp2B
dense_321/MatMul/ReadVariableOpdense_321/MatMul/ReadVariableOp2D
 dense_322/BiasAdd/ReadVariableOp dense_322/BiasAdd/ReadVariableOp2B
dense_322/MatMul/ReadVariableOpdense_322/MatMul/ReadVariableOp2D
 dense_323/BiasAdd/ReadVariableOp dense_323/BiasAdd/ReadVariableOp2B
dense_323/MatMul/ReadVariableOpdense_323/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_321_layer_call_fn_878020

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
F__inference_conv2d_321_layer_call_and_return_conditional_losses_877351w
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

?
E__inference_dense_322_layer_call_and_return_conditional_losses_877452

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
F__inference_conv2d_322_layer_call_and_return_conditional_losses_878071

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
?
i
M__inference_max_pooling2d_322_layer_call_and_return_conditional_losses_878091

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
F__inference_conv2d_321_layer_call_and_return_conditional_losses_878031

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
H
,__inference_flatten_107_layer_call_fn_878136

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
G__inference_flatten_107_layer_call_and_return_conditional_losses_877415a
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
conv2d_321_inputC
"serving_default_conv2d_321_input:0???????????=
	dense_3230
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
+:) 2conv2d_321/kernel
: 2conv2d_321/bias
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
+:) @2conv2d_322/kernel
:@2conv2d_322/bias
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
,:*@?2conv2d_323/kernel
:?2conv2d_323/bias
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
#:!	?@2dense_321/kernel
:@2dense_321/bias
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
": @2dense_322/kernel
:2dense_322/bias
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
": 2dense_323/kernel
:2dense_323/bias
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
/__inference_sequential_107_layer_call_fn_877503
/__inference_sequential_107_layer_call_fn_877871
/__inference_sequential_107_layer_call_fn_877900
/__inference_sequential_107_layer_call_fn_877733?
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
J__inference_sequential_107_layer_call_and_return_conditional_losses_877952
J__inference_sequential_107_layer_call_and_return_conditional_losses_878011
J__inference_sequential_107_layer_call_and_return_conditional_losses_877772
J__inference_sequential_107_layer_call_and_return_conditional_losses_877811?
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
!__inference__wrapped_model_877297conv2d_321_input"?
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
+__inference_conv2d_321_layer_call_fn_878020?
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
F__inference_conv2d_321_layer_call_and_return_conditional_losses_878031?
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
2__inference_max_pooling2d_321_layer_call_fn_878036
2__inference_max_pooling2d_321_layer_call_fn_878041?
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
M__inference_max_pooling2d_321_layer_call_and_return_conditional_losses_878046
M__inference_max_pooling2d_321_layer_call_and_return_conditional_losses_878051?
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
+__inference_conv2d_322_layer_call_fn_878060?
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
F__inference_conv2d_322_layer_call_and_return_conditional_losses_878071?
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
2__inference_max_pooling2d_322_layer_call_fn_878076
2__inference_max_pooling2d_322_layer_call_fn_878081?
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
M__inference_max_pooling2d_322_layer_call_and_return_conditional_losses_878086
M__inference_max_pooling2d_322_layer_call_and_return_conditional_losses_878091?
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
+__inference_conv2d_323_layer_call_fn_878100?
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
F__inference_conv2d_323_layer_call_and_return_conditional_losses_878111?
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
2__inference_max_pooling2d_323_layer_call_fn_878116
2__inference_max_pooling2d_323_layer_call_fn_878121?
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
M__inference_max_pooling2d_323_layer_call_and_return_conditional_losses_878126
M__inference_max_pooling2d_323_layer_call_and_return_conditional_losses_878131?
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
,__inference_flatten_107_layer_call_fn_878136?
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
G__inference_flatten_107_layer_call_and_return_conditional_losses_878142?
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
*__inference_dense_321_layer_call_fn_878151?
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
E__inference_dense_321_layer_call_and_return_conditional_losses_878162?
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
,__inference_dropout_107_layer_call_fn_878167
,__inference_dropout_107_layer_call_fn_878172?
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
G__inference_dropout_107_layer_call_and_return_conditional_losses_878177
G__inference_dropout_107_layer_call_and_return_conditional_losses_878189?
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
*__inference_dense_322_layer_call_fn_878198?
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
E__inference_dense_322_layer_call_and_return_conditional_losses_878209?
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
*__inference_dense_323_layer_call_fn_878218?
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
E__inference_dense_323_layer_call_and_return_conditional_losses_878229?
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
$__inference_signature_wrapper_877842conv2d_321_input"?
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
!__inference__wrapped_model_877297? +,<=HIOPC?@
9?6
4?1
conv2d_321_input???????????
? "5?2
0
	dense_323#? 
	dense_323??????????
F__inference_conv2d_321_layer_call_and_return_conditional_losses_878031n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????Z] 
? ?
+__inference_conv2d_321_layer_call_fn_878020a9?6
/?,
*?'
inputs???????????
? " ??????????Z] ?
F__inference_conv2d_322_layer_call_and_return_conditional_losses_878071l 7?4
-?*
(?%
inputs?????????-. 
? "-?*
#? 
0?????????@
? ?
+__inference_conv2d_322_layer_call_fn_878060_ 7?4
-?*
(?%
inputs?????????-. 
? " ??????????@?
F__inference_conv2d_323_layer_call_and_return_conditional_losses_878111m+,7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
+__inference_conv2d_323_layer_call_fn_878100`+,7?4
-?*
(?%
inputs?????????@
? "!????????????
E__inference_dense_321_layer_call_and_return_conditional_losses_878162]<=0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? ~
*__inference_dense_321_layer_call_fn_878151P<=0?-
&?#
!?
inputs??????????
? "??????????@?
E__inference_dense_322_layer_call_and_return_conditional_losses_878209\HI/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? }
*__inference_dense_322_layer_call_fn_878198OHI/?,
%?"
 ?
inputs?????????@
? "???????????
E__inference_dense_323_layer_call_and_return_conditional_losses_878229\OP/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? }
*__inference_dense_323_layer_call_fn_878218OOP/?,
%?"
 ?
inputs?????????
? "???????????
G__inference_dropout_107_layer_call_and_return_conditional_losses_878177\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
G__inference_dropout_107_layer_call_and_return_conditional_losses_878189\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? 
,__inference_dropout_107_layer_call_fn_878167O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@
,__inference_dropout_107_layer_call_fn_878172O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
G__inference_flatten_107_layer_call_and_return_conditional_losses_878142b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????
? ?
,__inference_flatten_107_layer_call_fn_878136U8?5
.?+
)?&
inputs??????????
? "????????????
M__inference_max_pooling2d_321_layer_call_and_return_conditional_losses_878046?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_321_layer_call_and_return_conditional_losses_878051h7?4
-?*
(?%
inputs?????????Z] 
? "-?*
#? 
0?????????-. 
? ?
2__inference_max_pooling2d_321_layer_call_fn_878036?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_321_layer_call_fn_878041[7?4
-?*
(?%
inputs?????????Z] 
? " ??????????-. ?
M__inference_max_pooling2d_322_layer_call_and_return_conditional_losses_878086?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_322_layer_call_and_return_conditional_losses_878091h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
2__inference_max_pooling2d_322_layer_call_fn_878076?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_322_layer_call_fn_878081[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
M__inference_max_pooling2d_323_layer_call_and_return_conditional_losses_878126?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_323_layer_call_and_return_conditional_losses_878131j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
2__inference_max_pooling2d_323_layer_call_fn_878116?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_323_layer_call_fn_878121]8?5
.?+
)?&
inputs??????????
? "!????????????
J__inference_sequential_107_layer_call_and_return_conditional_losses_877772? +,<=HIOPK?H
A?>
4?1
conv2d_321_input???????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_107_layer_call_and_return_conditional_losses_877811? +,<=HIOPK?H
A?>
4?1
conv2d_321_input???????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_107_layer_call_and_return_conditional_losses_877952x +,<=HIOPA?>
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
J__inference_sequential_107_layer_call_and_return_conditional_losses_878011x +,<=HIOPA?>
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
/__inference_sequential_107_layer_call_fn_877503u +,<=HIOPK?H
A?>
4?1
conv2d_321_input???????????
p 

 
? "???????????
/__inference_sequential_107_layer_call_fn_877733u +,<=HIOPK?H
A?>
4?1
conv2d_321_input???????????
p

 
? "???????????
/__inference_sequential_107_layer_call_fn_877871k +,<=HIOPA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
/__inference_sequential_107_layer_call_fn_877900k +,<=HIOPA?>
7?4
*?'
inputs???????????
p

 
? "???????????
$__inference_signature_wrapper_877842? +,<=HIOPW?T
? 
M?J
H
conv2d_321_input4?1
conv2d_321_input???????????"5?2
0
	dense_323#? 
	dense_323?????????