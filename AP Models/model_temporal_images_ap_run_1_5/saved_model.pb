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
 ?"serve*2.6.02v2.6.0-0-g919f693420e8ھ

?
conv2d_879/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_879/kernel

%conv2d_879/kernel/Read/ReadVariableOpReadVariableOpconv2d_879/kernel*&
_output_shapes
: *
dtype0
v
conv2d_879/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_879/bias
o
#conv2d_879/bias/Read/ReadVariableOpReadVariableOpconv2d_879/bias*
_output_shapes
: *
dtype0
?
conv2d_880/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_880/kernel

%conv2d_880/kernel/Read/ReadVariableOpReadVariableOpconv2d_880/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_880/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_880/bias
o
#conv2d_880/bias/Read/ReadVariableOpReadVariableOpconv2d_880/bias*
_output_shapes
:@*
dtype0
?
conv2d_881/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*"
shared_nameconv2d_881/kernel
?
%conv2d_881/kernel/Read/ReadVariableOpReadVariableOpconv2d_881/kernel*'
_output_shapes
:@?*
dtype0
w
conv2d_881/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_881/bias
p
#conv2d_881/bias/Read/ReadVariableOpReadVariableOpconv2d_881/bias*
_output_shapes	
:?*
dtype0
}
dense_879/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*!
shared_namedense_879/kernel
v
$dense_879/kernel/Read/ReadVariableOpReadVariableOpdense_879/kernel*
_output_shapes
:	?@*
dtype0
t
dense_879/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_879/bias
m
"dense_879/bias/Read/ReadVariableOpReadVariableOpdense_879/bias*
_output_shapes
:@*
dtype0
|
dense_880/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_880/kernel
u
$dense_880/kernel/Read/ReadVariableOpReadVariableOpdense_880/kernel*
_output_shapes

:@*
dtype0
t
dense_880/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_880/bias
m
"dense_880/bias/Read/ReadVariableOpReadVariableOpdense_880/bias*
_output_shapes
:*
dtype0
|
dense_881/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_881/kernel
u
$dense_881/kernel/Read/ReadVariableOpReadVariableOpdense_881/kernel*
_output_shapes

:*
dtype0
t
dense_881/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_881/bias
m
"dense_881/bias/Read/ReadVariableOpReadVariableOpdense_881/bias*
_output_shapes
:*
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
Adam/conv2d_879/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_879/kernel/m
?
,Adam/conv2d_879/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_879/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_879/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_879/bias/m
}
*Adam/conv2d_879/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_879/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_880/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_880/kernel/m
?
,Adam/conv2d_880/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_880/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_880/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_880/bias/m
}
*Adam/conv2d_880/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_880/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_881/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*)
shared_nameAdam/conv2d_881/kernel/m
?
,Adam/conv2d_881/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_881/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_881/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/conv2d_881/bias/m
~
*Adam/conv2d_881/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_881/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_879/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*(
shared_nameAdam/dense_879/kernel/m
?
+Adam/dense_879/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_879/kernel/m*
_output_shapes
:	?@*
dtype0
?
Adam/dense_879/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_879/bias/m
{
)Adam/dense_879/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_879/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_880/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/dense_880/kernel/m
?
+Adam/dense_880/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_880/kernel/m*
_output_shapes

:@*
dtype0
?
Adam/dense_880/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_880/bias/m
{
)Adam/dense_880/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_880/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_881/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_881/kernel/m
?
+Adam/dense_881/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_881/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_881/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_881/bias/m
{
)Adam/dense_881/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_881/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_879/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_879/kernel/v
?
,Adam/conv2d_879/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_879/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_879/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_879/bias/v
}
*Adam/conv2d_879/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_879/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_880/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_880/kernel/v
?
,Adam/conv2d_880/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_880/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_880/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_880/bias/v
}
*Adam/conv2d_880/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_880/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_881/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*)
shared_nameAdam/conv2d_881/kernel/v
?
,Adam/conv2d_881/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_881/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_881/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/conv2d_881/bias/v
~
*Adam/conv2d_881/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_881/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_879/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*(
shared_nameAdam/dense_879/kernel/v
?
+Adam/dense_879/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_879/kernel/v*
_output_shapes
:	?@*
dtype0
?
Adam/dense_879/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_879/bias/v
{
)Adam/dense_879/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_879/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_880/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/dense_880/kernel/v
?
+Adam/dense_880/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_880/kernel/v*
_output_shapes

:@*
dtype0
?
Adam/dense_880/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_880/bias/v
{
)Adam/dense_880/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_880/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_881/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_881/kernel/v
?
+Adam/dense_881/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_881/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_881/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_881/bias/v
{
)Adam/dense_881/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_881/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?L
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?K
value?KB?K B?K
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
regularization_losses
trainable_variables
	variables
	keras_api

signatures
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
 	variables
!	keras_api
R
"regularization_losses
#trainable_variables
$	variables
%	keras_api
h

&kernel
'bias
(regularization_losses
)trainable_variables
*	variables
+	keras_api
R
,regularization_losses
-trainable_variables
.	variables
/	keras_api
R
0regularization_losses
1trainable_variables
2	variables
3	keras_api
h

4kernel
5bias
6regularization_losses
7trainable_variables
8	variables
9	keras_api
R
:regularization_losses
;trainable_variables
<	variables
=	keras_api
h

>kernel
?bias
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
h

Dkernel
Ebias
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
?
Jiter

Kbeta_1

Lbeta_2
	Mdecay
Nlearning_ratem?m?m?m?&m?'m?4m?5m?>m??m?Dm?Em?v?v?v?v?&v?'v?4v?5v?>v??v?Dv?Ev?
 
V
0
1
2
3
&4
'5
46
57
>8
?9
D10
E11
V
0
1
2
3
&4
'5
46
57
>8
?9
D10
E11
?
regularization_losses
Olayer_metrics
Player_regularization_losses
trainable_variables

Qlayers
Rmetrics
Snon_trainable_variables
	variables
 
][
VARIABLE_VALUEconv2d_879/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_879/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses
Tlayer_metrics
Ulayer_regularization_losses
trainable_variables

Vlayers
Wmetrics
Xnon_trainable_variables
	variables
 
 
 
?
regularization_losses
Ylayer_metrics
Zlayer_regularization_losses
trainable_variables

[layers
\metrics
]non_trainable_variables
	variables
][
VARIABLE_VALUEconv2d_880/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_880/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses
^layer_metrics
_layer_regularization_losses
trainable_variables

`layers
ametrics
bnon_trainable_variables
 	variables
 
 
 
?
"regularization_losses
clayer_metrics
dlayer_regularization_losses
#trainable_variables

elayers
fmetrics
gnon_trainable_variables
$	variables
][
VARIABLE_VALUEconv2d_881/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_881/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

&0
'1

&0
'1
?
(regularization_losses
hlayer_metrics
ilayer_regularization_losses
)trainable_variables

jlayers
kmetrics
lnon_trainable_variables
*	variables
 
 
 
?
,regularization_losses
mlayer_metrics
nlayer_regularization_losses
-trainable_variables

olayers
pmetrics
qnon_trainable_variables
.	variables
 
 
 
?
0regularization_losses
rlayer_metrics
slayer_regularization_losses
1trainable_variables

tlayers
umetrics
vnon_trainable_variables
2	variables
\Z
VARIABLE_VALUEdense_879/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_879/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

40
51

40
51
?
6regularization_losses
wlayer_metrics
xlayer_regularization_losses
7trainable_variables

ylayers
zmetrics
{non_trainable_variables
8	variables
 
 
 
?
:regularization_losses
|layer_metrics
}layer_regularization_losses
;trainable_variables

~layers
metrics
?non_trainable_variables
<	variables
\Z
VARIABLE_VALUEdense_880/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_880/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

>0
?1

>0
?1
?
@regularization_losses
?layer_metrics
 ?layer_regularization_losses
Atrainable_variables
?layers
?metrics
?non_trainable_variables
B	variables
\Z
VARIABLE_VALUEdense_881/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_881/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

D0
E1

D0
E1
?
Fregularization_losses
?layer_metrics
 ?layer_regularization_losses
Gtrainable_variables
?layers
?metrics
?non_trainable_variables
H	variables
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
 
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
?~
VARIABLE_VALUEAdam/conv2d_879/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_879/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_880/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_880/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_881/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_881/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_879/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_879/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_880/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_880/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_881/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_881/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_879/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_879/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_880/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_880/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_881/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_881/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_879/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_879/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_880/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_880/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_881/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_881/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_conv2d_879_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_879_inputconv2d_879/kernelconv2d_879/biasconv2d_880/kernelconv2d_880/biasconv2d_881/kernelconv2d_881/biasdense_879/kerneldense_879/biasdense_880/kerneldense_880/biasdense_881/kerneldense_881/bias*
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
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_1943053
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_879/kernel/Read/ReadVariableOp#conv2d_879/bias/Read/ReadVariableOp%conv2d_880/kernel/Read/ReadVariableOp#conv2d_880/bias/Read/ReadVariableOp%conv2d_881/kernel/Read/ReadVariableOp#conv2d_881/bias/Read/ReadVariableOp$dense_879/kernel/Read/ReadVariableOp"dense_879/bias/Read/ReadVariableOp$dense_880/kernel/Read/ReadVariableOp"dense_880/bias/Read/ReadVariableOp$dense_881/kernel/Read/ReadVariableOp"dense_881/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv2d_879/kernel/m/Read/ReadVariableOp*Adam/conv2d_879/bias/m/Read/ReadVariableOp,Adam/conv2d_880/kernel/m/Read/ReadVariableOp*Adam/conv2d_880/bias/m/Read/ReadVariableOp,Adam/conv2d_881/kernel/m/Read/ReadVariableOp*Adam/conv2d_881/bias/m/Read/ReadVariableOp+Adam/dense_879/kernel/m/Read/ReadVariableOp)Adam/dense_879/bias/m/Read/ReadVariableOp+Adam/dense_880/kernel/m/Read/ReadVariableOp)Adam/dense_880/bias/m/Read/ReadVariableOp+Adam/dense_881/kernel/m/Read/ReadVariableOp)Adam/dense_881/bias/m/Read/ReadVariableOp,Adam/conv2d_879/kernel/v/Read/ReadVariableOp*Adam/conv2d_879/bias/v/Read/ReadVariableOp,Adam/conv2d_880/kernel/v/Read/ReadVariableOp*Adam/conv2d_880/bias/v/Read/ReadVariableOp,Adam/conv2d_881/kernel/v/Read/ReadVariableOp*Adam/conv2d_881/bias/v/Read/ReadVariableOp+Adam/dense_879/kernel/v/Read/ReadVariableOp)Adam/dense_879/bias/v/Read/ReadVariableOp+Adam/dense_880/kernel/v/Read/ReadVariableOp)Adam/dense_880/bias/v/Read/ReadVariableOp+Adam/dense_881/kernel/v/Read/ReadVariableOp)Adam/dense_881/bias/v/Read/ReadVariableOpConst*:
Tin3
12/	*
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
GPU 2J 8? *)
f$R"
 __inference__traced_save_1943598
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_879/kernelconv2d_879/biasconv2d_880/kernelconv2d_880/biasconv2d_881/kernelconv2d_881/biasdense_879/kerneldense_879/biasdense_880/kerneldense_880/biasdense_881/kerneldense_881/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_879/kernel/mAdam/conv2d_879/bias/mAdam/conv2d_880/kernel/mAdam/conv2d_880/bias/mAdam/conv2d_881/kernel/mAdam/conv2d_881/bias/mAdam/dense_879/kernel/mAdam/dense_879/bias/mAdam/dense_880/kernel/mAdam/dense_880/bias/mAdam/dense_881/kernel/mAdam/dense_881/bias/mAdam/conv2d_879/kernel/vAdam/conv2d_879/bias/vAdam/conv2d_880/kernel/vAdam/conv2d_880/bias/vAdam/conv2d_881/kernel/vAdam/conv2d_881/bias/vAdam/dense_879/kernel/vAdam/dense_879/bias/vAdam/dense_880/kernel/vAdam/dense_880/bias/vAdam/dense_881/kernel/vAdam/dense_881/bias/v*9
Tin2
02.*
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
GPU 2J 8? *,
f'R%
#__inference__traced_restore_1943743??
?
?
0__inference_sequential_293_layer_call_fn_1942938
conv2d_879_input!
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
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_879_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_293_layer_call_and_return_conditional_losses_19428822
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_879_input
?
f
H__inference_dropout_293_layer_call_and_return_conditional_losses_1942644

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
j
N__inference_max_pooling2d_881_layer_call_and_return_conditional_losses_1942525

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
j
N__inference_max_pooling2d_879_layer_call_and_return_conditional_losses_1943252

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????-. 2

Identity"
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
G__inference_conv2d_881_layer_call_and_return_conditional_losses_1943313

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
j
N__inference_max_pooling2d_881_layer_call_and_return_conditional_losses_1943327

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
?
G__inference_conv2d_880_layer_call_and_return_conditional_losses_1943273

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
I
-__inference_flatten_293_layer_call_fn_1943353

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
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_flatten_293_layer_call_and_return_conditional_losses_19426202
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
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
0__inference_sequential_293_layer_call_fn_1942708
conv2d_879_input!
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
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_879_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_293_layer_call_and_return_conditional_losses_19426812
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_879_input
?
?
G__inference_conv2d_881_layer_call_and_return_conditional_losses_1942602

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
?5
?
K__inference_sequential_293_layer_call_and_return_conditional_losses_1942882

inputs,
conv2d_879_1942846:  
conv2d_879_1942848: ,
conv2d_880_1942852: @ 
conv2d_880_1942854:@-
conv2d_881_1942858:@?!
conv2d_881_1942860:	?$
dense_879_1942865:	?@
dense_879_1942867:@#
dense_880_1942871:@
dense_880_1942873:#
dense_881_1942876:
dense_881_1942878:
identity??"conv2d_879/StatefulPartitionedCall?"conv2d_880/StatefulPartitionedCall?"conv2d_881/StatefulPartitionedCall?!dense_879/StatefulPartitionedCall?!dense_880/StatefulPartitionedCall?!dense_881/StatefulPartitionedCall?#dropout_293/StatefulPartitionedCall?
"conv2d_879/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_879_1942846conv2d_879_1942848*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Z] *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_879_layer_call_and_return_conditional_losses_19425562$
"conv2d_879/StatefulPartitionedCall?
!max_pooling2d_879/PartitionedCallPartitionedCall+conv2d_879/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-. * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_879_layer_call_and_return_conditional_losses_19425662#
!max_pooling2d_879/PartitionedCall?
"conv2d_880/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_879/PartitionedCall:output:0conv2d_880_1942852conv2d_880_1942854*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_880_layer_call_and_return_conditional_losses_19425792$
"conv2d_880/StatefulPartitionedCall?
!max_pooling2d_880/PartitionedCallPartitionedCall+conv2d_880/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_880_layer_call_and_return_conditional_losses_19425892#
!max_pooling2d_880/PartitionedCall?
"conv2d_881/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_880/PartitionedCall:output:0conv2d_881_1942858conv2d_881_1942860*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_881_layer_call_and_return_conditional_losses_19426022$
"conv2d_881/StatefulPartitionedCall?
!max_pooling2d_881/PartitionedCallPartitionedCall+conv2d_881/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_881_layer_call_and_return_conditional_losses_19426122#
!max_pooling2d_881/PartitionedCall?
flatten_293/PartitionedCallPartitionedCall*max_pooling2d_881/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_flatten_293_layer_call_and_return_conditional_losses_19426202
flatten_293/PartitionedCall?
!dense_879/StatefulPartitionedCallStatefulPartitionedCall$flatten_293/PartitionedCall:output:0dense_879_1942865dense_879_1942867*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_879_layer_call_and_return_conditional_losses_19426332#
!dense_879/StatefulPartitionedCall?
#dropout_293/StatefulPartitionedCallStatefulPartitionedCall*dense_879/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_293_layer_call_and_return_conditional_losses_19427482%
#dropout_293/StatefulPartitionedCall?
!dense_880/StatefulPartitionedCallStatefulPartitionedCall,dropout_293/StatefulPartitionedCall:output:0dense_880_1942871dense_880_1942873*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_880_layer_call_and_return_conditional_losses_19426572#
!dense_880/StatefulPartitionedCall?
!dense_881/StatefulPartitionedCallStatefulPartitionedCall*dense_880/StatefulPartitionedCall:output:0dense_881_1942876dense_881_1942878*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_881_layer_call_and_return_conditional_losses_19426742#
!dense_881/StatefulPartitionedCall?
IdentityIdentity*dense_881/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_879/StatefulPartitionedCall#^conv2d_880/StatefulPartitionedCall#^conv2d_881/StatefulPartitionedCall"^dense_879/StatefulPartitionedCall"^dense_880/StatefulPartitionedCall"^dense_881/StatefulPartitionedCall$^dropout_293/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_879/StatefulPartitionedCall"conv2d_879/StatefulPartitionedCall2H
"conv2d_880/StatefulPartitionedCall"conv2d_880/StatefulPartitionedCall2H
"conv2d_881/StatefulPartitionedCall"conv2d_881/StatefulPartitionedCall2F
!dense_879/StatefulPartitionedCall!dense_879/StatefulPartitionedCall2F
!dense_880/StatefulPartitionedCall!dense_880/StatefulPartitionedCall2F
!dense_881/StatefulPartitionedCall!dense_881/StatefulPartitionedCall2J
#dropout_293/StatefulPartitionedCall#dropout_293/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
O
3__inference_max_pooling2d_879_layer_call_fn_1943257

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
GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_879_layer_call_and_return_conditional_losses_19424812
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
?
j
N__inference_max_pooling2d_880_layer_call_and_return_conditional_losses_1942503

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
j
N__inference_max_pooling2d_880_layer_call_and_return_conditional_losses_1943287

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
F__inference_dense_880_layer_call_and_return_conditional_losses_1942657

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
O
3__inference_max_pooling2d_880_layer_call_fn_1943302

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
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_880_layer_call_and_return_conditional_losses_19425892
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_1943743
file_prefix<
"assignvariableop_conv2d_879_kernel: 0
"assignvariableop_1_conv2d_879_bias: >
$assignvariableop_2_conv2d_880_kernel: @0
"assignvariableop_3_conv2d_880_bias:@?
$assignvariableop_4_conv2d_881_kernel:@?1
"assignvariableop_5_conv2d_881_bias:	?6
#assignvariableop_6_dense_879_kernel:	?@/
!assignvariableop_7_dense_879_bias:@5
#assignvariableop_8_dense_880_kernel:@/
!assignvariableop_9_dense_880_bias:6
$assignvariableop_10_dense_881_kernel:0
"assignvariableop_11_dense_881_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: F
,assignvariableop_21_adam_conv2d_879_kernel_m: 8
*assignvariableop_22_adam_conv2d_879_bias_m: F
,assignvariableop_23_adam_conv2d_880_kernel_m: @8
*assignvariableop_24_adam_conv2d_880_bias_m:@G
,assignvariableop_25_adam_conv2d_881_kernel_m:@?9
*assignvariableop_26_adam_conv2d_881_bias_m:	?>
+assignvariableop_27_adam_dense_879_kernel_m:	?@7
)assignvariableop_28_adam_dense_879_bias_m:@=
+assignvariableop_29_adam_dense_880_kernel_m:@7
)assignvariableop_30_adam_dense_880_bias_m:=
+assignvariableop_31_adam_dense_881_kernel_m:7
)assignvariableop_32_adam_dense_881_bias_m:F
,assignvariableop_33_adam_conv2d_879_kernel_v: 8
*assignvariableop_34_adam_conv2d_879_bias_v: F
,assignvariableop_35_adam_conv2d_880_kernel_v: @8
*assignvariableop_36_adam_conv2d_880_bias_v:@G
,assignvariableop_37_adam_conv2d_881_kernel_v:@?9
*assignvariableop_38_adam_conv2d_881_bias_v:	?>
+assignvariableop_39_adam_dense_879_kernel_v:	?@7
)assignvariableop_40_adam_dense_879_bias_v:@=
+assignvariableop_41_adam_dense_880_kernel_v:@7
)assignvariableop_42_adam_dense_880_bias_v:=
+assignvariableop_43_adam_dense_881_kernel_v:7
)assignvariableop_44_adam_dense_881_bias_v:
identity_46??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*?
value?B?.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_879_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_879_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_880_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_880_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_881_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_881_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_879_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_879_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_880_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_880_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_881_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_881_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_conv2d_879_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_879_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_conv2d_880_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_conv2d_880_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_conv2d_881_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_conv2d_881_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_dense_879_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_879_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_880_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_880_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_dense_881_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_881_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adam_conv2d_879_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_879_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp,assignvariableop_35_adam_conv2d_880_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_conv2d_880_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp,assignvariableop_37_adam_conv2d_881_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_conv2d_881_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_dense_879_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_dense_879_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_dense_880_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_dense_880_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_dense_881_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_dense_881_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_449
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_45f
Identity_46IdentityIdentity_45:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_46?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_46Identity_46:output:0*o
_input_shapes^
\: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442(
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
G__inference_conv2d_879_layer_call_and_return_conditional_losses_1942556

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????Z] 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
?3
?
K__inference_sequential_293_layer_call_and_return_conditional_losses_1942681

inputs,
conv2d_879_1942557:  
conv2d_879_1942559: ,
conv2d_880_1942580: @ 
conv2d_880_1942582:@-
conv2d_881_1942603:@?!
conv2d_881_1942605:	?$
dense_879_1942634:	?@
dense_879_1942636:@#
dense_880_1942658:@
dense_880_1942660:#
dense_881_1942675:
dense_881_1942677:
identity??"conv2d_879/StatefulPartitionedCall?"conv2d_880/StatefulPartitionedCall?"conv2d_881/StatefulPartitionedCall?!dense_879/StatefulPartitionedCall?!dense_880/StatefulPartitionedCall?!dense_881/StatefulPartitionedCall?
"conv2d_879/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_879_1942557conv2d_879_1942559*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Z] *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_879_layer_call_and_return_conditional_losses_19425562$
"conv2d_879/StatefulPartitionedCall?
!max_pooling2d_879/PartitionedCallPartitionedCall+conv2d_879/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-. * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_879_layer_call_and_return_conditional_losses_19425662#
!max_pooling2d_879/PartitionedCall?
"conv2d_880/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_879/PartitionedCall:output:0conv2d_880_1942580conv2d_880_1942582*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_880_layer_call_and_return_conditional_losses_19425792$
"conv2d_880/StatefulPartitionedCall?
!max_pooling2d_880/PartitionedCallPartitionedCall+conv2d_880/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_880_layer_call_and_return_conditional_losses_19425892#
!max_pooling2d_880/PartitionedCall?
"conv2d_881/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_880/PartitionedCall:output:0conv2d_881_1942603conv2d_881_1942605*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_881_layer_call_and_return_conditional_losses_19426022$
"conv2d_881/StatefulPartitionedCall?
!max_pooling2d_881/PartitionedCallPartitionedCall+conv2d_881/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_881_layer_call_and_return_conditional_losses_19426122#
!max_pooling2d_881/PartitionedCall?
flatten_293/PartitionedCallPartitionedCall*max_pooling2d_881/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_flatten_293_layer_call_and_return_conditional_losses_19426202
flatten_293/PartitionedCall?
!dense_879/StatefulPartitionedCallStatefulPartitionedCall$flatten_293/PartitionedCall:output:0dense_879_1942634dense_879_1942636*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_879_layer_call_and_return_conditional_losses_19426332#
!dense_879/StatefulPartitionedCall?
dropout_293/PartitionedCallPartitionedCall*dense_879/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_293_layer_call_and_return_conditional_losses_19426442
dropout_293/PartitionedCall?
!dense_880/StatefulPartitionedCallStatefulPartitionedCall$dropout_293/PartitionedCall:output:0dense_880_1942658dense_880_1942660*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_880_layer_call_and_return_conditional_losses_19426572#
!dense_880/StatefulPartitionedCall?
!dense_881/StatefulPartitionedCallStatefulPartitionedCall*dense_880/StatefulPartitionedCall:output:0dense_881_1942675dense_881_1942677*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_881_layer_call_and_return_conditional_losses_19426742#
!dense_881/StatefulPartitionedCall?
IdentityIdentity*dense_881/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_879/StatefulPartitionedCall#^conv2d_880/StatefulPartitionedCall#^conv2d_881/StatefulPartitionedCall"^dense_879/StatefulPartitionedCall"^dense_880/StatefulPartitionedCall"^dense_881/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_879/StatefulPartitionedCall"conv2d_879/StatefulPartitionedCall2H
"conv2d_880/StatefulPartitionedCall"conv2d_880/StatefulPartitionedCall2H
"conv2d_881/StatefulPartitionedCall"conv2d_881/StatefulPartitionedCall2F
!dense_879/StatefulPartitionedCall!dense_879/StatefulPartitionedCall2F
!dense_880/StatefulPartitionedCall!dense_880/StatefulPartitionedCall2F
!dense_881/StatefulPartitionedCall!dense_881/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
g
H__inference_dropout_293_layer_call_and_return_conditional_losses_1942748

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
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
F__inference_dense_881_layer_call_and_return_conditional_losses_1942674

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
?
%__inference_signature_wrapper_1943053
conv2d_879_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_879_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_19424722
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_879_input
?
?
,__inference_conv2d_879_layer_call_fn_1943242

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
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_879_layer_call_and_return_conditional_losses_19425562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????Z] 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
?
G__inference_conv2d_879_layer_call_and_return_conditional_losses_1943233

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????Z] 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
d
H__inference_flatten_293_layer_call_and_return_conditional_losses_1942620

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
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
F__inference_dense_880_layer_call_and_return_conditional_losses_1943411

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
-__inference_dropout_293_layer_call_fn_1943395

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
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_293_layer_call_and_return_conditional_losses_19426442
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@2

Identity"
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
F__inference_dense_881_layer_call_and_return_conditional_losses_1943431

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
O
3__inference_max_pooling2d_879_layer_call_fn_1943262

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
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_879_layer_call_and_return_conditional_losses_19425662
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????-. 2

Identity"
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
N__inference_max_pooling2d_879_layer_call_and_return_conditional_losses_1942481

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
,__inference_conv2d_881_layer_call_fn_1943322

inputs"
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
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
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_881_layer_call_and_return_conditional_losses_19426022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
d
H__inference_flatten_293_layer_call_and_return_conditional_losses_1943348

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
-__inference_dropout_293_layer_call_fn_1943400

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
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_293_layer_call_and_return_conditional_losses_19427482
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
+__inference_dense_881_layer_call_fn_1943440

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
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_881_layer_call_and_return_conditional_losses_19426742
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
g
H__inference_dropout_293_layer_call_and_return_conditional_losses_1943390

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?5
?
K__inference_sequential_293_layer_call_and_return_conditional_losses_1943016
conv2d_879_input,
conv2d_879_1942980:  
conv2d_879_1942982: ,
conv2d_880_1942986: @ 
conv2d_880_1942988:@-
conv2d_881_1942992:@?!
conv2d_881_1942994:	?$
dense_879_1942999:	?@
dense_879_1943001:@#
dense_880_1943005:@
dense_880_1943007:#
dense_881_1943010:
dense_881_1943012:
identity??"conv2d_879/StatefulPartitionedCall?"conv2d_880/StatefulPartitionedCall?"conv2d_881/StatefulPartitionedCall?!dense_879/StatefulPartitionedCall?!dense_880/StatefulPartitionedCall?!dense_881/StatefulPartitionedCall?#dropout_293/StatefulPartitionedCall?
"conv2d_879/StatefulPartitionedCallStatefulPartitionedCallconv2d_879_inputconv2d_879_1942980conv2d_879_1942982*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Z] *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_879_layer_call_and_return_conditional_losses_19425562$
"conv2d_879/StatefulPartitionedCall?
!max_pooling2d_879/PartitionedCallPartitionedCall+conv2d_879/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-. * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_879_layer_call_and_return_conditional_losses_19425662#
!max_pooling2d_879/PartitionedCall?
"conv2d_880/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_879/PartitionedCall:output:0conv2d_880_1942986conv2d_880_1942988*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_880_layer_call_and_return_conditional_losses_19425792$
"conv2d_880/StatefulPartitionedCall?
!max_pooling2d_880/PartitionedCallPartitionedCall+conv2d_880/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_880_layer_call_and_return_conditional_losses_19425892#
!max_pooling2d_880/PartitionedCall?
"conv2d_881/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_880/PartitionedCall:output:0conv2d_881_1942992conv2d_881_1942994*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_881_layer_call_and_return_conditional_losses_19426022$
"conv2d_881/StatefulPartitionedCall?
!max_pooling2d_881/PartitionedCallPartitionedCall+conv2d_881/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_881_layer_call_and_return_conditional_losses_19426122#
!max_pooling2d_881/PartitionedCall?
flatten_293/PartitionedCallPartitionedCall*max_pooling2d_881/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_flatten_293_layer_call_and_return_conditional_losses_19426202
flatten_293/PartitionedCall?
!dense_879/StatefulPartitionedCallStatefulPartitionedCall$flatten_293/PartitionedCall:output:0dense_879_1942999dense_879_1943001*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_879_layer_call_and_return_conditional_losses_19426332#
!dense_879/StatefulPartitionedCall?
#dropout_293/StatefulPartitionedCallStatefulPartitionedCall*dense_879/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_293_layer_call_and_return_conditional_losses_19427482%
#dropout_293/StatefulPartitionedCall?
!dense_880/StatefulPartitionedCallStatefulPartitionedCall,dropout_293/StatefulPartitionedCall:output:0dense_880_1943005dense_880_1943007*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_880_layer_call_and_return_conditional_losses_19426572#
!dense_880/StatefulPartitionedCall?
!dense_881/StatefulPartitionedCallStatefulPartitionedCall*dense_880/StatefulPartitionedCall:output:0dense_881_1943010dense_881_1943012*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_881_layer_call_and_return_conditional_losses_19426742#
!dense_881/StatefulPartitionedCall?
IdentityIdentity*dense_881/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_879/StatefulPartitionedCall#^conv2d_880/StatefulPartitionedCall#^conv2d_881/StatefulPartitionedCall"^dense_879/StatefulPartitionedCall"^dense_880/StatefulPartitionedCall"^dense_881/StatefulPartitionedCall$^dropout_293/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_879/StatefulPartitionedCall"conv2d_879/StatefulPartitionedCall2H
"conv2d_880/StatefulPartitionedCall"conv2d_880/StatefulPartitionedCall2H
"conv2d_881/StatefulPartitionedCall"conv2d_881/StatefulPartitionedCall2F
!dense_879/StatefulPartitionedCall!dense_879/StatefulPartitionedCall2F
!dense_880/StatefulPartitionedCall!dense_880/StatefulPartitionedCall2F
!dense_881/StatefulPartitionedCall!dense_881/StatefulPartitionedCall2J
#dropout_293/StatefulPartitionedCall#dropout_293/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_879_input
?
j
N__inference_max_pooling2d_881_layer_call_and_return_conditional_losses_1943332

inputs
identity?
MaxPoolMaxPoolinputs*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
O
3__inference_max_pooling2d_881_layer_call_fn_1943337

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
GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_881_layer_call_and_return_conditional_losses_19425252
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
?
j
N__inference_max_pooling2d_880_layer_call_and_return_conditional_losses_1943292

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?3
?
K__inference_sequential_293_layer_call_and_return_conditional_losses_1942977
conv2d_879_input,
conv2d_879_1942941:  
conv2d_879_1942943: ,
conv2d_880_1942947: @ 
conv2d_880_1942949:@-
conv2d_881_1942953:@?!
conv2d_881_1942955:	?$
dense_879_1942960:	?@
dense_879_1942962:@#
dense_880_1942966:@
dense_880_1942968:#
dense_881_1942971:
dense_881_1942973:
identity??"conv2d_879/StatefulPartitionedCall?"conv2d_880/StatefulPartitionedCall?"conv2d_881/StatefulPartitionedCall?!dense_879/StatefulPartitionedCall?!dense_880/StatefulPartitionedCall?!dense_881/StatefulPartitionedCall?
"conv2d_879/StatefulPartitionedCallStatefulPartitionedCallconv2d_879_inputconv2d_879_1942941conv2d_879_1942943*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Z] *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_879_layer_call_and_return_conditional_losses_19425562$
"conv2d_879/StatefulPartitionedCall?
!max_pooling2d_879/PartitionedCallPartitionedCall+conv2d_879/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-. * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_879_layer_call_and_return_conditional_losses_19425662#
!max_pooling2d_879/PartitionedCall?
"conv2d_880/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_879/PartitionedCall:output:0conv2d_880_1942947conv2d_880_1942949*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_880_layer_call_and_return_conditional_losses_19425792$
"conv2d_880/StatefulPartitionedCall?
!max_pooling2d_880/PartitionedCallPartitionedCall+conv2d_880/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_880_layer_call_and_return_conditional_losses_19425892#
!max_pooling2d_880/PartitionedCall?
"conv2d_881/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_880/PartitionedCall:output:0conv2d_881_1942953conv2d_881_1942955*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_881_layer_call_and_return_conditional_losses_19426022$
"conv2d_881/StatefulPartitionedCall?
!max_pooling2d_881/PartitionedCallPartitionedCall+conv2d_881/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_881_layer_call_and_return_conditional_losses_19426122#
!max_pooling2d_881/PartitionedCall?
flatten_293/PartitionedCallPartitionedCall*max_pooling2d_881/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_flatten_293_layer_call_and_return_conditional_losses_19426202
flatten_293/PartitionedCall?
!dense_879/StatefulPartitionedCallStatefulPartitionedCall$flatten_293/PartitionedCall:output:0dense_879_1942960dense_879_1942962*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_879_layer_call_and_return_conditional_losses_19426332#
!dense_879/StatefulPartitionedCall?
dropout_293/PartitionedCallPartitionedCall*dense_879/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_293_layer_call_and_return_conditional_losses_19426442
dropout_293/PartitionedCall?
!dense_880/StatefulPartitionedCallStatefulPartitionedCall$dropout_293/PartitionedCall:output:0dense_880_1942966dense_880_1942968*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_880_layer_call_and_return_conditional_losses_19426572#
!dense_880/StatefulPartitionedCall?
!dense_881/StatefulPartitionedCallStatefulPartitionedCall*dense_880/StatefulPartitionedCall:output:0dense_881_1942971dense_881_1942973*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_881_layer_call_and_return_conditional_losses_19426742#
!dense_881/StatefulPartitionedCall?
IdentityIdentity*dense_881/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_879/StatefulPartitionedCall#^conv2d_880/StatefulPartitionedCall#^conv2d_881/StatefulPartitionedCall"^dense_879/StatefulPartitionedCall"^dense_880/StatefulPartitionedCall"^dense_881/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_879/StatefulPartitionedCall"conv2d_879/StatefulPartitionedCall2H
"conv2d_880/StatefulPartitionedCall"conv2d_880/StatefulPartitionedCall2H
"conv2d_881/StatefulPartitionedCall"conv2d_881/StatefulPartitionedCall2F
!dense_879/StatefulPartitionedCall!dense_879/StatefulPartitionedCall2F
!dense_880/StatefulPartitionedCall!dense_880/StatefulPartitionedCall2F
!dense_881/StatefulPartitionedCall!dense_881/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_879_input
?
?
0__inference_sequential_293_layer_call_fn_1943222

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
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_293_layer_call_and_return_conditional_losses_19428822
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
0__inference_sequential_293_layer_call_fn_1943193

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
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_293_layer_call_and_return_conditional_losses_19426812
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
?
G__inference_conv2d_880_layer_call_and_return_conditional_losses_1942579

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
H__inference_dropout_293_layer_call_and_return_conditional_losses_1943378

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

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
N__inference_max_pooling2d_880_layer_call_and_return_conditional_losses_1942589

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
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
+__inference_dense_880_layer_call_fn_1943420

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
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_880_layer_call_and_return_conditional_losses_19426572
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
O
3__inference_max_pooling2d_880_layer_call_fn_1943297

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
GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_880_layer_call_and_return_conditional_losses_19425032
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
?
j
N__inference_max_pooling2d_879_layer_call_and_return_conditional_losses_1943247

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
F__inference_dense_879_layer_call_and_return_conditional_losses_1942633

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
?^
?
 __inference__traced_save_1943598
file_prefix0
,savev2_conv2d_879_kernel_read_readvariableop.
*savev2_conv2d_879_bias_read_readvariableop0
,savev2_conv2d_880_kernel_read_readvariableop.
*savev2_conv2d_880_bias_read_readvariableop0
,savev2_conv2d_881_kernel_read_readvariableop.
*savev2_conv2d_881_bias_read_readvariableop/
+savev2_dense_879_kernel_read_readvariableop-
)savev2_dense_879_bias_read_readvariableop/
+savev2_dense_880_kernel_read_readvariableop-
)savev2_dense_880_bias_read_readvariableop/
+savev2_dense_881_kernel_read_readvariableop-
)savev2_dense_881_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv2d_879_kernel_m_read_readvariableop5
1savev2_adam_conv2d_879_bias_m_read_readvariableop7
3savev2_adam_conv2d_880_kernel_m_read_readvariableop5
1savev2_adam_conv2d_880_bias_m_read_readvariableop7
3savev2_adam_conv2d_881_kernel_m_read_readvariableop5
1savev2_adam_conv2d_881_bias_m_read_readvariableop6
2savev2_adam_dense_879_kernel_m_read_readvariableop4
0savev2_adam_dense_879_bias_m_read_readvariableop6
2savev2_adam_dense_880_kernel_m_read_readvariableop4
0savev2_adam_dense_880_bias_m_read_readvariableop6
2savev2_adam_dense_881_kernel_m_read_readvariableop4
0savev2_adam_dense_881_bias_m_read_readvariableop7
3savev2_adam_conv2d_879_kernel_v_read_readvariableop5
1savev2_adam_conv2d_879_bias_v_read_readvariableop7
3savev2_adam_conv2d_880_kernel_v_read_readvariableop5
1savev2_adam_conv2d_880_bias_v_read_readvariableop7
3savev2_adam_conv2d_881_kernel_v_read_readvariableop5
1savev2_adam_conv2d_881_bias_v_read_readvariableop6
2savev2_adam_dense_879_kernel_v_read_readvariableop4
0savev2_adam_dense_879_bias_v_read_readvariableop6
2savev2_adam_dense_880_kernel_v_read_readvariableop4
0savev2_adam_dense_880_bias_v_read_readvariableop6
2savev2_adam_dense_881_kernel_v_read_readvariableop4
0savev2_adam_dense_881_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*?
value?B?.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_879_kernel_read_readvariableop*savev2_conv2d_879_bias_read_readvariableop,savev2_conv2d_880_kernel_read_readvariableop*savev2_conv2d_880_bias_read_readvariableop,savev2_conv2d_881_kernel_read_readvariableop*savev2_conv2d_881_bias_read_readvariableop+savev2_dense_879_kernel_read_readvariableop)savev2_dense_879_bias_read_readvariableop+savev2_dense_880_kernel_read_readvariableop)savev2_dense_880_bias_read_readvariableop+savev2_dense_881_kernel_read_readvariableop)savev2_dense_881_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv2d_879_kernel_m_read_readvariableop1savev2_adam_conv2d_879_bias_m_read_readvariableop3savev2_adam_conv2d_880_kernel_m_read_readvariableop1savev2_adam_conv2d_880_bias_m_read_readvariableop3savev2_adam_conv2d_881_kernel_m_read_readvariableop1savev2_adam_conv2d_881_bias_m_read_readvariableop2savev2_adam_dense_879_kernel_m_read_readvariableop0savev2_adam_dense_879_bias_m_read_readvariableop2savev2_adam_dense_880_kernel_m_read_readvariableop0savev2_adam_dense_880_bias_m_read_readvariableop2savev2_adam_dense_881_kernel_m_read_readvariableop0savev2_adam_dense_881_bias_m_read_readvariableop3savev2_adam_conv2d_879_kernel_v_read_readvariableop1savev2_adam_conv2d_879_bias_v_read_readvariableop3savev2_adam_conv2d_880_kernel_v_read_readvariableop1savev2_adam_conv2d_880_bias_v_read_readvariableop3savev2_adam_conv2d_881_kernel_v_read_readvariableop1savev2_adam_conv2d_881_bias_v_read_readvariableop2savev2_adam_dense_879_kernel_v_read_readvariableop0savev2_adam_dense_879_bias_v_read_readvariableop2savev2_adam_dense_880_kernel_v_read_readvariableop0savev2_adam_dense_880_bias_v_read_readvariableop2savev2_adam_dense_881_kernel_v_read_readvariableop0savev2_adam_dense_881_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : @:@:@?:?:	?@:@:@:::: : : : : : : : : : : : @:@:@?:?:	?@:@:@:::: : : @:@:@?:?:	?@:@:@:::: 2(
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::$  

_output_shapes

:: !

_output_shapes
::,"(
&
_output_shapes
: : #

_output_shapes
: :,$(
&
_output_shapes
: @: %

_output_shapes
:@:-&)
'
_output_shapes
:@?:!'

_output_shapes	
:?:%(!

_output_shapes
:	?@: )

_output_shapes
:@:$* 

_output_shapes

:@: +

_output_shapes
::$, 

_output_shapes

:: -

_output_shapes
::.

_output_shapes
: 
?
j
N__inference_max_pooling2d_881_layer_call_and_return_conditional_losses_1942612

inputs
identity?
MaxPoolMaxPoolinputs*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
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
K__inference_sequential_293_layer_call_and_return_conditional_losses_1943105

inputsC
)conv2d_879_conv2d_readvariableop_resource: 8
*conv2d_879_biasadd_readvariableop_resource: C
)conv2d_880_conv2d_readvariableop_resource: @8
*conv2d_880_biasadd_readvariableop_resource:@D
)conv2d_881_conv2d_readvariableop_resource:@?9
*conv2d_881_biasadd_readvariableop_resource:	?;
(dense_879_matmul_readvariableop_resource:	?@7
)dense_879_biasadd_readvariableop_resource:@:
(dense_880_matmul_readvariableop_resource:@7
)dense_880_biasadd_readvariableop_resource::
(dense_881_matmul_readvariableop_resource:7
)dense_881_biasadd_readvariableop_resource:
identity??!conv2d_879/BiasAdd/ReadVariableOp? conv2d_879/Conv2D/ReadVariableOp?!conv2d_880/BiasAdd/ReadVariableOp? conv2d_880/Conv2D/ReadVariableOp?!conv2d_881/BiasAdd/ReadVariableOp? conv2d_881/Conv2D/ReadVariableOp? dense_879/BiasAdd/ReadVariableOp?dense_879/MatMul/ReadVariableOp? dense_880/BiasAdd/ReadVariableOp?dense_880/MatMul/ReadVariableOp? dense_881/BiasAdd/ReadVariableOp?dense_881/MatMul/ReadVariableOp?
 conv2d_879/Conv2D/ReadVariableOpReadVariableOp)conv2d_879_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_879/Conv2D/ReadVariableOp?
conv2d_879/Conv2DConv2Dinputs(conv2d_879/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
2
conv2d_879/Conv2D?
!conv2d_879/BiasAdd/ReadVariableOpReadVariableOp*conv2d_879_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_879/BiasAdd/ReadVariableOp?
conv2d_879/BiasAddBiasAddconv2d_879/Conv2D:output:0)conv2d_879/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] 2
conv2d_879/BiasAdd?
conv2d_879/ReluReluconv2d_879/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] 2
conv2d_879/Relu?
max_pooling2d_879/MaxPoolMaxPoolconv2d_879/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
2
max_pooling2d_879/MaxPool?
 conv2d_880/Conv2D/ReadVariableOpReadVariableOp)conv2d_880_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_880/Conv2D/ReadVariableOp?
conv2d_880/Conv2DConv2D"max_pooling2d_879/MaxPool:output:0(conv2d_880/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_880/Conv2D?
!conv2d_880/BiasAdd/ReadVariableOpReadVariableOp*conv2d_880_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_880/BiasAdd/ReadVariableOp?
conv2d_880/BiasAddBiasAddconv2d_880/Conv2D:output:0)conv2d_880/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_880/BiasAdd?
conv2d_880/ReluReluconv2d_880/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_880/Relu?
max_pooling2d_880/MaxPoolMaxPoolconv2d_880/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_880/MaxPool?
 conv2d_881/Conv2D/ReadVariableOpReadVariableOp)conv2d_881_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02"
 conv2d_881/Conv2D/ReadVariableOp?
conv2d_881/Conv2DConv2D"max_pooling2d_880/MaxPool:output:0(conv2d_881/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_881/Conv2D?
!conv2d_881/BiasAdd/ReadVariableOpReadVariableOp*conv2d_881_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_881/BiasAdd/ReadVariableOp?
conv2d_881/BiasAddBiasAddconv2d_881/Conv2D:output:0)conv2d_881/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_881/BiasAdd?
conv2d_881/ReluReluconv2d_881/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_881/Relu?
max_pooling2d_881/MaxPoolMaxPoolconv2d_881/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_881/MaxPoolw
flatten_293/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten_293/Const?
flatten_293/ReshapeReshape"max_pooling2d_881/MaxPool:output:0flatten_293/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_293/Reshape?
dense_879/MatMul/ReadVariableOpReadVariableOp(dense_879_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02!
dense_879/MatMul/ReadVariableOp?
dense_879/MatMulMatMulflatten_293/Reshape:output:0'dense_879/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_879/MatMul?
 dense_879/BiasAdd/ReadVariableOpReadVariableOp)dense_879_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_879/BiasAdd/ReadVariableOp?
dense_879/BiasAddBiasAdddense_879/MatMul:product:0(dense_879/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_879/BiasAddv
dense_879/TanhTanhdense_879/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_879/Tanh~
dropout_293/IdentityIdentitydense_879/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
dropout_293/Identity?
dense_880/MatMul/ReadVariableOpReadVariableOp(dense_880_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02!
dense_880/MatMul/ReadVariableOp?
dense_880/MatMulMatMuldropout_293/Identity:output:0'dense_880/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_880/MatMul?
 dense_880/BiasAdd/ReadVariableOpReadVariableOp)dense_880_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_880/BiasAdd/ReadVariableOp?
dense_880/BiasAddBiasAdddense_880/MatMul:product:0(dense_880/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_880/BiasAddv
dense_880/TanhTanhdense_880/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_880/Tanh?
dense_881/MatMul/ReadVariableOpReadVariableOp(dense_881_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_881/MatMul/ReadVariableOp?
dense_881/MatMulMatMuldense_880/Tanh:y:0'dense_881/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_881/MatMul?
 dense_881/BiasAdd/ReadVariableOpReadVariableOp)dense_881_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_881/BiasAdd/ReadVariableOp?
dense_881/BiasAddBiasAdddense_881/MatMul:product:0(dense_881/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_881/BiasAdd
dense_881/SigmoidSigmoiddense_881/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_881/Sigmoidp
IdentityIdentitydense_881/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_879/BiasAdd/ReadVariableOp!^conv2d_879/Conv2D/ReadVariableOp"^conv2d_880/BiasAdd/ReadVariableOp!^conv2d_880/Conv2D/ReadVariableOp"^conv2d_881/BiasAdd/ReadVariableOp!^conv2d_881/Conv2D/ReadVariableOp!^dense_879/BiasAdd/ReadVariableOp ^dense_879/MatMul/ReadVariableOp!^dense_880/BiasAdd/ReadVariableOp ^dense_880/MatMul/ReadVariableOp!^dense_881/BiasAdd/ReadVariableOp ^dense_881/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_879/BiasAdd/ReadVariableOp!conv2d_879/BiasAdd/ReadVariableOp2D
 conv2d_879/Conv2D/ReadVariableOp conv2d_879/Conv2D/ReadVariableOp2F
!conv2d_880/BiasAdd/ReadVariableOp!conv2d_880/BiasAdd/ReadVariableOp2D
 conv2d_880/Conv2D/ReadVariableOp conv2d_880/Conv2D/ReadVariableOp2F
!conv2d_881/BiasAdd/ReadVariableOp!conv2d_881/BiasAdd/ReadVariableOp2D
 conv2d_881/Conv2D/ReadVariableOp conv2d_881/Conv2D/ReadVariableOp2D
 dense_879/BiasAdd/ReadVariableOp dense_879/BiasAdd/ReadVariableOp2B
dense_879/MatMul/ReadVariableOpdense_879/MatMul/ReadVariableOp2D
 dense_880/BiasAdd/ReadVariableOp dense_880/BiasAdd/ReadVariableOp2B
dense_880/MatMul/ReadVariableOpdense_880/MatMul/ReadVariableOp2D
 dense_881/BiasAdd/ReadVariableOp dense_881/BiasAdd/ReadVariableOp2B
dense_881/MatMul/ReadVariableOpdense_881/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
F__inference_dense_879_layer_call_and_return_conditional_losses_1943364

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
j
N__inference_max_pooling2d_879_layer_call_and_return_conditional_losses_1942566

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????-. 2

Identity"
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
+__inference_dense_879_layer_call_fn_1943373

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
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_879_layer_call_and_return_conditional_losses_19426332
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?\
?
"__inference__wrapped_model_1942472
conv2d_879_inputR
8sequential_293_conv2d_879_conv2d_readvariableop_resource: G
9sequential_293_conv2d_879_biasadd_readvariableop_resource: R
8sequential_293_conv2d_880_conv2d_readvariableop_resource: @G
9sequential_293_conv2d_880_biasadd_readvariableop_resource:@S
8sequential_293_conv2d_881_conv2d_readvariableop_resource:@?H
9sequential_293_conv2d_881_biasadd_readvariableop_resource:	?J
7sequential_293_dense_879_matmul_readvariableop_resource:	?@F
8sequential_293_dense_879_biasadd_readvariableop_resource:@I
7sequential_293_dense_880_matmul_readvariableop_resource:@F
8sequential_293_dense_880_biasadd_readvariableop_resource:I
7sequential_293_dense_881_matmul_readvariableop_resource:F
8sequential_293_dense_881_biasadd_readvariableop_resource:
identity??0sequential_293/conv2d_879/BiasAdd/ReadVariableOp?/sequential_293/conv2d_879/Conv2D/ReadVariableOp?0sequential_293/conv2d_880/BiasAdd/ReadVariableOp?/sequential_293/conv2d_880/Conv2D/ReadVariableOp?0sequential_293/conv2d_881/BiasAdd/ReadVariableOp?/sequential_293/conv2d_881/Conv2D/ReadVariableOp?/sequential_293/dense_879/BiasAdd/ReadVariableOp?.sequential_293/dense_879/MatMul/ReadVariableOp?/sequential_293/dense_880/BiasAdd/ReadVariableOp?.sequential_293/dense_880/MatMul/ReadVariableOp?/sequential_293/dense_881/BiasAdd/ReadVariableOp?.sequential_293/dense_881/MatMul/ReadVariableOp?
/sequential_293/conv2d_879/Conv2D/ReadVariableOpReadVariableOp8sequential_293_conv2d_879_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype021
/sequential_293/conv2d_879/Conv2D/ReadVariableOp?
 sequential_293/conv2d_879/Conv2DConv2Dconv2d_879_input7sequential_293/conv2d_879/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
2"
 sequential_293/conv2d_879/Conv2D?
0sequential_293/conv2d_879/BiasAdd/ReadVariableOpReadVariableOp9sequential_293_conv2d_879_biasadd_readvariableop_resource*
_output_shapes
: *
dtype022
0sequential_293/conv2d_879/BiasAdd/ReadVariableOp?
!sequential_293/conv2d_879/BiasAddBiasAdd)sequential_293/conv2d_879/Conv2D:output:08sequential_293/conv2d_879/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] 2#
!sequential_293/conv2d_879/BiasAdd?
sequential_293/conv2d_879/ReluRelu*sequential_293/conv2d_879/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] 2 
sequential_293/conv2d_879/Relu?
(sequential_293/max_pooling2d_879/MaxPoolMaxPool,sequential_293/conv2d_879/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
2*
(sequential_293/max_pooling2d_879/MaxPool?
/sequential_293/conv2d_880/Conv2D/ReadVariableOpReadVariableOp8sequential_293_conv2d_880_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype021
/sequential_293/conv2d_880/Conv2D/ReadVariableOp?
 sequential_293/conv2d_880/Conv2DConv2D1sequential_293/max_pooling2d_879/MaxPool:output:07sequential_293/conv2d_880/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2"
 sequential_293/conv2d_880/Conv2D?
0sequential_293/conv2d_880/BiasAdd/ReadVariableOpReadVariableOp9sequential_293_conv2d_880_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_293/conv2d_880/BiasAdd/ReadVariableOp?
!sequential_293/conv2d_880/BiasAddBiasAdd)sequential_293/conv2d_880/Conv2D:output:08sequential_293/conv2d_880/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2#
!sequential_293/conv2d_880/BiasAdd?
sequential_293/conv2d_880/ReluRelu*sequential_293/conv2d_880/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2 
sequential_293/conv2d_880/Relu?
(sequential_293/max_pooling2d_880/MaxPoolMaxPool,sequential_293/conv2d_880/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2*
(sequential_293/max_pooling2d_880/MaxPool?
/sequential_293/conv2d_881/Conv2D/ReadVariableOpReadVariableOp8sequential_293_conv2d_881_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype021
/sequential_293/conv2d_881/Conv2D/ReadVariableOp?
 sequential_293/conv2d_881/Conv2DConv2D1sequential_293/max_pooling2d_880/MaxPool:output:07sequential_293/conv2d_881/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2"
 sequential_293/conv2d_881/Conv2D?
0sequential_293/conv2d_881/BiasAdd/ReadVariableOpReadVariableOp9sequential_293_conv2d_881_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0sequential_293/conv2d_881/BiasAdd/ReadVariableOp?
!sequential_293/conv2d_881/BiasAddBiasAdd)sequential_293/conv2d_881/Conv2D:output:08sequential_293/conv2d_881/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2#
!sequential_293/conv2d_881/BiasAdd?
sequential_293/conv2d_881/ReluRelu*sequential_293/conv2d_881/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2 
sequential_293/conv2d_881/Relu?
(sequential_293/max_pooling2d_881/MaxPoolMaxPool,sequential_293/conv2d_881/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2*
(sequential_293/max_pooling2d_881/MaxPool?
 sequential_293/flatten_293/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2"
 sequential_293/flatten_293/Const?
"sequential_293/flatten_293/ReshapeReshape1sequential_293/max_pooling2d_881/MaxPool:output:0)sequential_293/flatten_293/Const:output:0*
T0*(
_output_shapes
:??????????2$
"sequential_293/flatten_293/Reshape?
.sequential_293/dense_879/MatMul/ReadVariableOpReadVariableOp7sequential_293_dense_879_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype020
.sequential_293/dense_879/MatMul/ReadVariableOp?
sequential_293/dense_879/MatMulMatMul+sequential_293/flatten_293/Reshape:output:06sequential_293/dense_879/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
sequential_293/dense_879/MatMul?
/sequential_293/dense_879/BiasAdd/ReadVariableOpReadVariableOp8sequential_293_dense_879_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_293/dense_879/BiasAdd/ReadVariableOp?
 sequential_293/dense_879/BiasAddBiasAdd)sequential_293/dense_879/MatMul:product:07sequential_293/dense_879/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 sequential_293/dense_879/BiasAdd?
sequential_293/dense_879/TanhTanh)sequential_293/dense_879/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential_293/dense_879/Tanh?
#sequential_293/dropout_293/IdentityIdentity!sequential_293/dense_879/Tanh:y:0*
T0*'
_output_shapes
:?????????@2%
#sequential_293/dropout_293/Identity?
.sequential_293/dense_880/MatMul/ReadVariableOpReadVariableOp7sequential_293_dense_880_matmul_readvariableop_resource*
_output_shapes

:@*
dtype020
.sequential_293/dense_880/MatMul/ReadVariableOp?
sequential_293/dense_880/MatMulMatMul,sequential_293/dropout_293/Identity:output:06sequential_293/dense_880/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_293/dense_880/MatMul?
/sequential_293/dense_880/BiasAdd/ReadVariableOpReadVariableOp8sequential_293_dense_880_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_293/dense_880/BiasAdd/ReadVariableOp?
 sequential_293/dense_880/BiasAddBiasAdd)sequential_293/dense_880/MatMul:product:07sequential_293/dense_880/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 sequential_293/dense_880/BiasAdd?
sequential_293/dense_880/TanhTanh)sequential_293/dense_880/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_293/dense_880/Tanh?
.sequential_293/dense_881/MatMul/ReadVariableOpReadVariableOp7sequential_293_dense_881_matmul_readvariableop_resource*
_output_shapes

:*
dtype020
.sequential_293/dense_881/MatMul/ReadVariableOp?
sequential_293/dense_881/MatMulMatMul!sequential_293/dense_880/Tanh:y:06sequential_293/dense_881/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_293/dense_881/MatMul?
/sequential_293/dense_881/BiasAdd/ReadVariableOpReadVariableOp8sequential_293_dense_881_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_293/dense_881/BiasAdd/ReadVariableOp?
 sequential_293/dense_881/BiasAddBiasAdd)sequential_293/dense_881/MatMul:product:07sequential_293/dense_881/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 sequential_293/dense_881/BiasAdd?
 sequential_293/dense_881/SigmoidSigmoid)sequential_293/dense_881/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2"
 sequential_293/dense_881/Sigmoid
IdentityIdentity$sequential_293/dense_881/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp1^sequential_293/conv2d_879/BiasAdd/ReadVariableOp0^sequential_293/conv2d_879/Conv2D/ReadVariableOp1^sequential_293/conv2d_880/BiasAdd/ReadVariableOp0^sequential_293/conv2d_880/Conv2D/ReadVariableOp1^sequential_293/conv2d_881/BiasAdd/ReadVariableOp0^sequential_293/conv2d_881/Conv2D/ReadVariableOp0^sequential_293/dense_879/BiasAdd/ReadVariableOp/^sequential_293/dense_879/MatMul/ReadVariableOp0^sequential_293/dense_880/BiasAdd/ReadVariableOp/^sequential_293/dense_880/MatMul/ReadVariableOp0^sequential_293/dense_881/BiasAdd/ReadVariableOp/^sequential_293/dense_881/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2d
0sequential_293/conv2d_879/BiasAdd/ReadVariableOp0sequential_293/conv2d_879/BiasAdd/ReadVariableOp2b
/sequential_293/conv2d_879/Conv2D/ReadVariableOp/sequential_293/conv2d_879/Conv2D/ReadVariableOp2d
0sequential_293/conv2d_880/BiasAdd/ReadVariableOp0sequential_293/conv2d_880/BiasAdd/ReadVariableOp2b
/sequential_293/conv2d_880/Conv2D/ReadVariableOp/sequential_293/conv2d_880/Conv2D/ReadVariableOp2d
0sequential_293/conv2d_881/BiasAdd/ReadVariableOp0sequential_293/conv2d_881/BiasAdd/ReadVariableOp2b
/sequential_293/conv2d_881/Conv2D/ReadVariableOp/sequential_293/conv2d_881/Conv2D/ReadVariableOp2b
/sequential_293/dense_879/BiasAdd/ReadVariableOp/sequential_293/dense_879/BiasAdd/ReadVariableOp2`
.sequential_293/dense_879/MatMul/ReadVariableOp.sequential_293/dense_879/MatMul/ReadVariableOp2b
/sequential_293/dense_880/BiasAdd/ReadVariableOp/sequential_293/dense_880/BiasAdd/ReadVariableOp2`
.sequential_293/dense_880/MatMul/ReadVariableOp.sequential_293/dense_880/MatMul/ReadVariableOp2b
/sequential_293/dense_881/BiasAdd/ReadVariableOp/sequential_293/dense_881/BiasAdd/ReadVariableOp2`
.sequential_293/dense_881/MatMul/ReadVariableOp.sequential_293/dense_881/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_879_input
?
?
,__inference_conv2d_880_layer_call_fn_1943282

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
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_880_layer_call_and_return_conditional_losses_19425792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
O
3__inference_max_pooling2d_881_layer_call_fn_1943342

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
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_881_layer_call_and_return_conditional_losses_19426122
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?P
?	
K__inference_sequential_293_layer_call_and_return_conditional_losses_1943164

inputsC
)conv2d_879_conv2d_readvariableop_resource: 8
*conv2d_879_biasadd_readvariableop_resource: C
)conv2d_880_conv2d_readvariableop_resource: @8
*conv2d_880_biasadd_readvariableop_resource:@D
)conv2d_881_conv2d_readvariableop_resource:@?9
*conv2d_881_biasadd_readvariableop_resource:	?;
(dense_879_matmul_readvariableop_resource:	?@7
)dense_879_biasadd_readvariableop_resource:@:
(dense_880_matmul_readvariableop_resource:@7
)dense_880_biasadd_readvariableop_resource::
(dense_881_matmul_readvariableop_resource:7
)dense_881_biasadd_readvariableop_resource:
identity??!conv2d_879/BiasAdd/ReadVariableOp? conv2d_879/Conv2D/ReadVariableOp?!conv2d_880/BiasAdd/ReadVariableOp? conv2d_880/Conv2D/ReadVariableOp?!conv2d_881/BiasAdd/ReadVariableOp? conv2d_881/Conv2D/ReadVariableOp? dense_879/BiasAdd/ReadVariableOp?dense_879/MatMul/ReadVariableOp? dense_880/BiasAdd/ReadVariableOp?dense_880/MatMul/ReadVariableOp? dense_881/BiasAdd/ReadVariableOp?dense_881/MatMul/ReadVariableOp?
 conv2d_879/Conv2D/ReadVariableOpReadVariableOp)conv2d_879_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_879/Conv2D/ReadVariableOp?
conv2d_879/Conv2DConv2Dinputs(conv2d_879/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
2
conv2d_879/Conv2D?
!conv2d_879/BiasAdd/ReadVariableOpReadVariableOp*conv2d_879_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_879/BiasAdd/ReadVariableOp?
conv2d_879/BiasAddBiasAddconv2d_879/Conv2D:output:0)conv2d_879/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] 2
conv2d_879/BiasAdd?
conv2d_879/ReluReluconv2d_879/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] 2
conv2d_879/Relu?
max_pooling2d_879/MaxPoolMaxPoolconv2d_879/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
2
max_pooling2d_879/MaxPool?
 conv2d_880/Conv2D/ReadVariableOpReadVariableOp)conv2d_880_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_880/Conv2D/ReadVariableOp?
conv2d_880/Conv2DConv2D"max_pooling2d_879/MaxPool:output:0(conv2d_880/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_880/Conv2D?
!conv2d_880/BiasAdd/ReadVariableOpReadVariableOp*conv2d_880_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_880/BiasAdd/ReadVariableOp?
conv2d_880/BiasAddBiasAddconv2d_880/Conv2D:output:0)conv2d_880/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_880/BiasAdd?
conv2d_880/ReluReluconv2d_880/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_880/Relu?
max_pooling2d_880/MaxPoolMaxPoolconv2d_880/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_880/MaxPool?
 conv2d_881/Conv2D/ReadVariableOpReadVariableOp)conv2d_881_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02"
 conv2d_881/Conv2D/ReadVariableOp?
conv2d_881/Conv2DConv2D"max_pooling2d_880/MaxPool:output:0(conv2d_881/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_881/Conv2D?
!conv2d_881/BiasAdd/ReadVariableOpReadVariableOp*conv2d_881_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_881/BiasAdd/ReadVariableOp?
conv2d_881/BiasAddBiasAddconv2d_881/Conv2D:output:0)conv2d_881/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_881/BiasAdd?
conv2d_881/ReluReluconv2d_881/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_881/Relu?
max_pooling2d_881/MaxPoolMaxPoolconv2d_881/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_881/MaxPoolw
flatten_293/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten_293/Const?
flatten_293/ReshapeReshape"max_pooling2d_881/MaxPool:output:0flatten_293/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_293/Reshape?
dense_879/MatMul/ReadVariableOpReadVariableOp(dense_879_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02!
dense_879/MatMul/ReadVariableOp?
dense_879/MatMulMatMulflatten_293/Reshape:output:0'dense_879/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_879/MatMul?
 dense_879/BiasAdd/ReadVariableOpReadVariableOp)dense_879_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_879/BiasAdd/ReadVariableOp?
dense_879/BiasAddBiasAdddense_879/MatMul:product:0(dense_879/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_879/BiasAddv
dense_879/TanhTanhdense_879/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_879/Tanh{
dropout_293/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_293/dropout/Const?
dropout_293/dropout/MulMuldense_879/Tanh:y:0"dropout_293/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_293/dropout/Mulx
dropout_293/dropout/ShapeShapedense_879/Tanh:y:0*
T0*
_output_shapes
:2
dropout_293/dropout/Shape?
0dropout_293/dropout/random_uniform/RandomUniformRandomUniform"dropout_293/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype022
0dropout_293/dropout/random_uniform/RandomUniform?
"dropout_293/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"dropout_293/dropout/GreaterEqual/y?
 dropout_293/dropout/GreaterEqualGreaterEqual9dropout_293/dropout/random_uniform/RandomUniform:output:0+dropout_293/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 dropout_293/dropout/GreaterEqual?
dropout_293/dropout/CastCast$dropout_293/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_293/dropout/Cast?
dropout_293/dropout/Mul_1Muldropout_293/dropout/Mul:z:0dropout_293/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_293/dropout/Mul_1?
dense_880/MatMul/ReadVariableOpReadVariableOp(dense_880_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02!
dense_880/MatMul/ReadVariableOp?
dense_880/MatMulMatMuldropout_293/dropout/Mul_1:z:0'dense_880/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_880/MatMul?
 dense_880/BiasAdd/ReadVariableOpReadVariableOp)dense_880_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_880/BiasAdd/ReadVariableOp?
dense_880/BiasAddBiasAdddense_880/MatMul:product:0(dense_880/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_880/BiasAddv
dense_880/TanhTanhdense_880/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_880/Tanh?
dense_881/MatMul/ReadVariableOpReadVariableOp(dense_881_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_881/MatMul/ReadVariableOp?
dense_881/MatMulMatMuldense_880/Tanh:y:0'dense_881/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_881/MatMul?
 dense_881/BiasAdd/ReadVariableOpReadVariableOp)dense_881_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_881/BiasAdd/ReadVariableOp?
dense_881/BiasAddBiasAdddense_881/MatMul:product:0(dense_881/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_881/BiasAdd
dense_881/SigmoidSigmoiddense_881/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_881/Sigmoidp
IdentityIdentitydense_881/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_879/BiasAdd/ReadVariableOp!^conv2d_879/Conv2D/ReadVariableOp"^conv2d_880/BiasAdd/ReadVariableOp!^conv2d_880/Conv2D/ReadVariableOp"^conv2d_881/BiasAdd/ReadVariableOp!^conv2d_881/Conv2D/ReadVariableOp!^dense_879/BiasAdd/ReadVariableOp ^dense_879/MatMul/ReadVariableOp!^dense_880/BiasAdd/ReadVariableOp ^dense_880/MatMul/ReadVariableOp!^dense_881/BiasAdd/ReadVariableOp ^dense_881/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_879/BiasAdd/ReadVariableOp!conv2d_879/BiasAdd/ReadVariableOp2D
 conv2d_879/Conv2D/ReadVariableOp conv2d_879/Conv2D/ReadVariableOp2F
!conv2d_880/BiasAdd/ReadVariableOp!conv2d_880/BiasAdd/ReadVariableOp2D
 conv2d_880/Conv2D/ReadVariableOp conv2d_880/Conv2D/ReadVariableOp2F
!conv2d_881/BiasAdd/ReadVariableOp!conv2d_881/BiasAdd/ReadVariableOp2D
 conv2d_881/Conv2D/ReadVariableOp conv2d_881/Conv2D/ReadVariableOp2D
 dense_879/BiasAdd/ReadVariableOp dense_879/BiasAdd/ReadVariableOp2B
dense_879/MatMul/ReadVariableOpdense_879/MatMul/ReadVariableOp2D
 dense_880/BiasAdd/ReadVariableOp dense_880/BiasAdd/ReadVariableOp2B
dense_880/MatMul/ReadVariableOpdense_880/MatMul/ReadVariableOp2D
 dense_881/BiasAdd/ReadVariableOp dense_881/BiasAdd/ReadVariableOp2B
dense_881/MatMul/ReadVariableOpdense_881/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
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
conv2d_879_inputC
"serving_default_conv2d_879_input:0???????????=
	dense_8810
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
regularization_losses
trainable_variables
	variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"
_tf_keras_sequential
?

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
regularization_losses
trainable_variables
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

kernel
bias
regularization_losses
trainable_variables
 	variables
!	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
"regularization_losses
#trainable_variables
$	variables
%	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

&kernel
'bias
(regularization_losses
)trainable_variables
*	variables
+	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
,regularization_losses
-trainable_variables
.	variables
/	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
0regularization_losses
1trainable_variables
2	variables
3	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

4kernel
5bias
6regularization_losses
7trainable_variables
8	variables
9	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
:regularization_losses
;trainable_variables
<	variables
=	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

>kernel
?bias
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

Dkernel
Ebias
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
Jiter

Kbeta_1

Lbeta_2
	Mdecay
Nlearning_ratem?m?m?m?&m?'m?4m?5m?>m??m?Dm?Em?v?v?v?v?&v?'v?4v?5v?>v??v?Dv?Ev?"
	optimizer
 "
trackable_list_wrapper
v
0
1
2
3
&4
'5
46
57
>8
?9
D10
E11"
trackable_list_wrapper
v
0
1
2
3
&4
'5
46
57
>8
?9
D10
E11"
trackable_list_wrapper
?
regularization_losses
Olayer_metrics
Player_regularization_losses
trainable_variables

Qlayers
Rmetrics
Snon_trainable_variables
	variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
+:) 2conv2d_879/kernel
: 2conv2d_879/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
regularization_losses
Tlayer_metrics
Ulayer_regularization_losses
trainable_variables

Vlayers
Wmetrics
Xnon_trainable_variables
	variables
?__call__
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
regularization_losses
Ylayer_metrics
Zlayer_regularization_losses
trainable_variables

[layers
\metrics
]non_trainable_variables
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:) @2conv2d_880/kernel
:@2conv2d_880/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
regularization_losses
^layer_metrics
_layer_regularization_losses
trainable_variables

`layers
ametrics
bnon_trainable_variables
 	variables
?__call__
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
"regularization_losses
clayer_metrics
dlayer_regularization_losses
#trainable_variables

elayers
fmetrics
gnon_trainable_variables
$	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*@?2conv2d_881/kernel
:?2conv2d_881/bias
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
?
(regularization_losses
hlayer_metrics
ilayer_regularization_losses
)trainable_variables

jlayers
kmetrics
lnon_trainable_variables
*	variables
?__call__
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
,regularization_losses
mlayer_metrics
nlayer_regularization_losses
-trainable_variables

olayers
pmetrics
qnon_trainable_variables
.	variables
?__call__
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
0regularization_losses
rlayer_metrics
slayer_regularization_losses
1trainable_variables

tlayers
umetrics
vnon_trainable_variables
2	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!	?@2dense_879/kernel
:@2dense_879/bias
 "
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
?
6regularization_losses
wlayer_metrics
xlayer_regularization_losses
7trainable_variables

ylayers
zmetrics
{non_trainable_variables
8	variables
?__call__
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
:regularization_losses
|layer_metrics
}layer_regularization_losses
;trainable_variables

~layers
metrics
?non_trainable_variables
<	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": @2dense_880/kernel
:2dense_880/bias
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
?
@regularization_losses
?layer_metrics
 ?layer_regularization_losses
Atrainable_variables
?layers
?metrics
?non_trainable_variables
B	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 2dense_881/kernel
:2dense_881/bias
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
?
Fregularization_losses
?layer_metrics
 ?layer_regularization_losses
Gtrainable_variables
?layers
?metrics
?non_trainable_variables
H	variables
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
 "
trackable_dict_wrapper
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
0:. 2Adam/conv2d_879/kernel/m
":  2Adam/conv2d_879/bias/m
0:. @2Adam/conv2d_880/kernel/m
": @2Adam/conv2d_880/bias/m
1:/@?2Adam/conv2d_881/kernel/m
#:!?2Adam/conv2d_881/bias/m
(:&	?@2Adam/dense_879/kernel/m
!:@2Adam/dense_879/bias/m
':%@2Adam/dense_880/kernel/m
!:2Adam/dense_880/bias/m
':%2Adam/dense_881/kernel/m
!:2Adam/dense_881/bias/m
0:. 2Adam/conv2d_879/kernel/v
":  2Adam/conv2d_879/bias/v
0:. @2Adam/conv2d_880/kernel/v
": @2Adam/conv2d_880/bias/v
1:/@?2Adam/conv2d_881/kernel/v
#:!?2Adam/conv2d_881/bias/v
(:&	?@2Adam/dense_879/kernel/v
!:@2Adam/dense_879/bias/v
':%@2Adam/dense_880/kernel/v
!:2Adam/dense_880/bias/v
':%2Adam/dense_881/kernel/v
!:2Adam/dense_881/bias/v
?2?
K__inference_sequential_293_layer_call_and_return_conditional_losses_1943105
K__inference_sequential_293_layer_call_and_return_conditional_losses_1943164
K__inference_sequential_293_layer_call_and_return_conditional_losses_1942977
K__inference_sequential_293_layer_call_and_return_conditional_losses_1943016?
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
"__inference__wrapped_model_1942472conv2d_879_input"?
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
?2?
0__inference_sequential_293_layer_call_fn_1942708
0__inference_sequential_293_layer_call_fn_1943193
0__inference_sequential_293_layer_call_fn_1943222
0__inference_sequential_293_layer_call_fn_1942938?
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
?2?
G__inference_conv2d_879_layer_call_and_return_conditional_losses_1943233?
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
,__inference_conv2d_879_layer_call_fn_1943242?
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
N__inference_max_pooling2d_879_layer_call_and_return_conditional_losses_1943247
N__inference_max_pooling2d_879_layer_call_and_return_conditional_losses_1943252?
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
3__inference_max_pooling2d_879_layer_call_fn_1943257
3__inference_max_pooling2d_879_layer_call_fn_1943262?
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
G__inference_conv2d_880_layer_call_and_return_conditional_losses_1943273?
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
,__inference_conv2d_880_layer_call_fn_1943282?
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
N__inference_max_pooling2d_880_layer_call_and_return_conditional_losses_1943287
N__inference_max_pooling2d_880_layer_call_and_return_conditional_losses_1943292?
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
3__inference_max_pooling2d_880_layer_call_fn_1943297
3__inference_max_pooling2d_880_layer_call_fn_1943302?
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
G__inference_conv2d_881_layer_call_and_return_conditional_losses_1943313?
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
,__inference_conv2d_881_layer_call_fn_1943322?
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
N__inference_max_pooling2d_881_layer_call_and_return_conditional_losses_1943327
N__inference_max_pooling2d_881_layer_call_and_return_conditional_losses_1943332?
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
3__inference_max_pooling2d_881_layer_call_fn_1943337
3__inference_max_pooling2d_881_layer_call_fn_1943342?
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
H__inference_flatten_293_layer_call_and_return_conditional_losses_1943348?
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
-__inference_flatten_293_layer_call_fn_1943353?
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
F__inference_dense_879_layer_call_and_return_conditional_losses_1943364?
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
+__inference_dense_879_layer_call_fn_1943373?
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
H__inference_dropout_293_layer_call_and_return_conditional_losses_1943378
H__inference_dropout_293_layer_call_and_return_conditional_losses_1943390?
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
-__inference_dropout_293_layer_call_fn_1943395
-__inference_dropout_293_layer_call_fn_1943400?
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
F__inference_dense_880_layer_call_and_return_conditional_losses_1943411?
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
+__inference_dense_880_layer_call_fn_1943420?
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
F__inference_dense_881_layer_call_and_return_conditional_losses_1943431?
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
+__inference_dense_881_layer_call_fn_1943440?
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
%__inference_signature_wrapper_1943053conv2d_879_input"?
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
"__inference__wrapped_model_1942472?&'45>?DEC?@
9?6
4?1
conv2d_879_input???????????
? "5?2
0
	dense_881#? 
	dense_881??????????
G__inference_conv2d_879_layer_call_and_return_conditional_losses_1943233n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????Z] 
? ?
,__inference_conv2d_879_layer_call_fn_1943242a9?6
/?,
*?'
inputs???????????
? " ??????????Z] ?
G__inference_conv2d_880_layer_call_and_return_conditional_losses_1943273l7?4
-?*
(?%
inputs?????????-. 
? "-?*
#? 
0?????????@
? ?
,__inference_conv2d_880_layer_call_fn_1943282_7?4
-?*
(?%
inputs?????????-. 
? " ??????????@?
G__inference_conv2d_881_layer_call_and_return_conditional_losses_1943313m&'7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_881_layer_call_fn_1943322`&'7?4
-?*
(?%
inputs?????????@
? "!????????????
F__inference_dense_879_layer_call_and_return_conditional_losses_1943364]450?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? 
+__inference_dense_879_layer_call_fn_1943373P450?-
&?#
!?
inputs??????????
? "??????????@?
F__inference_dense_880_layer_call_and_return_conditional_losses_1943411\>?/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? ~
+__inference_dense_880_layer_call_fn_1943420O>?/?,
%?"
 ?
inputs?????????@
? "???????????
F__inference_dense_881_layer_call_and_return_conditional_losses_1943431\DE/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
+__inference_dense_881_layer_call_fn_1943440ODE/?,
%?"
 ?
inputs?????????
? "???????????
H__inference_dropout_293_layer_call_and_return_conditional_losses_1943378\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
H__inference_dropout_293_layer_call_and_return_conditional_losses_1943390\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
-__inference_dropout_293_layer_call_fn_1943395O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
-__inference_dropout_293_layer_call_fn_1943400O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
H__inference_flatten_293_layer_call_and_return_conditional_losses_1943348b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????
? ?
-__inference_flatten_293_layer_call_fn_1943353U8?5
.?+
)?&
inputs??????????
? "????????????
N__inference_max_pooling2d_879_layer_call_and_return_conditional_losses_1943247?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_879_layer_call_and_return_conditional_losses_1943252h7?4
-?*
(?%
inputs?????????Z] 
? "-?*
#? 
0?????????-. 
? ?
3__inference_max_pooling2d_879_layer_call_fn_1943257?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_879_layer_call_fn_1943262[7?4
-?*
(?%
inputs?????????Z] 
? " ??????????-. ?
N__inference_max_pooling2d_880_layer_call_and_return_conditional_losses_1943287?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_880_layer_call_and_return_conditional_losses_1943292h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
3__inference_max_pooling2d_880_layer_call_fn_1943297?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_880_layer_call_fn_1943302[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
N__inference_max_pooling2d_881_layer_call_and_return_conditional_losses_1943327?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_881_layer_call_and_return_conditional_losses_1943332j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
3__inference_max_pooling2d_881_layer_call_fn_1943337?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_881_layer_call_fn_1943342]8?5
.?+
)?&
inputs??????????
? "!????????????
K__inference_sequential_293_layer_call_and_return_conditional_losses_1942977?&'45>?DEK?H
A?>
4?1
conv2d_879_input???????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_293_layer_call_and_return_conditional_losses_1943016?&'45>?DEK?H
A?>
4?1
conv2d_879_input???????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_293_layer_call_and_return_conditional_losses_1943105x&'45>?DEA?>
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
K__inference_sequential_293_layer_call_and_return_conditional_losses_1943164x&'45>?DEA?>
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
0__inference_sequential_293_layer_call_fn_1942708u&'45>?DEK?H
A?>
4?1
conv2d_879_input???????????
p 

 
? "???????????
0__inference_sequential_293_layer_call_fn_1942938u&'45>?DEK?H
A?>
4?1
conv2d_879_input???????????
p

 
? "???????????
0__inference_sequential_293_layer_call_fn_1943193k&'45>?DEA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
0__inference_sequential_293_layer_call_fn_1943222k&'45>?DEA?>
7?4
*?'
inputs???????????
p

 
? "???????????
%__inference_signature_wrapper_1943053?&'45>?DEW?T
? 
M?J
H
conv2d_879_input4?1
conv2d_879_input???????????"5?2
0
	dense_881#? 
	dense_881?????????