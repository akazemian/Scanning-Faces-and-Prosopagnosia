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
conv2d_924/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_924/kernel

%conv2d_924/kernel/Read/ReadVariableOpReadVariableOpconv2d_924/kernel*&
_output_shapes
: *
dtype0
v
conv2d_924/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_924/bias
o
#conv2d_924/bias/Read/ReadVariableOpReadVariableOpconv2d_924/bias*
_output_shapes
: *
dtype0
?
conv2d_925/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_925/kernel

%conv2d_925/kernel/Read/ReadVariableOpReadVariableOpconv2d_925/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_925/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_925/bias
o
#conv2d_925/bias/Read/ReadVariableOpReadVariableOpconv2d_925/bias*
_output_shapes
:@*
dtype0
?
conv2d_926/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*"
shared_nameconv2d_926/kernel
?
%conv2d_926/kernel/Read/ReadVariableOpReadVariableOpconv2d_926/kernel*'
_output_shapes
:@?*
dtype0
w
conv2d_926/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_926/bias
p
#conv2d_926/bias/Read/ReadVariableOpReadVariableOpconv2d_926/bias*
_output_shapes	
:?*
dtype0
}
dense_924/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*!
shared_namedense_924/kernel
v
$dense_924/kernel/Read/ReadVariableOpReadVariableOpdense_924/kernel*
_output_shapes
:	?@*
dtype0
t
dense_924/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_924/bias
m
"dense_924/bias/Read/ReadVariableOpReadVariableOpdense_924/bias*
_output_shapes
:@*
dtype0
|
dense_925/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_925/kernel
u
$dense_925/kernel/Read/ReadVariableOpReadVariableOpdense_925/kernel*
_output_shapes

:@*
dtype0
t
dense_925/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_925/bias
m
"dense_925/bias/Read/ReadVariableOpReadVariableOpdense_925/bias*
_output_shapes
:*
dtype0
|
dense_926/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_926/kernel
u
$dense_926/kernel/Read/ReadVariableOpReadVariableOpdense_926/kernel*
_output_shapes

:*
dtype0
t
dense_926/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_926/bias
m
"dense_926/bias/Read/ReadVariableOpReadVariableOpdense_926/bias*
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
Adam/conv2d_924/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_924/kernel/m
?
,Adam/conv2d_924/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_924/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_924/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_924/bias/m
}
*Adam/conv2d_924/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_924/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_925/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_925/kernel/m
?
,Adam/conv2d_925/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_925/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_925/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_925/bias/m
}
*Adam/conv2d_925/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_925/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_926/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*)
shared_nameAdam/conv2d_926/kernel/m
?
,Adam/conv2d_926/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_926/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_926/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/conv2d_926/bias/m
~
*Adam/conv2d_926/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_926/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_924/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*(
shared_nameAdam/dense_924/kernel/m
?
+Adam/dense_924/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_924/kernel/m*
_output_shapes
:	?@*
dtype0
?
Adam/dense_924/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_924/bias/m
{
)Adam/dense_924/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_924/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_925/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/dense_925/kernel/m
?
+Adam/dense_925/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_925/kernel/m*
_output_shapes

:@*
dtype0
?
Adam/dense_925/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_925/bias/m
{
)Adam/dense_925/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_925/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_926/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_926/kernel/m
?
+Adam/dense_926/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_926/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_926/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_926/bias/m
{
)Adam/dense_926/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_926/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_924/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_924/kernel/v
?
,Adam/conv2d_924/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_924/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_924/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_924/bias/v
}
*Adam/conv2d_924/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_924/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_925/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_925/kernel/v
?
,Adam/conv2d_925/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_925/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_925/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_925/bias/v
}
*Adam/conv2d_925/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_925/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_926/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*)
shared_nameAdam/conv2d_926/kernel/v
?
,Adam/conv2d_926/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_926/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_926/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/conv2d_926/bias/v
~
*Adam/conv2d_926/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_926/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_924/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*(
shared_nameAdam/dense_924/kernel/v
?
+Adam/dense_924/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_924/kernel/v*
_output_shapes
:	?@*
dtype0
?
Adam/dense_924/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_924/bias/v
{
)Adam/dense_924/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_924/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_925/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/dense_925/kernel/v
?
+Adam/dense_925/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_925/kernel/v*
_output_shapes

:@*
dtype0
?
Adam/dense_925/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_925/bias/v
{
)Adam/dense_925/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_925/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_926/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_926/kernel/v
?
+Adam/dense_926/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_926/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_926/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_926/bias/v
{
)Adam/dense_926/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_926/bias/v*
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
VARIABLE_VALUEconv2d_924/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_924/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_925/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_925/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_926/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_926/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_924/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_924/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_925/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_925/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_926/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_926/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/conv2d_924/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_924/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_925/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_925/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_926/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_926/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_924/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_924/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_925/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_925/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_926/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_926/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_924/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_924/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_925/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_925/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_926/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_926/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_924/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_924/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_925/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_925/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_926/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_926/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_conv2d_924_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_924_inputconv2d_924/kernelconv2d_924/biasconv2d_925/kernelconv2d_925/biasconv2d_926/kernelconv2d_926/biasdense_924/kerneldense_924/biasdense_925/kerneldense_925/biasdense_926/kerneldense_926/bias*
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
%__inference_signature_wrapper_2021951
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_924/kernel/Read/ReadVariableOp#conv2d_924/bias/Read/ReadVariableOp%conv2d_925/kernel/Read/ReadVariableOp#conv2d_925/bias/Read/ReadVariableOp%conv2d_926/kernel/Read/ReadVariableOp#conv2d_926/bias/Read/ReadVariableOp$dense_924/kernel/Read/ReadVariableOp"dense_924/bias/Read/ReadVariableOp$dense_925/kernel/Read/ReadVariableOp"dense_925/bias/Read/ReadVariableOp$dense_926/kernel/Read/ReadVariableOp"dense_926/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv2d_924/kernel/m/Read/ReadVariableOp*Adam/conv2d_924/bias/m/Read/ReadVariableOp,Adam/conv2d_925/kernel/m/Read/ReadVariableOp*Adam/conv2d_925/bias/m/Read/ReadVariableOp,Adam/conv2d_926/kernel/m/Read/ReadVariableOp*Adam/conv2d_926/bias/m/Read/ReadVariableOp+Adam/dense_924/kernel/m/Read/ReadVariableOp)Adam/dense_924/bias/m/Read/ReadVariableOp+Adam/dense_925/kernel/m/Read/ReadVariableOp)Adam/dense_925/bias/m/Read/ReadVariableOp+Adam/dense_926/kernel/m/Read/ReadVariableOp)Adam/dense_926/bias/m/Read/ReadVariableOp,Adam/conv2d_924/kernel/v/Read/ReadVariableOp*Adam/conv2d_924/bias/v/Read/ReadVariableOp,Adam/conv2d_925/kernel/v/Read/ReadVariableOp*Adam/conv2d_925/bias/v/Read/ReadVariableOp,Adam/conv2d_926/kernel/v/Read/ReadVariableOp*Adam/conv2d_926/bias/v/Read/ReadVariableOp+Adam/dense_924/kernel/v/Read/ReadVariableOp)Adam/dense_924/bias/v/Read/ReadVariableOp+Adam/dense_925/kernel/v/Read/ReadVariableOp)Adam/dense_925/bias/v/Read/ReadVariableOp+Adam/dense_926/kernel/v/Read/ReadVariableOp)Adam/dense_926/bias/v/Read/ReadVariableOpConst*:
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
 __inference__traced_save_2022496
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_924/kernelconv2d_924/biasconv2d_925/kernelconv2d_925/biasconv2d_926/kernelconv2d_926/biasdense_924/kerneldense_924/biasdense_925/kerneldense_925/biasdense_926/kerneldense_926/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_924/kernel/mAdam/conv2d_924/bias/mAdam/conv2d_925/kernel/mAdam/conv2d_925/bias/mAdam/conv2d_926/kernel/mAdam/conv2d_926/bias/mAdam/dense_924/kernel/mAdam/dense_924/bias/mAdam/dense_925/kernel/mAdam/dense_925/bias/mAdam/dense_926/kernel/mAdam/dense_926/bias/mAdam/conv2d_924/kernel/vAdam/conv2d_924/bias/vAdam/conv2d_925/kernel/vAdam/conv2d_925/bias/vAdam/conv2d_926/kernel/vAdam/conv2d_926/bias/vAdam/dense_924/kernel/vAdam/dense_924/bias/vAdam/dense_925/kernel/vAdam/dense_925/bias/vAdam/dense_926/kernel/vAdam/dense_926/bias/v*9
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
#__inference__traced_restore_2022641??
?
j
N__inference_max_pooling2d_926_layer_call_and_return_conditional_losses_2022230

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
N__inference_max_pooling2d_924_layer_call_and_return_conditional_losses_2022150

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

?
F__inference_dense_925_layer_call_and_return_conditional_losses_2021555

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
?
?
,__inference_conv2d_924_layer_call_fn_2022140

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
G__inference_conv2d_924_layer_call_and_return_conditional_losses_20214542
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
?
0__inference_sequential_308_layer_call_fn_2022091

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
K__inference_sequential_308_layer_call_and_return_conditional_losses_20215792
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
?
I
-__inference_flatten_308_layer_call_fn_2022251

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
H__inference_flatten_308_layer_call_and_return_conditional_losses_20215182
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
?
G__inference_conv2d_925_layer_call_and_return_conditional_losses_2021477

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
H__inference_dropout_308_layer_call_and_return_conditional_losses_2021646

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
g
H__inference_dropout_308_layer_call_and_return_conditional_losses_2022288

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
?
O
3__inference_max_pooling2d_926_layer_call_fn_2022235

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
N__inference_max_pooling2d_926_layer_call_and_return_conditional_losses_20214232
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
?P
?	
K__inference_sequential_308_layer_call_and_return_conditional_losses_2022062

inputsC
)conv2d_924_conv2d_readvariableop_resource: 8
*conv2d_924_biasadd_readvariableop_resource: C
)conv2d_925_conv2d_readvariableop_resource: @8
*conv2d_925_biasadd_readvariableop_resource:@D
)conv2d_926_conv2d_readvariableop_resource:@?9
*conv2d_926_biasadd_readvariableop_resource:	?;
(dense_924_matmul_readvariableop_resource:	?@7
)dense_924_biasadd_readvariableop_resource:@:
(dense_925_matmul_readvariableop_resource:@7
)dense_925_biasadd_readvariableop_resource::
(dense_926_matmul_readvariableop_resource:7
)dense_926_biasadd_readvariableop_resource:
identity??!conv2d_924/BiasAdd/ReadVariableOp? conv2d_924/Conv2D/ReadVariableOp?!conv2d_925/BiasAdd/ReadVariableOp? conv2d_925/Conv2D/ReadVariableOp?!conv2d_926/BiasAdd/ReadVariableOp? conv2d_926/Conv2D/ReadVariableOp? dense_924/BiasAdd/ReadVariableOp?dense_924/MatMul/ReadVariableOp? dense_925/BiasAdd/ReadVariableOp?dense_925/MatMul/ReadVariableOp? dense_926/BiasAdd/ReadVariableOp?dense_926/MatMul/ReadVariableOp?
 conv2d_924/Conv2D/ReadVariableOpReadVariableOp)conv2d_924_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_924/Conv2D/ReadVariableOp?
conv2d_924/Conv2DConv2Dinputs(conv2d_924/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
2
conv2d_924/Conv2D?
!conv2d_924/BiasAdd/ReadVariableOpReadVariableOp*conv2d_924_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_924/BiasAdd/ReadVariableOp?
conv2d_924/BiasAddBiasAddconv2d_924/Conv2D:output:0)conv2d_924/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] 2
conv2d_924/BiasAdd?
conv2d_924/ReluReluconv2d_924/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] 2
conv2d_924/Relu?
max_pooling2d_924/MaxPoolMaxPoolconv2d_924/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
2
max_pooling2d_924/MaxPool?
 conv2d_925/Conv2D/ReadVariableOpReadVariableOp)conv2d_925_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_925/Conv2D/ReadVariableOp?
conv2d_925/Conv2DConv2D"max_pooling2d_924/MaxPool:output:0(conv2d_925/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_925/Conv2D?
!conv2d_925/BiasAdd/ReadVariableOpReadVariableOp*conv2d_925_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_925/BiasAdd/ReadVariableOp?
conv2d_925/BiasAddBiasAddconv2d_925/Conv2D:output:0)conv2d_925/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_925/BiasAdd?
conv2d_925/ReluReluconv2d_925/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_925/Relu?
max_pooling2d_925/MaxPoolMaxPoolconv2d_925/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_925/MaxPool?
 conv2d_926/Conv2D/ReadVariableOpReadVariableOp)conv2d_926_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02"
 conv2d_926/Conv2D/ReadVariableOp?
conv2d_926/Conv2DConv2D"max_pooling2d_925/MaxPool:output:0(conv2d_926/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_926/Conv2D?
!conv2d_926/BiasAdd/ReadVariableOpReadVariableOp*conv2d_926_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_926/BiasAdd/ReadVariableOp?
conv2d_926/BiasAddBiasAddconv2d_926/Conv2D:output:0)conv2d_926/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_926/BiasAdd?
conv2d_926/ReluReluconv2d_926/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_926/Relu?
max_pooling2d_926/MaxPoolMaxPoolconv2d_926/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_926/MaxPoolw
flatten_308/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten_308/Const?
flatten_308/ReshapeReshape"max_pooling2d_926/MaxPool:output:0flatten_308/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_308/Reshape?
dense_924/MatMul/ReadVariableOpReadVariableOp(dense_924_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02!
dense_924/MatMul/ReadVariableOp?
dense_924/MatMulMatMulflatten_308/Reshape:output:0'dense_924/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_924/MatMul?
 dense_924/BiasAdd/ReadVariableOpReadVariableOp)dense_924_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_924/BiasAdd/ReadVariableOp?
dense_924/BiasAddBiasAdddense_924/MatMul:product:0(dense_924/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_924/BiasAddv
dense_924/TanhTanhdense_924/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_924/Tanh{
dropout_308/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_308/dropout/Const?
dropout_308/dropout/MulMuldense_924/Tanh:y:0"dropout_308/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_308/dropout/Mulx
dropout_308/dropout/ShapeShapedense_924/Tanh:y:0*
T0*
_output_shapes
:2
dropout_308/dropout/Shape?
0dropout_308/dropout/random_uniform/RandomUniformRandomUniform"dropout_308/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype022
0dropout_308/dropout/random_uniform/RandomUniform?
"dropout_308/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"dropout_308/dropout/GreaterEqual/y?
 dropout_308/dropout/GreaterEqualGreaterEqual9dropout_308/dropout/random_uniform/RandomUniform:output:0+dropout_308/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 dropout_308/dropout/GreaterEqual?
dropout_308/dropout/CastCast$dropout_308/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_308/dropout/Cast?
dropout_308/dropout/Mul_1Muldropout_308/dropout/Mul:z:0dropout_308/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_308/dropout/Mul_1?
dense_925/MatMul/ReadVariableOpReadVariableOp(dense_925_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02!
dense_925/MatMul/ReadVariableOp?
dense_925/MatMulMatMuldropout_308/dropout/Mul_1:z:0'dense_925/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_925/MatMul?
 dense_925/BiasAdd/ReadVariableOpReadVariableOp)dense_925_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_925/BiasAdd/ReadVariableOp?
dense_925/BiasAddBiasAdddense_925/MatMul:product:0(dense_925/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_925/BiasAddv
dense_925/TanhTanhdense_925/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_925/Tanh?
dense_926/MatMul/ReadVariableOpReadVariableOp(dense_926_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_926/MatMul/ReadVariableOp?
dense_926/MatMulMatMuldense_925/Tanh:y:0'dense_926/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_926/MatMul?
 dense_926/BiasAdd/ReadVariableOpReadVariableOp)dense_926_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_926/BiasAdd/ReadVariableOp?
dense_926/BiasAddBiasAdddense_926/MatMul:product:0(dense_926/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_926/BiasAdd
dense_926/SigmoidSigmoiddense_926/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_926/Sigmoidp
IdentityIdentitydense_926/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_924/BiasAdd/ReadVariableOp!^conv2d_924/Conv2D/ReadVariableOp"^conv2d_925/BiasAdd/ReadVariableOp!^conv2d_925/Conv2D/ReadVariableOp"^conv2d_926/BiasAdd/ReadVariableOp!^conv2d_926/Conv2D/ReadVariableOp!^dense_924/BiasAdd/ReadVariableOp ^dense_924/MatMul/ReadVariableOp!^dense_925/BiasAdd/ReadVariableOp ^dense_925/MatMul/ReadVariableOp!^dense_926/BiasAdd/ReadVariableOp ^dense_926/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_924/BiasAdd/ReadVariableOp!conv2d_924/BiasAdd/ReadVariableOp2D
 conv2d_924/Conv2D/ReadVariableOp conv2d_924/Conv2D/ReadVariableOp2F
!conv2d_925/BiasAdd/ReadVariableOp!conv2d_925/BiasAdd/ReadVariableOp2D
 conv2d_925/Conv2D/ReadVariableOp conv2d_925/Conv2D/ReadVariableOp2F
!conv2d_926/BiasAdd/ReadVariableOp!conv2d_926/BiasAdd/ReadVariableOp2D
 conv2d_926/Conv2D/ReadVariableOp conv2d_926/Conv2D/ReadVariableOp2D
 dense_924/BiasAdd/ReadVariableOp dense_924/BiasAdd/ReadVariableOp2B
dense_924/MatMul/ReadVariableOpdense_924/MatMul/ReadVariableOp2D
 dense_925/BiasAdd/ReadVariableOp dense_925/BiasAdd/ReadVariableOp2B
dense_925/MatMul/ReadVariableOpdense_925/MatMul/ReadVariableOp2D
 dense_926/BiasAdd/ReadVariableOp dense_926/BiasAdd/ReadVariableOp2B
dense_926/MatMul/ReadVariableOpdense_926/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
I
-__inference_dropout_308_layer_call_fn_2022293

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
H__inference_dropout_308_layer_call_and_return_conditional_losses_20215422
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
?
f
H__inference_dropout_308_layer_call_and_return_conditional_losses_2022276

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
%__inference_signature_wrapper_2021951
conv2d_924_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_924_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_20213702
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
_user_specified_nameconv2d_924_input
?
?
F__inference_dense_926_layer_call_and_return_conditional_losses_2022329

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
?
O
3__inference_max_pooling2d_924_layer_call_fn_2022155

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
N__inference_max_pooling2d_924_layer_call_and_return_conditional_losses_20213792
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
?\
?
"__inference__wrapped_model_2021370
conv2d_924_inputR
8sequential_308_conv2d_924_conv2d_readvariableop_resource: G
9sequential_308_conv2d_924_biasadd_readvariableop_resource: R
8sequential_308_conv2d_925_conv2d_readvariableop_resource: @G
9sequential_308_conv2d_925_biasadd_readvariableop_resource:@S
8sequential_308_conv2d_926_conv2d_readvariableop_resource:@?H
9sequential_308_conv2d_926_biasadd_readvariableop_resource:	?J
7sequential_308_dense_924_matmul_readvariableop_resource:	?@F
8sequential_308_dense_924_biasadd_readvariableop_resource:@I
7sequential_308_dense_925_matmul_readvariableop_resource:@F
8sequential_308_dense_925_biasadd_readvariableop_resource:I
7sequential_308_dense_926_matmul_readvariableop_resource:F
8sequential_308_dense_926_biasadd_readvariableop_resource:
identity??0sequential_308/conv2d_924/BiasAdd/ReadVariableOp?/sequential_308/conv2d_924/Conv2D/ReadVariableOp?0sequential_308/conv2d_925/BiasAdd/ReadVariableOp?/sequential_308/conv2d_925/Conv2D/ReadVariableOp?0sequential_308/conv2d_926/BiasAdd/ReadVariableOp?/sequential_308/conv2d_926/Conv2D/ReadVariableOp?/sequential_308/dense_924/BiasAdd/ReadVariableOp?.sequential_308/dense_924/MatMul/ReadVariableOp?/sequential_308/dense_925/BiasAdd/ReadVariableOp?.sequential_308/dense_925/MatMul/ReadVariableOp?/sequential_308/dense_926/BiasAdd/ReadVariableOp?.sequential_308/dense_926/MatMul/ReadVariableOp?
/sequential_308/conv2d_924/Conv2D/ReadVariableOpReadVariableOp8sequential_308_conv2d_924_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype021
/sequential_308/conv2d_924/Conv2D/ReadVariableOp?
 sequential_308/conv2d_924/Conv2DConv2Dconv2d_924_input7sequential_308/conv2d_924/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
2"
 sequential_308/conv2d_924/Conv2D?
0sequential_308/conv2d_924/BiasAdd/ReadVariableOpReadVariableOp9sequential_308_conv2d_924_biasadd_readvariableop_resource*
_output_shapes
: *
dtype022
0sequential_308/conv2d_924/BiasAdd/ReadVariableOp?
!sequential_308/conv2d_924/BiasAddBiasAdd)sequential_308/conv2d_924/Conv2D:output:08sequential_308/conv2d_924/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] 2#
!sequential_308/conv2d_924/BiasAdd?
sequential_308/conv2d_924/ReluRelu*sequential_308/conv2d_924/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] 2 
sequential_308/conv2d_924/Relu?
(sequential_308/max_pooling2d_924/MaxPoolMaxPool,sequential_308/conv2d_924/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
2*
(sequential_308/max_pooling2d_924/MaxPool?
/sequential_308/conv2d_925/Conv2D/ReadVariableOpReadVariableOp8sequential_308_conv2d_925_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype021
/sequential_308/conv2d_925/Conv2D/ReadVariableOp?
 sequential_308/conv2d_925/Conv2DConv2D1sequential_308/max_pooling2d_924/MaxPool:output:07sequential_308/conv2d_925/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2"
 sequential_308/conv2d_925/Conv2D?
0sequential_308/conv2d_925/BiasAdd/ReadVariableOpReadVariableOp9sequential_308_conv2d_925_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_308/conv2d_925/BiasAdd/ReadVariableOp?
!sequential_308/conv2d_925/BiasAddBiasAdd)sequential_308/conv2d_925/Conv2D:output:08sequential_308/conv2d_925/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2#
!sequential_308/conv2d_925/BiasAdd?
sequential_308/conv2d_925/ReluRelu*sequential_308/conv2d_925/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2 
sequential_308/conv2d_925/Relu?
(sequential_308/max_pooling2d_925/MaxPoolMaxPool,sequential_308/conv2d_925/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2*
(sequential_308/max_pooling2d_925/MaxPool?
/sequential_308/conv2d_926/Conv2D/ReadVariableOpReadVariableOp8sequential_308_conv2d_926_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype021
/sequential_308/conv2d_926/Conv2D/ReadVariableOp?
 sequential_308/conv2d_926/Conv2DConv2D1sequential_308/max_pooling2d_925/MaxPool:output:07sequential_308/conv2d_926/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2"
 sequential_308/conv2d_926/Conv2D?
0sequential_308/conv2d_926/BiasAdd/ReadVariableOpReadVariableOp9sequential_308_conv2d_926_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype022
0sequential_308/conv2d_926/BiasAdd/ReadVariableOp?
!sequential_308/conv2d_926/BiasAddBiasAdd)sequential_308/conv2d_926/Conv2D:output:08sequential_308/conv2d_926/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2#
!sequential_308/conv2d_926/BiasAdd?
sequential_308/conv2d_926/ReluRelu*sequential_308/conv2d_926/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2 
sequential_308/conv2d_926/Relu?
(sequential_308/max_pooling2d_926/MaxPoolMaxPool,sequential_308/conv2d_926/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2*
(sequential_308/max_pooling2d_926/MaxPool?
 sequential_308/flatten_308/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2"
 sequential_308/flatten_308/Const?
"sequential_308/flatten_308/ReshapeReshape1sequential_308/max_pooling2d_926/MaxPool:output:0)sequential_308/flatten_308/Const:output:0*
T0*(
_output_shapes
:??????????2$
"sequential_308/flatten_308/Reshape?
.sequential_308/dense_924/MatMul/ReadVariableOpReadVariableOp7sequential_308_dense_924_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype020
.sequential_308/dense_924/MatMul/ReadVariableOp?
sequential_308/dense_924/MatMulMatMul+sequential_308/flatten_308/Reshape:output:06sequential_308/dense_924/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
sequential_308/dense_924/MatMul?
/sequential_308/dense_924/BiasAdd/ReadVariableOpReadVariableOp8sequential_308_dense_924_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_308/dense_924/BiasAdd/ReadVariableOp?
 sequential_308/dense_924/BiasAddBiasAdd)sequential_308/dense_924/MatMul:product:07sequential_308/dense_924/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 sequential_308/dense_924/BiasAdd?
sequential_308/dense_924/TanhTanh)sequential_308/dense_924/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential_308/dense_924/Tanh?
#sequential_308/dropout_308/IdentityIdentity!sequential_308/dense_924/Tanh:y:0*
T0*'
_output_shapes
:?????????@2%
#sequential_308/dropout_308/Identity?
.sequential_308/dense_925/MatMul/ReadVariableOpReadVariableOp7sequential_308_dense_925_matmul_readvariableop_resource*
_output_shapes

:@*
dtype020
.sequential_308/dense_925/MatMul/ReadVariableOp?
sequential_308/dense_925/MatMulMatMul,sequential_308/dropout_308/Identity:output:06sequential_308/dense_925/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_308/dense_925/MatMul?
/sequential_308/dense_925/BiasAdd/ReadVariableOpReadVariableOp8sequential_308_dense_925_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_308/dense_925/BiasAdd/ReadVariableOp?
 sequential_308/dense_925/BiasAddBiasAdd)sequential_308/dense_925/MatMul:product:07sequential_308/dense_925/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 sequential_308/dense_925/BiasAdd?
sequential_308/dense_925/TanhTanh)sequential_308/dense_925/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_308/dense_925/Tanh?
.sequential_308/dense_926/MatMul/ReadVariableOpReadVariableOp7sequential_308_dense_926_matmul_readvariableop_resource*
_output_shapes

:*
dtype020
.sequential_308/dense_926/MatMul/ReadVariableOp?
sequential_308/dense_926/MatMulMatMul!sequential_308/dense_925/Tanh:y:06sequential_308/dense_926/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_308/dense_926/MatMul?
/sequential_308/dense_926/BiasAdd/ReadVariableOpReadVariableOp8sequential_308_dense_926_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_308/dense_926/BiasAdd/ReadVariableOp?
 sequential_308/dense_926/BiasAddBiasAdd)sequential_308/dense_926/MatMul:product:07sequential_308/dense_926/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 sequential_308/dense_926/BiasAdd?
 sequential_308/dense_926/SigmoidSigmoid)sequential_308/dense_926/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2"
 sequential_308/dense_926/Sigmoid
IdentityIdentity$sequential_308/dense_926/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp1^sequential_308/conv2d_924/BiasAdd/ReadVariableOp0^sequential_308/conv2d_924/Conv2D/ReadVariableOp1^sequential_308/conv2d_925/BiasAdd/ReadVariableOp0^sequential_308/conv2d_925/Conv2D/ReadVariableOp1^sequential_308/conv2d_926/BiasAdd/ReadVariableOp0^sequential_308/conv2d_926/Conv2D/ReadVariableOp0^sequential_308/dense_924/BiasAdd/ReadVariableOp/^sequential_308/dense_924/MatMul/ReadVariableOp0^sequential_308/dense_925/BiasAdd/ReadVariableOp/^sequential_308/dense_925/MatMul/ReadVariableOp0^sequential_308/dense_926/BiasAdd/ReadVariableOp/^sequential_308/dense_926/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2d
0sequential_308/conv2d_924/BiasAdd/ReadVariableOp0sequential_308/conv2d_924/BiasAdd/ReadVariableOp2b
/sequential_308/conv2d_924/Conv2D/ReadVariableOp/sequential_308/conv2d_924/Conv2D/ReadVariableOp2d
0sequential_308/conv2d_925/BiasAdd/ReadVariableOp0sequential_308/conv2d_925/BiasAdd/ReadVariableOp2b
/sequential_308/conv2d_925/Conv2D/ReadVariableOp/sequential_308/conv2d_925/Conv2D/ReadVariableOp2d
0sequential_308/conv2d_926/BiasAdd/ReadVariableOp0sequential_308/conv2d_926/BiasAdd/ReadVariableOp2b
/sequential_308/conv2d_926/Conv2D/ReadVariableOp/sequential_308/conv2d_926/Conv2D/ReadVariableOp2b
/sequential_308/dense_924/BiasAdd/ReadVariableOp/sequential_308/dense_924/BiasAdd/ReadVariableOp2`
.sequential_308/dense_924/MatMul/ReadVariableOp.sequential_308/dense_924/MatMul/ReadVariableOp2b
/sequential_308/dense_925/BiasAdd/ReadVariableOp/sequential_308/dense_925/BiasAdd/ReadVariableOp2`
.sequential_308/dense_925/MatMul/ReadVariableOp.sequential_308/dense_925/MatMul/ReadVariableOp2b
/sequential_308/dense_926/BiasAdd/ReadVariableOp/sequential_308/dense_926/BiasAdd/ReadVariableOp2`
.sequential_308/dense_926/MatMul/ReadVariableOp.sequential_308/dense_926/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_924_input
?
?
0__inference_sequential_308_layer_call_fn_2021606
conv2d_924_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_924_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
K__inference_sequential_308_layer_call_and_return_conditional_losses_20215792
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
_user_specified_nameconv2d_924_input
?
?
G__inference_conv2d_924_layer_call_and_return_conditional_losses_2022131

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
N__inference_max_pooling2d_926_layer_call_and_return_conditional_losses_2021510

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
G__inference_conv2d_924_layer_call_and_return_conditional_losses_2021454

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
?5
?
K__inference_sequential_308_layer_call_and_return_conditional_losses_2021780

inputs,
conv2d_924_2021744:  
conv2d_924_2021746: ,
conv2d_925_2021750: @ 
conv2d_925_2021752:@-
conv2d_926_2021756:@?!
conv2d_926_2021758:	?$
dense_924_2021763:	?@
dense_924_2021765:@#
dense_925_2021769:@
dense_925_2021771:#
dense_926_2021774:
dense_926_2021776:
identity??"conv2d_924/StatefulPartitionedCall?"conv2d_925/StatefulPartitionedCall?"conv2d_926/StatefulPartitionedCall?!dense_924/StatefulPartitionedCall?!dense_925/StatefulPartitionedCall?!dense_926/StatefulPartitionedCall?#dropout_308/StatefulPartitionedCall?
"conv2d_924/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_924_2021744conv2d_924_2021746*
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
G__inference_conv2d_924_layer_call_and_return_conditional_losses_20214542$
"conv2d_924/StatefulPartitionedCall?
!max_pooling2d_924/PartitionedCallPartitionedCall+conv2d_924/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_924_layer_call_and_return_conditional_losses_20214642#
!max_pooling2d_924/PartitionedCall?
"conv2d_925/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_924/PartitionedCall:output:0conv2d_925_2021750conv2d_925_2021752*
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
G__inference_conv2d_925_layer_call_and_return_conditional_losses_20214772$
"conv2d_925/StatefulPartitionedCall?
!max_pooling2d_925/PartitionedCallPartitionedCall+conv2d_925/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_925_layer_call_and_return_conditional_losses_20214872#
!max_pooling2d_925/PartitionedCall?
"conv2d_926/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_925/PartitionedCall:output:0conv2d_926_2021756conv2d_926_2021758*
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
G__inference_conv2d_926_layer_call_and_return_conditional_losses_20215002$
"conv2d_926/StatefulPartitionedCall?
!max_pooling2d_926/PartitionedCallPartitionedCall+conv2d_926/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_926_layer_call_and_return_conditional_losses_20215102#
!max_pooling2d_926/PartitionedCall?
flatten_308/PartitionedCallPartitionedCall*max_pooling2d_926/PartitionedCall:output:0*
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
H__inference_flatten_308_layer_call_and_return_conditional_losses_20215182
flatten_308/PartitionedCall?
!dense_924/StatefulPartitionedCallStatefulPartitionedCall$flatten_308/PartitionedCall:output:0dense_924_2021763dense_924_2021765*
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
F__inference_dense_924_layer_call_and_return_conditional_losses_20215312#
!dense_924/StatefulPartitionedCall?
#dropout_308/StatefulPartitionedCallStatefulPartitionedCall*dense_924/StatefulPartitionedCall:output:0*
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
H__inference_dropout_308_layer_call_and_return_conditional_losses_20216462%
#dropout_308/StatefulPartitionedCall?
!dense_925/StatefulPartitionedCallStatefulPartitionedCall,dropout_308/StatefulPartitionedCall:output:0dense_925_2021769dense_925_2021771*
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
F__inference_dense_925_layer_call_and_return_conditional_losses_20215552#
!dense_925/StatefulPartitionedCall?
!dense_926/StatefulPartitionedCallStatefulPartitionedCall*dense_925/StatefulPartitionedCall:output:0dense_926_2021774dense_926_2021776*
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
F__inference_dense_926_layer_call_and_return_conditional_losses_20215722#
!dense_926/StatefulPartitionedCall?
IdentityIdentity*dense_926/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_924/StatefulPartitionedCall#^conv2d_925/StatefulPartitionedCall#^conv2d_926/StatefulPartitionedCall"^dense_924/StatefulPartitionedCall"^dense_925/StatefulPartitionedCall"^dense_926/StatefulPartitionedCall$^dropout_308/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_924/StatefulPartitionedCall"conv2d_924/StatefulPartitionedCall2H
"conv2d_925/StatefulPartitionedCall"conv2d_925/StatefulPartitionedCall2H
"conv2d_926/StatefulPartitionedCall"conv2d_926/StatefulPartitionedCall2F
!dense_924/StatefulPartitionedCall!dense_924/StatefulPartitionedCall2F
!dense_925/StatefulPartitionedCall!dense_925/StatefulPartitionedCall2F
!dense_926/StatefulPartitionedCall!dense_926/StatefulPartitionedCall2J
#dropout_308/StatefulPartitionedCall#dropout_308/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
j
N__inference_max_pooling2d_926_layer_call_and_return_conditional_losses_2021423

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
?3
?
K__inference_sequential_308_layer_call_and_return_conditional_losses_2021875
conv2d_924_input,
conv2d_924_2021839:  
conv2d_924_2021841: ,
conv2d_925_2021845: @ 
conv2d_925_2021847:@-
conv2d_926_2021851:@?!
conv2d_926_2021853:	?$
dense_924_2021858:	?@
dense_924_2021860:@#
dense_925_2021864:@
dense_925_2021866:#
dense_926_2021869:
dense_926_2021871:
identity??"conv2d_924/StatefulPartitionedCall?"conv2d_925/StatefulPartitionedCall?"conv2d_926/StatefulPartitionedCall?!dense_924/StatefulPartitionedCall?!dense_925/StatefulPartitionedCall?!dense_926/StatefulPartitionedCall?
"conv2d_924/StatefulPartitionedCallStatefulPartitionedCallconv2d_924_inputconv2d_924_2021839conv2d_924_2021841*
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
G__inference_conv2d_924_layer_call_and_return_conditional_losses_20214542$
"conv2d_924/StatefulPartitionedCall?
!max_pooling2d_924/PartitionedCallPartitionedCall+conv2d_924/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_924_layer_call_and_return_conditional_losses_20214642#
!max_pooling2d_924/PartitionedCall?
"conv2d_925/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_924/PartitionedCall:output:0conv2d_925_2021845conv2d_925_2021847*
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
G__inference_conv2d_925_layer_call_and_return_conditional_losses_20214772$
"conv2d_925/StatefulPartitionedCall?
!max_pooling2d_925/PartitionedCallPartitionedCall+conv2d_925/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_925_layer_call_and_return_conditional_losses_20214872#
!max_pooling2d_925/PartitionedCall?
"conv2d_926/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_925/PartitionedCall:output:0conv2d_926_2021851conv2d_926_2021853*
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
G__inference_conv2d_926_layer_call_and_return_conditional_losses_20215002$
"conv2d_926/StatefulPartitionedCall?
!max_pooling2d_926/PartitionedCallPartitionedCall+conv2d_926/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_926_layer_call_and_return_conditional_losses_20215102#
!max_pooling2d_926/PartitionedCall?
flatten_308/PartitionedCallPartitionedCall*max_pooling2d_926/PartitionedCall:output:0*
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
H__inference_flatten_308_layer_call_and_return_conditional_losses_20215182
flatten_308/PartitionedCall?
!dense_924/StatefulPartitionedCallStatefulPartitionedCall$flatten_308/PartitionedCall:output:0dense_924_2021858dense_924_2021860*
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
F__inference_dense_924_layer_call_and_return_conditional_losses_20215312#
!dense_924/StatefulPartitionedCall?
dropout_308/PartitionedCallPartitionedCall*dense_924/StatefulPartitionedCall:output:0*
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
H__inference_dropout_308_layer_call_and_return_conditional_losses_20215422
dropout_308/PartitionedCall?
!dense_925/StatefulPartitionedCallStatefulPartitionedCall$dropout_308/PartitionedCall:output:0dense_925_2021864dense_925_2021866*
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
F__inference_dense_925_layer_call_and_return_conditional_losses_20215552#
!dense_925/StatefulPartitionedCall?
!dense_926/StatefulPartitionedCallStatefulPartitionedCall*dense_925/StatefulPartitionedCall:output:0dense_926_2021869dense_926_2021871*
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
F__inference_dense_926_layer_call_and_return_conditional_losses_20215722#
!dense_926/StatefulPartitionedCall?
IdentityIdentity*dense_926/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_924/StatefulPartitionedCall#^conv2d_925/StatefulPartitionedCall#^conv2d_926/StatefulPartitionedCall"^dense_924/StatefulPartitionedCall"^dense_925/StatefulPartitionedCall"^dense_926/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_924/StatefulPartitionedCall"conv2d_924/StatefulPartitionedCall2H
"conv2d_925/StatefulPartitionedCall"conv2d_925/StatefulPartitionedCall2H
"conv2d_926/StatefulPartitionedCall"conv2d_926/StatefulPartitionedCall2F
!dense_924/StatefulPartitionedCall!dense_924/StatefulPartitionedCall2F
!dense_925/StatefulPartitionedCall!dense_925/StatefulPartitionedCall2F
!dense_926/StatefulPartitionedCall!dense_926/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_924_input
?

?
F__inference_dense_924_layer_call_and_return_conditional_losses_2022262

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
?
f
H__inference_dropout_308_layer_call_and_return_conditional_losses_2021542

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

?
F__inference_dense_924_layer_call_and_return_conditional_losses_2021531

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
?
?
+__inference_dense_925_layer_call_fn_2022318

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
F__inference_dense_925_layer_call_and_return_conditional_losses_20215552
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
O
3__inference_max_pooling2d_926_layer_call_fn_2022240

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
N__inference_max_pooling2d_926_layer_call_and_return_conditional_losses_20215102
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
N__inference_max_pooling2d_924_layer_call_and_return_conditional_losses_2021379

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
O
3__inference_max_pooling2d_924_layer_call_fn_2022160

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
N__inference_max_pooling2d_924_layer_call_and_return_conditional_losses_20214642
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
N__inference_max_pooling2d_926_layer_call_and_return_conditional_losses_2022225

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
?
0__inference_sequential_308_layer_call_fn_2021836
conv2d_924_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_924_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
K__inference_sequential_308_layer_call_and_return_conditional_losses_20217802
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
_user_specified_nameconv2d_924_input
?
?
,__inference_conv2d_925_layer_call_fn_2022180

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
G__inference_conv2d_925_layer_call_and_return_conditional_losses_20214772
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
?
?
G__inference_conv2d_926_layer_call_and_return_conditional_losses_2022211

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
?
d
H__inference_flatten_308_layer_call_and_return_conditional_losses_2021518

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
?
+__inference_dense_924_layer_call_fn_2022271

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
F__inference_dense_924_layer_call_and_return_conditional_losses_20215312
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
N__inference_max_pooling2d_925_layer_call_and_return_conditional_losses_2022190

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
?
j
N__inference_max_pooling2d_924_layer_call_and_return_conditional_losses_2022145

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
+__inference_dense_926_layer_call_fn_2022338

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
F__inference_dense_926_layer_call_and_return_conditional_losses_20215722
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
N__inference_max_pooling2d_925_layer_call_and_return_conditional_losses_2021487

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
,__inference_conv2d_926_layer_call_fn_2022220

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
G__inference_conv2d_926_layer_call_and_return_conditional_losses_20215002
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
?
f
-__inference_dropout_308_layer_call_fn_2022298

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
H__inference_dropout_308_layer_call_and_return_conditional_losses_20216462
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
?
0__inference_sequential_308_layer_call_fn_2022120

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
K__inference_sequential_308_layer_call_and_return_conditional_losses_20217802
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
??
?
#__inference__traced_restore_2022641
file_prefix<
"assignvariableop_conv2d_924_kernel: 0
"assignvariableop_1_conv2d_924_bias: >
$assignvariableop_2_conv2d_925_kernel: @0
"assignvariableop_3_conv2d_925_bias:@?
$assignvariableop_4_conv2d_926_kernel:@?1
"assignvariableop_5_conv2d_926_bias:	?6
#assignvariableop_6_dense_924_kernel:	?@/
!assignvariableop_7_dense_924_bias:@5
#assignvariableop_8_dense_925_kernel:@/
!assignvariableop_9_dense_925_bias:6
$assignvariableop_10_dense_926_kernel:0
"assignvariableop_11_dense_926_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: F
,assignvariableop_21_adam_conv2d_924_kernel_m: 8
*assignvariableop_22_adam_conv2d_924_bias_m: F
,assignvariableop_23_adam_conv2d_925_kernel_m: @8
*assignvariableop_24_adam_conv2d_925_bias_m:@G
,assignvariableop_25_adam_conv2d_926_kernel_m:@?9
*assignvariableop_26_adam_conv2d_926_bias_m:	?>
+assignvariableop_27_adam_dense_924_kernel_m:	?@7
)assignvariableop_28_adam_dense_924_bias_m:@=
+assignvariableop_29_adam_dense_925_kernel_m:@7
)assignvariableop_30_adam_dense_925_bias_m:=
+assignvariableop_31_adam_dense_926_kernel_m:7
)assignvariableop_32_adam_dense_926_bias_m:F
,assignvariableop_33_adam_conv2d_924_kernel_v: 8
*assignvariableop_34_adam_conv2d_924_bias_v: F
,assignvariableop_35_adam_conv2d_925_kernel_v: @8
*assignvariableop_36_adam_conv2d_925_bias_v:@G
,assignvariableop_37_adam_conv2d_926_kernel_v:@?9
*assignvariableop_38_adam_conv2d_926_bias_v:	?>
+assignvariableop_39_adam_dense_924_kernel_v:	?@7
)assignvariableop_40_adam_dense_924_bias_v:@=
+assignvariableop_41_adam_dense_925_kernel_v:@7
)assignvariableop_42_adam_dense_925_bias_v:=
+assignvariableop_43_adam_dense_926_kernel_v:7
)assignvariableop_44_adam_dense_926_bias_v:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_924_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_924_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_925_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_925_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_926_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_926_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_924_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_924_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_925_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_925_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_926_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_926_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_conv2d_924_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_924_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_conv2d_925_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_conv2d_925_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_conv2d_926_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_conv2d_926_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_dense_924_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_924_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_925_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_925_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_dense_926_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_926_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adam_conv2d_924_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_924_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp,assignvariableop_35_adam_conv2d_925_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_conv2d_925_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp,assignvariableop_37_adam_conv2d_926_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_conv2d_926_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_dense_924_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_dense_924_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_dense_925_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_dense_925_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_dense_926_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_dense_926_bias_vIdentity_44:output:0"/device:CPU:0*
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
?
O
3__inference_max_pooling2d_925_layer_call_fn_2022195

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
N__inference_max_pooling2d_925_layer_call_and_return_conditional_losses_20214012
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
?G
?	
K__inference_sequential_308_layer_call_and_return_conditional_losses_2022003

inputsC
)conv2d_924_conv2d_readvariableop_resource: 8
*conv2d_924_biasadd_readvariableop_resource: C
)conv2d_925_conv2d_readvariableop_resource: @8
*conv2d_925_biasadd_readvariableop_resource:@D
)conv2d_926_conv2d_readvariableop_resource:@?9
*conv2d_926_biasadd_readvariableop_resource:	?;
(dense_924_matmul_readvariableop_resource:	?@7
)dense_924_biasadd_readvariableop_resource:@:
(dense_925_matmul_readvariableop_resource:@7
)dense_925_biasadd_readvariableop_resource::
(dense_926_matmul_readvariableop_resource:7
)dense_926_biasadd_readvariableop_resource:
identity??!conv2d_924/BiasAdd/ReadVariableOp? conv2d_924/Conv2D/ReadVariableOp?!conv2d_925/BiasAdd/ReadVariableOp? conv2d_925/Conv2D/ReadVariableOp?!conv2d_926/BiasAdd/ReadVariableOp? conv2d_926/Conv2D/ReadVariableOp? dense_924/BiasAdd/ReadVariableOp?dense_924/MatMul/ReadVariableOp? dense_925/BiasAdd/ReadVariableOp?dense_925/MatMul/ReadVariableOp? dense_926/BiasAdd/ReadVariableOp?dense_926/MatMul/ReadVariableOp?
 conv2d_924/Conv2D/ReadVariableOpReadVariableOp)conv2d_924_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_924/Conv2D/ReadVariableOp?
conv2d_924/Conv2DConv2Dinputs(conv2d_924/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
2
conv2d_924/Conv2D?
!conv2d_924/BiasAdd/ReadVariableOpReadVariableOp*conv2d_924_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_924/BiasAdd/ReadVariableOp?
conv2d_924/BiasAddBiasAddconv2d_924/Conv2D:output:0)conv2d_924/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] 2
conv2d_924/BiasAdd?
conv2d_924/ReluReluconv2d_924/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] 2
conv2d_924/Relu?
max_pooling2d_924/MaxPoolMaxPoolconv2d_924/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
2
max_pooling2d_924/MaxPool?
 conv2d_925/Conv2D/ReadVariableOpReadVariableOp)conv2d_925_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_925/Conv2D/ReadVariableOp?
conv2d_925/Conv2DConv2D"max_pooling2d_924/MaxPool:output:0(conv2d_925/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_925/Conv2D?
!conv2d_925/BiasAdd/ReadVariableOpReadVariableOp*conv2d_925_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_925/BiasAdd/ReadVariableOp?
conv2d_925/BiasAddBiasAddconv2d_925/Conv2D:output:0)conv2d_925/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_925/BiasAdd?
conv2d_925/ReluReluconv2d_925/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_925/Relu?
max_pooling2d_925/MaxPoolMaxPoolconv2d_925/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_925/MaxPool?
 conv2d_926/Conv2D/ReadVariableOpReadVariableOp)conv2d_926_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02"
 conv2d_926/Conv2D/ReadVariableOp?
conv2d_926/Conv2DConv2D"max_pooling2d_925/MaxPool:output:0(conv2d_926/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_926/Conv2D?
!conv2d_926/BiasAdd/ReadVariableOpReadVariableOp*conv2d_926_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_926/BiasAdd/ReadVariableOp?
conv2d_926/BiasAddBiasAddconv2d_926/Conv2D:output:0)conv2d_926/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_926/BiasAdd?
conv2d_926/ReluReluconv2d_926/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_926/Relu?
max_pooling2d_926/MaxPoolMaxPoolconv2d_926/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_926/MaxPoolw
flatten_308/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten_308/Const?
flatten_308/ReshapeReshape"max_pooling2d_926/MaxPool:output:0flatten_308/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_308/Reshape?
dense_924/MatMul/ReadVariableOpReadVariableOp(dense_924_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02!
dense_924/MatMul/ReadVariableOp?
dense_924/MatMulMatMulflatten_308/Reshape:output:0'dense_924/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_924/MatMul?
 dense_924/BiasAdd/ReadVariableOpReadVariableOp)dense_924_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_924/BiasAdd/ReadVariableOp?
dense_924/BiasAddBiasAdddense_924/MatMul:product:0(dense_924/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_924/BiasAddv
dense_924/TanhTanhdense_924/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_924/Tanh~
dropout_308/IdentityIdentitydense_924/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
dropout_308/Identity?
dense_925/MatMul/ReadVariableOpReadVariableOp(dense_925_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02!
dense_925/MatMul/ReadVariableOp?
dense_925/MatMulMatMuldropout_308/Identity:output:0'dense_925/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_925/MatMul?
 dense_925/BiasAdd/ReadVariableOpReadVariableOp)dense_925_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_925/BiasAdd/ReadVariableOp?
dense_925/BiasAddBiasAdddense_925/MatMul:product:0(dense_925/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_925/BiasAddv
dense_925/TanhTanhdense_925/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_925/Tanh?
dense_926/MatMul/ReadVariableOpReadVariableOp(dense_926_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_926/MatMul/ReadVariableOp?
dense_926/MatMulMatMuldense_925/Tanh:y:0'dense_926/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_926/MatMul?
 dense_926/BiasAdd/ReadVariableOpReadVariableOp)dense_926_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_926/BiasAdd/ReadVariableOp?
dense_926/BiasAddBiasAdddense_926/MatMul:product:0(dense_926/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_926/BiasAdd
dense_926/SigmoidSigmoiddense_926/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_926/Sigmoidp
IdentityIdentitydense_926/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_924/BiasAdd/ReadVariableOp!^conv2d_924/Conv2D/ReadVariableOp"^conv2d_925/BiasAdd/ReadVariableOp!^conv2d_925/Conv2D/ReadVariableOp"^conv2d_926/BiasAdd/ReadVariableOp!^conv2d_926/Conv2D/ReadVariableOp!^dense_924/BiasAdd/ReadVariableOp ^dense_924/MatMul/ReadVariableOp!^dense_925/BiasAdd/ReadVariableOp ^dense_925/MatMul/ReadVariableOp!^dense_926/BiasAdd/ReadVariableOp ^dense_926/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2F
!conv2d_924/BiasAdd/ReadVariableOp!conv2d_924/BiasAdd/ReadVariableOp2D
 conv2d_924/Conv2D/ReadVariableOp conv2d_924/Conv2D/ReadVariableOp2F
!conv2d_925/BiasAdd/ReadVariableOp!conv2d_925/BiasAdd/ReadVariableOp2D
 conv2d_925/Conv2D/ReadVariableOp conv2d_925/Conv2D/ReadVariableOp2F
!conv2d_926/BiasAdd/ReadVariableOp!conv2d_926/BiasAdd/ReadVariableOp2D
 conv2d_926/Conv2D/ReadVariableOp conv2d_926/Conv2D/ReadVariableOp2D
 dense_924/BiasAdd/ReadVariableOp dense_924/BiasAdd/ReadVariableOp2B
dense_924/MatMul/ReadVariableOpdense_924/MatMul/ReadVariableOp2D
 dense_925/BiasAdd/ReadVariableOp dense_925/BiasAdd/ReadVariableOp2B
dense_925/MatMul/ReadVariableOpdense_925/MatMul/ReadVariableOp2D
 dense_926/BiasAdd/ReadVariableOp dense_926/BiasAdd/ReadVariableOp2B
dense_926/MatMul/ReadVariableOpdense_926/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
G__inference_conv2d_926_layer_call_and_return_conditional_losses_2021500

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
?
F__inference_dense_926_layer_call_and_return_conditional_losses_2021572

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
j
N__inference_max_pooling2d_925_layer_call_and_return_conditional_losses_2022185

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
?5
?
K__inference_sequential_308_layer_call_and_return_conditional_losses_2021914
conv2d_924_input,
conv2d_924_2021878:  
conv2d_924_2021880: ,
conv2d_925_2021884: @ 
conv2d_925_2021886:@-
conv2d_926_2021890:@?!
conv2d_926_2021892:	?$
dense_924_2021897:	?@
dense_924_2021899:@#
dense_925_2021903:@
dense_925_2021905:#
dense_926_2021908:
dense_926_2021910:
identity??"conv2d_924/StatefulPartitionedCall?"conv2d_925/StatefulPartitionedCall?"conv2d_926/StatefulPartitionedCall?!dense_924/StatefulPartitionedCall?!dense_925/StatefulPartitionedCall?!dense_926/StatefulPartitionedCall?#dropout_308/StatefulPartitionedCall?
"conv2d_924/StatefulPartitionedCallStatefulPartitionedCallconv2d_924_inputconv2d_924_2021878conv2d_924_2021880*
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
G__inference_conv2d_924_layer_call_and_return_conditional_losses_20214542$
"conv2d_924/StatefulPartitionedCall?
!max_pooling2d_924/PartitionedCallPartitionedCall+conv2d_924/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_924_layer_call_and_return_conditional_losses_20214642#
!max_pooling2d_924/PartitionedCall?
"conv2d_925/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_924/PartitionedCall:output:0conv2d_925_2021884conv2d_925_2021886*
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
G__inference_conv2d_925_layer_call_and_return_conditional_losses_20214772$
"conv2d_925/StatefulPartitionedCall?
!max_pooling2d_925/PartitionedCallPartitionedCall+conv2d_925/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_925_layer_call_and_return_conditional_losses_20214872#
!max_pooling2d_925/PartitionedCall?
"conv2d_926/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_925/PartitionedCall:output:0conv2d_926_2021890conv2d_926_2021892*
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
G__inference_conv2d_926_layer_call_and_return_conditional_losses_20215002$
"conv2d_926/StatefulPartitionedCall?
!max_pooling2d_926/PartitionedCallPartitionedCall+conv2d_926/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_926_layer_call_and_return_conditional_losses_20215102#
!max_pooling2d_926/PartitionedCall?
flatten_308/PartitionedCallPartitionedCall*max_pooling2d_926/PartitionedCall:output:0*
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
H__inference_flatten_308_layer_call_and_return_conditional_losses_20215182
flatten_308/PartitionedCall?
!dense_924/StatefulPartitionedCallStatefulPartitionedCall$flatten_308/PartitionedCall:output:0dense_924_2021897dense_924_2021899*
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
F__inference_dense_924_layer_call_and_return_conditional_losses_20215312#
!dense_924/StatefulPartitionedCall?
#dropout_308/StatefulPartitionedCallStatefulPartitionedCall*dense_924/StatefulPartitionedCall:output:0*
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
H__inference_dropout_308_layer_call_and_return_conditional_losses_20216462%
#dropout_308/StatefulPartitionedCall?
!dense_925/StatefulPartitionedCallStatefulPartitionedCall,dropout_308/StatefulPartitionedCall:output:0dense_925_2021903dense_925_2021905*
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
F__inference_dense_925_layer_call_and_return_conditional_losses_20215552#
!dense_925/StatefulPartitionedCall?
!dense_926/StatefulPartitionedCallStatefulPartitionedCall*dense_925/StatefulPartitionedCall:output:0dense_926_2021908dense_926_2021910*
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
F__inference_dense_926_layer_call_and_return_conditional_losses_20215722#
!dense_926/StatefulPartitionedCall?
IdentityIdentity*dense_926/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_924/StatefulPartitionedCall#^conv2d_925/StatefulPartitionedCall#^conv2d_926/StatefulPartitionedCall"^dense_924/StatefulPartitionedCall"^dense_925/StatefulPartitionedCall"^dense_926/StatefulPartitionedCall$^dropout_308/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_924/StatefulPartitionedCall"conv2d_924/StatefulPartitionedCall2H
"conv2d_925/StatefulPartitionedCall"conv2d_925/StatefulPartitionedCall2H
"conv2d_926/StatefulPartitionedCall"conv2d_926/StatefulPartitionedCall2F
!dense_924/StatefulPartitionedCall!dense_924/StatefulPartitionedCall2F
!dense_925/StatefulPartitionedCall!dense_925/StatefulPartitionedCall2F
!dense_926/StatefulPartitionedCall!dense_926/StatefulPartitionedCall2J
#dropout_308/StatefulPartitionedCall#dropout_308/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_924_input
?
O
3__inference_max_pooling2d_925_layer_call_fn_2022200

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
N__inference_max_pooling2d_925_layer_call_and_return_conditional_losses_20214872
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
?
?
G__inference_conv2d_925_layer_call_and_return_conditional_losses_2022171

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
j
N__inference_max_pooling2d_924_layer_call_and_return_conditional_losses_2021464

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
?3
?
K__inference_sequential_308_layer_call_and_return_conditional_losses_2021579

inputs,
conv2d_924_2021455:  
conv2d_924_2021457: ,
conv2d_925_2021478: @ 
conv2d_925_2021480:@-
conv2d_926_2021501:@?!
conv2d_926_2021503:	?$
dense_924_2021532:	?@
dense_924_2021534:@#
dense_925_2021556:@
dense_925_2021558:#
dense_926_2021573:
dense_926_2021575:
identity??"conv2d_924/StatefulPartitionedCall?"conv2d_925/StatefulPartitionedCall?"conv2d_926/StatefulPartitionedCall?!dense_924/StatefulPartitionedCall?!dense_925/StatefulPartitionedCall?!dense_926/StatefulPartitionedCall?
"conv2d_924/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_924_2021455conv2d_924_2021457*
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
G__inference_conv2d_924_layer_call_and_return_conditional_losses_20214542$
"conv2d_924/StatefulPartitionedCall?
!max_pooling2d_924/PartitionedCallPartitionedCall+conv2d_924/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_924_layer_call_and_return_conditional_losses_20214642#
!max_pooling2d_924/PartitionedCall?
"conv2d_925/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_924/PartitionedCall:output:0conv2d_925_2021478conv2d_925_2021480*
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
G__inference_conv2d_925_layer_call_and_return_conditional_losses_20214772$
"conv2d_925/StatefulPartitionedCall?
!max_pooling2d_925/PartitionedCallPartitionedCall+conv2d_925/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_925_layer_call_and_return_conditional_losses_20214872#
!max_pooling2d_925/PartitionedCall?
"conv2d_926/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_925/PartitionedCall:output:0conv2d_926_2021501conv2d_926_2021503*
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
G__inference_conv2d_926_layer_call_and_return_conditional_losses_20215002$
"conv2d_926/StatefulPartitionedCall?
!max_pooling2d_926/PartitionedCallPartitionedCall+conv2d_926/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_926_layer_call_and_return_conditional_losses_20215102#
!max_pooling2d_926/PartitionedCall?
flatten_308/PartitionedCallPartitionedCall*max_pooling2d_926/PartitionedCall:output:0*
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
H__inference_flatten_308_layer_call_and_return_conditional_losses_20215182
flatten_308/PartitionedCall?
!dense_924/StatefulPartitionedCallStatefulPartitionedCall$flatten_308/PartitionedCall:output:0dense_924_2021532dense_924_2021534*
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
F__inference_dense_924_layer_call_and_return_conditional_losses_20215312#
!dense_924/StatefulPartitionedCall?
dropout_308/PartitionedCallPartitionedCall*dense_924/StatefulPartitionedCall:output:0*
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
H__inference_dropout_308_layer_call_and_return_conditional_losses_20215422
dropout_308/PartitionedCall?
!dense_925/StatefulPartitionedCallStatefulPartitionedCall$dropout_308/PartitionedCall:output:0dense_925_2021556dense_925_2021558*
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
F__inference_dense_925_layer_call_and_return_conditional_losses_20215552#
!dense_925/StatefulPartitionedCall?
!dense_926/StatefulPartitionedCallStatefulPartitionedCall*dense_925/StatefulPartitionedCall:output:0dense_926_2021573dense_926_2021575*
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
F__inference_dense_926_layer_call_and_return_conditional_losses_20215722#
!dense_926/StatefulPartitionedCall?
IdentityIdentity*dense_926/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_924/StatefulPartitionedCall#^conv2d_925/StatefulPartitionedCall#^conv2d_926/StatefulPartitionedCall"^dense_924/StatefulPartitionedCall"^dense_925/StatefulPartitionedCall"^dense_926/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_924/StatefulPartitionedCall"conv2d_924/StatefulPartitionedCall2H
"conv2d_925/StatefulPartitionedCall"conv2d_925/StatefulPartitionedCall2H
"conv2d_926/StatefulPartitionedCall"conv2d_926/StatefulPartitionedCall2F
!dense_924/StatefulPartitionedCall!dense_924/StatefulPartitionedCall2F
!dense_925/StatefulPartitionedCall!dense_925/StatefulPartitionedCall2F
!dense_926/StatefulPartitionedCall!dense_926/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
F__inference_dense_925_layer_call_and_return_conditional_losses_2022309

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
?
d
H__inference_flatten_308_layer_call_and_return_conditional_losses_2022246

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
?^
?
 __inference__traced_save_2022496
file_prefix0
,savev2_conv2d_924_kernel_read_readvariableop.
*savev2_conv2d_924_bias_read_readvariableop0
,savev2_conv2d_925_kernel_read_readvariableop.
*savev2_conv2d_925_bias_read_readvariableop0
,savev2_conv2d_926_kernel_read_readvariableop.
*savev2_conv2d_926_bias_read_readvariableop/
+savev2_dense_924_kernel_read_readvariableop-
)savev2_dense_924_bias_read_readvariableop/
+savev2_dense_925_kernel_read_readvariableop-
)savev2_dense_925_bias_read_readvariableop/
+savev2_dense_926_kernel_read_readvariableop-
)savev2_dense_926_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv2d_924_kernel_m_read_readvariableop5
1savev2_adam_conv2d_924_bias_m_read_readvariableop7
3savev2_adam_conv2d_925_kernel_m_read_readvariableop5
1savev2_adam_conv2d_925_bias_m_read_readvariableop7
3savev2_adam_conv2d_926_kernel_m_read_readvariableop5
1savev2_adam_conv2d_926_bias_m_read_readvariableop6
2savev2_adam_dense_924_kernel_m_read_readvariableop4
0savev2_adam_dense_924_bias_m_read_readvariableop6
2savev2_adam_dense_925_kernel_m_read_readvariableop4
0savev2_adam_dense_925_bias_m_read_readvariableop6
2savev2_adam_dense_926_kernel_m_read_readvariableop4
0savev2_adam_dense_926_bias_m_read_readvariableop7
3savev2_adam_conv2d_924_kernel_v_read_readvariableop5
1savev2_adam_conv2d_924_bias_v_read_readvariableop7
3savev2_adam_conv2d_925_kernel_v_read_readvariableop5
1savev2_adam_conv2d_925_bias_v_read_readvariableop7
3savev2_adam_conv2d_926_kernel_v_read_readvariableop5
1savev2_adam_conv2d_926_bias_v_read_readvariableop6
2savev2_adam_dense_924_kernel_v_read_readvariableop4
0savev2_adam_dense_924_bias_v_read_readvariableop6
2savev2_adam_dense_925_kernel_v_read_readvariableop4
0savev2_adam_dense_925_bias_v_read_readvariableop6
2savev2_adam_dense_926_kernel_v_read_readvariableop4
0savev2_adam_dense_926_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_924_kernel_read_readvariableop*savev2_conv2d_924_bias_read_readvariableop,savev2_conv2d_925_kernel_read_readvariableop*savev2_conv2d_925_bias_read_readvariableop,savev2_conv2d_926_kernel_read_readvariableop*savev2_conv2d_926_bias_read_readvariableop+savev2_dense_924_kernel_read_readvariableop)savev2_dense_924_bias_read_readvariableop+savev2_dense_925_kernel_read_readvariableop)savev2_dense_925_bias_read_readvariableop+savev2_dense_926_kernel_read_readvariableop)savev2_dense_926_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv2d_924_kernel_m_read_readvariableop1savev2_adam_conv2d_924_bias_m_read_readvariableop3savev2_adam_conv2d_925_kernel_m_read_readvariableop1savev2_adam_conv2d_925_bias_m_read_readvariableop3savev2_adam_conv2d_926_kernel_m_read_readvariableop1savev2_adam_conv2d_926_bias_m_read_readvariableop2savev2_adam_dense_924_kernel_m_read_readvariableop0savev2_adam_dense_924_bias_m_read_readvariableop2savev2_adam_dense_925_kernel_m_read_readvariableop0savev2_adam_dense_925_bias_m_read_readvariableop2savev2_adam_dense_926_kernel_m_read_readvariableop0savev2_adam_dense_926_bias_m_read_readvariableop3savev2_adam_conv2d_924_kernel_v_read_readvariableop1savev2_adam_conv2d_924_bias_v_read_readvariableop3savev2_adam_conv2d_925_kernel_v_read_readvariableop1savev2_adam_conv2d_925_bias_v_read_readvariableop3savev2_adam_conv2d_926_kernel_v_read_readvariableop1savev2_adam_conv2d_926_bias_v_read_readvariableop2savev2_adam_dense_924_kernel_v_read_readvariableop0savev2_adam_dense_924_bias_v_read_readvariableop2savev2_adam_dense_925_kernel_v_read_readvariableop0savev2_adam_dense_925_bias_v_read_readvariableop2savev2_adam_dense_926_kernel_v_read_readvariableop0savev2_adam_dense_926_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
j
N__inference_max_pooling2d_925_layer_call_and_return_conditional_losses_2021401

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
conv2d_924_inputC
"serving_default_conv2d_924_input:0???????????=
	dense_9260
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
+:) 2conv2d_924/kernel
: 2conv2d_924/bias
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
+:) @2conv2d_925/kernel
:@2conv2d_925/bias
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
,:*@?2conv2d_926/kernel
:?2conv2d_926/bias
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
#:!	?@2dense_924/kernel
:@2dense_924/bias
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
": @2dense_925/kernel
:2dense_925/bias
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
": 2dense_926/kernel
:2dense_926/bias
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
0:. 2Adam/conv2d_924/kernel/m
":  2Adam/conv2d_924/bias/m
0:. @2Adam/conv2d_925/kernel/m
": @2Adam/conv2d_925/bias/m
1:/@?2Adam/conv2d_926/kernel/m
#:!?2Adam/conv2d_926/bias/m
(:&	?@2Adam/dense_924/kernel/m
!:@2Adam/dense_924/bias/m
':%@2Adam/dense_925/kernel/m
!:2Adam/dense_925/bias/m
':%2Adam/dense_926/kernel/m
!:2Adam/dense_926/bias/m
0:. 2Adam/conv2d_924/kernel/v
":  2Adam/conv2d_924/bias/v
0:. @2Adam/conv2d_925/kernel/v
": @2Adam/conv2d_925/bias/v
1:/@?2Adam/conv2d_926/kernel/v
#:!?2Adam/conv2d_926/bias/v
(:&	?@2Adam/dense_924/kernel/v
!:@2Adam/dense_924/bias/v
':%@2Adam/dense_925/kernel/v
!:2Adam/dense_925/bias/v
':%2Adam/dense_926/kernel/v
!:2Adam/dense_926/bias/v
?2?
K__inference_sequential_308_layer_call_and_return_conditional_losses_2022003
K__inference_sequential_308_layer_call_and_return_conditional_losses_2022062
K__inference_sequential_308_layer_call_and_return_conditional_losses_2021875
K__inference_sequential_308_layer_call_and_return_conditional_losses_2021914?
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
"__inference__wrapped_model_2021370conv2d_924_input"?
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
0__inference_sequential_308_layer_call_fn_2021606
0__inference_sequential_308_layer_call_fn_2022091
0__inference_sequential_308_layer_call_fn_2022120
0__inference_sequential_308_layer_call_fn_2021836?
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
G__inference_conv2d_924_layer_call_and_return_conditional_losses_2022131?
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
,__inference_conv2d_924_layer_call_fn_2022140?
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
N__inference_max_pooling2d_924_layer_call_and_return_conditional_losses_2022145
N__inference_max_pooling2d_924_layer_call_and_return_conditional_losses_2022150?
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
3__inference_max_pooling2d_924_layer_call_fn_2022155
3__inference_max_pooling2d_924_layer_call_fn_2022160?
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
G__inference_conv2d_925_layer_call_and_return_conditional_losses_2022171?
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
,__inference_conv2d_925_layer_call_fn_2022180?
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
N__inference_max_pooling2d_925_layer_call_and_return_conditional_losses_2022185
N__inference_max_pooling2d_925_layer_call_and_return_conditional_losses_2022190?
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
3__inference_max_pooling2d_925_layer_call_fn_2022195
3__inference_max_pooling2d_925_layer_call_fn_2022200?
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
G__inference_conv2d_926_layer_call_and_return_conditional_losses_2022211?
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
,__inference_conv2d_926_layer_call_fn_2022220?
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
N__inference_max_pooling2d_926_layer_call_and_return_conditional_losses_2022225
N__inference_max_pooling2d_926_layer_call_and_return_conditional_losses_2022230?
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
3__inference_max_pooling2d_926_layer_call_fn_2022235
3__inference_max_pooling2d_926_layer_call_fn_2022240?
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
H__inference_flatten_308_layer_call_and_return_conditional_losses_2022246?
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
-__inference_flatten_308_layer_call_fn_2022251?
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
F__inference_dense_924_layer_call_and_return_conditional_losses_2022262?
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
+__inference_dense_924_layer_call_fn_2022271?
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
H__inference_dropout_308_layer_call_and_return_conditional_losses_2022276
H__inference_dropout_308_layer_call_and_return_conditional_losses_2022288?
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
-__inference_dropout_308_layer_call_fn_2022293
-__inference_dropout_308_layer_call_fn_2022298?
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
F__inference_dense_925_layer_call_and_return_conditional_losses_2022309?
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
+__inference_dense_925_layer_call_fn_2022318?
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
F__inference_dense_926_layer_call_and_return_conditional_losses_2022329?
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
+__inference_dense_926_layer_call_fn_2022338?
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
%__inference_signature_wrapper_2021951conv2d_924_input"?
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
"__inference__wrapped_model_2021370?&'45>?DEC?@
9?6
4?1
conv2d_924_input???????????
? "5?2
0
	dense_926#? 
	dense_926??????????
G__inference_conv2d_924_layer_call_and_return_conditional_losses_2022131n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????Z] 
? ?
,__inference_conv2d_924_layer_call_fn_2022140a9?6
/?,
*?'
inputs???????????
? " ??????????Z] ?
G__inference_conv2d_925_layer_call_and_return_conditional_losses_2022171l7?4
-?*
(?%
inputs?????????-. 
? "-?*
#? 
0?????????@
? ?
,__inference_conv2d_925_layer_call_fn_2022180_7?4
-?*
(?%
inputs?????????-. 
? " ??????????@?
G__inference_conv2d_926_layer_call_and_return_conditional_losses_2022211m&'7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_926_layer_call_fn_2022220`&'7?4
-?*
(?%
inputs?????????@
? "!????????????
F__inference_dense_924_layer_call_and_return_conditional_losses_2022262]450?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? 
+__inference_dense_924_layer_call_fn_2022271P450?-
&?#
!?
inputs??????????
? "??????????@?
F__inference_dense_925_layer_call_and_return_conditional_losses_2022309\>?/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? ~
+__inference_dense_925_layer_call_fn_2022318O>?/?,
%?"
 ?
inputs?????????@
? "???????????
F__inference_dense_926_layer_call_and_return_conditional_losses_2022329\DE/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
+__inference_dense_926_layer_call_fn_2022338ODE/?,
%?"
 ?
inputs?????????
? "???????????
H__inference_dropout_308_layer_call_and_return_conditional_losses_2022276\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
H__inference_dropout_308_layer_call_and_return_conditional_losses_2022288\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
-__inference_dropout_308_layer_call_fn_2022293O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
-__inference_dropout_308_layer_call_fn_2022298O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
H__inference_flatten_308_layer_call_and_return_conditional_losses_2022246b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????
? ?
-__inference_flatten_308_layer_call_fn_2022251U8?5
.?+
)?&
inputs??????????
? "????????????
N__inference_max_pooling2d_924_layer_call_and_return_conditional_losses_2022145?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_924_layer_call_and_return_conditional_losses_2022150h7?4
-?*
(?%
inputs?????????Z] 
? "-?*
#? 
0?????????-. 
? ?
3__inference_max_pooling2d_924_layer_call_fn_2022155?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_924_layer_call_fn_2022160[7?4
-?*
(?%
inputs?????????Z] 
? " ??????????-. ?
N__inference_max_pooling2d_925_layer_call_and_return_conditional_losses_2022185?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_925_layer_call_and_return_conditional_losses_2022190h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
3__inference_max_pooling2d_925_layer_call_fn_2022195?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_925_layer_call_fn_2022200[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
N__inference_max_pooling2d_926_layer_call_and_return_conditional_losses_2022225?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_max_pooling2d_926_layer_call_and_return_conditional_losses_2022230j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
3__inference_max_pooling2d_926_layer_call_fn_2022235?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
3__inference_max_pooling2d_926_layer_call_fn_2022240]8?5
.?+
)?&
inputs??????????
? "!????????????
K__inference_sequential_308_layer_call_and_return_conditional_losses_2021875?&'45>?DEK?H
A?>
4?1
conv2d_924_input???????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_308_layer_call_and_return_conditional_losses_2021914?&'45>?DEK?H
A?>
4?1
conv2d_924_input???????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_308_layer_call_and_return_conditional_losses_2022003x&'45>?DEA?>
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
K__inference_sequential_308_layer_call_and_return_conditional_losses_2022062x&'45>?DEA?>
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
0__inference_sequential_308_layer_call_fn_2021606u&'45>?DEK?H
A?>
4?1
conv2d_924_input???????????
p 

 
? "???????????
0__inference_sequential_308_layer_call_fn_2021836u&'45>?DEK?H
A?>
4?1
conv2d_924_input???????????
p

 
? "???????????
0__inference_sequential_308_layer_call_fn_2022091k&'45>?DEA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
0__inference_sequential_308_layer_call_fn_2022120k&'45>?DEA?>
7?4
*?'
inputs???????????
p

 
? "???????????
%__inference_signature_wrapper_2021951?&'45>?DEW?T
? 
M?J
H
conv2d_924_input4?1
conv2d_924_input???????????"5?2
0
	dense_926#? 
	dense_926?????????