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
conv2d_939/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_939/kernel

%conv2d_939/kernel/Read/ReadVariableOpReadVariableOpconv2d_939/kernel*&
_output_shapes
: *
dtype0
v
conv2d_939/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_939/bias
o
#conv2d_939/bias/Read/ReadVariableOpReadVariableOpconv2d_939/bias*
_output_shapes
: *
dtype0
?
conv2d_940/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_940/kernel

%conv2d_940/kernel/Read/ReadVariableOpReadVariableOpconv2d_940/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_940/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_940/bias
o
#conv2d_940/bias/Read/ReadVariableOpReadVariableOpconv2d_940/bias*
_output_shapes
:@*
dtype0
?
conv2d_941/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*"
shared_nameconv2d_941/kernel
?
%conv2d_941/kernel/Read/ReadVariableOpReadVariableOpconv2d_941/kernel*'
_output_shapes
:@?*
dtype0
w
conv2d_941/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_941/bias
p
#conv2d_941/bias/Read/ReadVariableOpReadVariableOpconv2d_941/bias*
_output_shapes	
:?*
dtype0
}
dense_939/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*!
shared_namedense_939/kernel
v
$dense_939/kernel/Read/ReadVariableOpReadVariableOpdense_939/kernel*
_output_shapes
:	?@*
dtype0
t
dense_939/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_939/bias
m
"dense_939/bias/Read/ReadVariableOpReadVariableOpdense_939/bias*
_output_shapes
:@*
dtype0
|
dense_940/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_940/kernel
u
$dense_940/kernel/Read/ReadVariableOpReadVariableOpdense_940/kernel*
_output_shapes

:@*
dtype0
t
dense_940/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_940/bias
m
"dense_940/bias/Read/ReadVariableOpReadVariableOpdense_940/bias*
_output_shapes
:*
dtype0
|
dense_941/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_941/kernel
u
$dense_941/kernel/Read/ReadVariableOpReadVariableOpdense_941/kernel*
_output_shapes

:*
dtype0
t
dense_941/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_941/bias
m
"dense_941/bias/Read/ReadVariableOpReadVariableOpdense_941/bias*
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
Adam/conv2d_939/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_939/kernel/m
?
,Adam/conv2d_939/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_939/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_939/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_939/bias/m
}
*Adam/conv2d_939/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_939/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_940/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_940/kernel/m
?
,Adam/conv2d_940/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_940/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_940/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_940/bias/m
}
*Adam/conv2d_940/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_940/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_941/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*)
shared_nameAdam/conv2d_941/kernel/m
?
,Adam/conv2d_941/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_941/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_941/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/conv2d_941/bias/m
~
*Adam/conv2d_941/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_941/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_939/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*(
shared_nameAdam/dense_939/kernel/m
?
+Adam/dense_939/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_939/kernel/m*
_output_shapes
:	?@*
dtype0
?
Adam/dense_939/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_939/bias/m
{
)Adam/dense_939/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_939/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_940/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/dense_940/kernel/m
?
+Adam/dense_940/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_940/kernel/m*
_output_shapes

:@*
dtype0
?
Adam/dense_940/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_940/bias/m
{
)Adam/dense_940/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_940/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_941/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_941/kernel/m
?
+Adam/dense_941/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_941/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_941/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_941/bias/m
{
)Adam/dense_941/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_941/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_939/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_939/kernel/v
?
,Adam/conv2d_939/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_939/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_939/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_939/bias/v
}
*Adam/conv2d_939/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_939/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_940/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_940/kernel/v
?
,Adam/conv2d_940/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_940/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_940/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_940/bias/v
}
*Adam/conv2d_940/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_940/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_941/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*)
shared_nameAdam/conv2d_941/kernel/v
?
,Adam/conv2d_941/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_941/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_941/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/conv2d_941/bias/v
~
*Adam/conv2d_941/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_941/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_939/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*(
shared_nameAdam/dense_939/kernel/v
?
+Adam/dense_939/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_939/kernel/v*
_output_shapes
:	?@*
dtype0
?
Adam/dense_939/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_939/bias/v
{
)Adam/dense_939/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_939/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_940/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/dense_940/kernel/v
?
+Adam/dense_940/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_940/kernel/v*
_output_shapes

:@*
dtype0
?
Adam/dense_940/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_940/bias/v
{
)Adam/dense_940/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_940/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_941/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_941/kernel/v
?
+Adam/dense_941/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_941/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_941/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_941/bias/v
{
)Adam/dense_941/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_941/bias/v*
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
VARIABLE_VALUEconv2d_939/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_939/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_940/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_940/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_941/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_941/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_939/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_939/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_940/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_940/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_941/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_941/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/conv2d_939/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_939/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_940/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_940/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_941/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_941/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_939/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_939/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_940/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_940/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_941/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_941/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_939/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_939/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_940/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_940/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_941/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_941/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_939/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_939/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_940/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_940/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_941/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_941/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_conv2d_939_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_939_inputconv2d_939/kernelconv2d_939/biasconv2d_940/kernelconv2d_940/biasconv2d_941/kernelconv2d_941/biasdense_939/kerneldense_939/biasdense_940/kerneldense_940/biasdense_941/kerneldense_941/bias*
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
%__inference_signature_wrapper_2048394
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_939/kernel/Read/ReadVariableOp#conv2d_939/bias/Read/ReadVariableOp%conv2d_940/kernel/Read/ReadVariableOp#conv2d_940/bias/Read/ReadVariableOp%conv2d_941/kernel/Read/ReadVariableOp#conv2d_941/bias/Read/ReadVariableOp$dense_939/kernel/Read/ReadVariableOp"dense_939/bias/Read/ReadVariableOp$dense_940/kernel/Read/ReadVariableOp"dense_940/bias/Read/ReadVariableOp$dense_941/kernel/Read/ReadVariableOp"dense_941/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv2d_939/kernel/m/Read/ReadVariableOp*Adam/conv2d_939/bias/m/Read/ReadVariableOp,Adam/conv2d_940/kernel/m/Read/ReadVariableOp*Adam/conv2d_940/bias/m/Read/ReadVariableOp,Adam/conv2d_941/kernel/m/Read/ReadVariableOp*Adam/conv2d_941/bias/m/Read/ReadVariableOp+Adam/dense_939/kernel/m/Read/ReadVariableOp)Adam/dense_939/bias/m/Read/ReadVariableOp+Adam/dense_940/kernel/m/Read/ReadVariableOp)Adam/dense_940/bias/m/Read/ReadVariableOp+Adam/dense_941/kernel/m/Read/ReadVariableOp)Adam/dense_941/bias/m/Read/ReadVariableOp,Adam/conv2d_939/kernel/v/Read/ReadVariableOp*Adam/conv2d_939/bias/v/Read/ReadVariableOp,Adam/conv2d_940/kernel/v/Read/ReadVariableOp*Adam/conv2d_940/bias/v/Read/ReadVariableOp,Adam/conv2d_941/kernel/v/Read/ReadVariableOp*Adam/conv2d_941/bias/v/Read/ReadVariableOp+Adam/dense_939/kernel/v/Read/ReadVariableOp)Adam/dense_939/bias/v/Read/ReadVariableOp+Adam/dense_940/kernel/v/Read/ReadVariableOp)Adam/dense_940/bias/v/Read/ReadVariableOp+Adam/dense_941/kernel/v/Read/ReadVariableOp)Adam/dense_941/bias/v/Read/ReadVariableOpConst*:
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
 __inference__traced_save_2048939
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_939/kernelconv2d_939/biasconv2d_940/kernelconv2d_940/biasconv2d_941/kernelconv2d_941/biasdense_939/kerneldense_939/biasdense_940/kerneldense_940/biasdense_941/kerneldense_941/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_939/kernel/mAdam/conv2d_939/bias/mAdam/conv2d_940/kernel/mAdam/conv2d_940/bias/mAdam/conv2d_941/kernel/mAdam/conv2d_941/bias/mAdam/dense_939/kernel/mAdam/dense_939/bias/mAdam/dense_940/kernel/mAdam/dense_940/bias/mAdam/dense_941/kernel/mAdam/dense_941/bias/mAdam/conv2d_939/kernel/vAdam/conv2d_939/bias/vAdam/conv2d_940/kernel/vAdam/conv2d_940/bias/vAdam/conv2d_941/kernel/vAdam/conv2d_941/bias/vAdam/dense_939/kernel/vAdam/dense_939/bias/vAdam/dense_940/kernel/vAdam/dense_940/bias/vAdam/dense_941/kernel/vAdam/dense_941/bias/v*9
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
#__inference__traced_restore_2049084??
?
?
G__inference_conv2d_941_layer_call_and_return_conditional_losses_2048654

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
?
?
%__inference_signature_wrapper_2048394
conv2d_939_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_939_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_20478132
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
_user_specified_nameconv2d_939_input
?
O
3__inference_max_pooling2d_941_layer_call_fn_2048678

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
N__inference_max_pooling2d_941_layer_call_and_return_conditional_losses_20478662
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
?
?
G__inference_conv2d_939_layer_call_and_return_conditional_losses_2048574

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
?
?
F__inference_dense_941_layer_call_and_return_conditional_losses_2048772

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
?
?
,__inference_conv2d_940_layer_call_fn_2048623

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
G__inference_conv2d_940_layer_call_and_return_conditional_losses_20479202
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
3__inference_max_pooling2d_939_layer_call_fn_2048603

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
N__inference_max_pooling2d_939_layer_call_and_return_conditional_losses_20479072
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
?
?
G__inference_conv2d_939_layer_call_and_return_conditional_losses_2047897

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
j
N__inference_max_pooling2d_939_layer_call_and_return_conditional_losses_2048593

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
?
0__inference_sequential_313_layer_call_fn_2048049
conv2d_939_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_939_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
K__inference_sequential_313_layer_call_and_return_conditional_losses_20480222
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
_user_specified_nameconv2d_939_input
?
j
N__inference_max_pooling2d_939_layer_call_and_return_conditional_losses_2047822

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
?
O
3__inference_max_pooling2d_939_layer_call_fn_2048598

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
N__inference_max_pooling2d_939_layer_call_and_return_conditional_losses_20478222
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
N__inference_max_pooling2d_941_layer_call_and_return_conditional_losses_2048668

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
?
?
+__inference_dense_940_layer_call_fn_2048761

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
F__inference_dense_940_layer_call_and_return_conditional_losses_20479982
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
?
j
N__inference_max_pooling2d_940_layer_call_and_return_conditional_losses_2048628

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
F__inference_dense_940_layer_call_and_return_conditional_losses_2047998

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
3__inference_max_pooling2d_940_layer_call_fn_2048643

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
N__inference_max_pooling2d_940_layer_call_and_return_conditional_losses_20479302
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
?
j
N__inference_max_pooling2d_941_layer_call_and_return_conditional_losses_2047953

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
?
d
H__inference_flatten_313_layer_call_and_return_conditional_losses_2047961

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
?
j
N__inference_max_pooling2d_939_layer_call_and_return_conditional_losses_2048588

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
F__inference_dense_939_layer_call_and_return_conditional_losses_2047974

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
?
g
H__inference_dropout_313_layer_call_and_return_conditional_losses_2048089

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
?
f
H__inference_dropout_313_layer_call_and_return_conditional_losses_2047985

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
N__inference_max_pooling2d_939_layer_call_and_return_conditional_losses_2047907

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
?
j
N__inference_max_pooling2d_940_layer_call_and_return_conditional_losses_2047930

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
?
?
,__inference_conv2d_941_layer_call_fn_2048663

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
G__inference_conv2d_941_layer_call_and_return_conditional_losses_20479432
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
?
?
0__inference_sequential_313_layer_call_fn_2048563

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
K__inference_sequential_313_layer_call_and_return_conditional_losses_20482232
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
?
F__inference_dense_941_layer_call_and_return_conditional_losses_2048015

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
?G
?	
K__inference_sequential_313_layer_call_and_return_conditional_losses_2048446

inputsC
)conv2d_939_conv2d_readvariableop_resource: 8
*conv2d_939_biasadd_readvariableop_resource: C
)conv2d_940_conv2d_readvariableop_resource: @8
*conv2d_940_biasadd_readvariableop_resource:@D
)conv2d_941_conv2d_readvariableop_resource:@?9
*conv2d_941_biasadd_readvariableop_resource:	?;
(dense_939_matmul_readvariableop_resource:	?@7
)dense_939_biasadd_readvariableop_resource:@:
(dense_940_matmul_readvariableop_resource:@7
)dense_940_biasadd_readvariableop_resource::
(dense_941_matmul_readvariableop_resource:7
)dense_941_biasadd_readvariableop_resource:
identity??!conv2d_939/BiasAdd/ReadVariableOp? conv2d_939/Conv2D/ReadVariableOp?!conv2d_940/BiasAdd/ReadVariableOp? conv2d_940/Conv2D/ReadVariableOp?!conv2d_941/BiasAdd/ReadVariableOp? conv2d_941/Conv2D/ReadVariableOp? dense_939/BiasAdd/ReadVariableOp?dense_939/MatMul/ReadVariableOp? dense_940/BiasAdd/ReadVariableOp?dense_940/MatMul/ReadVariableOp? dense_941/BiasAdd/ReadVariableOp?dense_941/MatMul/ReadVariableOp?
 conv2d_939/Conv2D/ReadVariableOpReadVariableOp)conv2d_939_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_939/Conv2D/ReadVariableOp?
conv2d_939/Conv2DConv2Dinputs(conv2d_939/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
2
conv2d_939/Conv2D?
!conv2d_939/BiasAdd/ReadVariableOpReadVariableOp*conv2d_939_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_939/BiasAdd/ReadVariableOp?
conv2d_939/BiasAddBiasAddconv2d_939/Conv2D:output:0)conv2d_939/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] 2
conv2d_939/BiasAdd?
conv2d_939/ReluReluconv2d_939/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] 2
conv2d_939/Relu?
max_pooling2d_939/MaxPoolMaxPoolconv2d_939/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
2
max_pooling2d_939/MaxPool?
 conv2d_940/Conv2D/ReadVariableOpReadVariableOp)conv2d_940_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_940/Conv2D/ReadVariableOp?
conv2d_940/Conv2DConv2D"max_pooling2d_939/MaxPool:output:0(conv2d_940/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_940/Conv2D?
!conv2d_940/BiasAdd/ReadVariableOpReadVariableOp*conv2d_940_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_940/BiasAdd/ReadVariableOp?
conv2d_940/BiasAddBiasAddconv2d_940/Conv2D:output:0)conv2d_940/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_940/BiasAdd?
conv2d_940/ReluReluconv2d_940/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_940/Relu?
max_pooling2d_940/MaxPoolMaxPoolconv2d_940/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_940/MaxPool?
 conv2d_941/Conv2D/ReadVariableOpReadVariableOp)conv2d_941_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02"
 conv2d_941/Conv2D/ReadVariableOp?
conv2d_941/Conv2DConv2D"max_pooling2d_940/MaxPool:output:0(conv2d_941/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_941/Conv2D?
!conv2d_941/BiasAdd/ReadVariableOpReadVariableOp*conv2d_941_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_941/BiasAdd/ReadVariableOp?
conv2d_941/BiasAddBiasAddconv2d_941/Conv2D:output:0)conv2d_941/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_941/BiasAdd?
conv2d_941/ReluReluconv2d_941/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_941/Relu?
max_pooling2d_941/MaxPoolMaxPoolconv2d_941/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_941/MaxPoolw
flatten_313/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten_313/Const?
flatten_313/ReshapeReshape"max_pooling2d_941/MaxPool:output:0flatten_313/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_313/Reshape?
dense_939/MatMul/ReadVariableOpReadVariableOp(dense_939_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02!
dense_939/MatMul/ReadVariableOp?
dense_939/MatMulMatMulflatten_313/Reshape:output:0'dense_939/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_939/MatMul?
 dense_939/BiasAdd/ReadVariableOpReadVariableOp)dense_939_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_939/BiasAdd/ReadVariableOp?
dense_939/BiasAddBiasAdddense_939/MatMul:product:0(dense_939/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_939/BiasAddv
dense_939/TanhTanhdense_939/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_939/Tanh~
dropout_313/IdentityIdentitydense_939/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
dropout_313/Identity?
dense_940/MatMul/ReadVariableOpReadVariableOp(dense_940_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02!
dense_940/MatMul/ReadVariableOp?
dense_940/MatMulMatMuldropout_313/Identity:output:0'dense_940/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_940/MatMul?
 dense_940/BiasAdd/ReadVariableOpReadVariableOp)dense_940_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_940/BiasAdd/ReadVariableOp?
dense_940/BiasAddBiasAdddense_940/MatMul:product:0(dense_940/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_940/BiasAddv
dense_940/TanhTanhdense_940/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_940/Tanh?
dense_941/MatMul/ReadVariableOpReadVariableOp(dense_941_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_941/MatMul/ReadVariableOp?
dense_941/MatMulMatMuldense_940/Tanh:y:0'dense_941/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_941/MatMul?
 dense_941/BiasAdd/ReadVariableOpReadVariableOp)dense_941_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_941/BiasAdd/ReadVariableOp?
dense_941/BiasAddBiasAdddense_941/MatMul:product:0(dense_941/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_941/BiasAdd
dense_941/SigmoidSigmoiddense_941/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_941/Sigmoidp
IdentityIdentitydense_941/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_939/BiasAdd/ReadVariableOp!^conv2d_939/Conv2D/ReadVariableOp"^conv2d_940/BiasAdd/ReadVariableOp!^conv2d_940/Conv2D/ReadVariableOp"^conv2d_941/BiasAdd/ReadVariableOp!^conv2d_941/Conv2D/ReadVariableOp!^dense_939/BiasAdd/ReadVariableOp ^dense_939/MatMul/ReadVariableOp!^dense_940/BiasAdd/ReadVariableOp ^dense_940/MatMul/ReadVariableOp!^dense_941/BiasAdd/ReadVariableOp ^dense_941/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_939/BiasAdd/ReadVariableOp!conv2d_939/BiasAdd/ReadVariableOp2D
 conv2d_939/Conv2D/ReadVariableOp conv2d_939/Conv2D/ReadVariableOp2F
!conv2d_940/BiasAdd/ReadVariableOp!conv2d_940/BiasAdd/ReadVariableOp2D
 conv2d_940/Conv2D/ReadVariableOp conv2d_940/Conv2D/ReadVariableOp2F
!conv2d_941/BiasAdd/ReadVariableOp!conv2d_941/BiasAdd/ReadVariableOp2D
 conv2d_941/Conv2D/ReadVariableOp conv2d_941/Conv2D/ReadVariableOp2D
 dense_939/BiasAdd/ReadVariableOp dense_939/BiasAdd/ReadVariableOp2B
dense_939/MatMul/ReadVariableOpdense_939/MatMul/ReadVariableOp2D
 dense_940/BiasAdd/ReadVariableOp dense_940/BiasAdd/ReadVariableOp2B
dense_940/MatMul/ReadVariableOpdense_940/MatMul/ReadVariableOp2D
 dense_941/BiasAdd/ReadVariableOp dense_941/BiasAdd/ReadVariableOp2B
dense_941/MatMul/ReadVariableOpdense_941/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
j
N__inference_max_pooling2d_941_layer_call_and_return_conditional_losses_2047866

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
I
-__inference_flatten_313_layer_call_fn_2048694

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
H__inference_flatten_313_layer_call_and_return_conditional_losses_20479612
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
?
I
-__inference_dropout_313_layer_call_fn_2048736

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
H__inference_dropout_313_layer_call_and_return_conditional_losses_20479852
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
?
?
+__inference_dense_941_layer_call_fn_2048781

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
F__inference_dense_941_layer_call_and_return_conditional_losses_20480152
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
?
j
N__inference_max_pooling2d_941_layer_call_and_return_conditional_losses_2048673

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
?

?
F__inference_dense_940_layer_call_and_return_conditional_losses_2048752

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
?
O
3__inference_max_pooling2d_940_layer_call_fn_2048638

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
N__inference_max_pooling2d_940_layer_call_and_return_conditional_losses_20478442
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
N__inference_max_pooling2d_940_layer_call_and_return_conditional_losses_2048633

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
?\
?
"__inference__wrapped_model_2047813
conv2d_939_inputR
8sequential_313_conv2d_939_conv2d_readvariableop_resource: G
9sequential_313_conv2d_939_biasadd_readvariableop_resource: R
8sequential_313_conv2d_940_conv2d_readvariableop_resource: @G
9sequential_313_conv2d_940_biasadd_readvariableop_resource:@S
8sequential_313_conv2d_941_conv2d_readvariableop_resource:@?H
9sequential_313_conv2d_941_biasadd_readvariableop_resource:	?J
7sequential_313_dense_939_matmul_readvariableop_resource:	?@F
8sequential_313_dense_939_biasadd_readvariableop_resource:@I
7sequential_313_dense_940_matmul_readvariableop_resource:@F
8sequential_313_dense_940_biasadd_readvariableop_resource:I
7sequential_313_dense_941_matmul_readvariableop_resource:F
8sequential_313_dense_941_biasadd_readvariableop_resource:
identity??0sequential_313/conv2d_939/BiasAdd/ReadVariableOp?/sequential_313/conv2d_939/Conv2D/ReadVariableOp?0sequential_313/conv2d_940/BiasAdd/ReadVariableOp?/sequential_313/conv2d_940/Conv2D/ReadVariableOp?0sequential_313/conv2d_941/BiasAdd/ReadVariableOp?/sequential_313/conv2d_941/Conv2D/ReadVariableOp?/sequential_313/dense_939/BiasAdd/ReadVariableOp?.sequential_313/dense_939/MatMul/ReadVariableOp?/sequential_313/dense_940/BiasAdd/ReadVariableOp?.sequential_313/dense_940/MatMul/ReadVariableOp?/sequential_313/dense_941/BiasAdd/ReadVariableOp?.sequential_313/dense_941/MatMul/ReadVariableOp?
/sequential_313/conv2d_939/Conv2D/ReadVariableOpReadVariableOp8sequential_313_conv2d_939_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype021
/sequential_313/conv2d_939/Conv2D/ReadVariableOp?
 sequential_313/conv2d_939/Conv2DConv2Dconv2d_939_input7sequential_313/conv2d_939/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
2"
 sequential_313/conv2d_939/Conv2D?
0sequential_313/conv2d_939/BiasAdd/ReadVariableOpReadVariableOp9sequential_313_conv2d_939_biasadd_readvariableop_resource*
_output_shapes
: *
dtype022
0sequential_313/conv2d_939/BiasAdd/ReadVariableOp?
!sequential_313/conv2d_939/BiasAddBiasAdd)sequential_313/conv2d_939/Conv2D:output:08sequential_313/conv2d_939/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] 2#
!sequential_313/conv2d_939/BiasAdd?
sequential_313/conv2d_939/ReluRelu*sequential_313/conv2d_939/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] 2 
sequential_313/conv2d_939/Relu?
(sequential_313/max_pooling2d_939/MaxPoolMaxPool,sequential_313/conv2d_939/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
2*
(sequential_313/max_pooling2d_939/MaxPool?
/sequential_313/conv2d_940/Conv2D/ReadVariableOpReadVariableOp8sequential_313_conv2d_940_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype021
/sequential_313/conv2d_940/Conv2D/ReadVariableOp?
 sequential_313/conv2d_940/Conv2DConv2D1sequential_313/max_pooling2d_939/MaxPool:output:07sequential_313/conv2d_940/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2"
 sequential_313/conv2d_940/Conv2D?
0sequential_313/conv2d_940/BiasAdd/ReadVariableOpReadVariableOp9sequential_313_conv2d_940_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_313/conv2d_940/BiasAdd/ReadVariableOp?
!sequential_313/conv2d_940/BiasAddBiasAdd)sequential_313/conv2d_940/Conv2D:output:08sequential_313/conv2d_940/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2#
!sequential_313/conv2d_940/BiasAdd?
sequential_313/conv2d_940/ReluRelu*sequential_313/conv2d_940/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2 
sequential_313/conv2d_940/Relu?
(sequential_313/max_pooling2d_940/MaxPoolMaxPool,sequential_313/conv2d_940/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2*
(sequential_313/max_pooling2d_940/MaxPool?
/sequential_313/conv2d_941/Conv2D/ReadVariableOpReadVariableOp8sequential_313_conv2d_941_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype021
/sequential_313/conv2d_941/Conv2D/ReadVariableOp?
 sequential_313/conv2d_941/Conv2DConv2D1sequential_313/max_pooling2d_940/MaxPool:output:07sequential_313/conv2d_941/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2"
 sequential_313/conv2d_941/Conv2D?
0sequential_313/conv2d_941/BiasAdd/ReadVariableOpReadVariableOp9sequential_313_conv2d_941_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0sequential_313/conv2d_941/BiasAdd/ReadVariableOp?
!sequential_313/conv2d_941/BiasAddBiasAdd)sequential_313/conv2d_941/Conv2D:output:08sequential_313/conv2d_941/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2#
!sequential_313/conv2d_941/BiasAdd?
sequential_313/conv2d_941/ReluRelu*sequential_313/conv2d_941/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2 
sequential_313/conv2d_941/Relu?
(sequential_313/max_pooling2d_941/MaxPoolMaxPool,sequential_313/conv2d_941/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2*
(sequential_313/max_pooling2d_941/MaxPool?
 sequential_313/flatten_313/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2"
 sequential_313/flatten_313/Const?
"sequential_313/flatten_313/ReshapeReshape1sequential_313/max_pooling2d_941/MaxPool:output:0)sequential_313/flatten_313/Const:output:0*
T0*(
_output_shapes
:??????????2$
"sequential_313/flatten_313/Reshape?
.sequential_313/dense_939/MatMul/ReadVariableOpReadVariableOp7sequential_313_dense_939_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype020
.sequential_313/dense_939/MatMul/ReadVariableOp?
sequential_313/dense_939/MatMulMatMul+sequential_313/flatten_313/Reshape:output:06sequential_313/dense_939/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
sequential_313/dense_939/MatMul?
/sequential_313/dense_939/BiasAdd/ReadVariableOpReadVariableOp8sequential_313_dense_939_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_313/dense_939/BiasAdd/ReadVariableOp?
 sequential_313/dense_939/BiasAddBiasAdd)sequential_313/dense_939/MatMul:product:07sequential_313/dense_939/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 sequential_313/dense_939/BiasAdd?
sequential_313/dense_939/TanhTanh)sequential_313/dense_939/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential_313/dense_939/Tanh?
#sequential_313/dropout_313/IdentityIdentity!sequential_313/dense_939/Tanh:y:0*
T0*'
_output_shapes
:?????????@2%
#sequential_313/dropout_313/Identity?
.sequential_313/dense_940/MatMul/ReadVariableOpReadVariableOp7sequential_313_dense_940_matmul_readvariableop_resource*
_output_shapes

:@*
dtype020
.sequential_313/dense_940/MatMul/ReadVariableOp?
sequential_313/dense_940/MatMulMatMul,sequential_313/dropout_313/Identity:output:06sequential_313/dense_940/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_313/dense_940/MatMul?
/sequential_313/dense_940/BiasAdd/ReadVariableOpReadVariableOp8sequential_313_dense_940_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_313/dense_940/BiasAdd/ReadVariableOp?
 sequential_313/dense_940/BiasAddBiasAdd)sequential_313/dense_940/MatMul:product:07sequential_313/dense_940/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 sequential_313/dense_940/BiasAdd?
sequential_313/dense_940/TanhTanh)sequential_313/dense_940/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_313/dense_940/Tanh?
.sequential_313/dense_941/MatMul/ReadVariableOpReadVariableOp7sequential_313_dense_941_matmul_readvariableop_resource*
_output_shapes

:*
dtype020
.sequential_313/dense_941/MatMul/ReadVariableOp?
sequential_313/dense_941/MatMulMatMul!sequential_313/dense_940/Tanh:y:06sequential_313/dense_941/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_313/dense_941/MatMul?
/sequential_313/dense_941/BiasAdd/ReadVariableOpReadVariableOp8sequential_313_dense_941_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_313/dense_941/BiasAdd/ReadVariableOp?
 sequential_313/dense_941/BiasAddBiasAdd)sequential_313/dense_941/MatMul:product:07sequential_313/dense_941/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 sequential_313/dense_941/BiasAdd?
 sequential_313/dense_941/SigmoidSigmoid)sequential_313/dense_941/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2"
 sequential_313/dense_941/Sigmoid
IdentityIdentity$sequential_313/dense_941/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp1^sequential_313/conv2d_939/BiasAdd/ReadVariableOp0^sequential_313/conv2d_939/Conv2D/ReadVariableOp1^sequential_313/conv2d_940/BiasAdd/ReadVariableOp0^sequential_313/conv2d_940/Conv2D/ReadVariableOp1^sequential_313/conv2d_941/BiasAdd/ReadVariableOp0^sequential_313/conv2d_941/Conv2D/ReadVariableOp0^sequential_313/dense_939/BiasAdd/ReadVariableOp/^sequential_313/dense_939/MatMul/ReadVariableOp0^sequential_313/dense_940/BiasAdd/ReadVariableOp/^sequential_313/dense_940/MatMul/ReadVariableOp0^sequential_313/dense_941/BiasAdd/ReadVariableOp/^sequential_313/dense_941/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2d
0sequential_313/conv2d_939/BiasAdd/ReadVariableOp0sequential_313/conv2d_939/BiasAdd/ReadVariableOp2b
/sequential_313/conv2d_939/Conv2D/ReadVariableOp/sequential_313/conv2d_939/Conv2D/ReadVariableOp2d
0sequential_313/conv2d_940/BiasAdd/ReadVariableOp0sequential_313/conv2d_940/BiasAdd/ReadVariableOp2b
/sequential_313/conv2d_940/Conv2D/ReadVariableOp/sequential_313/conv2d_940/Conv2D/ReadVariableOp2d
0sequential_313/conv2d_941/BiasAdd/ReadVariableOp0sequential_313/conv2d_941/BiasAdd/ReadVariableOp2b
/sequential_313/conv2d_941/Conv2D/ReadVariableOp/sequential_313/conv2d_941/Conv2D/ReadVariableOp2b
/sequential_313/dense_939/BiasAdd/ReadVariableOp/sequential_313/dense_939/BiasAdd/ReadVariableOp2`
.sequential_313/dense_939/MatMul/ReadVariableOp.sequential_313/dense_939/MatMul/ReadVariableOp2b
/sequential_313/dense_940/BiasAdd/ReadVariableOp/sequential_313/dense_940/BiasAdd/ReadVariableOp2`
.sequential_313/dense_940/MatMul/ReadVariableOp.sequential_313/dense_940/MatMul/ReadVariableOp2b
/sequential_313/dense_941/BiasAdd/ReadVariableOp/sequential_313/dense_941/BiasAdd/ReadVariableOp2`
.sequential_313/dense_941/MatMul/ReadVariableOp.sequential_313/dense_941/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_939_input
?
f
-__inference_dropout_313_layer_call_fn_2048741

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
H__inference_dropout_313_layer_call_and_return_conditional_losses_20480892
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
?

?
F__inference_dense_939_layer_call_and_return_conditional_losses_2048705

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
?P
?	
K__inference_sequential_313_layer_call_and_return_conditional_losses_2048505

inputsC
)conv2d_939_conv2d_readvariableop_resource: 8
*conv2d_939_biasadd_readvariableop_resource: C
)conv2d_940_conv2d_readvariableop_resource: @8
*conv2d_940_biasadd_readvariableop_resource:@D
)conv2d_941_conv2d_readvariableop_resource:@?9
*conv2d_941_biasadd_readvariableop_resource:	?;
(dense_939_matmul_readvariableop_resource:	?@7
)dense_939_biasadd_readvariableop_resource:@:
(dense_940_matmul_readvariableop_resource:@7
)dense_940_biasadd_readvariableop_resource::
(dense_941_matmul_readvariableop_resource:7
)dense_941_biasadd_readvariableop_resource:
identity??!conv2d_939/BiasAdd/ReadVariableOp? conv2d_939/Conv2D/ReadVariableOp?!conv2d_940/BiasAdd/ReadVariableOp? conv2d_940/Conv2D/ReadVariableOp?!conv2d_941/BiasAdd/ReadVariableOp? conv2d_941/Conv2D/ReadVariableOp? dense_939/BiasAdd/ReadVariableOp?dense_939/MatMul/ReadVariableOp? dense_940/BiasAdd/ReadVariableOp?dense_940/MatMul/ReadVariableOp? dense_941/BiasAdd/ReadVariableOp?dense_941/MatMul/ReadVariableOp?
 conv2d_939/Conv2D/ReadVariableOpReadVariableOp)conv2d_939_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_939/Conv2D/ReadVariableOp?
conv2d_939/Conv2DConv2Dinputs(conv2d_939/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
2
conv2d_939/Conv2D?
!conv2d_939/BiasAdd/ReadVariableOpReadVariableOp*conv2d_939_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_939/BiasAdd/ReadVariableOp?
conv2d_939/BiasAddBiasAddconv2d_939/Conv2D:output:0)conv2d_939/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] 2
conv2d_939/BiasAdd?
conv2d_939/ReluReluconv2d_939/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] 2
conv2d_939/Relu?
max_pooling2d_939/MaxPoolMaxPoolconv2d_939/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
2
max_pooling2d_939/MaxPool?
 conv2d_940/Conv2D/ReadVariableOpReadVariableOp)conv2d_940_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_940/Conv2D/ReadVariableOp?
conv2d_940/Conv2DConv2D"max_pooling2d_939/MaxPool:output:0(conv2d_940/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_940/Conv2D?
!conv2d_940/BiasAdd/ReadVariableOpReadVariableOp*conv2d_940_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_940/BiasAdd/ReadVariableOp?
conv2d_940/BiasAddBiasAddconv2d_940/Conv2D:output:0)conv2d_940/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_940/BiasAdd?
conv2d_940/ReluReluconv2d_940/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_940/Relu?
max_pooling2d_940/MaxPoolMaxPoolconv2d_940/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_940/MaxPool?
 conv2d_941/Conv2D/ReadVariableOpReadVariableOp)conv2d_941_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02"
 conv2d_941/Conv2D/ReadVariableOp?
conv2d_941/Conv2DConv2D"max_pooling2d_940/MaxPool:output:0(conv2d_941/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_941/Conv2D?
!conv2d_941/BiasAdd/ReadVariableOpReadVariableOp*conv2d_941_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_941/BiasAdd/ReadVariableOp?
conv2d_941/BiasAddBiasAddconv2d_941/Conv2D:output:0)conv2d_941/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_941/BiasAdd?
conv2d_941/ReluReluconv2d_941/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_941/Relu?
max_pooling2d_941/MaxPoolMaxPoolconv2d_941/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_941/MaxPoolw
flatten_313/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten_313/Const?
flatten_313/ReshapeReshape"max_pooling2d_941/MaxPool:output:0flatten_313/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_313/Reshape?
dense_939/MatMul/ReadVariableOpReadVariableOp(dense_939_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02!
dense_939/MatMul/ReadVariableOp?
dense_939/MatMulMatMulflatten_313/Reshape:output:0'dense_939/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_939/MatMul?
 dense_939/BiasAdd/ReadVariableOpReadVariableOp)dense_939_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_939/BiasAdd/ReadVariableOp?
dense_939/BiasAddBiasAdddense_939/MatMul:product:0(dense_939/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_939/BiasAddv
dense_939/TanhTanhdense_939/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_939/Tanh{
dropout_313/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_313/dropout/Const?
dropout_313/dropout/MulMuldense_939/Tanh:y:0"dropout_313/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_313/dropout/Mulx
dropout_313/dropout/ShapeShapedense_939/Tanh:y:0*
T0*
_output_shapes
:2
dropout_313/dropout/Shape?
0dropout_313/dropout/random_uniform/RandomUniformRandomUniform"dropout_313/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype022
0dropout_313/dropout/random_uniform/RandomUniform?
"dropout_313/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"dropout_313/dropout/GreaterEqual/y?
 dropout_313/dropout/GreaterEqualGreaterEqual9dropout_313/dropout/random_uniform/RandomUniform:output:0+dropout_313/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 dropout_313/dropout/GreaterEqual?
dropout_313/dropout/CastCast$dropout_313/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_313/dropout/Cast?
dropout_313/dropout/Mul_1Muldropout_313/dropout/Mul:z:0dropout_313/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_313/dropout/Mul_1?
dense_940/MatMul/ReadVariableOpReadVariableOp(dense_940_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02!
dense_940/MatMul/ReadVariableOp?
dense_940/MatMulMatMuldropout_313/dropout/Mul_1:z:0'dense_940/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_940/MatMul?
 dense_940/BiasAdd/ReadVariableOpReadVariableOp)dense_940_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_940/BiasAdd/ReadVariableOp?
dense_940/BiasAddBiasAdddense_940/MatMul:product:0(dense_940/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_940/BiasAddv
dense_940/TanhTanhdense_940/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_940/Tanh?
dense_941/MatMul/ReadVariableOpReadVariableOp(dense_941_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_941/MatMul/ReadVariableOp?
dense_941/MatMulMatMuldense_940/Tanh:y:0'dense_941/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_941/MatMul?
 dense_941/BiasAdd/ReadVariableOpReadVariableOp)dense_941_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_941/BiasAdd/ReadVariableOp?
dense_941/BiasAddBiasAdddense_941/MatMul:product:0(dense_941/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_941/BiasAdd
dense_941/SigmoidSigmoiddense_941/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_941/Sigmoidp
IdentityIdentitydense_941/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_939/BiasAdd/ReadVariableOp!^conv2d_939/Conv2D/ReadVariableOp"^conv2d_940/BiasAdd/ReadVariableOp!^conv2d_940/Conv2D/ReadVariableOp"^conv2d_941/BiasAdd/ReadVariableOp!^conv2d_941/Conv2D/ReadVariableOp!^dense_939/BiasAdd/ReadVariableOp ^dense_939/MatMul/ReadVariableOp!^dense_940/BiasAdd/ReadVariableOp ^dense_940/MatMul/ReadVariableOp!^dense_941/BiasAdd/ReadVariableOp ^dense_941/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_939/BiasAdd/ReadVariableOp!conv2d_939/BiasAdd/ReadVariableOp2D
 conv2d_939/Conv2D/ReadVariableOp conv2d_939/Conv2D/ReadVariableOp2F
!conv2d_940/BiasAdd/ReadVariableOp!conv2d_940/BiasAdd/ReadVariableOp2D
 conv2d_940/Conv2D/ReadVariableOp conv2d_940/Conv2D/ReadVariableOp2F
!conv2d_941/BiasAdd/ReadVariableOp!conv2d_941/BiasAdd/ReadVariableOp2D
 conv2d_941/Conv2D/ReadVariableOp conv2d_941/Conv2D/ReadVariableOp2D
 dense_939/BiasAdd/ReadVariableOp dense_939/BiasAdd/ReadVariableOp2B
dense_939/MatMul/ReadVariableOpdense_939/MatMul/ReadVariableOp2D
 dense_940/BiasAdd/ReadVariableOp dense_940/BiasAdd/ReadVariableOp2B
dense_940/MatMul/ReadVariableOpdense_940/MatMul/ReadVariableOp2D
 dense_941/BiasAdd/ReadVariableOp dense_941/BiasAdd/ReadVariableOp2B
dense_941/MatMul/ReadVariableOpdense_941/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
+__inference_dense_939_layer_call_fn_2048714

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
F__inference_dense_939_layer_call_and_return_conditional_losses_20479742
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
?3
?
K__inference_sequential_313_layer_call_and_return_conditional_losses_2048022

inputs,
conv2d_939_2047898:  
conv2d_939_2047900: ,
conv2d_940_2047921: @ 
conv2d_940_2047923:@-
conv2d_941_2047944:@?!
conv2d_941_2047946:	?$
dense_939_2047975:	?@
dense_939_2047977:@#
dense_940_2047999:@
dense_940_2048001:#
dense_941_2048016:
dense_941_2048018:
identity??"conv2d_939/StatefulPartitionedCall?"conv2d_940/StatefulPartitionedCall?"conv2d_941/StatefulPartitionedCall?!dense_939/StatefulPartitionedCall?!dense_940/StatefulPartitionedCall?!dense_941/StatefulPartitionedCall?
"conv2d_939/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_939_2047898conv2d_939_2047900*
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
G__inference_conv2d_939_layer_call_and_return_conditional_losses_20478972$
"conv2d_939/StatefulPartitionedCall?
!max_pooling2d_939/PartitionedCallPartitionedCall+conv2d_939/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_939_layer_call_and_return_conditional_losses_20479072#
!max_pooling2d_939/PartitionedCall?
"conv2d_940/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_939/PartitionedCall:output:0conv2d_940_2047921conv2d_940_2047923*
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
G__inference_conv2d_940_layer_call_and_return_conditional_losses_20479202$
"conv2d_940/StatefulPartitionedCall?
!max_pooling2d_940/PartitionedCallPartitionedCall+conv2d_940/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_940_layer_call_and_return_conditional_losses_20479302#
!max_pooling2d_940/PartitionedCall?
"conv2d_941/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_940/PartitionedCall:output:0conv2d_941_2047944conv2d_941_2047946*
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
G__inference_conv2d_941_layer_call_and_return_conditional_losses_20479432$
"conv2d_941/StatefulPartitionedCall?
!max_pooling2d_941/PartitionedCallPartitionedCall+conv2d_941/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_941_layer_call_and_return_conditional_losses_20479532#
!max_pooling2d_941/PartitionedCall?
flatten_313/PartitionedCallPartitionedCall*max_pooling2d_941/PartitionedCall:output:0*
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
H__inference_flatten_313_layer_call_and_return_conditional_losses_20479612
flatten_313/PartitionedCall?
!dense_939/StatefulPartitionedCallStatefulPartitionedCall$flatten_313/PartitionedCall:output:0dense_939_2047975dense_939_2047977*
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
F__inference_dense_939_layer_call_and_return_conditional_losses_20479742#
!dense_939/StatefulPartitionedCall?
dropout_313/PartitionedCallPartitionedCall*dense_939/StatefulPartitionedCall:output:0*
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
H__inference_dropout_313_layer_call_and_return_conditional_losses_20479852
dropout_313/PartitionedCall?
!dense_940/StatefulPartitionedCallStatefulPartitionedCall$dropout_313/PartitionedCall:output:0dense_940_2047999dense_940_2048001*
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
F__inference_dense_940_layer_call_and_return_conditional_losses_20479982#
!dense_940/StatefulPartitionedCall?
!dense_941/StatefulPartitionedCallStatefulPartitionedCall*dense_940/StatefulPartitionedCall:output:0dense_941_2048016dense_941_2048018*
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
F__inference_dense_941_layer_call_and_return_conditional_losses_20480152#
!dense_941/StatefulPartitionedCall?
IdentityIdentity*dense_941/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_939/StatefulPartitionedCall#^conv2d_940/StatefulPartitionedCall#^conv2d_941/StatefulPartitionedCall"^dense_939/StatefulPartitionedCall"^dense_940/StatefulPartitionedCall"^dense_941/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_939/StatefulPartitionedCall"conv2d_939/StatefulPartitionedCall2H
"conv2d_940/StatefulPartitionedCall"conv2d_940/StatefulPartitionedCall2H
"conv2d_941/StatefulPartitionedCall"conv2d_941/StatefulPartitionedCall2F
!dense_939/StatefulPartitionedCall!dense_939/StatefulPartitionedCall2F
!dense_940/StatefulPartitionedCall!dense_940/StatefulPartitionedCall2F
!dense_941/StatefulPartitionedCall!dense_941/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?^
?
 __inference__traced_save_2048939
file_prefix0
,savev2_conv2d_939_kernel_read_readvariableop.
*savev2_conv2d_939_bias_read_readvariableop0
,savev2_conv2d_940_kernel_read_readvariableop.
*savev2_conv2d_940_bias_read_readvariableop0
,savev2_conv2d_941_kernel_read_readvariableop.
*savev2_conv2d_941_bias_read_readvariableop/
+savev2_dense_939_kernel_read_readvariableop-
)savev2_dense_939_bias_read_readvariableop/
+savev2_dense_940_kernel_read_readvariableop-
)savev2_dense_940_bias_read_readvariableop/
+savev2_dense_941_kernel_read_readvariableop-
)savev2_dense_941_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv2d_939_kernel_m_read_readvariableop5
1savev2_adam_conv2d_939_bias_m_read_readvariableop7
3savev2_adam_conv2d_940_kernel_m_read_readvariableop5
1savev2_adam_conv2d_940_bias_m_read_readvariableop7
3savev2_adam_conv2d_941_kernel_m_read_readvariableop5
1savev2_adam_conv2d_941_bias_m_read_readvariableop6
2savev2_adam_dense_939_kernel_m_read_readvariableop4
0savev2_adam_dense_939_bias_m_read_readvariableop6
2savev2_adam_dense_940_kernel_m_read_readvariableop4
0savev2_adam_dense_940_bias_m_read_readvariableop6
2savev2_adam_dense_941_kernel_m_read_readvariableop4
0savev2_adam_dense_941_bias_m_read_readvariableop7
3savev2_adam_conv2d_939_kernel_v_read_readvariableop5
1savev2_adam_conv2d_939_bias_v_read_readvariableop7
3savev2_adam_conv2d_940_kernel_v_read_readvariableop5
1savev2_adam_conv2d_940_bias_v_read_readvariableop7
3savev2_adam_conv2d_941_kernel_v_read_readvariableop5
1savev2_adam_conv2d_941_bias_v_read_readvariableop6
2savev2_adam_dense_939_kernel_v_read_readvariableop4
0savev2_adam_dense_939_bias_v_read_readvariableop6
2savev2_adam_dense_940_kernel_v_read_readvariableop4
0savev2_adam_dense_940_bias_v_read_readvariableop6
2savev2_adam_dense_941_kernel_v_read_readvariableop4
0savev2_adam_dense_941_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_939_kernel_read_readvariableop*savev2_conv2d_939_bias_read_readvariableop,savev2_conv2d_940_kernel_read_readvariableop*savev2_conv2d_940_bias_read_readvariableop,savev2_conv2d_941_kernel_read_readvariableop*savev2_conv2d_941_bias_read_readvariableop+savev2_dense_939_kernel_read_readvariableop)savev2_dense_939_bias_read_readvariableop+savev2_dense_940_kernel_read_readvariableop)savev2_dense_940_bias_read_readvariableop+savev2_dense_941_kernel_read_readvariableop)savev2_dense_941_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv2d_939_kernel_m_read_readvariableop1savev2_adam_conv2d_939_bias_m_read_readvariableop3savev2_adam_conv2d_940_kernel_m_read_readvariableop1savev2_adam_conv2d_940_bias_m_read_readvariableop3savev2_adam_conv2d_941_kernel_m_read_readvariableop1savev2_adam_conv2d_941_bias_m_read_readvariableop2savev2_adam_dense_939_kernel_m_read_readvariableop0savev2_adam_dense_939_bias_m_read_readvariableop2savev2_adam_dense_940_kernel_m_read_readvariableop0savev2_adam_dense_940_bias_m_read_readvariableop2savev2_adam_dense_941_kernel_m_read_readvariableop0savev2_adam_dense_941_bias_m_read_readvariableop3savev2_adam_conv2d_939_kernel_v_read_readvariableop1savev2_adam_conv2d_939_bias_v_read_readvariableop3savev2_adam_conv2d_940_kernel_v_read_readvariableop1savev2_adam_conv2d_940_bias_v_read_readvariableop3savev2_adam_conv2d_941_kernel_v_read_readvariableop1savev2_adam_conv2d_941_bias_v_read_readvariableop2savev2_adam_dense_939_kernel_v_read_readvariableop0savev2_adam_dense_939_bias_v_read_readvariableop2savev2_adam_dense_940_kernel_v_read_readvariableop0savev2_adam_dense_940_bias_v_read_readvariableop2savev2_adam_dense_941_kernel_v_read_readvariableop0savev2_adam_dense_941_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
G__inference_conv2d_940_layer_call_and_return_conditional_losses_2047920

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
?
g
H__inference_dropout_313_layer_call_and_return_conditional_losses_2048731

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
?3
?
K__inference_sequential_313_layer_call_and_return_conditional_losses_2048318
conv2d_939_input,
conv2d_939_2048282:  
conv2d_939_2048284: ,
conv2d_940_2048288: @ 
conv2d_940_2048290:@-
conv2d_941_2048294:@?!
conv2d_941_2048296:	?$
dense_939_2048301:	?@
dense_939_2048303:@#
dense_940_2048307:@
dense_940_2048309:#
dense_941_2048312:
dense_941_2048314:
identity??"conv2d_939/StatefulPartitionedCall?"conv2d_940/StatefulPartitionedCall?"conv2d_941/StatefulPartitionedCall?!dense_939/StatefulPartitionedCall?!dense_940/StatefulPartitionedCall?!dense_941/StatefulPartitionedCall?
"conv2d_939/StatefulPartitionedCallStatefulPartitionedCallconv2d_939_inputconv2d_939_2048282conv2d_939_2048284*
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
G__inference_conv2d_939_layer_call_and_return_conditional_losses_20478972$
"conv2d_939/StatefulPartitionedCall?
!max_pooling2d_939/PartitionedCallPartitionedCall+conv2d_939/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_939_layer_call_and_return_conditional_losses_20479072#
!max_pooling2d_939/PartitionedCall?
"conv2d_940/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_939/PartitionedCall:output:0conv2d_940_2048288conv2d_940_2048290*
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
G__inference_conv2d_940_layer_call_and_return_conditional_losses_20479202$
"conv2d_940/StatefulPartitionedCall?
!max_pooling2d_940/PartitionedCallPartitionedCall+conv2d_940/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_940_layer_call_and_return_conditional_losses_20479302#
!max_pooling2d_940/PartitionedCall?
"conv2d_941/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_940/PartitionedCall:output:0conv2d_941_2048294conv2d_941_2048296*
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
G__inference_conv2d_941_layer_call_and_return_conditional_losses_20479432$
"conv2d_941/StatefulPartitionedCall?
!max_pooling2d_941/PartitionedCallPartitionedCall+conv2d_941/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_941_layer_call_and_return_conditional_losses_20479532#
!max_pooling2d_941/PartitionedCall?
flatten_313/PartitionedCallPartitionedCall*max_pooling2d_941/PartitionedCall:output:0*
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
H__inference_flatten_313_layer_call_and_return_conditional_losses_20479612
flatten_313/PartitionedCall?
!dense_939/StatefulPartitionedCallStatefulPartitionedCall$flatten_313/PartitionedCall:output:0dense_939_2048301dense_939_2048303*
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
F__inference_dense_939_layer_call_and_return_conditional_losses_20479742#
!dense_939/StatefulPartitionedCall?
dropout_313/PartitionedCallPartitionedCall*dense_939/StatefulPartitionedCall:output:0*
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
H__inference_dropout_313_layer_call_and_return_conditional_losses_20479852
dropout_313/PartitionedCall?
!dense_940/StatefulPartitionedCallStatefulPartitionedCall$dropout_313/PartitionedCall:output:0dense_940_2048307dense_940_2048309*
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
F__inference_dense_940_layer_call_and_return_conditional_losses_20479982#
!dense_940/StatefulPartitionedCall?
!dense_941/StatefulPartitionedCallStatefulPartitionedCall*dense_940/StatefulPartitionedCall:output:0dense_941_2048312dense_941_2048314*
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
F__inference_dense_941_layer_call_and_return_conditional_losses_20480152#
!dense_941/StatefulPartitionedCall?
IdentityIdentity*dense_941/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_939/StatefulPartitionedCall#^conv2d_940/StatefulPartitionedCall#^conv2d_941/StatefulPartitionedCall"^dense_939/StatefulPartitionedCall"^dense_940/StatefulPartitionedCall"^dense_941/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_939/StatefulPartitionedCall"conv2d_939/StatefulPartitionedCall2H
"conv2d_940/StatefulPartitionedCall"conv2d_940/StatefulPartitionedCall2H
"conv2d_941/StatefulPartitionedCall"conv2d_941/StatefulPartitionedCall2F
!dense_939/StatefulPartitionedCall!dense_939/StatefulPartitionedCall2F
!dense_940/StatefulPartitionedCall!dense_940/StatefulPartitionedCall2F
!dense_941/StatefulPartitionedCall!dense_941/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_939_input
?
?
G__inference_conv2d_940_layer_call_and_return_conditional_losses_2048614

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
?
d
H__inference_flatten_313_layer_call_and_return_conditional_losses_2048689

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
?5
?
K__inference_sequential_313_layer_call_and_return_conditional_losses_2048357
conv2d_939_input,
conv2d_939_2048321:  
conv2d_939_2048323: ,
conv2d_940_2048327: @ 
conv2d_940_2048329:@-
conv2d_941_2048333:@?!
conv2d_941_2048335:	?$
dense_939_2048340:	?@
dense_939_2048342:@#
dense_940_2048346:@
dense_940_2048348:#
dense_941_2048351:
dense_941_2048353:
identity??"conv2d_939/StatefulPartitionedCall?"conv2d_940/StatefulPartitionedCall?"conv2d_941/StatefulPartitionedCall?!dense_939/StatefulPartitionedCall?!dense_940/StatefulPartitionedCall?!dense_941/StatefulPartitionedCall?#dropout_313/StatefulPartitionedCall?
"conv2d_939/StatefulPartitionedCallStatefulPartitionedCallconv2d_939_inputconv2d_939_2048321conv2d_939_2048323*
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
G__inference_conv2d_939_layer_call_and_return_conditional_losses_20478972$
"conv2d_939/StatefulPartitionedCall?
!max_pooling2d_939/PartitionedCallPartitionedCall+conv2d_939/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_939_layer_call_and_return_conditional_losses_20479072#
!max_pooling2d_939/PartitionedCall?
"conv2d_940/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_939/PartitionedCall:output:0conv2d_940_2048327conv2d_940_2048329*
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
G__inference_conv2d_940_layer_call_and_return_conditional_losses_20479202$
"conv2d_940/StatefulPartitionedCall?
!max_pooling2d_940/PartitionedCallPartitionedCall+conv2d_940/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_940_layer_call_and_return_conditional_losses_20479302#
!max_pooling2d_940/PartitionedCall?
"conv2d_941/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_940/PartitionedCall:output:0conv2d_941_2048333conv2d_941_2048335*
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
G__inference_conv2d_941_layer_call_and_return_conditional_losses_20479432$
"conv2d_941/StatefulPartitionedCall?
!max_pooling2d_941/PartitionedCallPartitionedCall+conv2d_941/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_941_layer_call_and_return_conditional_losses_20479532#
!max_pooling2d_941/PartitionedCall?
flatten_313/PartitionedCallPartitionedCall*max_pooling2d_941/PartitionedCall:output:0*
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
H__inference_flatten_313_layer_call_and_return_conditional_losses_20479612
flatten_313/PartitionedCall?
!dense_939/StatefulPartitionedCallStatefulPartitionedCall$flatten_313/PartitionedCall:output:0dense_939_2048340dense_939_2048342*
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
F__inference_dense_939_layer_call_and_return_conditional_losses_20479742#
!dense_939/StatefulPartitionedCall?
#dropout_313/StatefulPartitionedCallStatefulPartitionedCall*dense_939/StatefulPartitionedCall:output:0*
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
H__inference_dropout_313_layer_call_and_return_conditional_losses_20480892%
#dropout_313/StatefulPartitionedCall?
!dense_940/StatefulPartitionedCallStatefulPartitionedCall,dropout_313/StatefulPartitionedCall:output:0dense_940_2048346dense_940_2048348*
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
F__inference_dense_940_layer_call_and_return_conditional_losses_20479982#
!dense_940/StatefulPartitionedCall?
!dense_941/StatefulPartitionedCallStatefulPartitionedCall*dense_940/StatefulPartitionedCall:output:0dense_941_2048351dense_941_2048353*
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
F__inference_dense_941_layer_call_and_return_conditional_losses_20480152#
!dense_941/StatefulPartitionedCall?
IdentityIdentity*dense_941/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_939/StatefulPartitionedCall#^conv2d_940/StatefulPartitionedCall#^conv2d_941/StatefulPartitionedCall"^dense_939/StatefulPartitionedCall"^dense_940/StatefulPartitionedCall"^dense_941/StatefulPartitionedCall$^dropout_313/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_939/StatefulPartitionedCall"conv2d_939/StatefulPartitionedCall2H
"conv2d_940/StatefulPartitionedCall"conv2d_940/StatefulPartitionedCall2H
"conv2d_941/StatefulPartitionedCall"conv2d_941/StatefulPartitionedCall2F
!dense_939/StatefulPartitionedCall!dense_939/StatefulPartitionedCall2F
!dense_940/StatefulPartitionedCall!dense_940/StatefulPartitionedCall2F
!dense_941/StatefulPartitionedCall!dense_941/StatefulPartitionedCall2J
#dropout_313/StatefulPartitionedCall#dropout_313/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_939_input
?5
?
K__inference_sequential_313_layer_call_and_return_conditional_losses_2048223

inputs,
conv2d_939_2048187:  
conv2d_939_2048189: ,
conv2d_940_2048193: @ 
conv2d_940_2048195:@-
conv2d_941_2048199:@?!
conv2d_941_2048201:	?$
dense_939_2048206:	?@
dense_939_2048208:@#
dense_940_2048212:@
dense_940_2048214:#
dense_941_2048217:
dense_941_2048219:
identity??"conv2d_939/StatefulPartitionedCall?"conv2d_940/StatefulPartitionedCall?"conv2d_941/StatefulPartitionedCall?!dense_939/StatefulPartitionedCall?!dense_940/StatefulPartitionedCall?!dense_941/StatefulPartitionedCall?#dropout_313/StatefulPartitionedCall?
"conv2d_939/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_939_2048187conv2d_939_2048189*
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
G__inference_conv2d_939_layer_call_and_return_conditional_losses_20478972$
"conv2d_939/StatefulPartitionedCall?
!max_pooling2d_939/PartitionedCallPartitionedCall+conv2d_939/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_939_layer_call_and_return_conditional_losses_20479072#
!max_pooling2d_939/PartitionedCall?
"conv2d_940/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_939/PartitionedCall:output:0conv2d_940_2048193conv2d_940_2048195*
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
G__inference_conv2d_940_layer_call_and_return_conditional_losses_20479202$
"conv2d_940/StatefulPartitionedCall?
!max_pooling2d_940/PartitionedCallPartitionedCall+conv2d_940/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_940_layer_call_and_return_conditional_losses_20479302#
!max_pooling2d_940/PartitionedCall?
"conv2d_941/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_940/PartitionedCall:output:0conv2d_941_2048199conv2d_941_2048201*
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
G__inference_conv2d_941_layer_call_and_return_conditional_losses_20479432$
"conv2d_941/StatefulPartitionedCall?
!max_pooling2d_941/PartitionedCallPartitionedCall+conv2d_941/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_941_layer_call_and_return_conditional_losses_20479532#
!max_pooling2d_941/PartitionedCall?
flatten_313/PartitionedCallPartitionedCall*max_pooling2d_941/PartitionedCall:output:0*
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
H__inference_flatten_313_layer_call_and_return_conditional_losses_20479612
flatten_313/PartitionedCall?
!dense_939/StatefulPartitionedCallStatefulPartitionedCall$flatten_313/PartitionedCall:output:0dense_939_2048206dense_939_2048208*
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
F__inference_dense_939_layer_call_and_return_conditional_losses_20479742#
!dense_939/StatefulPartitionedCall?
#dropout_313/StatefulPartitionedCallStatefulPartitionedCall*dense_939/StatefulPartitionedCall:output:0*
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
H__inference_dropout_313_layer_call_and_return_conditional_losses_20480892%
#dropout_313/StatefulPartitionedCall?
!dense_940/StatefulPartitionedCallStatefulPartitionedCall,dropout_313/StatefulPartitionedCall:output:0dense_940_2048212dense_940_2048214*
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
F__inference_dense_940_layer_call_and_return_conditional_losses_20479982#
!dense_940/StatefulPartitionedCall?
!dense_941/StatefulPartitionedCallStatefulPartitionedCall*dense_940/StatefulPartitionedCall:output:0dense_941_2048217dense_941_2048219*
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
F__inference_dense_941_layer_call_and_return_conditional_losses_20480152#
!dense_941/StatefulPartitionedCall?
IdentityIdentity*dense_941/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_939/StatefulPartitionedCall#^conv2d_940/StatefulPartitionedCall#^conv2d_941/StatefulPartitionedCall"^dense_939/StatefulPartitionedCall"^dense_940/StatefulPartitionedCall"^dense_941/StatefulPartitionedCall$^dropout_313/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_939/StatefulPartitionedCall"conv2d_939/StatefulPartitionedCall2H
"conv2d_940/StatefulPartitionedCall"conv2d_940/StatefulPartitionedCall2H
"conv2d_941/StatefulPartitionedCall"conv2d_941/StatefulPartitionedCall2F
!dense_939/StatefulPartitionedCall!dense_939/StatefulPartitionedCall2F
!dense_940/StatefulPartitionedCall!dense_940/StatefulPartitionedCall2F
!dense_941/StatefulPartitionedCall!dense_941/StatefulPartitionedCall2J
#dropout_313/StatefulPartitionedCall#dropout_313/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_313_layer_call_fn_2048534

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
K__inference_sequential_313_layer_call_and_return_conditional_losses_20480222
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
?
?
,__inference_conv2d_939_layer_call_fn_2048583

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
G__inference_conv2d_939_layer_call_and_return_conditional_losses_20478972
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
?
O
3__inference_max_pooling2d_941_layer_call_fn_2048683

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
N__inference_max_pooling2d_941_layer_call_and_return_conditional_losses_20479532
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
?
f
H__inference_dropout_313_layer_call_and_return_conditional_losses_2048719

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
??
?
#__inference__traced_restore_2049084
file_prefix<
"assignvariableop_conv2d_939_kernel: 0
"assignvariableop_1_conv2d_939_bias: >
$assignvariableop_2_conv2d_940_kernel: @0
"assignvariableop_3_conv2d_940_bias:@?
$assignvariableop_4_conv2d_941_kernel:@?1
"assignvariableop_5_conv2d_941_bias:	?6
#assignvariableop_6_dense_939_kernel:	?@/
!assignvariableop_7_dense_939_bias:@5
#assignvariableop_8_dense_940_kernel:@/
!assignvariableop_9_dense_940_bias:6
$assignvariableop_10_dense_941_kernel:0
"assignvariableop_11_dense_941_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: F
,assignvariableop_21_adam_conv2d_939_kernel_m: 8
*assignvariableop_22_adam_conv2d_939_bias_m: F
,assignvariableop_23_adam_conv2d_940_kernel_m: @8
*assignvariableop_24_adam_conv2d_940_bias_m:@G
,assignvariableop_25_adam_conv2d_941_kernel_m:@?9
*assignvariableop_26_adam_conv2d_941_bias_m:	?>
+assignvariableop_27_adam_dense_939_kernel_m:	?@7
)assignvariableop_28_adam_dense_939_bias_m:@=
+assignvariableop_29_adam_dense_940_kernel_m:@7
)assignvariableop_30_adam_dense_940_bias_m:=
+assignvariableop_31_adam_dense_941_kernel_m:7
)assignvariableop_32_adam_dense_941_bias_m:F
,assignvariableop_33_adam_conv2d_939_kernel_v: 8
*assignvariableop_34_adam_conv2d_939_bias_v: F
,assignvariableop_35_adam_conv2d_940_kernel_v: @8
*assignvariableop_36_adam_conv2d_940_bias_v:@G
,assignvariableop_37_adam_conv2d_941_kernel_v:@?9
*assignvariableop_38_adam_conv2d_941_bias_v:	?>
+assignvariableop_39_adam_dense_939_kernel_v:	?@7
)assignvariableop_40_adam_dense_939_bias_v:@=
+assignvariableop_41_adam_dense_940_kernel_v:@7
)assignvariableop_42_adam_dense_940_bias_v:=
+assignvariableop_43_adam_dense_941_kernel_v:7
)assignvariableop_44_adam_dense_941_bias_v:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_939_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_939_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_940_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_940_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_941_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_941_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_939_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_939_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_940_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_940_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_941_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_941_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_conv2d_939_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_939_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_conv2d_940_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_conv2d_940_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_conv2d_941_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_conv2d_941_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_dense_939_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_939_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_940_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_940_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_dense_941_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_941_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adam_conv2d_939_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_939_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp,assignvariableop_35_adam_conv2d_940_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_conv2d_940_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp,assignvariableop_37_adam_conv2d_941_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_conv2d_941_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_dense_939_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_dense_939_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_dense_940_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_dense_940_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_dense_941_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_dense_941_bias_vIdentity_44:output:0"/device:CPU:0*
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
G__inference_conv2d_941_layer_call_and_return_conditional_losses_2047943

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
?
?
0__inference_sequential_313_layer_call_fn_2048279
conv2d_939_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_939_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
K__inference_sequential_313_layer_call_and_return_conditional_losses_20482232
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
_user_specified_nameconv2d_939_input
?
j
N__inference_max_pooling2d_940_layer_call_and_return_conditional_losses_2047844

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
conv2d_939_inputC
"serving_default_conv2d_939_input:0???????????=
	dense_9410
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
+:) 2conv2d_939/kernel
: 2conv2d_939/bias
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
+:) @2conv2d_940/kernel
:@2conv2d_940/bias
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
,:*@?2conv2d_941/kernel
:?2conv2d_941/bias
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
#:!	?@2dense_939/kernel
:@2dense_939/bias
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
": @2dense_940/kernel
:2dense_940/bias
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
": 2dense_941/kernel
:2dense_941/bias
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
0:. 2Adam/conv2d_939/kernel/m
":  2Adam/conv2d_939/bias/m
0:. @2Adam/conv2d_940/kernel/m
": @2Adam/conv2d_940/bias/m
1:/@?2Adam/conv2d_941/kernel/m
#:!?2Adam/conv2d_941/bias/m
(:&	?@2Adam/dense_939/kernel/m
!:@2Adam/dense_939/bias/m
':%@2Adam/dense_940/kernel/m
!:2Adam/dense_940/bias/m
':%2Adam/dense_941/kernel/m
!:2Adam/dense_941/bias/m
0:. 2Adam/conv2d_939/kernel/v
":  2Adam/conv2d_939/bias/v
0:. @2Adam/conv2d_940/kernel/v
": @2Adam/conv2d_940/bias/v
1:/@?2Adam/conv2d_941/kernel/v
#:!?2Adam/conv2d_941/bias/v
(:&	?@2Adam/dense_939/kernel/v
!:@2Adam/dense_939/bias/v
':%@2Adam/dense_940/kernel/v
!:2Adam/dense_940/bias/v
':%2Adam/dense_941/kernel/v
!:2Adam/dense_941/bias/v
?2?
K__inference_sequential_313_layer_call_and_return_conditional_losses_2048446
K__inference_sequential_313_layer_call_and_return_conditional_losses_2048505
K__inference_sequential_313_layer_call_and_return_conditional_losses_2048318
K__inference_sequential_313_layer_call_and_return_conditional_losses_2048357?
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
"__inference__wrapped_model_2047813conv2d_939_input"?
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
0__inference_sequential_313_layer_call_fn_2048049
0__inference_sequential_313_layer_call_fn_2048534
0__inference_sequential_313_layer_call_fn_2048563
0__inference_sequential_313_layer_call_fn_2048279?
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
G__inference_conv2d_939_layer_call_and_return_conditional_losses_2048574?
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
,__inference_conv2d_939_layer_call_fn_2048583?
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
N__inference_max_pooling2d_939_layer_call_and_return_conditional_losses_2048588
N__inference_max_pooling2d_939_layer_call_and_return_conditional_losses_2048593?
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
3__inference_max_pooling2d_939_layer_call_fn_2048598
3__inference_max_pooling2d_939_layer_call_fn_2048603?
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
G__inference_conv2d_940_layer_call_and_return_conditional_losses_2048614?
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
,__inference_conv2d_940_layer_call_fn_2048623?
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
N__inference_max_pooling2d_940_layer_call_and_return_conditional_losses_2048628
N__inference_max_pooling2d_940_layer_call_and_return_conditional_losses_2048633?
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
3__inference_max_pooling2d_940_layer_call_fn_2048638
3__inference_max_pooling2d_940_layer_call_fn_2048643?
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
G__inference_conv2d_941_layer_call_and_return_conditional_losses_2048654?
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
,__inference_conv2d_941_layer_call_fn_2048663?
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
N__inference_max_pooling2d_941_layer_call_and_return_conditional_losses_2048668
N__inference_max_pooling2d_941_layer_call_and_return_conditional_losses_2048673?
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
3__inference_max_pooling2d_941_layer_call_fn_2048678
3__inference_max_pooling2d_941_layer_call_fn_2048683?
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
H__inference_flatten_313_layer_call_and_return_conditional_losses_2048689?
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
-__inference_flatten_313_layer_call_fn_2048694?
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
F__inference_dense_939_layer_call_and_return_conditional_losses_2048705?
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
+__inference_dense_939_layer_call_fn_2048714?
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
H__inference_dropout_313_layer_call_and_return_conditional_losses_2048719
H__inference_dropout_313_layer_call_and_return_conditional_losses_2048731?
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
-__inference_dropout_313_layer_call_fn_2048736
-__inference_dropout_313_layer_call_fn_2048741?
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
F__inference_dense_940_layer_call_and_return_conditional_losses_2048752?
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
+__inference_dense_940_layer_call_fn_2048761?
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
F__inference_dense_941_layer_call_and_return_conditional_losses_2048772?
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
+__inference_dense_941_layer_call_fn_2048781?
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
%__inference_signature_wrapper_2048394conv2d_939_input"?
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
"__inference__wrapped_model_2047813?&'45>?DEC?@
9?6
4?1
conv2d_939_input???????????
? "5?2
0
	dense_941#? 
	dense_941??????????
G__inference_conv2d_939_layer_call_and_return_conditional_losses_2048574n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????Z] 
? ?
,__inference_conv2d_939_layer_call_fn_2048583a9?6
/?,
*?'
inputs???????????
? " ??????????Z] ?
G__inference_conv2d_940_layer_call_and_return_conditional_losses_2048614l7?4
-?*
(?%
inputs?????????-. 
? "-?*
#? 
0?????????@
? ?
,__inference_conv2d_940_layer_call_fn_2048623_7?4
-?*
(?%
inputs?????????-. 
? " ??????????@?
G__inference_conv2d_941_layer_call_and_return_conditional_losses_2048654m&'7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_941_layer_call_fn_2048663`&'7?4
-?*
(?%
inputs?????????@
? "!????????????
F__inference_dense_939_layer_call_and_return_conditional_losses_2048705]450?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? 
+__inference_dense_939_layer_call_fn_2048714P450?-
&?#
!?
inputs??????????
? "??????????@?
F__inference_dense_940_layer_call_and_return_conditional_losses_2048752\>?/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? ~
+__inference_dense_940_layer_call_fn_2048761O>?/?,
%?"
 ?
inputs?????????@
? "???????????
F__inference_dense_941_layer_call_and_return_conditional_losses_2048772\DE/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
+__inference_dense_941_layer_call_fn_2048781ODE/?,
%?"
 ?
inputs?????????
? "???????????
H__inference_dropout_313_layer_call_and_return_conditional_losses_2048719\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
H__inference_dropout_313_layer_call_and_return_conditional_losses_2048731\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
-__inference_dropout_313_layer_call_fn_2048736O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
-__inference_dropout_313_layer_call_fn_2048741O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
H__inference_flatten_313_layer_call_and_return_conditional_losses_2048689b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????
? ?
-__inference_flatten_313_layer_call_fn_2048694U8?5
.?+
)?&
inputs??????????
? "????????????
N__inference_max_pooling2d_939_layer_call_and_return_conditional_losses_2048588?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_939_layer_call_and_return_conditional_losses_2048593h7?4
-?*
(?%
inputs?????????Z] 
? "-?*
#? 
0?????????-. 
? ?
3__inference_max_pooling2d_939_layer_call_fn_2048598?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_939_layer_call_fn_2048603[7?4
-?*
(?%
inputs?????????Z] 
? " ??????????-. ?
N__inference_max_pooling2d_940_layer_call_and_return_conditional_losses_2048628?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_940_layer_call_and_return_conditional_losses_2048633h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
3__inference_max_pooling2d_940_layer_call_fn_2048638?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_940_layer_call_fn_2048643[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
N__inference_max_pooling2d_941_layer_call_and_return_conditional_losses_2048668?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_941_layer_call_and_return_conditional_losses_2048673j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
3__inference_max_pooling2d_941_layer_call_fn_2048678?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_941_layer_call_fn_2048683]8?5
.?+
)?&
inputs??????????
? "!????????????
K__inference_sequential_313_layer_call_and_return_conditional_losses_2048318?&'45>?DEK?H
A?>
4?1
conv2d_939_input???????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_313_layer_call_and_return_conditional_losses_2048357?&'45>?DEK?H
A?>
4?1
conv2d_939_input???????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_313_layer_call_and_return_conditional_losses_2048446x&'45>?DEA?>
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
K__inference_sequential_313_layer_call_and_return_conditional_losses_2048505x&'45>?DEA?>
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
0__inference_sequential_313_layer_call_fn_2048049u&'45>?DEK?H
A?>
4?1
conv2d_939_input???????????
p 

 
? "???????????
0__inference_sequential_313_layer_call_fn_2048279u&'45>?DEK?H
A?>
4?1
conv2d_939_input???????????
p

 
? "???????????
0__inference_sequential_313_layer_call_fn_2048534k&'45>?DEA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
0__inference_sequential_313_layer_call_fn_2048563k&'45>?DEA?>
7?4
*?'
inputs???????????
p

 
? "???????????
%__inference_signature_wrapper_2048394?&'45>?DEW?T
? 
M?J
H
conv2d_939_input4?1
conv2d_939_input???????????"5?2
0
	dense_941#? 
	dense_941?????????