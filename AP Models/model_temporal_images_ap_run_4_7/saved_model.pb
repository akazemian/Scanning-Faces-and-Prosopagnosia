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
conv2d_957/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_957/kernel

%conv2d_957/kernel/Read/ReadVariableOpReadVariableOpconv2d_957/kernel*&
_output_shapes
: *
dtype0
v
conv2d_957/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_957/bias
o
#conv2d_957/bias/Read/ReadVariableOpReadVariableOpconv2d_957/bias*
_output_shapes
: *
dtype0
?
conv2d_958/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_958/kernel

%conv2d_958/kernel/Read/ReadVariableOpReadVariableOpconv2d_958/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_958/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_958/bias
o
#conv2d_958/bias/Read/ReadVariableOpReadVariableOpconv2d_958/bias*
_output_shapes
:@*
dtype0
?
conv2d_959/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*"
shared_nameconv2d_959/kernel
?
%conv2d_959/kernel/Read/ReadVariableOpReadVariableOpconv2d_959/kernel*'
_output_shapes
:@?*
dtype0
w
conv2d_959/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_959/bias
p
#conv2d_959/bias/Read/ReadVariableOpReadVariableOpconv2d_959/bias*
_output_shapes	
:?*
dtype0
}
dense_957/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*!
shared_namedense_957/kernel
v
$dense_957/kernel/Read/ReadVariableOpReadVariableOpdense_957/kernel*
_output_shapes
:	?@*
dtype0
t
dense_957/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_957/bias
m
"dense_957/bias/Read/ReadVariableOpReadVariableOpdense_957/bias*
_output_shapes
:@*
dtype0
|
dense_958/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_958/kernel
u
$dense_958/kernel/Read/ReadVariableOpReadVariableOpdense_958/kernel*
_output_shapes

:@*
dtype0
t
dense_958/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_958/bias
m
"dense_958/bias/Read/ReadVariableOpReadVariableOpdense_958/bias*
_output_shapes
:*
dtype0
|
dense_959/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_959/kernel
u
$dense_959/kernel/Read/ReadVariableOpReadVariableOpdense_959/kernel*
_output_shapes

:*
dtype0
t
dense_959/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_959/bias
m
"dense_959/bias/Read/ReadVariableOpReadVariableOpdense_959/bias*
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
Adam/conv2d_957/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_957/kernel/m
?
,Adam/conv2d_957/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_957/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_957/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_957/bias/m
}
*Adam/conv2d_957/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_957/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_958/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_958/kernel/m
?
,Adam/conv2d_958/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_958/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_958/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_958/bias/m
}
*Adam/conv2d_958/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_958/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_959/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*)
shared_nameAdam/conv2d_959/kernel/m
?
,Adam/conv2d_959/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_959/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_959/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/conv2d_959/bias/m
~
*Adam/conv2d_959/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_959/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_957/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*(
shared_nameAdam/dense_957/kernel/m
?
+Adam/dense_957/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_957/kernel/m*
_output_shapes
:	?@*
dtype0
?
Adam/dense_957/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_957/bias/m
{
)Adam/dense_957/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_957/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_958/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/dense_958/kernel/m
?
+Adam/dense_958/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_958/kernel/m*
_output_shapes

:@*
dtype0
?
Adam/dense_958/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_958/bias/m
{
)Adam/dense_958/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_958/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_959/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_959/kernel/m
?
+Adam/dense_959/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_959/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_959/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_959/bias/m
{
)Adam/dense_959/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_959/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_957/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_957/kernel/v
?
,Adam/conv2d_957/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_957/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_957/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_957/bias/v
}
*Adam/conv2d_957/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_957/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_958/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_958/kernel/v
?
,Adam/conv2d_958/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_958/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_958/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_958/bias/v
}
*Adam/conv2d_958/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_958/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_959/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*)
shared_nameAdam/conv2d_959/kernel/v
?
,Adam/conv2d_959/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_959/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_959/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/conv2d_959/bias/v
~
*Adam/conv2d_959/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_959/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_957/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*(
shared_nameAdam/dense_957/kernel/v
?
+Adam/dense_957/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_957/kernel/v*
_output_shapes
:	?@*
dtype0
?
Adam/dense_957/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_957/bias/v
{
)Adam/dense_957/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_957/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_958/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/dense_958/kernel/v
?
+Adam/dense_958/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_958/kernel/v*
_output_shapes

:@*
dtype0
?
Adam/dense_958/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_958/bias/v
{
)Adam/dense_958/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_958/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_959/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_959/kernel/v
?
+Adam/dense_959/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_959/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_959/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_959/bias/v
{
)Adam/dense_959/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_959/bias/v*
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
VARIABLE_VALUEconv2d_957/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_957/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_958/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_958/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_959/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_959/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_957/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_957/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_958/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_958/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_959/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_959/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/conv2d_957/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_957/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_958/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_958/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_959/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_959/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_957/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_957/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_958/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_958/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_959/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_959/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_957/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_957/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_958/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_958/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_959/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_959/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_957/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_957/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_958/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_958/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_959/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_959/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_conv2d_957_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_957_inputconv2d_957/kernelconv2d_957/biasconv2d_958/kernelconv2d_958/biasconv2d_959/kernelconv2d_959/biasdense_957/kerneldense_957/biasdense_958/kerneldense_958/biasdense_959/kerneldense_959/bias*
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
%__inference_signature_wrapper_2081821
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_957/kernel/Read/ReadVariableOp#conv2d_957/bias/Read/ReadVariableOp%conv2d_958/kernel/Read/ReadVariableOp#conv2d_958/bias/Read/ReadVariableOp%conv2d_959/kernel/Read/ReadVariableOp#conv2d_959/bias/Read/ReadVariableOp$dense_957/kernel/Read/ReadVariableOp"dense_957/bias/Read/ReadVariableOp$dense_958/kernel/Read/ReadVariableOp"dense_958/bias/Read/ReadVariableOp$dense_959/kernel/Read/ReadVariableOp"dense_959/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv2d_957/kernel/m/Read/ReadVariableOp*Adam/conv2d_957/bias/m/Read/ReadVariableOp,Adam/conv2d_958/kernel/m/Read/ReadVariableOp*Adam/conv2d_958/bias/m/Read/ReadVariableOp,Adam/conv2d_959/kernel/m/Read/ReadVariableOp*Adam/conv2d_959/bias/m/Read/ReadVariableOp+Adam/dense_957/kernel/m/Read/ReadVariableOp)Adam/dense_957/bias/m/Read/ReadVariableOp+Adam/dense_958/kernel/m/Read/ReadVariableOp)Adam/dense_958/bias/m/Read/ReadVariableOp+Adam/dense_959/kernel/m/Read/ReadVariableOp)Adam/dense_959/bias/m/Read/ReadVariableOp,Adam/conv2d_957/kernel/v/Read/ReadVariableOp*Adam/conv2d_957/bias/v/Read/ReadVariableOp,Adam/conv2d_958/kernel/v/Read/ReadVariableOp*Adam/conv2d_958/bias/v/Read/ReadVariableOp,Adam/conv2d_959/kernel/v/Read/ReadVariableOp*Adam/conv2d_959/bias/v/Read/ReadVariableOp+Adam/dense_957/kernel/v/Read/ReadVariableOp)Adam/dense_957/bias/v/Read/ReadVariableOp+Adam/dense_958/kernel/v/Read/ReadVariableOp)Adam/dense_958/bias/v/Read/ReadVariableOp+Adam/dense_959/kernel/v/Read/ReadVariableOp)Adam/dense_959/bias/v/Read/ReadVariableOpConst*:
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
 __inference__traced_save_2082366
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_957/kernelconv2d_957/biasconv2d_958/kernelconv2d_958/biasconv2d_959/kernelconv2d_959/biasdense_957/kerneldense_957/biasdense_958/kerneldense_958/biasdense_959/kerneldense_959/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_957/kernel/mAdam/conv2d_957/bias/mAdam/conv2d_958/kernel/mAdam/conv2d_958/bias/mAdam/conv2d_959/kernel/mAdam/conv2d_959/bias/mAdam/dense_957/kernel/mAdam/dense_957/bias/mAdam/dense_958/kernel/mAdam/dense_958/bias/mAdam/dense_959/kernel/mAdam/dense_959/bias/mAdam/conv2d_957/kernel/vAdam/conv2d_957/bias/vAdam/conv2d_958/kernel/vAdam/conv2d_958/bias/vAdam/conv2d_959/kernel/vAdam/conv2d_959/bias/vAdam/dense_957/kernel/vAdam/dense_957/bias/vAdam/dense_958/kernel/vAdam/dense_958/bias/vAdam/dense_959/kernel/vAdam/dense_959/bias/v*9
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
#__inference__traced_restore_2082511??
?^
?
 __inference__traced_save_2082366
file_prefix0
,savev2_conv2d_957_kernel_read_readvariableop.
*savev2_conv2d_957_bias_read_readvariableop0
,savev2_conv2d_958_kernel_read_readvariableop.
*savev2_conv2d_958_bias_read_readvariableop0
,savev2_conv2d_959_kernel_read_readvariableop.
*savev2_conv2d_959_bias_read_readvariableop/
+savev2_dense_957_kernel_read_readvariableop-
)savev2_dense_957_bias_read_readvariableop/
+savev2_dense_958_kernel_read_readvariableop-
)savev2_dense_958_bias_read_readvariableop/
+savev2_dense_959_kernel_read_readvariableop-
)savev2_dense_959_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv2d_957_kernel_m_read_readvariableop5
1savev2_adam_conv2d_957_bias_m_read_readvariableop7
3savev2_adam_conv2d_958_kernel_m_read_readvariableop5
1savev2_adam_conv2d_958_bias_m_read_readvariableop7
3savev2_adam_conv2d_959_kernel_m_read_readvariableop5
1savev2_adam_conv2d_959_bias_m_read_readvariableop6
2savev2_adam_dense_957_kernel_m_read_readvariableop4
0savev2_adam_dense_957_bias_m_read_readvariableop6
2savev2_adam_dense_958_kernel_m_read_readvariableop4
0savev2_adam_dense_958_bias_m_read_readvariableop6
2savev2_adam_dense_959_kernel_m_read_readvariableop4
0savev2_adam_dense_959_bias_m_read_readvariableop7
3savev2_adam_conv2d_957_kernel_v_read_readvariableop5
1savev2_adam_conv2d_957_bias_v_read_readvariableop7
3savev2_adam_conv2d_958_kernel_v_read_readvariableop5
1savev2_adam_conv2d_958_bias_v_read_readvariableop7
3savev2_adam_conv2d_959_kernel_v_read_readvariableop5
1savev2_adam_conv2d_959_bias_v_read_readvariableop6
2savev2_adam_dense_957_kernel_v_read_readvariableop4
0savev2_adam_dense_957_bias_v_read_readvariableop6
2savev2_adam_dense_958_kernel_v_read_readvariableop4
0savev2_adam_dense_958_bias_v_read_readvariableop6
2savev2_adam_dense_959_kernel_v_read_readvariableop4
0savev2_adam_dense_959_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_957_kernel_read_readvariableop*savev2_conv2d_957_bias_read_readvariableop,savev2_conv2d_958_kernel_read_readvariableop*savev2_conv2d_958_bias_read_readvariableop,savev2_conv2d_959_kernel_read_readvariableop*savev2_conv2d_959_bias_read_readvariableop+savev2_dense_957_kernel_read_readvariableop)savev2_dense_957_bias_read_readvariableop+savev2_dense_958_kernel_read_readvariableop)savev2_dense_958_bias_read_readvariableop+savev2_dense_959_kernel_read_readvariableop)savev2_dense_959_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv2d_957_kernel_m_read_readvariableop1savev2_adam_conv2d_957_bias_m_read_readvariableop3savev2_adam_conv2d_958_kernel_m_read_readvariableop1savev2_adam_conv2d_958_bias_m_read_readvariableop3savev2_adam_conv2d_959_kernel_m_read_readvariableop1savev2_adam_conv2d_959_bias_m_read_readvariableop2savev2_adam_dense_957_kernel_m_read_readvariableop0savev2_adam_dense_957_bias_m_read_readvariableop2savev2_adam_dense_958_kernel_m_read_readvariableop0savev2_adam_dense_958_bias_m_read_readvariableop2savev2_adam_dense_959_kernel_m_read_readvariableop0savev2_adam_dense_959_bias_m_read_readvariableop3savev2_adam_conv2d_957_kernel_v_read_readvariableop1savev2_adam_conv2d_957_bias_v_read_readvariableop3savev2_adam_conv2d_958_kernel_v_read_readvariableop1savev2_adam_conv2d_958_bias_v_read_readvariableop3savev2_adam_conv2d_959_kernel_v_read_readvariableop1savev2_adam_conv2d_959_bias_v_read_readvariableop2savev2_adam_dense_957_kernel_v_read_readvariableop0savev2_adam_dense_957_bias_v_read_readvariableop2savev2_adam_dense_958_kernel_v_read_readvariableop0savev2_adam_dense_958_bias_v_read_readvariableop2savev2_adam_dense_959_kernel_v_read_readvariableop0savev2_adam_dense_959_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
0__inference_sequential_319_layer_call_fn_2081476
conv2d_957_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_957_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
K__inference_sequential_319_layer_call_and_return_conditional_losses_20814492
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
_user_specified_nameconv2d_957_input
?
?
G__inference_conv2d_958_layer_call_and_return_conditional_losses_2081347

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
H__inference_dropout_319_layer_call_and_return_conditional_losses_2081412

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
?
?
0__inference_sequential_319_layer_call_fn_2081706
conv2d_957_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_957_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
K__inference_sequential_319_layer_call_and_return_conditional_losses_20816502
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
_user_specified_nameconv2d_957_input
?

?
F__inference_dense_958_layer_call_and_return_conditional_losses_2082179

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
?

?
F__inference_dense_957_layer_call_and_return_conditional_losses_2081401

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
K__inference_sequential_319_layer_call_and_return_conditional_losses_2081932

inputsC
)conv2d_957_conv2d_readvariableop_resource: 8
*conv2d_957_biasadd_readvariableop_resource: C
)conv2d_958_conv2d_readvariableop_resource: @8
*conv2d_958_biasadd_readvariableop_resource:@D
)conv2d_959_conv2d_readvariableop_resource:@?9
*conv2d_959_biasadd_readvariableop_resource:	?;
(dense_957_matmul_readvariableop_resource:	?@7
)dense_957_biasadd_readvariableop_resource:@:
(dense_958_matmul_readvariableop_resource:@7
)dense_958_biasadd_readvariableop_resource::
(dense_959_matmul_readvariableop_resource:7
)dense_959_biasadd_readvariableop_resource:
identity??!conv2d_957/BiasAdd/ReadVariableOp? conv2d_957/Conv2D/ReadVariableOp?!conv2d_958/BiasAdd/ReadVariableOp? conv2d_958/Conv2D/ReadVariableOp?!conv2d_959/BiasAdd/ReadVariableOp? conv2d_959/Conv2D/ReadVariableOp? dense_957/BiasAdd/ReadVariableOp?dense_957/MatMul/ReadVariableOp? dense_958/BiasAdd/ReadVariableOp?dense_958/MatMul/ReadVariableOp? dense_959/BiasAdd/ReadVariableOp?dense_959/MatMul/ReadVariableOp?
 conv2d_957/Conv2D/ReadVariableOpReadVariableOp)conv2d_957_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_957/Conv2D/ReadVariableOp?
conv2d_957/Conv2DConv2Dinputs(conv2d_957/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
2
conv2d_957/Conv2D?
!conv2d_957/BiasAdd/ReadVariableOpReadVariableOp*conv2d_957_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_957/BiasAdd/ReadVariableOp?
conv2d_957/BiasAddBiasAddconv2d_957/Conv2D:output:0)conv2d_957/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] 2
conv2d_957/BiasAdd?
conv2d_957/ReluReluconv2d_957/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] 2
conv2d_957/Relu?
max_pooling2d_957/MaxPoolMaxPoolconv2d_957/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
2
max_pooling2d_957/MaxPool?
 conv2d_958/Conv2D/ReadVariableOpReadVariableOp)conv2d_958_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_958/Conv2D/ReadVariableOp?
conv2d_958/Conv2DConv2D"max_pooling2d_957/MaxPool:output:0(conv2d_958/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_958/Conv2D?
!conv2d_958/BiasAdd/ReadVariableOpReadVariableOp*conv2d_958_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_958/BiasAdd/ReadVariableOp?
conv2d_958/BiasAddBiasAddconv2d_958/Conv2D:output:0)conv2d_958/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_958/BiasAdd?
conv2d_958/ReluReluconv2d_958/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_958/Relu?
max_pooling2d_958/MaxPoolMaxPoolconv2d_958/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_958/MaxPool?
 conv2d_959/Conv2D/ReadVariableOpReadVariableOp)conv2d_959_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02"
 conv2d_959/Conv2D/ReadVariableOp?
conv2d_959/Conv2DConv2D"max_pooling2d_958/MaxPool:output:0(conv2d_959/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_959/Conv2D?
!conv2d_959/BiasAdd/ReadVariableOpReadVariableOp*conv2d_959_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_959/BiasAdd/ReadVariableOp?
conv2d_959/BiasAddBiasAddconv2d_959/Conv2D:output:0)conv2d_959/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_959/BiasAdd?
conv2d_959/ReluReluconv2d_959/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_959/Relu?
max_pooling2d_959/MaxPoolMaxPoolconv2d_959/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_959/MaxPoolw
flatten_319/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten_319/Const?
flatten_319/ReshapeReshape"max_pooling2d_959/MaxPool:output:0flatten_319/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_319/Reshape?
dense_957/MatMul/ReadVariableOpReadVariableOp(dense_957_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02!
dense_957/MatMul/ReadVariableOp?
dense_957/MatMulMatMulflatten_319/Reshape:output:0'dense_957/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_957/MatMul?
 dense_957/BiasAdd/ReadVariableOpReadVariableOp)dense_957_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_957/BiasAdd/ReadVariableOp?
dense_957/BiasAddBiasAdddense_957/MatMul:product:0(dense_957/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_957/BiasAddv
dense_957/TanhTanhdense_957/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_957/Tanh{
dropout_319/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_319/dropout/Const?
dropout_319/dropout/MulMuldense_957/Tanh:y:0"dropout_319/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_319/dropout/Mulx
dropout_319/dropout/ShapeShapedense_957/Tanh:y:0*
T0*
_output_shapes
:2
dropout_319/dropout/Shape?
0dropout_319/dropout/random_uniform/RandomUniformRandomUniform"dropout_319/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype022
0dropout_319/dropout/random_uniform/RandomUniform?
"dropout_319/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"dropout_319/dropout/GreaterEqual/y?
 dropout_319/dropout/GreaterEqualGreaterEqual9dropout_319/dropout/random_uniform/RandomUniform:output:0+dropout_319/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 dropout_319/dropout/GreaterEqual?
dropout_319/dropout/CastCast$dropout_319/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_319/dropout/Cast?
dropout_319/dropout/Mul_1Muldropout_319/dropout/Mul:z:0dropout_319/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_319/dropout/Mul_1?
dense_958/MatMul/ReadVariableOpReadVariableOp(dense_958_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02!
dense_958/MatMul/ReadVariableOp?
dense_958/MatMulMatMuldropout_319/dropout/Mul_1:z:0'dense_958/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_958/MatMul?
 dense_958/BiasAdd/ReadVariableOpReadVariableOp)dense_958_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_958/BiasAdd/ReadVariableOp?
dense_958/BiasAddBiasAdddense_958/MatMul:product:0(dense_958/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_958/BiasAddv
dense_958/TanhTanhdense_958/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_958/Tanh?
dense_959/MatMul/ReadVariableOpReadVariableOp(dense_959_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_959/MatMul/ReadVariableOp?
dense_959/MatMulMatMuldense_958/Tanh:y:0'dense_959/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_959/MatMul?
 dense_959/BiasAdd/ReadVariableOpReadVariableOp)dense_959_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_959/BiasAdd/ReadVariableOp?
dense_959/BiasAddBiasAdddense_959/MatMul:product:0(dense_959/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_959/BiasAdd
dense_959/SigmoidSigmoiddense_959/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_959/Sigmoidp
IdentityIdentitydense_959/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_957/BiasAdd/ReadVariableOp!^conv2d_957/Conv2D/ReadVariableOp"^conv2d_958/BiasAdd/ReadVariableOp!^conv2d_958/Conv2D/ReadVariableOp"^conv2d_959/BiasAdd/ReadVariableOp!^conv2d_959/Conv2D/ReadVariableOp!^dense_957/BiasAdd/ReadVariableOp ^dense_957/MatMul/ReadVariableOp!^dense_958/BiasAdd/ReadVariableOp ^dense_958/MatMul/ReadVariableOp!^dense_959/BiasAdd/ReadVariableOp ^dense_959/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_957/BiasAdd/ReadVariableOp!conv2d_957/BiasAdd/ReadVariableOp2D
 conv2d_957/Conv2D/ReadVariableOp conv2d_957/Conv2D/ReadVariableOp2F
!conv2d_958/BiasAdd/ReadVariableOp!conv2d_958/BiasAdd/ReadVariableOp2D
 conv2d_958/Conv2D/ReadVariableOp conv2d_958/Conv2D/ReadVariableOp2F
!conv2d_959/BiasAdd/ReadVariableOp!conv2d_959/BiasAdd/ReadVariableOp2D
 conv2d_959/Conv2D/ReadVariableOp conv2d_959/Conv2D/ReadVariableOp2D
 dense_957/BiasAdd/ReadVariableOp dense_957/BiasAdd/ReadVariableOp2B
dense_957/MatMul/ReadVariableOpdense_957/MatMul/ReadVariableOp2D
 dense_958/BiasAdd/ReadVariableOp dense_958/BiasAdd/ReadVariableOp2B
dense_958/MatMul/ReadVariableOpdense_958/MatMul/ReadVariableOp2D
 dense_959/BiasAdd/ReadVariableOp dense_959/BiasAdd/ReadVariableOp2B
dense_959/MatMul/ReadVariableOpdense_959/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
O
3__inference_max_pooling2d_957_layer_call_fn_2082030

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
N__inference_max_pooling2d_957_layer_call_and_return_conditional_losses_20813342
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
?
d
H__inference_flatten_319_layer_call_and_return_conditional_losses_2081388

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
?
j
N__inference_max_pooling2d_957_layer_call_and_return_conditional_losses_2081334

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
?
O
3__inference_max_pooling2d_959_layer_call_fn_2082110

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
N__inference_max_pooling2d_959_layer_call_and_return_conditional_losses_20813802
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
?
j
N__inference_max_pooling2d_959_layer_call_and_return_conditional_losses_2082095

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
N__inference_max_pooling2d_957_layer_call_and_return_conditional_losses_2081249

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
N__inference_max_pooling2d_957_layer_call_and_return_conditional_losses_2082020

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
+__inference_dense_959_layer_call_fn_2082208

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
F__inference_dense_959_layer_call_and_return_conditional_losses_20814422
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
?\
?
"__inference__wrapped_model_2081240
conv2d_957_inputR
8sequential_319_conv2d_957_conv2d_readvariableop_resource: G
9sequential_319_conv2d_957_biasadd_readvariableop_resource: R
8sequential_319_conv2d_958_conv2d_readvariableop_resource: @G
9sequential_319_conv2d_958_biasadd_readvariableop_resource:@S
8sequential_319_conv2d_959_conv2d_readvariableop_resource:@?H
9sequential_319_conv2d_959_biasadd_readvariableop_resource:	?J
7sequential_319_dense_957_matmul_readvariableop_resource:	?@F
8sequential_319_dense_957_biasadd_readvariableop_resource:@I
7sequential_319_dense_958_matmul_readvariableop_resource:@F
8sequential_319_dense_958_biasadd_readvariableop_resource:I
7sequential_319_dense_959_matmul_readvariableop_resource:F
8sequential_319_dense_959_biasadd_readvariableop_resource:
identity??0sequential_319/conv2d_957/BiasAdd/ReadVariableOp?/sequential_319/conv2d_957/Conv2D/ReadVariableOp?0sequential_319/conv2d_958/BiasAdd/ReadVariableOp?/sequential_319/conv2d_958/Conv2D/ReadVariableOp?0sequential_319/conv2d_959/BiasAdd/ReadVariableOp?/sequential_319/conv2d_959/Conv2D/ReadVariableOp?/sequential_319/dense_957/BiasAdd/ReadVariableOp?.sequential_319/dense_957/MatMul/ReadVariableOp?/sequential_319/dense_958/BiasAdd/ReadVariableOp?.sequential_319/dense_958/MatMul/ReadVariableOp?/sequential_319/dense_959/BiasAdd/ReadVariableOp?.sequential_319/dense_959/MatMul/ReadVariableOp?
/sequential_319/conv2d_957/Conv2D/ReadVariableOpReadVariableOp8sequential_319_conv2d_957_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype021
/sequential_319/conv2d_957/Conv2D/ReadVariableOp?
 sequential_319/conv2d_957/Conv2DConv2Dconv2d_957_input7sequential_319/conv2d_957/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
2"
 sequential_319/conv2d_957/Conv2D?
0sequential_319/conv2d_957/BiasAdd/ReadVariableOpReadVariableOp9sequential_319_conv2d_957_biasadd_readvariableop_resource*
_output_shapes
: *
dtype022
0sequential_319/conv2d_957/BiasAdd/ReadVariableOp?
!sequential_319/conv2d_957/BiasAddBiasAdd)sequential_319/conv2d_957/Conv2D:output:08sequential_319/conv2d_957/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] 2#
!sequential_319/conv2d_957/BiasAdd?
sequential_319/conv2d_957/ReluRelu*sequential_319/conv2d_957/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] 2 
sequential_319/conv2d_957/Relu?
(sequential_319/max_pooling2d_957/MaxPoolMaxPool,sequential_319/conv2d_957/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
2*
(sequential_319/max_pooling2d_957/MaxPool?
/sequential_319/conv2d_958/Conv2D/ReadVariableOpReadVariableOp8sequential_319_conv2d_958_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype021
/sequential_319/conv2d_958/Conv2D/ReadVariableOp?
 sequential_319/conv2d_958/Conv2DConv2D1sequential_319/max_pooling2d_957/MaxPool:output:07sequential_319/conv2d_958/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2"
 sequential_319/conv2d_958/Conv2D?
0sequential_319/conv2d_958/BiasAdd/ReadVariableOpReadVariableOp9sequential_319_conv2d_958_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_319/conv2d_958/BiasAdd/ReadVariableOp?
!sequential_319/conv2d_958/BiasAddBiasAdd)sequential_319/conv2d_958/Conv2D:output:08sequential_319/conv2d_958/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2#
!sequential_319/conv2d_958/BiasAdd?
sequential_319/conv2d_958/ReluRelu*sequential_319/conv2d_958/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2 
sequential_319/conv2d_958/Relu?
(sequential_319/max_pooling2d_958/MaxPoolMaxPool,sequential_319/conv2d_958/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2*
(sequential_319/max_pooling2d_958/MaxPool?
/sequential_319/conv2d_959/Conv2D/ReadVariableOpReadVariableOp8sequential_319_conv2d_959_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype021
/sequential_319/conv2d_959/Conv2D/ReadVariableOp?
 sequential_319/conv2d_959/Conv2DConv2D1sequential_319/max_pooling2d_958/MaxPool:output:07sequential_319/conv2d_959/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2"
 sequential_319/conv2d_959/Conv2D?
0sequential_319/conv2d_959/BiasAdd/ReadVariableOpReadVariableOp9sequential_319_conv2d_959_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0sequential_319/conv2d_959/BiasAdd/ReadVariableOp?
!sequential_319/conv2d_959/BiasAddBiasAdd)sequential_319/conv2d_959/Conv2D:output:08sequential_319/conv2d_959/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2#
!sequential_319/conv2d_959/BiasAdd?
sequential_319/conv2d_959/ReluRelu*sequential_319/conv2d_959/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2 
sequential_319/conv2d_959/Relu?
(sequential_319/max_pooling2d_959/MaxPoolMaxPool,sequential_319/conv2d_959/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2*
(sequential_319/max_pooling2d_959/MaxPool?
 sequential_319/flatten_319/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2"
 sequential_319/flatten_319/Const?
"sequential_319/flatten_319/ReshapeReshape1sequential_319/max_pooling2d_959/MaxPool:output:0)sequential_319/flatten_319/Const:output:0*
T0*(
_output_shapes
:??????????2$
"sequential_319/flatten_319/Reshape?
.sequential_319/dense_957/MatMul/ReadVariableOpReadVariableOp7sequential_319_dense_957_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype020
.sequential_319/dense_957/MatMul/ReadVariableOp?
sequential_319/dense_957/MatMulMatMul+sequential_319/flatten_319/Reshape:output:06sequential_319/dense_957/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
sequential_319/dense_957/MatMul?
/sequential_319/dense_957/BiasAdd/ReadVariableOpReadVariableOp8sequential_319_dense_957_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_319/dense_957/BiasAdd/ReadVariableOp?
 sequential_319/dense_957/BiasAddBiasAdd)sequential_319/dense_957/MatMul:product:07sequential_319/dense_957/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 sequential_319/dense_957/BiasAdd?
sequential_319/dense_957/TanhTanh)sequential_319/dense_957/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential_319/dense_957/Tanh?
#sequential_319/dropout_319/IdentityIdentity!sequential_319/dense_957/Tanh:y:0*
T0*'
_output_shapes
:?????????@2%
#sequential_319/dropout_319/Identity?
.sequential_319/dense_958/MatMul/ReadVariableOpReadVariableOp7sequential_319_dense_958_matmul_readvariableop_resource*
_output_shapes

:@*
dtype020
.sequential_319/dense_958/MatMul/ReadVariableOp?
sequential_319/dense_958/MatMulMatMul,sequential_319/dropout_319/Identity:output:06sequential_319/dense_958/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_319/dense_958/MatMul?
/sequential_319/dense_958/BiasAdd/ReadVariableOpReadVariableOp8sequential_319_dense_958_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_319/dense_958/BiasAdd/ReadVariableOp?
 sequential_319/dense_958/BiasAddBiasAdd)sequential_319/dense_958/MatMul:product:07sequential_319/dense_958/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 sequential_319/dense_958/BiasAdd?
sequential_319/dense_958/TanhTanh)sequential_319/dense_958/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_319/dense_958/Tanh?
.sequential_319/dense_959/MatMul/ReadVariableOpReadVariableOp7sequential_319_dense_959_matmul_readvariableop_resource*
_output_shapes

:*
dtype020
.sequential_319/dense_959/MatMul/ReadVariableOp?
sequential_319/dense_959/MatMulMatMul!sequential_319/dense_958/Tanh:y:06sequential_319/dense_959/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_319/dense_959/MatMul?
/sequential_319/dense_959/BiasAdd/ReadVariableOpReadVariableOp8sequential_319_dense_959_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_319/dense_959/BiasAdd/ReadVariableOp?
 sequential_319/dense_959/BiasAddBiasAdd)sequential_319/dense_959/MatMul:product:07sequential_319/dense_959/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 sequential_319/dense_959/BiasAdd?
 sequential_319/dense_959/SigmoidSigmoid)sequential_319/dense_959/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2"
 sequential_319/dense_959/Sigmoid
IdentityIdentity$sequential_319/dense_959/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp1^sequential_319/conv2d_957/BiasAdd/ReadVariableOp0^sequential_319/conv2d_957/Conv2D/ReadVariableOp1^sequential_319/conv2d_958/BiasAdd/ReadVariableOp0^sequential_319/conv2d_958/Conv2D/ReadVariableOp1^sequential_319/conv2d_959/BiasAdd/ReadVariableOp0^sequential_319/conv2d_959/Conv2D/ReadVariableOp0^sequential_319/dense_957/BiasAdd/ReadVariableOp/^sequential_319/dense_957/MatMul/ReadVariableOp0^sequential_319/dense_958/BiasAdd/ReadVariableOp/^sequential_319/dense_958/MatMul/ReadVariableOp0^sequential_319/dense_959/BiasAdd/ReadVariableOp/^sequential_319/dense_959/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2d
0sequential_319/conv2d_957/BiasAdd/ReadVariableOp0sequential_319/conv2d_957/BiasAdd/ReadVariableOp2b
/sequential_319/conv2d_957/Conv2D/ReadVariableOp/sequential_319/conv2d_957/Conv2D/ReadVariableOp2d
0sequential_319/conv2d_958/BiasAdd/ReadVariableOp0sequential_319/conv2d_958/BiasAdd/ReadVariableOp2b
/sequential_319/conv2d_958/Conv2D/ReadVariableOp/sequential_319/conv2d_958/Conv2D/ReadVariableOp2d
0sequential_319/conv2d_959/BiasAdd/ReadVariableOp0sequential_319/conv2d_959/BiasAdd/ReadVariableOp2b
/sequential_319/conv2d_959/Conv2D/ReadVariableOp/sequential_319/conv2d_959/Conv2D/ReadVariableOp2b
/sequential_319/dense_957/BiasAdd/ReadVariableOp/sequential_319/dense_957/BiasAdd/ReadVariableOp2`
.sequential_319/dense_957/MatMul/ReadVariableOp.sequential_319/dense_957/MatMul/ReadVariableOp2b
/sequential_319/dense_958/BiasAdd/ReadVariableOp/sequential_319/dense_958/BiasAdd/ReadVariableOp2`
.sequential_319/dense_958/MatMul/ReadVariableOp.sequential_319/dense_958/MatMul/ReadVariableOp2b
/sequential_319/dense_959/BiasAdd/ReadVariableOp/sequential_319/dense_959/BiasAdd/ReadVariableOp2`
.sequential_319/dense_959/MatMul/ReadVariableOp.sequential_319/dense_959/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_957_input
?
j
N__inference_max_pooling2d_957_layer_call_and_return_conditional_losses_2082015

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
3__inference_max_pooling2d_958_layer_call_fn_2082065

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
N__inference_max_pooling2d_958_layer_call_and_return_conditional_losses_20812712
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
G__inference_conv2d_959_layer_call_and_return_conditional_losses_2081370

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
?
?
+__inference_dense_958_layer_call_fn_2082188

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
F__inference_dense_958_layer_call_and_return_conditional_losses_20814252
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
?
f
-__inference_dropout_319_layer_call_fn_2082168

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
H__inference_dropout_319_layer_call_and_return_conditional_losses_20815162
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
?
G__inference_conv2d_957_layer_call_and_return_conditional_losses_2081324

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
?
f
H__inference_dropout_319_layer_call_and_return_conditional_losses_2082146

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
?
?
,__inference_conv2d_959_layer_call_fn_2082090

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
G__inference_conv2d_959_layer_call_and_return_conditional_losses_20813702
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
H__inference_flatten_319_layer_call_and_return_conditional_losses_2082116

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
?
?
,__inference_conv2d_958_layer_call_fn_2082050

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
G__inference_conv2d_958_layer_call_and_return_conditional_losses_20813472
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
?
j
N__inference_max_pooling2d_959_layer_call_and_return_conditional_losses_2081380

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
?
G__inference_conv2d_959_layer_call_and_return_conditional_losses_2082081

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
?
?
+__inference_dense_957_layer_call_fn_2082141

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
F__inference_dense_957_layer_call_and_return_conditional_losses_20814012
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
?
j
N__inference_max_pooling2d_958_layer_call_and_return_conditional_losses_2081357

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
?
?
%__inference_signature_wrapper_2081821
conv2d_957_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_957_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_20812402
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
_user_specified_nameconv2d_957_input
?
?
0__inference_sequential_319_layer_call_fn_2081961

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
K__inference_sequential_319_layer_call_and_return_conditional_losses_20814492
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
?5
?
K__inference_sequential_319_layer_call_and_return_conditional_losses_2081650

inputs,
conv2d_957_2081614:  
conv2d_957_2081616: ,
conv2d_958_2081620: @ 
conv2d_958_2081622:@-
conv2d_959_2081626:@?!
conv2d_959_2081628:	?$
dense_957_2081633:	?@
dense_957_2081635:@#
dense_958_2081639:@
dense_958_2081641:#
dense_959_2081644:
dense_959_2081646:
identity??"conv2d_957/StatefulPartitionedCall?"conv2d_958/StatefulPartitionedCall?"conv2d_959/StatefulPartitionedCall?!dense_957/StatefulPartitionedCall?!dense_958/StatefulPartitionedCall?!dense_959/StatefulPartitionedCall?#dropout_319/StatefulPartitionedCall?
"conv2d_957/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_957_2081614conv2d_957_2081616*
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
G__inference_conv2d_957_layer_call_and_return_conditional_losses_20813242$
"conv2d_957/StatefulPartitionedCall?
!max_pooling2d_957/PartitionedCallPartitionedCall+conv2d_957/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_957_layer_call_and_return_conditional_losses_20813342#
!max_pooling2d_957/PartitionedCall?
"conv2d_958/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_957/PartitionedCall:output:0conv2d_958_2081620conv2d_958_2081622*
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
G__inference_conv2d_958_layer_call_and_return_conditional_losses_20813472$
"conv2d_958/StatefulPartitionedCall?
!max_pooling2d_958/PartitionedCallPartitionedCall+conv2d_958/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_958_layer_call_and_return_conditional_losses_20813572#
!max_pooling2d_958/PartitionedCall?
"conv2d_959/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_958/PartitionedCall:output:0conv2d_959_2081626conv2d_959_2081628*
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
G__inference_conv2d_959_layer_call_and_return_conditional_losses_20813702$
"conv2d_959/StatefulPartitionedCall?
!max_pooling2d_959/PartitionedCallPartitionedCall+conv2d_959/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_959_layer_call_and_return_conditional_losses_20813802#
!max_pooling2d_959/PartitionedCall?
flatten_319/PartitionedCallPartitionedCall*max_pooling2d_959/PartitionedCall:output:0*
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
H__inference_flatten_319_layer_call_and_return_conditional_losses_20813882
flatten_319/PartitionedCall?
!dense_957/StatefulPartitionedCallStatefulPartitionedCall$flatten_319/PartitionedCall:output:0dense_957_2081633dense_957_2081635*
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
F__inference_dense_957_layer_call_and_return_conditional_losses_20814012#
!dense_957/StatefulPartitionedCall?
#dropout_319/StatefulPartitionedCallStatefulPartitionedCall*dense_957/StatefulPartitionedCall:output:0*
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
H__inference_dropout_319_layer_call_and_return_conditional_losses_20815162%
#dropout_319/StatefulPartitionedCall?
!dense_958/StatefulPartitionedCallStatefulPartitionedCall,dropout_319/StatefulPartitionedCall:output:0dense_958_2081639dense_958_2081641*
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
F__inference_dense_958_layer_call_and_return_conditional_losses_20814252#
!dense_958/StatefulPartitionedCall?
!dense_959/StatefulPartitionedCallStatefulPartitionedCall*dense_958/StatefulPartitionedCall:output:0dense_959_2081644dense_959_2081646*
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
F__inference_dense_959_layer_call_and_return_conditional_losses_20814422#
!dense_959/StatefulPartitionedCall?
IdentityIdentity*dense_959/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_957/StatefulPartitionedCall#^conv2d_958/StatefulPartitionedCall#^conv2d_959/StatefulPartitionedCall"^dense_957/StatefulPartitionedCall"^dense_958/StatefulPartitionedCall"^dense_959/StatefulPartitionedCall$^dropout_319/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_957/StatefulPartitionedCall"conv2d_957/StatefulPartitionedCall2H
"conv2d_958/StatefulPartitionedCall"conv2d_958/StatefulPartitionedCall2H
"conv2d_959/StatefulPartitionedCall"conv2d_959/StatefulPartitionedCall2F
!dense_957/StatefulPartitionedCall!dense_957/StatefulPartitionedCall2F
!dense_958/StatefulPartitionedCall!dense_958/StatefulPartitionedCall2F
!dense_959/StatefulPartitionedCall!dense_959/StatefulPartitionedCall2J
#dropout_319/StatefulPartitionedCall#dropout_319/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
O
3__inference_max_pooling2d_957_layer_call_fn_2082025

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
N__inference_max_pooling2d_957_layer_call_and_return_conditional_losses_20812492
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
?5
?
K__inference_sequential_319_layer_call_and_return_conditional_losses_2081784
conv2d_957_input,
conv2d_957_2081748:  
conv2d_957_2081750: ,
conv2d_958_2081754: @ 
conv2d_958_2081756:@-
conv2d_959_2081760:@?!
conv2d_959_2081762:	?$
dense_957_2081767:	?@
dense_957_2081769:@#
dense_958_2081773:@
dense_958_2081775:#
dense_959_2081778:
dense_959_2081780:
identity??"conv2d_957/StatefulPartitionedCall?"conv2d_958/StatefulPartitionedCall?"conv2d_959/StatefulPartitionedCall?!dense_957/StatefulPartitionedCall?!dense_958/StatefulPartitionedCall?!dense_959/StatefulPartitionedCall?#dropout_319/StatefulPartitionedCall?
"conv2d_957/StatefulPartitionedCallStatefulPartitionedCallconv2d_957_inputconv2d_957_2081748conv2d_957_2081750*
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
G__inference_conv2d_957_layer_call_and_return_conditional_losses_20813242$
"conv2d_957/StatefulPartitionedCall?
!max_pooling2d_957/PartitionedCallPartitionedCall+conv2d_957/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_957_layer_call_and_return_conditional_losses_20813342#
!max_pooling2d_957/PartitionedCall?
"conv2d_958/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_957/PartitionedCall:output:0conv2d_958_2081754conv2d_958_2081756*
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
G__inference_conv2d_958_layer_call_and_return_conditional_losses_20813472$
"conv2d_958/StatefulPartitionedCall?
!max_pooling2d_958/PartitionedCallPartitionedCall+conv2d_958/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_958_layer_call_and_return_conditional_losses_20813572#
!max_pooling2d_958/PartitionedCall?
"conv2d_959/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_958/PartitionedCall:output:0conv2d_959_2081760conv2d_959_2081762*
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
G__inference_conv2d_959_layer_call_and_return_conditional_losses_20813702$
"conv2d_959/StatefulPartitionedCall?
!max_pooling2d_959/PartitionedCallPartitionedCall+conv2d_959/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_959_layer_call_and_return_conditional_losses_20813802#
!max_pooling2d_959/PartitionedCall?
flatten_319/PartitionedCallPartitionedCall*max_pooling2d_959/PartitionedCall:output:0*
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
H__inference_flatten_319_layer_call_and_return_conditional_losses_20813882
flatten_319/PartitionedCall?
!dense_957/StatefulPartitionedCallStatefulPartitionedCall$flatten_319/PartitionedCall:output:0dense_957_2081767dense_957_2081769*
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
F__inference_dense_957_layer_call_and_return_conditional_losses_20814012#
!dense_957/StatefulPartitionedCall?
#dropout_319/StatefulPartitionedCallStatefulPartitionedCall*dense_957/StatefulPartitionedCall:output:0*
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
H__inference_dropout_319_layer_call_and_return_conditional_losses_20815162%
#dropout_319/StatefulPartitionedCall?
!dense_958/StatefulPartitionedCallStatefulPartitionedCall,dropout_319/StatefulPartitionedCall:output:0dense_958_2081773dense_958_2081775*
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
F__inference_dense_958_layer_call_and_return_conditional_losses_20814252#
!dense_958/StatefulPartitionedCall?
!dense_959/StatefulPartitionedCallStatefulPartitionedCall*dense_958/StatefulPartitionedCall:output:0dense_959_2081778dense_959_2081780*
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
F__inference_dense_959_layer_call_and_return_conditional_losses_20814422#
!dense_959/StatefulPartitionedCall?
IdentityIdentity*dense_959/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_957/StatefulPartitionedCall#^conv2d_958/StatefulPartitionedCall#^conv2d_959/StatefulPartitionedCall"^dense_957/StatefulPartitionedCall"^dense_958/StatefulPartitionedCall"^dense_959/StatefulPartitionedCall$^dropout_319/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_957/StatefulPartitionedCall"conv2d_957/StatefulPartitionedCall2H
"conv2d_958/StatefulPartitionedCall"conv2d_958/StatefulPartitionedCall2H
"conv2d_959/StatefulPartitionedCall"conv2d_959/StatefulPartitionedCall2F
!dense_957/StatefulPartitionedCall!dense_957/StatefulPartitionedCall2F
!dense_958/StatefulPartitionedCall!dense_958/StatefulPartitionedCall2F
!dense_959/StatefulPartitionedCall!dense_959/StatefulPartitionedCall2J
#dropout_319/StatefulPartitionedCall#dropout_319/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_957_input
?
?
G__inference_conv2d_957_layer_call_and_return_conditional_losses_2082001

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
F__inference_dense_957_layer_call_and_return_conditional_losses_2082132

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
?
j
N__inference_max_pooling2d_958_layer_call_and_return_conditional_losses_2081271

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
g
H__inference_dropout_319_layer_call_and_return_conditional_losses_2082158

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
?
0__inference_sequential_319_layer_call_fn_2081990

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
K__inference_sequential_319_layer_call_and_return_conditional_losses_20816502
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
G__inference_conv2d_958_layer_call_and_return_conditional_losses_2082041

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
?
F__inference_dense_959_layer_call_and_return_conditional_losses_2081442

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
3__inference_max_pooling2d_958_layer_call_fn_2082070

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
N__inference_max_pooling2d_958_layer_call_and_return_conditional_losses_20813572
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
#__inference__traced_restore_2082511
file_prefix<
"assignvariableop_conv2d_957_kernel: 0
"assignvariableop_1_conv2d_957_bias: >
$assignvariableop_2_conv2d_958_kernel: @0
"assignvariableop_3_conv2d_958_bias:@?
$assignvariableop_4_conv2d_959_kernel:@?1
"assignvariableop_5_conv2d_959_bias:	?6
#assignvariableop_6_dense_957_kernel:	?@/
!assignvariableop_7_dense_957_bias:@5
#assignvariableop_8_dense_958_kernel:@/
!assignvariableop_9_dense_958_bias:6
$assignvariableop_10_dense_959_kernel:0
"assignvariableop_11_dense_959_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: F
,assignvariableop_21_adam_conv2d_957_kernel_m: 8
*assignvariableop_22_adam_conv2d_957_bias_m: F
,assignvariableop_23_adam_conv2d_958_kernel_m: @8
*assignvariableop_24_adam_conv2d_958_bias_m:@G
,assignvariableop_25_adam_conv2d_959_kernel_m:@?9
*assignvariableop_26_adam_conv2d_959_bias_m:	?>
+assignvariableop_27_adam_dense_957_kernel_m:	?@7
)assignvariableop_28_adam_dense_957_bias_m:@=
+assignvariableop_29_adam_dense_958_kernel_m:@7
)assignvariableop_30_adam_dense_958_bias_m:=
+assignvariableop_31_adam_dense_959_kernel_m:7
)assignvariableop_32_adam_dense_959_bias_m:F
,assignvariableop_33_adam_conv2d_957_kernel_v: 8
*assignvariableop_34_adam_conv2d_957_bias_v: F
,assignvariableop_35_adam_conv2d_958_kernel_v: @8
*assignvariableop_36_adam_conv2d_958_bias_v:@G
,assignvariableop_37_adam_conv2d_959_kernel_v:@?9
*assignvariableop_38_adam_conv2d_959_bias_v:	?>
+assignvariableop_39_adam_dense_957_kernel_v:	?@7
)assignvariableop_40_adam_dense_957_bias_v:@=
+assignvariableop_41_adam_dense_958_kernel_v:@7
)assignvariableop_42_adam_dense_958_bias_v:=
+assignvariableop_43_adam_dense_959_kernel_v:7
)assignvariableop_44_adam_dense_959_bias_v:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_957_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_957_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_958_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_958_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_959_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_959_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_957_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_957_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_958_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_958_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_959_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_959_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_conv2d_957_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_957_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_conv2d_958_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_conv2d_958_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_conv2d_959_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_conv2d_959_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_dense_957_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_957_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_958_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_958_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_dense_959_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_959_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adam_conv2d_957_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_957_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp,assignvariableop_35_adam_conv2d_958_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_conv2d_958_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp,assignvariableop_37_adam_conv2d_959_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_conv2d_959_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_dense_957_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_dense_957_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_dense_958_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_dense_958_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_dense_959_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_dense_959_bias_vIdentity_44:output:0"/device:CPU:0*
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
?
I
-__inference_flatten_319_layer_call_fn_2082121

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
H__inference_flatten_319_layer_call_and_return_conditional_losses_20813882
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
?3
?
K__inference_sequential_319_layer_call_and_return_conditional_losses_2081745
conv2d_957_input,
conv2d_957_2081709:  
conv2d_957_2081711: ,
conv2d_958_2081715: @ 
conv2d_958_2081717:@-
conv2d_959_2081721:@?!
conv2d_959_2081723:	?$
dense_957_2081728:	?@
dense_957_2081730:@#
dense_958_2081734:@
dense_958_2081736:#
dense_959_2081739:
dense_959_2081741:
identity??"conv2d_957/StatefulPartitionedCall?"conv2d_958/StatefulPartitionedCall?"conv2d_959/StatefulPartitionedCall?!dense_957/StatefulPartitionedCall?!dense_958/StatefulPartitionedCall?!dense_959/StatefulPartitionedCall?
"conv2d_957/StatefulPartitionedCallStatefulPartitionedCallconv2d_957_inputconv2d_957_2081709conv2d_957_2081711*
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
G__inference_conv2d_957_layer_call_and_return_conditional_losses_20813242$
"conv2d_957/StatefulPartitionedCall?
!max_pooling2d_957/PartitionedCallPartitionedCall+conv2d_957/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_957_layer_call_and_return_conditional_losses_20813342#
!max_pooling2d_957/PartitionedCall?
"conv2d_958/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_957/PartitionedCall:output:0conv2d_958_2081715conv2d_958_2081717*
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
G__inference_conv2d_958_layer_call_and_return_conditional_losses_20813472$
"conv2d_958/StatefulPartitionedCall?
!max_pooling2d_958/PartitionedCallPartitionedCall+conv2d_958/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_958_layer_call_and_return_conditional_losses_20813572#
!max_pooling2d_958/PartitionedCall?
"conv2d_959/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_958/PartitionedCall:output:0conv2d_959_2081721conv2d_959_2081723*
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
G__inference_conv2d_959_layer_call_and_return_conditional_losses_20813702$
"conv2d_959/StatefulPartitionedCall?
!max_pooling2d_959/PartitionedCallPartitionedCall+conv2d_959/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_959_layer_call_and_return_conditional_losses_20813802#
!max_pooling2d_959/PartitionedCall?
flatten_319/PartitionedCallPartitionedCall*max_pooling2d_959/PartitionedCall:output:0*
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
H__inference_flatten_319_layer_call_and_return_conditional_losses_20813882
flatten_319/PartitionedCall?
!dense_957/StatefulPartitionedCallStatefulPartitionedCall$flatten_319/PartitionedCall:output:0dense_957_2081728dense_957_2081730*
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
F__inference_dense_957_layer_call_and_return_conditional_losses_20814012#
!dense_957/StatefulPartitionedCall?
dropout_319/PartitionedCallPartitionedCall*dense_957/StatefulPartitionedCall:output:0*
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
H__inference_dropout_319_layer_call_and_return_conditional_losses_20814122
dropout_319/PartitionedCall?
!dense_958/StatefulPartitionedCallStatefulPartitionedCall$dropout_319/PartitionedCall:output:0dense_958_2081734dense_958_2081736*
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
F__inference_dense_958_layer_call_and_return_conditional_losses_20814252#
!dense_958/StatefulPartitionedCall?
!dense_959/StatefulPartitionedCallStatefulPartitionedCall*dense_958/StatefulPartitionedCall:output:0dense_959_2081739dense_959_2081741*
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
F__inference_dense_959_layer_call_and_return_conditional_losses_20814422#
!dense_959/StatefulPartitionedCall?
IdentityIdentity*dense_959/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_957/StatefulPartitionedCall#^conv2d_958/StatefulPartitionedCall#^conv2d_959/StatefulPartitionedCall"^dense_957/StatefulPartitionedCall"^dense_958/StatefulPartitionedCall"^dense_959/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_957/StatefulPartitionedCall"conv2d_957/StatefulPartitionedCall2H
"conv2d_958/StatefulPartitionedCall"conv2d_958/StatefulPartitionedCall2H
"conv2d_959/StatefulPartitionedCall"conv2d_959/StatefulPartitionedCall2F
!dense_957/StatefulPartitionedCall!dense_957/StatefulPartitionedCall2F
!dense_958/StatefulPartitionedCall!dense_958/StatefulPartitionedCall2F
!dense_959/StatefulPartitionedCall!dense_959/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_957_input
?
j
N__inference_max_pooling2d_959_layer_call_and_return_conditional_losses_2081293

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
-__inference_dropout_319_layer_call_fn_2082163

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
H__inference_dropout_319_layer_call_and_return_conditional_losses_20814122
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
F__inference_dense_959_layer_call_and_return_conditional_losses_2082199

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
K__inference_sequential_319_layer_call_and_return_conditional_losses_2081873

inputsC
)conv2d_957_conv2d_readvariableop_resource: 8
*conv2d_957_biasadd_readvariableop_resource: C
)conv2d_958_conv2d_readvariableop_resource: @8
*conv2d_958_biasadd_readvariableop_resource:@D
)conv2d_959_conv2d_readvariableop_resource:@?9
*conv2d_959_biasadd_readvariableop_resource:	?;
(dense_957_matmul_readvariableop_resource:	?@7
)dense_957_biasadd_readvariableop_resource:@:
(dense_958_matmul_readvariableop_resource:@7
)dense_958_biasadd_readvariableop_resource::
(dense_959_matmul_readvariableop_resource:7
)dense_959_biasadd_readvariableop_resource:
identity??!conv2d_957/BiasAdd/ReadVariableOp? conv2d_957/Conv2D/ReadVariableOp?!conv2d_958/BiasAdd/ReadVariableOp? conv2d_958/Conv2D/ReadVariableOp?!conv2d_959/BiasAdd/ReadVariableOp? conv2d_959/Conv2D/ReadVariableOp? dense_957/BiasAdd/ReadVariableOp?dense_957/MatMul/ReadVariableOp? dense_958/BiasAdd/ReadVariableOp?dense_958/MatMul/ReadVariableOp? dense_959/BiasAdd/ReadVariableOp?dense_959/MatMul/ReadVariableOp?
 conv2d_957/Conv2D/ReadVariableOpReadVariableOp)conv2d_957_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_957/Conv2D/ReadVariableOp?
conv2d_957/Conv2DConv2Dinputs(conv2d_957/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
2
conv2d_957/Conv2D?
!conv2d_957/BiasAdd/ReadVariableOpReadVariableOp*conv2d_957_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_957/BiasAdd/ReadVariableOp?
conv2d_957/BiasAddBiasAddconv2d_957/Conv2D:output:0)conv2d_957/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] 2
conv2d_957/BiasAdd?
conv2d_957/ReluReluconv2d_957/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] 2
conv2d_957/Relu?
max_pooling2d_957/MaxPoolMaxPoolconv2d_957/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
2
max_pooling2d_957/MaxPool?
 conv2d_958/Conv2D/ReadVariableOpReadVariableOp)conv2d_958_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_958/Conv2D/ReadVariableOp?
conv2d_958/Conv2DConv2D"max_pooling2d_957/MaxPool:output:0(conv2d_958/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_958/Conv2D?
!conv2d_958/BiasAdd/ReadVariableOpReadVariableOp*conv2d_958_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_958/BiasAdd/ReadVariableOp?
conv2d_958/BiasAddBiasAddconv2d_958/Conv2D:output:0)conv2d_958/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_958/BiasAdd?
conv2d_958/ReluReluconv2d_958/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_958/Relu?
max_pooling2d_958/MaxPoolMaxPoolconv2d_958/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_958/MaxPool?
 conv2d_959/Conv2D/ReadVariableOpReadVariableOp)conv2d_959_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02"
 conv2d_959/Conv2D/ReadVariableOp?
conv2d_959/Conv2DConv2D"max_pooling2d_958/MaxPool:output:0(conv2d_959/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_959/Conv2D?
!conv2d_959/BiasAdd/ReadVariableOpReadVariableOp*conv2d_959_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_959/BiasAdd/ReadVariableOp?
conv2d_959/BiasAddBiasAddconv2d_959/Conv2D:output:0)conv2d_959/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_959/BiasAdd?
conv2d_959/ReluReluconv2d_959/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_959/Relu?
max_pooling2d_959/MaxPoolMaxPoolconv2d_959/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_959/MaxPoolw
flatten_319/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten_319/Const?
flatten_319/ReshapeReshape"max_pooling2d_959/MaxPool:output:0flatten_319/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_319/Reshape?
dense_957/MatMul/ReadVariableOpReadVariableOp(dense_957_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02!
dense_957/MatMul/ReadVariableOp?
dense_957/MatMulMatMulflatten_319/Reshape:output:0'dense_957/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_957/MatMul?
 dense_957/BiasAdd/ReadVariableOpReadVariableOp)dense_957_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_957/BiasAdd/ReadVariableOp?
dense_957/BiasAddBiasAdddense_957/MatMul:product:0(dense_957/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_957/BiasAddv
dense_957/TanhTanhdense_957/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_957/Tanh~
dropout_319/IdentityIdentitydense_957/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
dropout_319/Identity?
dense_958/MatMul/ReadVariableOpReadVariableOp(dense_958_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02!
dense_958/MatMul/ReadVariableOp?
dense_958/MatMulMatMuldropout_319/Identity:output:0'dense_958/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_958/MatMul?
 dense_958/BiasAdd/ReadVariableOpReadVariableOp)dense_958_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_958/BiasAdd/ReadVariableOp?
dense_958/BiasAddBiasAdddense_958/MatMul:product:0(dense_958/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_958/BiasAddv
dense_958/TanhTanhdense_958/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_958/Tanh?
dense_959/MatMul/ReadVariableOpReadVariableOp(dense_959_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_959/MatMul/ReadVariableOp?
dense_959/MatMulMatMuldense_958/Tanh:y:0'dense_959/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_959/MatMul?
 dense_959/BiasAdd/ReadVariableOpReadVariableOp)dense_959_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_959/BiasAdd/ReadVariableOp?
dense_959/BiasAddBiasAdddense_959/MatMul:product:0(dense_959/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_959/BiasAdd
dense_959/SigmoidSigmoiddense_959/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_959/Sigmoidp
IdentityIdentitydense_959/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_957/BiasAdd/ReadVariableOp!^conv2d_957/Conv2D/ReadVariableOp"^conv2d_958/BiasAdd/ReadVariableOp!^conv2d_958/Conv2D/ReadVariableOp"^conv2d_959/BiasAdd/ReadVariableOp!^conv2d_959/Conv2D/ReadVariableOp!^dense_957/BiasAdd/ReadVariableOp ^dense_957/MatMul/ReadVariableOp!^dense_958/BiasAdd/ReadVariableOp ^dense_958/MatMul/ReadVariableOp!^dense_959/BiasAdd/ReadVariableOp ^dense_959/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_957/BiasAdd/ReadVariableOp!conv2d_957/BiasAdd/ReadVariableOp2D
 conv2d_957/Conv2D/ReadVariableOp conv2d_957/Conv2D/ReadVariableOp2F
!conv2d_958/BiasAdd/ReadVariableOp!conv2d_958/BiasAdd/ReadVariableOp2D
 conv2d_958/Conv2D/ReadVariableOp conv2d_958/Conv2D/ReadVariableOp2F
!conv2d_959/BiasAdd/ReadVariableOp!conv2d_959/BiasAdd/ReadVariableOp2D
 conv2d_959/Conv2D/ReadVariableOp conv2d_959/Conv2D/ReadVariableOp2D
 dense_957/BiasAdd/ReadVariableOp dense_957/BiasAdd/ReadVariableOp2B
dense_957/MatMul/ReadVariableOpdense_957/MatMul/ReadVariableOp2D
 dense_958/BiasAdd/ReadVariableOp dense_958/BiasAdd/ReadVariableOp2B
dense_958/MatMul/ReadVariableOpdense_958/MatMul/ReadVariableOp2D
 dense_959/BiasAdd/ReadVariableOp dense_959/BiasAdd/ReadVariableOp2B
dense_959/MatMul/ReadVariableOpdense_959/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?3
?
K__inference_sequential_319_layer_call_and_return_conditional_losses_2081449

inputs,
conv2d_957_2081325:  
conv2d_957_2081327: ,
conv2d_958_2081348: @ 
conv2d_958_2081350:@-
conv2d_959_2081371:@?!
conv2d_959_2081373:	?$
dense_957_2081402:	?@
dense_957_2081404:@#
dense_958_2081426:@
dense_958_2081428:#
dense_959_2081443:
dense_959_2081445:
identity??"conv2d_957/StatefulPartitionedCall?"conv2d_958/StatefulPartitionedCall?"conv2d_959/StatefulPartitionedCall?!dense_957/StatefulPartitionedCall?!dense_958/StatefulPartitionedCall?!dense_959/StatefulPartitionedCall?
"conv2d_957/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_957_2081325conv2d_957_2081327*
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
G__inference_conv2d_957_layer_call_and_return_conditional_losses_20813242$
"conv2d_957/StatefulPartitionedCall?
!max_pooling2d_957/PartitionedCallPartitionedCall+conv2d_957/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_957_layer_call_and_return_conditional_losses_20813342#
!max_pooling2d_957/PartitionedCall?
"conv2d_958/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_957/PartitionedCall:output:0conv2d_958_2081348conv2d_958_2081350*
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
G__inference_conv2d_958_layer_call_and_return_conditional_losses_20813472$
"conv2d_958/StatefulPartitionedCall?
!max_pooling2d_958/PartitionedCallPartitionedCall+conv2d_958/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_958_layer_call_and_return_conditional_losses_20813572#
!max_pooling2d_958/PartitionedCall?
"conv2d_959/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_958/PartitionedCall:output:0conv2d_959_2081371conv2d_959_2081373*
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
G__inference_conv2d_959_layer_call_and_return_conditional_losses_20813702$
"conv2d_959/StatefulPartitionedCall?
!max_pooling2d_959/PartitionedCallPartitionedCall+conv2d_959/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_959_layer_call_and_return_conditional_losses_20813802#
!max_pooling2d_959/PartitionedCall?
flatten_319/PartitionedCallPartitionedCall*max_pooling2d_959/PartitionedCall:output:0*
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
H__inference_flatten_319_layer_call_and_return_conditional_losses_20813882
flatten_319/PartitionedCall?
!dense_957/StatefulPartitionedCallStatefulPartitionedCall$flatten_319/PartitionedCall:output:0dense_957_2081402dense_957_2081404*
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
F__inference_dense_957_layer_call_and_return_conditional_losses_20814012#
!dense_957/StatefulPartitionedCall?
dropout_319/PartitionedCallPartitionedCall*dense_957/StatefulPartitionedCall:output:0*
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
H__inference_dropout_319_layer_call_and_return_conditional_losses_20814122
dropout_319/PartitionedCall?
!dense_958/StatefulPartitionedCallStatefulPartitionedCall$dropout_319/PartitionedCall:output:0dense_958_2081426dense_958_2081428*
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
F__inference_dense_958_layer_call_and_return_conditional_losses_20814252#
!dense_958/StatefulPartitionedCall?
!dense_959/StatefulPartitionedCallStatefulPartitionedCall*dense_958/StatefulPartitionedCall:output:0dense_959_2081443dense_959_2081445*
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
F__inference_dense_959_layer_call_and_return_conditional_losses_20814422#
!dense_959/StatefulPartitionedCall?
IdentityIdentity*dense_959/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_957/StatefulPartitionedCall#^conv2d_958/StatefulPartitionedCall#^conv2d_959/StatefulPartitionedCall"^dense_957/StatefulPartitionedCall"^dense_958/StatefulPartitionedCall"^dense_959/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_957/StatefulPartitionedCall"conv2d_957/StatefulPartitionedCall2H
"conv2d_958/StatefulPartitionedCall"conv2d_958/StatefulPartitionedCall2H
"conv2d_959/StatefulPartitionedCall"conv2d_959/StatefulPartitionedCall2F
!dense_957/StatefulPartitionedCall!dense_957/StatefulPartitionedCall2F
!dense_958/StatefulPartitionedCall!dense_958/StatefulPartitionedCall2F
!dense_959/StatefulPartitionedCall!dense_959/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
F__inference_dense_958_layer_call_and_return_conditional_losses_2081425

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
3__inference_max_pooling2d_959_layer_call_fn_2082105

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
N__inference_max_pooling2d_959_layer_call_and_return_conditional_losses_20812932
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
N__inference_max_pooling2d_958_layer_call_and_return_conditional_losses_2082055

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
g
H__inference_dropout_319_layer_call_and_return_conditional_losses_2081516

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
?
?
,__inference_conv2d_957_layer_call_fn_2082010

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
G__inference_conv2d_957_layer_call_and_return_conditional_losses_20813242
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
?
j
N__inference_max_pooling2d_959_layer_call_and_return_conditional_losses_2082100

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
j
N__inference_max_pooling2d_958_layer_call_and_return_conditional_losses_2082060

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
conv2d_957_inputC
"serving_default_conv2d_957_input:0???????????=
	dense_9590
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
+:) 2conv2d_957/kernel
: 2conv2d_957/bias
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
+:) @2conv2d_958/kernel
:@2conv2d_958/bias
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
,:*@?2conv2d_959/kernel
:?2conv2d_959/bias
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
#:!	?@2dense_957/kernel
:@2dense_957/bias
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
": @2dense_958/kernel
:2dense_958/bias
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
": 2dense_959/kernel
:2dense_959/bias
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
0:. 2Adam/conv2d_957/kernel/m
":  2Adam/conv2d_957/bias/m
0:. @2Adam/conv2d_958/kernel/m
": @2Adam/conv2d_958/bias/m
1:/@?2Adam/conv2d_959/kernel/m
#:!?2Adam/conv2d_959/bias/m
(:&	?@2Adam/dense_957/kernel/m
!:@2Adam/dense_957/bias/m
':%@2Adam/dense_958/kernel/m
!:2Adam/dense_958/bias/m
':%2Adam/dense_959/kernel/m
!:2Adam/dense_959/bias/m
0:. 2Adam/conv2d_957/kernel/v
":  2Adam/conv2d_957/bias/v
0:. @2Adam/conv2d_958/kernel/v
": @2Adam/conv2d_958/bias/v
1:/@?2Adam/conv2d_959/kernel/v
#:!?2Adam/conv2d_959/bias/v
(:&	?@2Adam/dense_957/kernel/v
!:@2Adam/dense_957/bias/v
':%@2Adam/dense_958/kernel/v
!:2Adam/dense_958/bias/v
':%2Adam/dense_959/kernel/v
!:2Adam/dense_959/bias/v
?2?
K__inference_sequential_319_layer_call_and_return_conditional_losses_2081873
K__inference_sequential_319_layer_call_and_return_conditional_losses_2081932
K__inference_sequential_319_layer_call_and_return_conditional_losses_2081745
K__inference_sequential_319_layer_call_and_return_conditional_losses_2081784?
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
"__inference__wrapped_model_2081240conv2d_957_input"?
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
0__inference_sequential_319_layer_call_fn_2081476
0__inference_sequential_319_layer_call_fn_2081961
0__inference_sequential_319_layer_call_fn_2081990
0__inference_sequential_319_layer_call_fn_2081706?
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
G__inference_conv2d_957_layer_call_and_return_conditional_losses_2082001?
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
,__inference_conv2d_957_layer_call_fn_2082010?
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
N__inference_max_pooling2d_957_layer_call_and_return_conditional_losses_2082015
N__inference_max_pooling2d_957_layer_call_and_return_conditional_losses_2082020?
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
3__inference_max_pooling2d_957_layer_call_fn_2082025
3__inference_max_pooling2d_957_layer_call_fn_2082030?
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
G__inference_conv2d_958_layer_call_and_return_conditional_losses_2082041?
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
,__inference_conv2d_958_layer_call_fn_2082050?
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
N__inference_max_pooling2d_958_layer_call_and_return_conditional_losses_2082055
N__inference_max_pooling2d_958_layer_call_and_return_conditional_losses_2082060?
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
3__inference_max_pooling2d_958_layer_call_fn_2082065
3__inference_max_pooling2d_958_layer_call_fn_2082070?
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
G__inference_conv2d_959_layer_call_and_return_conditional_losses_2082081?
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
,__inference_conv2d_959_layer_call_fn_2082090?
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
N__inference_max_pooling2d_959_layer_call_and_return_conditional_losses_2082095
N__inference_max_pooling2d_959_layer_call_and_return_conditional_losses_2082100?
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
3__inference_max_pooling2d_959_layer_call_fn_2082105
3__inference_max_pooling2d_959_layer_call_fn_2082110?
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
H__inference_flatten_319_layer_call_and_return_conditional_losses_2082116?
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
-__inference_flatten_319_layer_call_fn_2082121?
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
F__inference_dense_957_layer_call_and_return_conditional_losses_2082132?
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
+__inference_dense_957_layer_call_fn_2082141?
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
H__inference_dropout_319_layer_call_and_return_conditional_losses_2082146
H__inference_dropout_319_layer_call_and_return_conditional_losses_2082158?
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
-__inference_dropout_319_layer_call_fn_2082163
-__inference_dropout_319_layer_call_fn_2082168?
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
F__inference_dense_958_layer_call_and_return_conditional_losses_2082179?
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
+__inference_dense_958_layer_call_fn_2082188?
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
F__inference_dense_959_layer_call_and_return_conditional_losses_2082199?
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
+__inference_dense_959_layer_call_fn_2082208?
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
%__inference_signature_wrapper_2081821conv2d_957_input"?
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
"__inference__wrapped_model_2081240?&'45>?DEC?@
9?6
4?1
conv2d_957_input???????????
? "5?2
0
	dense_959#? 
	dense_959??????????
G__inference_conv2d_957_layer_call_and_return_conditional_losses_2082001n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????Z] 
? ?
,__inference_conv2d_957_layer_call_fn_2082010a9?6
/?,
*?'
inputs???????????
? " ??????????Z] ?
G__inference_conv2d_958_layer_call_and_return_conditional_losses_2082041l7?4
-?*
(?%
inputs?????????-. 
? "-?*
#? 
0?????????@
? ?
,__inference_conv2d_958_layer_call_fn_2082050_7?4
-?*
(?%
inputs?????????-. 
? " ??????????@?
G__inference_conv2d_959_layer_call_and_return_conditional_losses_2082081m&'7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_959_layer_call_fn_2082090`&'7?4
-?*
(?%
inputs?????????@
? "!????????????
F__inference_dense_957_layer_call_and_return_conditional_losses_2082132]450?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? 
+__inference_dense_957_layer_call_fn_2082141P450?-
&?#
!?
inputs??????????
? "??????????@?
F__inference_dense_958_layer_call_and_return_conditional_losses_2082179\>?/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? ~
+__inference_dense_958_layer_call_fn_2082188O>?/?,
%?"
 ?
inputs?????????@
? "???????????
F__inference_dense_959_layer_call_and_return_conditional_losses_2082199\DE/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
+__inference_dense_959_layer_call_fn_2082208ODE/?,
%?"
 ?
inputs?????????
? "???????????
H__inference_dropout_319_layer_call_and_return_conditional_losses_2082146\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
H__inference_dropout_319_layer_call_and_return_conditional_losses_2082158\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
-__inference_dropout_319_layer_call_fn_2082163O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
-__inference_dropout_319_layer_call_fn_2082168O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
H__inference_flatten_319_layer_call_and_return_conditional_losses_2082116b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????
? ?
-__inference_flatten_319_layer_call_fn_2082121U8?5
.?+
)?&
inputs??????????
? "????????????
N__inference_max_pooling2d_957_layer_call_and_return_conditional_losses_2082015?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_957_layer_call_and_return_conditional_losses_2082020h7?4
-?*
(?%
inputs?????????Z] 
? "-?*
#? 
0?????????-. 
? ?
3__inference_max_pooling2d_957_layer_call_fn_2082025?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_957_layer_call_fn_2082030[7?4
-?*
(?%
inputs?????????Z] 
? " ??????????-. ?
N__inference_max_pooling2d_958_layer_call_and_return_conditional_losses_2082055?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_958_layer_call_and_return_conditional_losses_2082060h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
3__inference_max_pooling2d_958_layer_call_fn_2082065?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_958_layer_call_fn_2082070[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
N__inference_max_pooling2d_959_layer_call_and_return_conditional_losses_2082095?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_959_layer_call_and_return_conditional_losses_2082100j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
3__inference_max_pooling2d_959_layer_call_fn_2082105?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_959_layer_call_fn_2082110]8?5
.?+
)?&
inputs??????????
? "!????????????
K__inference_sequential_319_layer_call_and_return_conditional_losses_2081745?&'45>?DEK?H
A?>
4?1
conv2d_957_input???????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_319_layer_call_and_return_conditional_losses_2081784?&'45>?DEK?H
A?>
4?1
conv2d_957_input???????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_319_layer_call_and_return_conditional_losses_2081873x&'45>?DEA?>
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
K__inference_sequential_319_layer_call_and_return_conditional_losses_2081932x&'45>?DEA?>
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
0__inference_sequential_319_layer_call_fn_2081476u&'45>?DEK?H
A?>
4?1
conv2d_957_input???????????
p 

 
? "???????????
0__inference_sequential_319_layer_call_fn_2081706u&'45>?DEK?H
A?>
4?1
conv2d_957_input???????????
p

 
? "???????????
0__inference_sequential_319_layer_call_fn_2081961k&'45>?DEA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
0__inference_sequential_319_layer_call_fn_2081990k&'45>?DEA?>
7?4
*?'
inputs???????????
p

 
? "???????????
%__inference_signature_wrapper_2081821?&'45>?DEW?T
? 
M?J
H
conv2d_957_input4?1
conv2d_957_input???????????"5?2
0
	dense_959#? 
	dense_959?????????