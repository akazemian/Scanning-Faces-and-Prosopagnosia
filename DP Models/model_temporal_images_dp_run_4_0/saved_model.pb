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
conv2d_420/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_420/kernel

%conv2d_420/kernel/Read/ReadVariableOpReadVariableOpconv2d_420/kernel*&
_output_shapes
: *
dtype0
v
conv2d_420/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_420/bias
o
#conv2d_420/bias/Read/ReadVariableOpReadVariableOpconv2d_420/bias*
_output_shapes
: *
dtype0
?
conv2d_421/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_421/kernel

%conv2d_421/kernel/Read/ReadVariableOpReadVariableOpconv2d_421/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_421/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_421/bias
o
#conv2d_421/bias/Read/ReadVariableOpReadVariableOpconv2d_421/bias*
_output_shapes
:@*
dtype0
?
conv2d_422/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*"
shared_nameconv2d_422/kernel
?
%conv2d_422/kernel/Read/ReadVariableOpReadVariableOpconv2d_422/kernel*'
_output_shapes
:@?*
dtype0
w
conv2d_422/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_422/bias
p
#conv2d_422/bias/Read/ReadVariableOpReadVariableOpconv2d_422/bias*
_output_shapes	
:?*
dtype0
}
dense_420/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*!
shared_namedense_420/kernel
v
$dense_420/kernel/Read/ReadVariableOpReadVariableOpdense_420/kernel*
_output_shapes
:	?@*
dtype0
t
dense_420/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_420/bias
m
"dense_420/bias/Read/ReadVariableOpReadVariableOpdense_420/bias*
_output_shapes
:@*
dtype0
|
dense_421/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_421/kernel
u
$dense_421/kernel/Read/ReadVariableOpReadVariableOpdense_421/kernel*
_output_shapes

:@*
dtype0
t
dense_421/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_421/bias
m
"dense_421/bias/Read/ReadVariableOpReadVariableOpdense_421/bias*
_output_shapes
:*
dtype0
|
dense_422/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_422/kernel
u
$dense_422/kernel/Read/ReadVariableOpReadVariableOpdense_422/kernel*
_output_shapes

:*
dtype0
t
dense_422/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_422/bias
m
"dense_422/bias/Read/ReadVariableOpReadVariableOpdense_422/bias*
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
VARIABLE_VALUEconv2d_420/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_420/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_421/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_421/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_422/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_422/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_420/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_420/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_421/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_421/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_422/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_422/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
 serving_default_conv2d_420_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_420_inputconv2d_420/kernelconv2d_420/biasconv2d_421/kernelconv2d_421/biasconv2d_422/kernelconv2d_422/biasdense_420/kerneldense_420/biasdense_421/kerneldense_421/biasdense_422/kerneldense_422/bias*
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
$__inference_signature_wrapper_967371
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_420/kernel/Read/ReadVariableOp#conv2d_420/bias/Read/ReadVariableOp%conv2d_421/kernel/Read/ReadVariableOp#conv2d_421/bias/Read/ReadVariableOp%conv2d_422/kernel/Read/ReadVariableOp#conv2d_422/bias/Read/ReadVariableOp$dense_420/kernel/Read/ReadVariableOp"dense_420/bias/Read/ReadVariableOp$dense_421/kernel/Read/ReadVariableOp"dense_421/bias/Read/ReadVariableOp$dense_422/kernel/Read/ReadVariableOp"dense_422/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
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
__inference__traced_save_967829
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_420/kernelconv2d_420/biasconv2d_421/kernelconv2d_421/biasconv2d_422/kernelconv2d_422/biasdense_420/kerneldense_420/biasdense_421/kerneldense_421/biasdense_422/kerneldense_422/biastotalcounttotal_1count_1*
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
"__inference__traced_restore_967887??
?
i
M__inference_max_pooling2d_421_layer_call_and_return_conditional_losses_967620

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
?0
?
J__inference_sequential_140_layer_call_and_return_conditional_losses_967005

inputs+
conv2d_420_966881: 
conv2d_420_966883: +
conv2d_421_966904: @
conv2d_421_966906:@,
conv2d_422_966927:@? 
conv2d_422_966929:	?#
dense_420_966958:	?@
dense_420_966960:@"
dense_421_966982:@
dense_421_966984:"
dense_422_966999:
dense_422_967001:
identity??"conv2d_420/StatefulPartitionedCall?"conv2d_421/StatefulPartitionedCall?"conv2d_422/StatefulPartitionedCall?!dense_420/StatefulPartitionedCall?!dense_421/StatefulPartitionedCall?!dense_422/StatefulPartitionedCall?
"conv2d_420/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_420_966881conv2d_420_966883*
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
F__inference_conv2d_420_layer_call_and_return_conditional_losses_966880?
!max_pooling2d_420/PartitionedCallPartitionedCall+conv2d_420/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_420_layer_call_and_return_conditional_losses_966890?
"conv2d_421/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_420/PartitionedCall:output:0conv2d_421_966904conv2d_421_966906*
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
F__inference_conv2d_421_layer_call_and_return_conditional_losses_966903?
!max_pooling2d_421/PartitionedCallPartitionedCall+conv2d_421/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_421_layer_call_and_return_conditional_losses_966913?
"conv2d_422/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_421/PartitionedCall:output:0conv2d_422_966927conv2d_422_966929*
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
F__inference_conv2d_422_layer_call_and_return_conditional_losses_966926?
!max_pooling2d_422/PartitionedCallPartitionedCall+conv2d_422/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_966936?
flatten_140/PartitionedCallPartitionedCall*max_pooling2d_422/PartitionedCall:output:0*
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
G__inference_flatten_140_layer_call_and_return_conditional_losses_966944?
!dense_420/StatefulPartitionedCallStatefulPartitionedCall$flatten_140/PartitionedCall:output:0dense_420_966958dense_420_966960*
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
E__inference_dense_420_layer_call_and_return_conditional_losses_966957?
dropout_140/PartitionedCallPartitionedCall*dense_420/StatefulPartitionedCall:output:0*
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
G__inference_dropout_140_layer_call_and_return_conditional_losses_966968?
!dense_421/StatefulPartitionedCallStatefulPartitionedCall$dropout_140/PartitionedCall:output:0dense_421_966982dense_421_966984*
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
E__inference_dense_421_layer_call_and_return_conditional_losses_966981?
!dense_422/StatefulPartitionedCallStatefulPartitionedCall*dense_421/StatefulPartitionedCall:output:0dense_422_966999dense_422_967001*
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
E__inference_dense_422_layer_call_and_return_conditional_losses_966998y
IdentityIdentity*dense_422/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_420/StatefulPartitionedCall#^conv2d_421/StatefulPartitionedCall#^conv2d_422/StatefulPartitionedCall"^dense_420/StatefulPartitionedCall"^dense_421/StatefulPartitionedCall"^dense_422/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_420/StatefulPartitionedCall"conv2d_420/StatefulPartitionedCall2H
"conv2d_421/StatefulPartitionedCall"conv2d_421/StatefulPartitionedCall2H
"conv2d_422/StatefulPartitionedCall"conv2d_422/StatefulPartitionedCall2F
!dense_420/StatefulPartitionedCall!dense_420/StatefulPartitionedCall2F
!dense_421/StatefulPartitionedCall!dense_421/StatefulPartitionedCall2F
!dense_422/StatefulPartitionedCall!dense_422/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
e
,__inference_dropout_140_layer_call_fn_967701

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
G__inference_dropout_140_layer_call_and_return_conditional_losses_967072o
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
?
N
2__inference_max_pooling2d_420_layer_call_fn_967565

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
M__inference_max_pooling2d_420_layer_call_and_return_conditional_losses_966835?
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
f
G__inference_dropout_140_layer_call_and_return_conditional_losses_967718

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
?(
?
__inference__traced_save_967829
file_prefix0
,savev2_conv2d_420_kernel_read_readvariableop.
*savev2_conv2d_420_bias_read_readvariableop0
,savev2_conv2d_421_kernel_read_readvariableop.
*savev2_conv2d_421_bias_read_readvariableop0
,savev2_conv2d_422_kernel_read_readvariableop.
*savev2_conv2d_422_bias_read_readvariableop/
+savev2_dense_420_kernel_read_readvariableop-
)savev2_dense_420_bias_read_readvariableop/
+savev2_dense_421_kernel_read_readvariableop-
)savev2_dense_421_bias_read_readvariableop/
+savev2_dense_422_kernel_read_readvariableop-
)savev2_dense_422_bias_read_readvariableop$
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_420_kernel_read_readvariableop*savev2_conv2d_420_bias_read_readvariableop,savev2_conv2d_421_kernel_read_readvariableop*savev2_conv2d_421_bias_read_readvariableop,savev2_conv2d_422_kernel_read_readvariableop*savev2_conv2d_422_bias_read_readvariableop+savev2_dense_420_kernel_read_readvariableop)savev2_dense_420_bias_read_readvariableop+savev2_dense_421_kernel_read_readvariableop)savev2_dense_421_bias_read_readvariableop+savev2_dense_422_kernel_read_readvariableop)savev2_dense_422_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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
E__inference_dense_420_layer_call_and_return_conditional_losses_966957

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
+__inference_conv2d_420_layer_call_fn_967549

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
F__inference_conv2d_420_layer_call_and_return_conditional_losses_966880w
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
M__inference_max_pooling2d_421_layer_call_and_return_conditional_losses_966913

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
?
$__inference_signature_wrapper_967371
conv2d_420_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_420_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
!__inference__wrapped_model_966826o
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
_user_specified_nameconv2d_420_input
?
?
/__inference_sequential_140_layer_call_fn_967429

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
J__inference_sequential_140_layer_call_and_return_conditional_losses_967206o
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
i
M__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_966859

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
M__inference_max_pooling2d_420_layer_call_and_return_conditional_losses_966890

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
M__inference_max_pooling2d_420_layer_call_and_return_conditional_losses_967580

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
?
i
M__inference_max_pooling2d_420_layer_call_and_return_conditional_losses_966835

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
F__inference_conv2d_420_layer_call_and_return_conditional_losses_966880

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
M__inference_max_pooling2d_421_layer_call_and_return_conditional_losses_966847

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
?A
?	
"__inference__traced_restore_967887
file_prefix<
"assignvariableop_conv2d_420_kernel: 0
"assignvariableop_1_conv2d_420_bias: >
$assignvariableop_2_conv2d_421_kernel: @0
"assignvariableop_3_conv2d_421_bias:@?
$assignvariableop_4_conv2d_422_kernel:@?1
"assignvariableop_5_conv2d_422_bias:	?6
#assignvariableop_6_dense_420_kernel:	?@/
!assignvariableop_7_dense_420_bias:@5
#assignvariableop_8_dense_421_kernel:@/
!assignvariableop_9_dense_421_bias:6
$assignvariableop_10_dense_422_kernel:0
"assignvariableop_11_dense_422_bias:#
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_420_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_420_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_421_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_421_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_422_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_422_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_420_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_420_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_421_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_421_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_422_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_422_biasIdentity_11:output:0"/device:CPU:0*
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
N
2__inference_max_pooling2d_420_layer_call_fn_967570

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
M__inference_max_pooling2d_420_layer_call_and_return_conditional_losses_966890h
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
?0
?
J__inference_sequential_140_layer_call_and_return_conditional_losses_967301
conv2d_420_input+
conv2d_420_967265: 
conv2d_420_967267: +
conv2d_421_967271: @
conv2d_421_967273:@,
conv2d_422_967277:@? 
conv2d_422_967279:	?#
dense_420_967284:	?@
dense_420_967286:@"
dense_421_967290:@
dense_421_967292:"
dense_422_967295:
dense_422_967297:
identity??"conv2d_420/StatefulPartitionedCall?"conv2d_421/StatefulPartitionedCall?"conv2d_422/StatefulPartitionedCall?!dense_420/StatefulPartitionedCall?!dense_421/StatefulPartitionedCall?!dense_422/StatefulPartitionedCall?
"conv2d_420/StatefulPartitionedCallStatefulPartitionedCallconv2d_420_inputconv2d_420_967265conv2d_420_967267*
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
F__inference_conv2d_420_layer_call_and_return_conditional_losses_966880?
!max_pooling2d_420/PartitionedCallPartitionedCall+conv2d_420/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_420_layer_call_and_return_conditional_losses_966890?
"conv2d_421/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_420/PartitionedCall:output:0conv2d_421_967271conv2d_421_967273*
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
F__inference_conv2d_421_layer_call_and_return_conditional_losses_966903?
!max_pooling2d_421/PartitionedCallPartitionedCall+conv2d_421/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_421_layer_call_and_return_conditional_losses_966913?
"conv2d_422/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_421/PartitionedCall:output:0conv2d_422_967277conv2d_422_967279*
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
F__inference_conv2d_422_layer_call_and_return_conditional_losses_966926?
!max_pooling2d_422/PartitionedCallPartitionedCall+conv2d_422/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_966936?
flatten_140/PartitionedCallPartitionedCall*max_pooling2d_422/PartitionedCall:output:0*
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
G__inference_flatten_140_layer_call_and_return_conditional_losses_966944?
!dense_420/StatefulPartitionedCallStatefulPartitionedCall$flatten_140/PartitionedCall:output:0dense_420_967284dense_420_967286*
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
E__inference_dense_420_layer_call_and_return_conditional_losses_966957?
dropout_140/PartitionedCallPartitionedCall*dense_420/StatefulPartitionedCall:output:0*
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
G__inference_dropout_140_layer_call_and_return_conditional_losses_966968?
!dense_421/StatefulPartitionedCallStatefulPartitionedCall$dropout_140/PartitionedCall:output:0dense_421_967290dense_421_967292*
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
E__inference_dense_421_layer_call_and_return_conditional_losses_966981?
!dense_422/StatefulPartitionedCallStatefulPartitionedCall*dense_421/StatefulPartitionedCall:output:0dense_422_967295dense_422_967297*
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
E__inference_dense_422_layer_call_and_return_conditional_losses_966998y
IdentityIdentity*dense_422/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_420/StatefulPartitionedCall#^conv2d_421/StatefulPartitionedCall#^conv2d_422/StatefulPartitionedCall"^dense_420/StatefulPartitionedCall"^dense_421/StatefulPartitionedCall"^dense_422/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_420/StatefulPartitionedCall"conv2d_420/StatefulPartitionedCall2H
"conv2d_421/StatefulPartitionedCall"conv2d_421/StatefulPartitionedCall2H
"conv2d_422/StatefulPartitionedCall"conv2d_422/StatefulPartitionedCall2F
!dense_420/StatefulPartitionedCall!dense_420/StatefulPartitionedCall2F
!dense_421/StatefulPartitionedCall!dense_421/StatefulPartitionedCall2F
!dense_422/StatefulPartitionedCall!dense_422/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_420_input
?
N
2__inference_max_pooling2d_421_layer_call_fn_967610

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
M__inference_max_pooling2d_421_layer_call_and_return_conditional_losses_966913h
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
?G
?	
J__inference_sequential_140_layer_call_and_return_conditional_losses_967540

inputsC
)conv2d_420_conv2d_readvariableop_resource: 8
*conv2d_420_biasadd_readvariableop_resource: C
)conv2d_421_conv2d_readvariableop_resource: @8
*conv2d_421_biasadd_readvariableop_resource:@D
)conv2d_422_conv2d_readvariableop_resource:@?9
*conv2d_422_biasadd_readvariableop_resource:	?;
(dense_420_matmul_readvariableop_resource:	?@7
)dense_420_biasadd_readvariableop_resource:@:
(dense_421_matmul_readvariableop_resource:@7
)dense_421_biasadd_readvariableop_resource::
(dense_422_matmul_readvariableop_resource:7
)dense_422_biasadd_readvariableop_resource:
identity??!conv2d_420/BiasAdd/ReadVariableOp? conv2d_420/Conv2D/ReadVariableOp?!conv2d_421/BiasAdd/ReadVariableOp? conv2d_421/Conv2D/ReadVariableOp?!conv2d_422/BiasAdd/ReadVariableOp? conv2d_422/Conv2D/ReadVariableOp? dense_420/BiasAdd/ReadVariableOp?dense_420/MatMul/ReadVariableOp? dense_421/BiasAdd/ReadVariableOp?dense_421/MatMul/ReadVariableOp? dense_422/BiasAdd/ReadVariableOp?dense_422/MatMul/ReadVariableOp?
 conv2d_420/Conv2D/ReadVariableOpReadVariableOp)conv2d_420_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_420/Conv2DConv2Dinputs(conv2d_420/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
?
!conv2d_420/BiasAdd/ReadVariableOpReadVariableOp*conv2d_420_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_420/BiasAddBiasAddconv2d_420/Conv2D:output:0)conv2d_420/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] n
conv2d_420/ReluReluconv2d_420/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] ?
max_pooling2d_420/MaxPoolMaxPoolconv2d_420/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
?
 conv2d_421/Conv2D/ReadVariableOpReadVariableOp)conv2d_421_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_421/Conv2DConv2D"max_pooling2d_420/MaxPool:output:0(conv2d_421/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
!conv2d_421/BiasAdd/ReadVariableOpReadVariableOp*conv2d_421_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_421/BiasAddBiasAddconv2d_421/Conv2D:output:0)conv2d_421/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@n
conv2d_421/ReluReluconv2d_421/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_421/MaxPoolMaxPoolconv2d_421/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
?
 conv2d_422/Conv2D/ReadVariableOpReadVariableOp)conv2d_422_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_422/Conv2DConv2D"max_pooling2d_421/MaxPool:output:0(conv2d_422/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
!conv2d_422/BiasAdd/ReadVariableOpReadVariableOp*conv2d_422_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_422/BiasAddBiasAddconv2d_422/Conv2D:output:0)conv2d_422/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????o
conv2d_422/ReluReluconv2d_422/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
max_pooling2d_422/MaxPoolMaxPoolconv2d_422/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
b
flatten_140/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_140/ReshapeReshape"max_pooling2d_422/MaxPool:output:0flatten_140/Const:output:0*
T0*(
_output_shapes
:???????????
dense_420/MatMul/ReadVariableOpReadVariableOp(dense_420_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_420/MatMulMatMulflatten_140/Reshape:output:0'dense_420/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
 dense_420/BiasAdd/ReadVariableOpReadVariableOp)dense_420_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_420/BiasAddBiasAdddense_420/MatMul:product:0(dense_420/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_420/TanhTanhdense_420/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@^
dropout_140/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_140/dropout/MulMuldense_420/Tanh:y:0"dropout_140/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@[
dropout_140/dropout/ShapeShapedense_420/Tanh:y:0*
T0*
_output_shapes
:?
0dropout_140/dropout/random_uniform/RandomUniformRandomUniform"dropout_140/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0g
"dropout_140/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
 dropout_140/dropout/GreaterEqualGreaterEqual9dropout_140/dropout/random_uniform/RandomUniform:output:0+dropout_140/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@?
dropout_140/dropout/CastCast$dropout_140/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
dropout_140/dropout/Mul_1Muldropout_140/dropout/Mul:z:0dropout_140/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@?
dense_421/MatMul/ReadVariableOpReadVariableOp(dense_421_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_421/MatMulMatMuldropout_140/dropout/Mul_1:z:0'dense_421/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_421/BiasAdd/ReadVariableOpReadVariableOp)dense_421_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_421/BiasAddBiasAdddense_421/MatMul:product:0(dense_421/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_421/TanhTanhdense_421/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_422/MatMul/ReadVariableOpReadVariableOp(dense_422_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_422/MatMulMatMuldense_421/Tanh:y:0'dense_422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_422/BiasAdd/ReadVariableOpReadVariableOp)dense_422_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_422/BiasAddBiasAdddense_422/MatMul:product:0(dense_422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_422/SigmoidSigmoiddense_422/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_422/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_420/BiasAdd/ReadVariableOp!^conv2d_420/Conv2D/ReadVariableOp"^conv2d_421/BiasAdd/ReadVariableOp!^conv2d_421/Conv2D/ReadVariableOp"^conv2d_422/BiasAdd/ReadVariableOp!^conv2d_422/Conv2D/ReadVariableOp!^dense_420/BiasAdd/ReadVariableOp ^dense_420/MatMul/ReadVariableOp!^dense_421/BiasAdd/ReadVariableOp ^dense_421/MatMul/ReadVariableOp!^dense_422/BiasAdd/ReadVariableOp ^dense_422/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_420/BiasAdd/ReadVariableOp!conv2d_420/BiasAdd/ReadVariableOp2D
 conv2d_420/Conv2D/ReadVariableOp conv2d_420/Conv2D/ReadVariableOp2F
!conv2d_421/BiasAdd/ReadVariableOp!conv2d_421/BiasAdd/ReadVariableOp2D
 conv2d_421/Conv2D/ReadVariableOp conv2d_421/Conv2D/ReadVariableOp2F
!conv2d_422/BiasAdd/ReadVariableOp!conv2d_422/BiasAdd/ReadVariableOp2D
 conv2d_422/Conv2D/ReadVariableOp conv2d_422/Conv2D/ReadVariableOp2D
 dense_420/BiasAdd/ReadVariableOp dense_420/BiasAdd/ReadVariableOp2B
dense_420/MatMul/ReadVariableOpdense_420/MatMul/ReadVariableOp2D
 dense_421/BiasAdd/ReadVariableOp dense_421/BiasAdd/ReadVariableOp2B
dense_421/MatMul/ReadVariableOpdense_421/MatMul/ReadVariableOp2D
 dense_422/BiasAdd/ReadVariableOp dense_422/BiasAdd/ReadVariableOp2B
dense_422/MatMul/ReadVariableOpdense_422/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_421_layer_call_fn_967605

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
M__inference_max_pooling2d_421_layer_call_and_return_conditional_losses_966847?
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
+__inference_conv2d_421_layer_call_fn_967589

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
F__inference_conv2d_421_layer_call_and_return_conditional_losses_966903w
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
?
?
*__inference_dense_422_layer_call_fn_967747

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
E__inference_dense_422_layer_call_and_return_conditional_losses_966998o
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
E__inference_dense_422_layer_call_and_return_conditional_losses_966998

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
N
2__inference_max_pooling2d_422_layer_call_fn_967650

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
M__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_966936i
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
E__inference_dense_421_layer_call_and_return_conditional_losses_967738

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
e
G__inference_dropout_140_layer_call_and_return_conditional_losses_966968

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
H
,__inference_flatten_140_layer_call_fn_967665

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
G__inference_flatten_140_layer_call_and_return_conditional_losses_966944a
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
?
/__inference_sequential_140_layer_call_fn_967400

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
J__inference_sequential_140_layer_call_and_return_conditional_losses_967005o
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
N
2__inference_max_pooling2d_422_layer_call_fn_967645

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
M__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_966859?
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
G__inference_dropout_140_layer_call_and_return_conditional_losses_967706

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

?
E__inference_dense_421_layer_call_and_return_conditional_losses_966981

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
+__inference_conv2d_422_layer_call_fn_967629

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
F__inference_conv2d_422_layer_call_and_return_conditional_losses_966926x
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
i
M__inference_max_pooling2d_421_layer_call_and_return_conditional_losses_967615

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
M__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_966936

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
c
G__inference_flatten_140_layer_call_and_return_conditional_losses_966944

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
F__inference_conv2d_422_layer_call_and_return_conditional_losses_967640

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
?P
?
!__inference__wrapped_model_966826
conv2d_420_inputR
8sequential_140_conv2d_420_conv2d_readvariableop_resource: G
9sequential_140_conv2d_420_biasadd_readvariableop_resource: R
8sequential_140_conv2d_421_conv2d_readvariableop_resource: @G
9sequential_140_conv2d_421_biasadd_readvariableop_resource:@S
8sequential_140_conv2d_422_conv2d_readvariableop_resource:@?H
9sequential_140_conv2d_422_biasadd_readvariableop_resource:	?J
7sequential_140_dense_420_matmul_readvariableop_resource:	?@F
8sequential_140_dense_420_biasadd_readvariableop_resource:@I
7sequential_140_dense_421_matmul_readvariableop_resource:@F
8sequential_140_dense_421_biasadd_readvariableop_resource:I
7sequential_140_dense_422_matmul_readvariableop_resource:F
8sequential_140_dense_422_biasadd_readvariableop_resource:
identity??0sequential_140/conv2d_420/BiasAdd/ReadVariableOp?/sequential_140/conv2d_420/Conv2D/ReadVariableOp?0sequential_140/conv2d_421/BiasAdd/ReadVariableOp?/sequential_140/conv2d_421/Conv2D/ReadVariableOp?0sequential_140/conv2d_422/BiasAdd/ReadVariableOp?/sequential_140/conv2d_422/Conv2D/ReadVariableOp?/sequential_140/dense_420/BiasAdd/ReadVariableOp?.sequential_140/dense_420/MatMul/ReadVariableOp?/sequential_140/dense_421/BiasAdd/ReadVariableOp?.sequential_140/dense_421/MatMul/ReadVariableOp?/sequential_140/dense_422/BiasAdd/ReadVariableOp?.sequential_140/dense_422/MatMul/ReadVariableOp?
/sequential_140/conv2d_420/Conv2D/ReadVariableOpReadVariableOp8sequential_140_conv2d_420_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
 sequential_140/conv2d_420/Conv2DConv2Dconv2d_420_input7sequential_140/conv2d_420/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
?
0sequential_140/conv2d_420/BiasAdd/ReadVariableOpReadVariableOp9sequential_140_conv2d_420_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
!sequential_140/conv2d_420/BiasAddBiasAdd)sequential_140/conv2d_420/Conv2D:output:08sequential_140/conv2d_420/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] ?
sequential_140/conv2d_420/ReluRelu*sequential_140/conv2d_420/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] ?
(sequential_140/max_pooling2d_420/MaxPoolMaxPool,sequential_140/conv2d_420/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
?
/sequential_140/conv2d_421/Conv2D/ReadVariableOpReadVariableOp8sequential_140_conv2d_421_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
 sequential_140/conv2d_421/Conv2DConv2D1sequential_140/max_pooling2d_420/MaxPool:output:07sequential_140/conv2d_421/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
0sequential_140/conv2d_421/BiasAdd/ReadVariableOpReadVariableOp9sequential_140_conv2d_421_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
!sequential_140/conv2d_421/BiasAddBiasAdd)sequential_140/conv2d_421/Conv2D:output:08sequential_140/conv2d_421/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@?
sequential_140/conv2d_421/ReluRelu*sequential_140/conv2d_421/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
(sequential_140/max_pooling2d_421/MaxPoolMaxPool,sequential_140/conv2d_421/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
?
/sequential_140/conv2d_422/Conv2D/ReadVariableOpReadVariableOp8sequential_140_conv2d_422_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
 sequential_140/conv2d_422/Conv2DConv2D1sequential_140/max_pooling2d_421/MaxPool:output:07sequential_140/conv2d_422/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
0sequential_140/conv2d_422/BiasAdd/ReadVariableOpReadVariableOp9sequential_140_conv2d_422_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!sequential_140/conv2d_422/BiasAddBiasAdd)sequential_140/conv2d_422/Conv2D:output:08sequential_140/conv2d_422/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
sequential_140/conv2d_422/ReluRelu*sequential_140/conv2d_422/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
(sequential_140/max_pooling2d_422/MaxPoolMaxPool,sequential_140/conv2d_422/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
q
 sequential_140/flatten_140/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"sequential_140/flatten_140/ReshapeReshape1sequential_140/max_pooling2d_422/MaxPool:output:0)sequential_140/flatten_140/Const:output:0*
T0*(
_output_shapes
:???????????
.sequential_140/dense_420/MatMul/ReadVariableOpReadVariableOp7sequential_140_dense_420_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
sequential_140/dense_420/MatMulMatMul+sequential_140/flatten_140/Reshape:output:06sequential_140/dense_420/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
/sequential_140/dense_420/BiasAdd/ReadVariableOpReadVariableOp8sequential_140_dense_420_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
 sequential_140/dense_420/BiasAddBiasAdd)sequential_140/dense_420/MatMul:product:07sequential_140/dense_420/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
sequential_140/dense_420/TanhTanh)sequential_140/dense_420/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
#sequential_140/dropout_140/IdentityIdentity!sequential_140/dense_420/Tanh:y:0*
T0*'
_output_shapes
:?????????@?
.sequential_140/dense_421/MatMul/ReadVariableOpReadVariableOp7sequential_140_dense_421_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
sequential_140/dense_421/MatMulMatMul,sequential_140/dropout_140/Identity:output:06sequential_140/dense_421/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_140/dense_421/BiasAdd/ReadVariableOpReadVariableOp8sequential_140_dense_421_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_140/dense_421/BiasAddBiasAdd)sequential_140/dense_421/MatMul:product:07sequential_140/dense_421/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_140/dense_421/TanhTanh)sequential_140/dense_421/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
.sequential_140/dense_422/MatMul/ReadVariableOpReadVariableOp7sequential_140_dense_422_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_140/dense_422/MatMulMatMul!sequential_140/dense_421/Tanh:y:06sequential_140/dense_422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_140/dense_422/BiasAdd/ReadVariableOpReadVariableOp8sequential_140_dense_422_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_140/dense_422/BiasAddBiasAdd)sequential_140/dense_422/MatMul:product:07sequential_140/dense_422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 sequential_140/dense_422/SigmoidSigmoid)sequential_140/dense_422/BiasAdd:output:0*
T0*'
_output_shapes
:?????????s
IdentityIdentity$sequential_140/dense_422/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp1^sequential_140/conv2d_420/BiasAdd/ReadVariableOp0^sequential_140/conv2d_420/Conv2D/ReadVariableOp1^sequential_140/conv2d_421/BiasAdd/ReadVariableOp0^sequential_140/conv2d_421/Conv2D/ReadVariableOp1^sequential_140/conv2d_422/BiasAdd/ReadVariableOp0^sequential_140/conv2d_422/Conv2D/ReadVariableOp0^sequential_140/dense_420/BiasAdd/ReadVariableOp/^sequential_140/dense_420/MatMul/ReadVariableOp0^sequential_140/dense_421/BiasAdd/ReadVariableOp/^sequential_140/dense_421/MatMul/ReadVariableOp0^sequential_140/dense_422/BiasAdd/ReadVariableOp/^sequential_140/dense_422/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2d
0sequential_140/conv2d_420/BiasAdd/ReadVariableOp0sequential_140/conv2d_420/BiasAdd/ReadVariableOp2b
/sequential_140/conv2d_420/Conv2D/ReadVariableOp/sequential_140/conv2d_420/Conv2D/ReadVariableOp2d
0sequential_140/conv2d_421/BiasAdd/ReadVariableOp0sequential_140/conv2d_421/BiasAdd/ReadVariableOp2b
/sequential_140/conv2d_421/Conv2D/ReadVariableOp/sequential_140/conv2d_421/Conv2D/ReadVariableOp2d
0sequential_140/conv2d_422/BiasAdd/ReadVariableOp0sequential_140/conv2d_422/BiasAdd/ReadVariableOp2b
/sequential_140/conv2d_422/Conv2D/ReadVariableOp/sequential_140/conv2d_422/Conv2D/ReadVariableOp2b
/sequential_140/dense_420/BiasAdd/ReadVariableOp/sequential_140/dense_420/BiasAdd/ReadVariableOp2`
.sequential_140/dense_420/MatMul/ReadVariableOp.sequential_140/dense_420/MatMul/ReadVariableOp2b
/sequential_140/dense_421/BiasAdd/ReadVariableOp/sequential_140/dense_421/BiasAdd/ReadVariableOp2`
.sequential_140/dense_421/MatMul/ReadVariableOp.sequential_140/dense_421/MatMul/ReadVariableOp2b
/sequential_140/dense_422/BiasAdd/ReadVariableOp/sequential_140/dense_422/BiasAdd/ReadVariableOp2`
.sequential_140/dense_422/MatMul/ReadVariableOp.sequential_140/dense_422/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_420_input
?	
f
G__inference_dropout_140_layer_call_and_return_conditional_losses_967072

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
M__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_967660

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
/__inference_sequential_140_layer_call_fn_967262
conv2d_420_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_420_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
J__inference_sequential_140_layer_call_and_return_conditional_losses_967206o
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
_user_specified_nameconv2d_420_input
?
i
M__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_967655

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
c
G__inference_flatten_140_layer_call_and_return_conditional_losses_967671

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
*__inference_dense_421_layer_call_fn_967727

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
E__inference_dense_421_layer_call_and_return_conditional_losses_966981o
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
i
M__inference_max_pooling2d_420_layer_call_and_return_conditional_losses_967575

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
/__inference_sequential_140_layer_call_fn_967032
conv2d_420_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_420_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
J__inference_sequential_140_layer_call_and_return_conditional_losses_967005o
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
_user_specified_nameconv2d_420_input
?
?
F__inference_conv2d_422_layer_call_and_return_conditional_losses_966926

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
H
,__inference_dropout_140_layer_call_fn_967696

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
G__inference_dropout_140_layer_call_and_return_conditional_losses_966968`
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

?
E__inference_dense_420_layer_call_and_return_conditional_losses_967691

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
F__inference_conv2d_421_layer_call_and_return_conditional_losses_966903

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
*__inference_dense_420_layer_call_fn_967680

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
E__inference_dense_420_layer_call_and_return_conditional_losses_966957o
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
?1
?
J__inference_sequential_140_layer_call_and_return_conditional_losses_967206

inputs+
conv2d_420_967170: 
conv2d_420_967172: +
conv2d_421_967176: @
conv2d_421_967178:@,
conv2d_422_967182:@? 
conv2d_422_967184:	?#
dense_420_967189:	?@
dense_420_967191:@"
dense_421_967195:@
dense_421_967197:"
dense_422_967200:
dense_422_967202:
identity??"conv2d_420/StatefulPartitionedCall?"conv2d_421/StatefulPartitionedCall?"conv2d_422/StatefulPartitionedCall?!dense_420/StatefulPartitionedCall?!dense_421/StatefulPartitionedCall?!dense_422/StatefulPartitionedCall?#dropout_140/StatefulPartitionedCall?
"conv2d_420/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_420_967170conv2d_420_967172*
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
F__inference_conv2d_420_layer_call_and_return_conditional_losses_966880?
!max_pooling2d_420/PartitionedCallPartitionedCall+conv2d_420/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_420_layer_call_and_return_conditional_losses_966890?
"conv2d_421/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_420/PartitionedCall:output:0conv2d_421_967176conv2d_421_967178*
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
F__inference_conv2d_421_layer_call_and_return_conditional_losses_966903?
!max_pooling2d_421/PartitionedCallPartitionedCall+conv2d_421/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_421_layer_call_and_return_conditional_losses_966913?
"conv2d_422/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_421/PartitionedCall:output:0conv2d_422_967182conv2d_422_967184*
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
F__inference_conv2d_422_layer_call_and_return_conditional_losses_966926?
!max_pooling2d_422/PartitionedCallPartitionedCall+conv2d_422/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_966936?
flatten_140/PartitionedCallPartitionedCall*max_pooling2d_422/PartitionedCall:output:0*
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
G__inference_flatten_140_layer_call_and_return_conditional_losses_966944?
!dense_420/StatefulPartitionedCallStatefulPartitionedCall$flatten_140/PartitionedCall:output:0dense_420_967189dense_420_967191*
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
E__inference_dense_420_layer_call_and_return_conditional_losses_966957?
#dropout_140/StatefulPartitionedCallStatefulPartitionedCall*dense_420/StatefulPartitionedCall:output:0*
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
G__inference_dropout_140_layer_call_and_return_conditional_losses_967072?
!dense_421/StatefulPartitionedCallStatefulPartitionedCall,dropout_140/StatefulPartitionedCall:output:0dense_421_967195dense_421_967197*
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
E__inference_dense_421_layer_call_and_return_conditional_losses_966981?
!dense_422/StatefulPartitionedCallStatefulPartitionedCall*dense_421/StatefulPartitionedCall:output:0dense_422_967200dense_422_967202*
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
E__inference_dense_422_layer_call_and_return_conditional_losses_966998y
IdentityIdentity*dense_422/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_420/StatefulPartitionedCall#^conv2d_421/StatefulPartitionedCall#^conv2d_422/StatefulPartitionedCall"^dense_420/StatefulPartitionedCall"^dense_421/StatefulPartitionedCall"^dense_422/StatefulPartitionedCall$^dropout_140/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_420/StatefulPartitionedCall"conv2d_420/StatefulPartitionedCall2H
"conv2d_421/StatefulPartitionedCall"conv2d_421/StatefulPartitionedCall2H
"conv2d_422/StatefulPartitionedCall"conv2d_422/StatefulPartitionedCall2F
!dense_420/StatefulPartitionedCall!dense_420/StatefulPartitionedCall2F
!dense_421/StatefulPartitionedCall!dense_421/StatefulPartitionedCall2F
!dense_422/StatefulPartitionedCall!dense_422/StatefulPartitionedCall2J
#dropout_140/StatefulPartitionedCall#dropout_140/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
F__inference_conv2d_420_layer_call_and_return_conditional_losses_967560

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
?2
?
J__inference_sequential_140_layer_call_and_return_conditional_losses_967340
conv2d_420_input+
conv2d_420_967304: 
conv2d_420_967306: +
conv2d_421_967310: @
conv2d_421_967312:@,
conv2d_422_967316:@? 
conv2d_422_967318:	?#
dense_420_967323:	?@
dense_420_967325:@"
dense_421_967329:@
dense_421_967331:"
dense_422_967334:
dense_422_967336:
identity??"conv2d_420/StatefulPartitionedCall?"conv2d_421/StatefulPartitionedCall?"conv2d_422/StatefulPartitionedCall?!dense_420/StatefulPartitionedCall?!dense_421/StatefulPartitionedCall?!dense_422/StatefulPartitionedCall?#dropout_140/StatefulPartitionedCall?
"conv2d_420/StatefulPartitionedCallStatefulPartitionedCallconv2d_420_inputconv2d_420_967304conv2d_420_967306*
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
F__inference_conv2d_420_layer_call_and_return_conditional_losses_966880?
!max_pooling2d_420/PartitionedCallPartitionedCall+conv2d_420/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_420_layer_call_and_return_conditional_losses_966890?
"conv2d_421/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_420/PartitionedCall:output:0conv2d_421_967310conv2d_421_967312*
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
F__inference_conv2d_421_layer_call_and_return_conditional_losses_966903?
!max_pooling2d_421/PartitionedCallPartitionedCall+conv2d_421/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_421_layer_call_and_return_conditional_losses_966913?
"conv2d_422/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_421/PartitionedCall:output:0conv2d_422_967316conv2d_422_967318*
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
F__inference_conv2d_422_layer_call_and_return_conditional_losses_966926?
!max_pooling2d_422/PartitionedCallPartitionedCall+conv2d_422/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_966936?
flatten_140/PartitionedCallPartitionedCall*max_pooling2d_422/PartitionedCall:output:0*
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
G__inference_flatten_140_layer_call_and_return_conditional_losses_966944?
!dense_420/StatefulPartitionedCallStatefulPartitionedCall$flatten_140/PartitionedCall:output:0dense_420_967323dense_420_967325*
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
E__inference_dense_420_layer_call_and_return_conditional_losses_966957?
#dropout_140/StatefulPartitionedCallStatefulPartitionedCall*dense_420/StatefulPartitionedCall:output:0*
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
G__inference_dropout_140_layer_call_and_return_conditional_losses_967072?
!dense_421/StatefulPartitionedCallStatefulPartitionedCall,dropout_140/StatefulPartitionedCall:output:0dense_421_967329dense_421_967331*
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
E__inference_dense_421_layer_call_and_return_conditional_losses_966981?
!dense_422/StatefulPartitionedCallStatefulPartitionedCall*dense_421/StatefulPartitionedCall:output:0dense_422_967334dense_422_967336*
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
E__inference_dense_422_layer_call_and_return_conditional_losses_966998y
IdentityIdentity*dense_422/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_420/StatefulPartitionedCall#^conv2d_421/StatefulPartitionedCall#^conv2d_422/StatefulPartitionedCall"^dense_420/StatefulPartitionedCall"^dense_421/StatefulPartitionedCall"^dense_422/StatefulPartitionedCall$^dropout_140/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_420/StatefulPartitionedCall"conv2d_420/StatefulPartitionedCall2H
"conv2d_421/StatefulPartitionedCall"conv2d_421/StatefulPartitionedCall2H
"conv2d_422/StatefulPartitionedCall"conv2d_422/StatefulPartitionedCall2F
!dense_420/StatefulPartitionedCall!dense_420/StatefulPartitionedCall2F
!dense_421/StatefulPartitionedCall!dense_421/StatefulPartitionedCall2F
!dense_422/StatefulPartitionedCall!dense_422/StatefulPartitionedCall2J
#dropout_140/StatefulPartitionedCall#dropout_140/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_420_input
??
?	
J__inference_sequential_140_layer_call_and_return_conditional_losses_967481

inputsC
)conv2d_420_conv2d_readvariableop_resource: 8
*conv2d_420_biasadd_readvariableop_resource: C
)conv2d_421_conv2d_readvariableop_resource: @8
*conv2d_421_biasadd_readvariableop_resource:@D
)conv2d_422_conv2d_readvariableop_resource:@?9
*conv2d_422_biasadd_readvariableop_resource:	?;
(dense_420_matmul_readvariableop_resource:	?@7
)dense_420_biasadd_readvariableop_resource:@:
(dense_421_matmul_readvariableop_resource:@7
)dense_421_biasadd_readvariableop_resource::
(dense_422_matmul_readvariableop_resource:7
)dense_422_biasadd_readvariableop_resource:
identity??!conv2d_420/BiasAdd/ReadVariableOp? conv2d_420/Conv2D/ReadVariableOp?!conv2d_421/BiasAdd/ReadVariableOp? conv2d_421/Conv2D/ReadVariableOp?!conv2d_422/BiasAdd/ReadVariableOp? conv2d_422/Conv2D/ReadVariableOp? dense_420/BiasAdd/ReadVariableOp?dense_420/MatMul/ReadVariableOp? dense_421/BiasAdd/ReadVariableOp?dense_421/MatMul/ReadVariableOp? dense_422/BiasAdd/ReadVariableOp?dense_422/MatMul/ReadVariableOp?
 conv2d_420/Conv2D/ReadVariableOpReadVariableOp)conv2d_420_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_420/Conv2DConv2Dinputs(conv2d_420/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
?
!conv2d_420/BiasAdd/ReadVariableOpReadVariableOp*conv2d_420_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_420/BiasAddBiasAddconv2d_420/Conv2D:output:0)conv2d_420/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] n
conv2d_420/ReluReluconv2d_420/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] ?
max_pooling2d_420/MaxPoolMaxPoolconv2d_420/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
?
 conv2d_421/Conv2D/ReadVariableOpReadVariableOp)conv2d_421_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_421/Conv2DConv2D"max_pooling2d_420/MaxPool:output:0(conv2d_421/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
?
!conv2d_421/BiasAdd/ReadVariableOpReadVariableOp*conv2d_421_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_421/BiasAddBiasAddconv2d_421/Conv2D:output:0)conv2d_421/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@n
conv2d_421/ReluReluconv2d_421/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_421/MaxPoolMaxPoolconv2d_421/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
?
 conv2d_422/Conv2D/ReadVariableOpReadVariableOp)conv2d_422_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_422/Conv2DConv2D"max_pooling2d_421/MaxPool:output:0(conv2d_422/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
?
!conv2d_422/BiasAdd/ReadVariableOpReadVariableOp*conv2d_422_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_422/BiasAddBiasAddconv2d_422/Conv2D:output:0)conv2d_422/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????o
conv2d_422/ReluReluconv2d_422/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
max_pooling2d_422/MaxPoolMaxPoolconv2d_422/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
b
flatten_140/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_140/ReshapeReshape"max_pooling2d_422/MaxPool:output:0flatten_140/Const:output:0*
T0*(
_output_shapes
:???????????
dense_420/MatMul/ReadVariableOpReadVariableOp(dense_420_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_420/MatMulMatMulflatten_140/Reshape:output:0'dense_420/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
 dense_420/BiasAdd/ReadVariableOpReadVariableOp)dense_420_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_420/BiasAddBiasAdddense_420/MatMul:product:0(dense_420/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@d
dense_420/TanhTanhdense_420/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@f
dropout_140/IdentityIdentitydense_420/Tanh:y:0*
T0*'
_output_shapes
:?????????@?
dense_421/MatMul/ReadVariableOpReadVariableOp(dense_421_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_421/MatMulMatMuldropout_140/Identity:output:0'dense_421/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_421/BiasAdd/ReadVariableOpReadVariableOp)dense_421_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_421/BiasAddBiasAdddense_421/MatMul:product:0(dense_421/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_421/TanhTanhdense_421/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_422/MatMul/ReadVariableOpReadVariableOp(dense_422_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_422/MatMulMatMuldense_421/Tanh:y:0'dense_422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_422/BiasAdd/ReadVariableOpReadVariableOp)dense_422_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_422/BiasAddBiasAdddense_422/MatMul:product:0(dense_422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
dense_422/SigmoidSigmoiddense_422/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
IdentityIdentitydense_422/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_420/BiasAdd/ReadVariableOp!^conv2d_420/Conv2D/ReadVariableOp"^conv2d_421/BiasAdd/ReadVariableOp!^conv2d_421/Conv2D/ReadVariableOp"^conv2d_422/BiasAdd/ReadVariableOp!^conv2d_422/Conv2D/ReadVariableOp!^dense_420/BiasAdd/ReadVariableOp ^dense_420/MatMul/ReadVariableOp!^dense_421/BiasAdd/ReadVariableOp ^dense_421/MatMul/ReadVariableOp!^dense_422/BiasAdd/ReadVariableOp ^dense_422/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_420/BiasAdd/ReadVariableOp!conv2d_420/BiasAdd/ReadVariableOp2D
 conv2d_420/Conv2D/ReadVariableOp conv2d_420/Conv2D/ReadVariableOp2F
!conv2d_421/BiasAdd/ReadVariableOp!conv2d_421/BiasAdd/ReadVariableOp2D
 conv2d_421/Conv2D/ReadVariableOp conv2d_421/Conv2D/ReadVariableOp2F
!conv2d_422/BiasAdd/ReadVariableOp!conv2d_422/BiasAdd/ReadVariableOp2D
 conv2d_422/Conv2D/ReadVariableOp conv2d_422/Conv2D/ReadVariableOp2D
 dense_420/BiasAdd/ReadVariableOp dense_420/BiasAdd/ReadVariableOp2B
dense_420/MatMul/ReadVariableOpdense_420/MatMul/ReadVariableOp2D
 dense_421/BiasAdd/ReadVariableOp dense_421/BiasAdd/ReadVariableOp2B
dense_421/MatMul/ReadVariableOpdense_421/MatMul/ReadVariableOp2D
 dense_422/BiasAdd/ReadVariableOp dense_422/BiasAdd/ReadVariableOp2B
dense_422/MatMul/ReadVariableOpdense_422/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
F__inference_conv2d_421_layer_call_and_return_conditional_losses_967600

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
E__inference_dense_422_layer_call_and_return_conditional_losses_967758

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
conv2d_420_inputC
"serving_default_conv2d_420_input:0???????????=
	dense_4220
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
+:) 2conv2d_420/kernel
: 2conv2d_420/bias
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
+:) @2conv2d_421/kernel
:@2conv2d_421/bias
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
,:*@?2conv2d_422/kernel
:?2conv2d_422/bias
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
#:!	?@2dense_420/kernel
:@2dense_420/bias
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
": @2dense_421/kernel
:2dense_421/bias
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
": 2dense_422/kernel
:2dense_422/bias
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
/__inference_sequential_140_layer_call_fn_967032
/__inference_sequential_140_layer_call_fn_967400
/__inference_sequential_140_layer_call_fn_967429
/__inference_sequential_140_layer_call_fn_967262?
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
J__inference_sequential_140_layer_call_and_return_conditional_losses_967481
J__inference_sequential_140_layer_call_and_return_conditional_losses_967540
J__inference_sequential_140_layer_call_and_return_conditional_losses_967301
J__inference_sequential_140_layer_call_and_return_conditional_losses_967340?
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
!__inference__wrapped_model_966826conv2d_420_input"?
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
+__inference_conv2d_420_layer_call_fn_967549?
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
F__inference_conv2d_420_layer_call_and_return_conditional_losses_967560?
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
2__inference_max_pooling2d_420_layer_call_fn_967565
2__inference_max_pooling2d_420_layer_call_fn_967570?
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
M__inference_max_pooling2d_420_layer_call_and_return_conditional_losses_967575
M__inference_max_pooling2d_420_layer_call_and_return_conditional_losses_967580?
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
+__inference_conv2d_421_layer_call_fn_967589?
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
F__inference_conv2d_421_layer_call_and_return_conditional_losses_967600?
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
2__inference_max_pooling2d_421_layer_call_fn_967605
2__inference_max_pooling2d_421_layer_call_fn_967610?
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
M__inference_max_pooling2d_421_layer_call_and_return_conditional_losses_967615
M__inference_max_pooling2d_421_layer_call_and_return_conditional_losses_967620?
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
+__inference_conv2d_422_layer_call_fn_967629?
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
F__inference_conv2d_422_layer_call_and_return_conditional_losses_967640?
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
2__inference_max_pooling2d_422_layer_call_fn_967645
2__inference_max_pooling2d_422_layer_call_fn_967650?
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
M__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_967655
M__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_967660?
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
,__inference_flatten_140_layer_call_fn_967665?
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
G__inference_flatten_140_layer_call_and_return_conditional_losses_967671?
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
*__inference_dense_420_layer_call_fn_967680?
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
E__inference_dense_420_layer_call_and_return_conditional_losses_967691?
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
,__inference_dropout_140_layer_call_fn_967696
,__inference_dropout_140_layer_call_fn_967701?
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
G__inference_dropout_140_layer_call_and_return_conditional_losses_967706
G__inference_dropout_140_layer_call_and_return_conditional_losses_967718?
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
*__inference_dense_421_layer_call_fn_967727?
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
E__inference_dense_421_layer_call_and_return_conditional_losses_967738?
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
*__inference_dense_422_layer_call_fn_967747?
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
E__inference_dense_422_layer_call_and_return_conditional_losses_967758?
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
$__inference_signature_wrapper_967371conv2d_420_input"?
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
!__inference__wrapped_model_966826? +,<=HIOPC?@
9?6
4?1
conv2d_420_input???????????
? "5?2
0
	dense_422#? 
	dense_422??????????
F__inference_conv2d_420_layer_call_and_return_conditional_losses_967560n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????Z] 
? ?
+__inference_conv2d_420_layer_call_fn_967549a9?6
/?,
*?'
inputs???????????
? " ??????????Z] ?
F__inference_conv2d_421_layer_call_and_return_conditional_losses_967600l 7?4
-?*
(?%
inputs?????????-. 
? "-?*
#? 
0?????????@
? ?
+__inference_conv2d_421_layer_call_fn_967589_ 7?4
-?*
(?%
inputs?????????-. 
? " ??????????@?
F__inference_conv2d_422_layer_call_and_return_conditional_losses_967640m+,7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
+__inference_conv2d_422_layer_call_fn_967629`+,7?4
-?*
(?%
inputs?????????@
? "!????????????
E__inference_dense_420_layer_call_and_return_conditional_losses_967691]<=0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? ~
*__inference_dense_420_layer_call_fn_967680P<=0?-
&?#
!?
inputs??????????
? "??????????@?
E__inference_dense_421_layer_call_and_return_conditional_losses_967738\HI/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? }
*__inference_dense_421_layer_call_fn_967727OHI/?,
%?"
 ?
inputs?????????@
? "???????????
E__inference_dense_422_layer_call_and_return_conditional_losses_967758\OP/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? }
*__inference_dense_422_layer_call_fn_967747OOP/?,
%?"
 ?
inputs?????????
? "???????????
G__inference_dropout_140_layer_call_and_return_conditional_losses_967706\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
G__inference_dropout_140_layer_call_and_return_conditional_losses_967718\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? 
,__inference_dropout_140_layer_call_fn_967696O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@
,__inference_dropout_140_layer_call_fn_967701O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
G__inference_flatten_140_layer_call_and_return_conditional_losses_967671b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????
? ?
,__inference_flatten_140_layer_call_fn_967665U8?5
.?+
)?&
inputs??????????
? "????????????
M__inference_max_pooling2d_420_layer_call_and_return_conditional_losses_967575?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_420_layer_call_and_return_conditional_losses_967580h7?4
-?*
(?%
inputs?????????Z] 
? "-?*
#? 
0?????????-. 
? ?
2__inference_max_pooling2d_420_layer_call_fn_967565?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_420_layer_call_fn_967570[7?4
-?*
(?%
inputs?????????Z] 
? " ??????????-. ?
M__inference_max_pooling2d_421_layer_call_and_return_conditional_losses_967615?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_421_layer_call_and_return_conditional_losses_967620h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
2__inference_max_pooling2d_421_layer_call_fn_967605?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_421_layer_call_fn_967610[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
M__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_967655?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
M__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_967660j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
2__inference_max_pooling2d_422_layer_call_fn_967645?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
2__inference_max_pooling2d_422_layer_call_fn_967650]8?5
.?+
)?&
inputs??????????
? "!????????????
J__inference_sequential_140_layer_call_and_return_conditional_losses_967301? +,<=HIOPK?H
A?>
4?1
conv2d_420_input???????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_140_layer_call_and_return_conditional_losses_967340? +,<=HIOPK?H
A?>
4?1
conv2d_420_input???????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_140_layer_call_and_return_conditional_losses_967481x +,<=HIOPA?>
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
J__inference_sequential_140_layer_call_and_return_conditional_losses_967540x +,<=HIOPA?>
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
/__inference_sequential_140_layer_call_fn_967032u +,<=HIOPK?H
A?>
4?1
conv2d_420_input???????????
p 

 
? "???????????
/__inference_sequential_140_layer_call_fn_967262u +,<=HIOPK?H
A?>
4?1
conv2d_420_input???????????
p

 
? "???????????
/__inference_sequential_140_layer_call_fn_967400k +,<=HIOPA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
/__inference_sequential_140_layer_call_fn_967429k +,<=HIOPA?>
7?4
*?'
inputs???????????
p

 
? "???????????
$__inference_signature_wrapper_967371? +,<=HIOPW?T
? 
M?J
H
conv2d_420_input4?1
conv2d_420_input???????????"5?2
0
	dense_422#? 
	dense_422?????????