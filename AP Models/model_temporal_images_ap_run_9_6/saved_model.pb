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
 ?"serve*2.6.02v2.6.0-0-g919f693420e8??

?
conv2d_1074/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameconv2d_1074/kernel
?
&conv2d_1074/kernel/Read/ReadVariableOpReadVariableOpconv2d_1074/kernel*&
_output_shapes
: *
dtype0
x
conv2d_1074/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_1074/bias
q
$conv2d_1074/bias/Read/ReadVariableOpReadVariableOpconv2d_1074/bias*
_output_shapes
: *
dtype0
?
conv2d_1075/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*#
shared_nameconv2d_1075/kernel
?
&conv2d_1075/kernel/Read/ReadVariableOpReadVariableOpconv2d_1075/kernel*&
_output_shapes
: @*
dtype0
x
conv2d_1075/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_1075/bias
q
$conv2d_1075/bias/Read/ReadVariableOpReadVariableOpconv2d_1075/bias*
_output_shapes
:@*
dtype0
?
conv2d_1076/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*#
shared_nameconv2d_1076/kernel
?
&conv2d_1076/kernel/Read/ReadVariableOpReadVariableOpconv2d_1076/kernel*'
_output_shapes
:@?*
dtype0
y
conv2d_1076/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nameconv2d_1076/bias
r
$conv2d_1076/bias/Read/ReadVariableOpReadVariableOpconv2d_1076/bias*
_output_shapes	
:?*
dtype0

dense_1074/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*"
shared_namedense_1074/kernel
x
%dense_1074/kernel/Read/ReadVariableOpReadVariableOpdense_1074/kernel*
_output_shapes
:	?@*
dtype0
v
dense_1074/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_namedense_1074/bias
o
#dense_1074/bias/Read/ReadVariableOpReadVariableOpdense_1074/bias*
_output_shapes
:@*
dtype0
~
dense_1075/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*"
shared_namedense_1075/kernel
w
%dense_1075/kernel/Read/ReadVariableOpReadVariableOpdense_1075/kernel*
_output_shapes

:@*
dtype0
v
dense_1075/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_1075/bias
o
#dense_1075/bias/Read/ReadVariableOpReadVariableOpdense_1075/bias*
_output_shapes
:*
dtype0
~
dense_1076/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_1076/kernel
w
%dense_1076/kernel/Read/ReadVariableOpReadVariableOpdense_1076/kernel*
_output_shapes

:*
dtype0
v
dense_1076/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_1076/bias
o
#dense_1076/bias/Read/ReadVariableOpReadVariableOpdense_1076/bias*
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
Adam/conv2d_1074/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/conv2d_1074/kernel/m
?
-Adam/conv2d_1074/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1074/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_1074/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_1074/bias/m

+Adam/conv2d_1074/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1074/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_1075/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @**
shared_nameAdam/conv2d_1075/kernel/m
?
-Adam/conv2d_1075/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1075/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_1075/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_1075/bias/m

+Adam/conv2d_1075/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1075/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_1076/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?**
shared_nameAdam/conv2d_1076/kernel/m
?
-Adam/conv2d_1076/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1076/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_1076/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdam/conv2d_1076/bias/m
?
+Adam/conv2d_1076/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1076/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_1074/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*)
shared_nameAdam/dense_1074/kernel/m
?
,Adam/dense_1074/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1074/kernel/m*
_output_shapes
:	?@*
dtype0
?
Adam/dense_1074/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/dense_1074/bias/m
}
*Adam/dense_1074/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1074/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_1075/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*)
shared_nameAdam/dense_1075/kernel/m
?
,Adam/dense_1075/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1075/kernel/m*
_output_shapes

:@*
dtype0
?
Adam/dense_1075/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_1075/bias/m
}
*Adam/dense_1075/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1075/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_1076/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*)
shared_nameAdam/dense_1076/kernel/m
?
,Adam/dense_1076/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1076/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_1076/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_1076/bias/m
}
*Adam/dense_1076/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1076/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_1074/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/conv2d_1074/kernel/v
?
-Adam/conv2d_1074/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1074/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_1074/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_1074/bias/v

+Adam/conv2d_1074/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1074/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_1075/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @**
shared_nameAdam/conv2d_1075/kernel/v
?
-Adam/conv2d_1075/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1075/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_1075/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_1075/bias/v

+Adam/conv2d_1075/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1075/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_1076/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?**
shared_nameAdam/conv2d_1076/kernel/v
?
-Adam/conv2d_1076/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1076/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_1076/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdam/conv2d_1076/bias/v
?
+Adam/conv2d_1076/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1076/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_1074/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*)
shared_nameAdam/dense_1074/kernel/v
?
,Adam/dense_1074/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1074/kernel/v*
_output_shapes
:	?@*
dtype0
?
Adam/dense_1074/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/dense_1074/bias/v
}
*Adam/dense_1074/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1074/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_1075/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*)
shared_nameAdam/dense_1075/kernel/v
?
,Adam/dense_1075/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1075/kernel/v*
_output_shapes

:@*
dtype0
?
Adam/dense_1075/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_1075/bias/v
}
*Adam/dense_1075/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1075/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_1076/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*)
shared_nameAdam/dense_1076/kernel/v
?
,Adam/dense_1076/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1076/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_1076/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_1076/bias/v
}
*Adam/dense_1076/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1076/bias/v*
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
^\
VARIABLE_VALUEconv2d_1074/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_1074/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
^\
VARIABLE_VALUEconv2d_1075/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_1075/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
^\
VARIABLE_VALUEconv2d_1076/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_1076/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
][
VARIABLE_VALUEdense_1074/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEdense_1074/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
][
VARIABLE_VALUEdense_1075/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEdense_1075/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
][
VARIABLE_VALUEdense_1076/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEdense_1076/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
?
VARIABLE_VALUEAdam/conv2d_1074/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1074/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv2d_1075/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1075/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv2d_1076/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1076/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/dense_1074/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_1074/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/dense_1075/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_1075/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/dense_1076/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_1076/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv2d_1074/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1074/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv2d_1075/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1075/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv2d_1076/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_1076/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/dense_1074/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_1074/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/dense_1075/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_1075/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/dense_1076/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_1076/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
!serving_default_conv2d_1074_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCall!serving_default_conv2d_1074_inputconv2d_1074/kernelconv2d_1074/biasconv2d_1075/kernelconv2d_1075/biasconv2d_1076/kernelconv2d_1076/biasdense_1074/kerneldense_1074/biasdense_1075/kerneldense_1075/biasdense_1076/kerneldense_1076/bias*
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
%__inference_signature_wrapper_2293082
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&conv2d_1074/kernel/Read/ReadVariableOp$conv2d_1074/bias/Read/ReadVariableOp&conv2d_1075/kernel/Read/ReadVariableOp$conv2d_1075/bias/Read/ReadVariableOp&conv2d_1076/kernel/Read/ReadVariableOp$conv2d_1076/bias/Read/ReadVariableOp%dense_1074/kernel/Read/ReadVariableOp#dense_1074/bias/Read/ReadVariableOp%dense_1075/kernel/Read/ReadVariableOp#dense_1075/bias/Read/ReadVariableOp%dense_1076/kernel/Read/ReadVariableOp#dense_1076/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp-Adam/conv2d_1074/kernel/m/Read/ReadVariableOp+Adam/conv2d_1074/bias/m/Read/ReadVariableOp-Adam/conv2d_1075/kernel/m/Read/ReadVariableOp+Adam/conv2d_1075/bias/m/Read/ReadVariableOp-Adam/conv2d_1076/kernel/m/Read/ReadVariableOp+Adam/conv2d_1076/bias/m/Read/ReadVariableOp,Adam/dense_1074/kernel/m/Read/ReadVariableOp*Adam/dense_1074/bias/m/Read/ReadVariableOp,Adam/dense_1075/kernel/m/Read/ReadVariableOp*Adam/dense_1075/bias/m/Read/ReadVariableOp,Adam/dense_1076/kernel/m/Read/ReadVariableOp*Adam/dense_1076/bias/m/Read/ReadVariableOp-Adam/conv2d_1074/kernel/v/Read/ReadVariableOp+Adam/conv2d_1074/bias/v/Read/ReadVariableOp-Adam/conv2d_1075/kernel/v/Read/ReadVariableOp+Adam/conv2d_1075/bias/v/Read/ReadVariableOp-Adam/conv2d_1076/kernel/v/Read/ReadVariableOp+Adam/conv2d_1076/bias/v/Read/ReadVariableOp,Adam/dense_1074/kernel/v/Read/ReadVariableOp*Adam/dense_1074/bias/v/Read/ReadVariableOp,Adam/dense_1075/kernel/v/Read/ReadVariableOp*Adam/dense_1075/bias/v/Read/ReadVariableOp,Adam/dense_1076/kernel/v/Read/ReadVariableOp*Adam/dense_1076/bias/v/Read/ReadVariableOpConst*:
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
 __inference__traced_save_2293627
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_1074/kernelconv2d_1074/biasconv2d_1075/kernelconv2d_1075/biasconv2d_1076/kernelconv2d_1076/biasdense_1074/kerneldense_1074/biasdense_1075/kerneldense_1075/biasdense_1076/kerneldense_1076/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_1074/kernel/mAdam/conv2d_1074/bias/mAdam/conv2d_1075/kernel/mAdam/conv2d_1075/bias/mAdam/conv2d_1076/kernel/mAdam/conv2d_1076/bias/mAdam/dense_1074/kernel/mAdam/dense_1074/bias/mAdam/dense_1075/kernel/mAdam/dense_1075/bias/mAdam/dense_1076/kernel/mAdam/dense_1076/bias/mAdam/conv2d_1074/kernel/vAdam/conv2d_1074/bias/vAdam/conv2d_1075/kernel/vAdam/conv2d_1075/bias/vAdam/conv2d_1076/kernel/vAdam/conv2d_1076/bias/vAdam/dense_1074/kernel/vAdam/dense_1074/bias/vAdam/dense_1075/kernel/vAdam/dense_1075/bias/vAdam/dense_1076/kernel/vAdam/dense_1076/bias/v*9
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
#__inference__traced_restore_2293772??	
?
P
4__inference_max_pooling2d_1076_layer_call_fn_2293366

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
GPU 2J 8? *X
fSRQ
O__inference_max_pooling2d_1076_layer_call_and_return_conditional_losses_22925542
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
?
G__inference_dense_1076_layer_call_and_return_conditional_losses_2293460

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
k
O__inference_max_pooling2d_1074_layer_call_and_return_conditional_losses_2292510

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
H__inference_conv2d_1076_layer_call_and_return_conditional_losses_2293342

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
I
-__inference_dropout_358_layer_call_fn_2293424

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
H__inference_dropout_358_layer_call_and_return_conditional_losses_22926732
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
?
H__inference_conv2d_1075_layer_call_and_return_conditional_losses_2293302

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
?
P
4__inference_max_pooling2d_1074_layer_call_fn_2293286

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
GPU 2J 8? *X
fSRQ
O__inference_max_pooling2d_1074_layer_call_and_return_conditional_losses_22925102
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
??
?
#__inference__traced_restore_2293772
file_prefix=
#assignvariableop_conv2d_1074_kernel: 1
#assignvariableop_1_conv2d_1074_bias: ?
%assignvariableop_2_conv2d_1075_kernel: @1
#assignvariableop_3_conv2d_1075_bias:@@
%assignvariableop_4_conv2d_1076_kernel:@?2
#assignvariableop_5_conv2d_1076_bias:	?7
$assignvariableop_6_dense_1074_kernel:	?@0
"assignvariableop_7_dense_1074_bias:@6
$assignvariableop_8_dense_1075_kernel:@0
"assignvariableop_9_dense_1075_bias:7
%assignvariableop_10_dense_1076_kernel:1
#assignvariableop_11_dense_1076_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: G
-assignvariableop_21_adam_conv2d_1074_kernel_m: 9
+assignvariableop_22_adam_conv2d_1074_bias_m: G
-assignvariableop_23_adam_conv2d_1075_kernel_m: @9
+assignvariableop_24_adam_conv2d_1075_bias_m:@H
-assignvariableop_25_adam_conv2d_1076_kernel_m:@?:
+assignvariableop_26_adam_conv2d_1076_bias_m:	??
,assignvariableop_27_adam_dense_1074_kernel_m:	?@8
*assignvariableop_28_adam_dense_1074_bias_m:@>
,assignvariableop_29_adam_dense_1075_kernel_m:@8
*assignvariableop_30_adam_dense_1075_bias_m:>
,assignvariableop_31_adam_dense_1076_kernel_m:8
*assignvariableop_32_adam_dense_1076_bias_m:G
-assignvariableop_33_adam_conv2d_1074_kernel_v: 9
+assignvariableop_34_adam_conv2d_1074_bias_v: G
-assignvariableop_35_adam_conv2d_1075_kernel_v: @9
+assignvariableop_36_adam_conv2d_1075_bias_v:@H
-assignvariableop_37_adam_conv2d_1076_kernel_v:@?:
+assignvariableop_38_adam_conv2d_1076_bias_v:	??
,assignvariableop_39_adam_dense_1074_kernel_v:	?@8
*assignvariableop_40_adam_dense_1074_bias_v:@>
,assignvariableop_41_adam_dense_1075_kernel_v:@8
*assignvariableop_42_adam_dense_1075_bias_v:>
,assignvariableop_43_adam_dense_1076_kernel_v:8
*assignvariableop_44_adam_dense_1076_bias_v:
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
AssignVariableOpAssignVariableOp#assignvariableop_conv2d_1074_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp#assignvariableop_1_conv2d_1074_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp%assignvariableop_2_conv2d_1075_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp#assignvariableop_3_conv2d_1075_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_conv2d_1076_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp#assignvariableop_5_conv2d_1076_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_dense_1074_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_1074_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp$assignvariableop_8_dense_1075_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_1075_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp%assignvariableop_10_dense_1076_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp#assignvariableop_11_dense_1076_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_21AssignVariableOp-assignvariableop_21_adam_conv2d_1074_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_conv2d_1074_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp-assignvariableop_23_adam_conv2d_1075_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_conv2d_1075_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp-assignvariableop_25_adam_conv2d_1076_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_conv2d_1076_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adam_dense_1074_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_dense_1074_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_dense_1075_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_dense_1075_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp,assignvariableop_31_adam_dense_1076_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_dense_1076_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp-assignvariableop_33_adam_conv2d_1074_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_conv2d_1074_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp-assignvariableop_35_adam_conv2d_1075_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_conv2d_1075_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp-assignvariableop_37_adam_conv2d_1076_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_conv2d_1076_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp,assignvariableop_39_adam_dense_1074_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_dense_1074_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp,assignvariableop_41_adam_dense_1075_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_dense_1075_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp,assignvariableop_43_adam_dense_1076_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp*assignvariableop_44_adam_dense_1076_bias_vIdentity_44:output:0"/device:CPU:0*
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
?
f
-__inference_dropout_358_layer_call_fn_2293429

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
H__inference_dropout_358_layer_call_and_return_conditional_losses_22927772
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
?
k
O__inference_max_pooling2d_1075_layer_call_and_return_conditional_losses_2293316

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
?R
?

K__inference_sequential_358_layer_call_and_return_conditional_losses_2293193

inputsD
*conv2d_1074_conv2d_readvariableop_resource: 9
+conv2d_1074_biasadd_readvariableop_resource: D
*conv2d_1075_conv2d_readvariableop_resource: @9
+conv2d_1075_biasadd_readvariableop_resource:@E
*conv2d_1076_conv2d_readvariableop_resource:@?:
+conv2d_1076_biasadd_readvariableop_resource:	?<
)dense_1074_matmul_readvariableop_resource:	?@8
*dense_1074_biasadd_readvariableop_resource:@;
)dense_1075_matmul_readvariableop_resource:@8
*dense_1075_biasadd_readvariableop_resource:;
)dense_1076_matmul_readvariableop_resource:8
*dense_1076_biasadd_readvariableop_resource:
identity??"conv2d_1074/BiasAdd/ReadVariableOp?!conv2d_1074/Conv2D/ReadVariableOp?"conv2d_1075/BiasAdd/ReadVariableOp?!conv2d_1075/Conv2D/ReadVariableOp?"conv2d_1076/BiasAdd/ReadVariableOp?!conv2d_1076/Conv2D/ReadVariableOp?!dense_1074/BiasAdd/ReadVariableOp? dense_1074/MatMul/ReadVariableOp?!dense_1075/BiasAdd/ReadVariableOp? dense_1075/MatMul/ReadVariableOp?!dense_1076/BiasAdd/ReadVariableOp? dense_1076/MatMul/ReadVariableOp?
!conv2d_1074/Conv2D/ReadVariableOpReadVariableOp*conv2d_1074_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02#
!conv2d_1074/Conv2D/ReadVariableOp?
conv2d_1074/Conv2DConv2Dinputs)conv2d_1074/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
2
conv2d_1074/Conv2D?
"conv2d_1074/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1074_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02$
"conv2d_1074/BiasAdd/ReadVariableOp?
conv2d_1074/BiasAddBiasAddconv2d_1074/Conv2D:output:0*conv2d_1074/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] 2
conv2d_1074/BiasAdd?
conv2d_1074/ReluReluconv2d_1074/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] 2
conv2d_1074/Relu?
max_pooling2d_1074/MaxPoolMaxPoolconv2d_1074/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1074/MaxPool?
!conv2d_1075/Conv2D/ReadVariableOpReadVariableOp*conv2d_1075_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02#
!conv2d_1075/Conv2D/ReadVariableOp?
conv2d_1075/Conv2DConv2D#max_pooling2d_1074/MaxPool:output:0)conv2d_1075/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_1075/Conv2D?
"conv2d_1075/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1075_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02$
"conv2d_1075/BiasAdd/ReadVariableOp?
conv2d_1075/BiasAddBiasAddconv2d_1075/Conv2D:output:0*conv2d_1075/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_1075/BiasAdd?
conv2d_1075/ReluReluconv2d_1075/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_1075/Relu?
max_pooling2d_1075/MaxPoolMaxPoolconv2d_1075/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1075/MaxPool?
!conv2d_1076/Conv2D/ReadVariableOpReadVariableOp*conv2d_1076_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02#
!conv2d_1076/Conv2D/ReadVariableOp?
conv2d_1076/Conv2DConv2D#max_pooling2d_1075/MaxPool:output:0)conv2d_1076/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_1076/Conv2D?
"conv2d_1076/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1076_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"conv2d_1076/BiasAdd/ReadVariableOp?
conv2d_1076/BiasAddBiasAddconv2d_1076/Conv2D:output:0*conv2d_1076/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_1076/BiasAdd?
conv2d_1076/ReluReluconv2d_1076/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_1076/Relu?
max_pooling2d_1076/MaxPoolMaxPoolconv2d_1076/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1076/MaxPoolw
flatten_358/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten_358/Const?
flatten_358/ReshapeReshape#max_pooling2d_1076/MaxPool:output:0flatten_358/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_358/Reshape?
 dense_1074/MatMul/ReadVariableOpReadVariableOp)dense_1074_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02"
 dense_1074/MatMul/ReadVariableOp?
dense_1074/MatMulMatMulflatten_358/Reshape:output:0(dense_1074/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1074/MatMul?
!dense_1074/BiasAdd/ReadVariableOpReadVariableOp*dense_1074_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!dense_1074/BiasAdd/ReadVariableOp?
dense_1074/BiasAddBiasAdddense_1074/MatMul:product:0)dense_1074/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1074/BiasAddy
dense_1074/TanhTanhdense_1074/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_1074/Tanh{
dropout_358/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_358/dropout/Const?
dropout_358/dropout/MulMuldense_1074/Tanh:y:0"dropout_358/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_358/dropout/Muly
dropout_358/dropout/ShapeShapedense_1074/Tanh:y:0*
T0*
_output_shapes
:2
dropout_358/dropout/Shape?
0dropout_358/dropout/random_uniform/RandomUniformRandomUniform"dropout_358/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype022
0dropout_358/dropout/random_uniform/RandomUniform?
"dropout_358/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"dropout_358/dropout/GreaterEqual/y?
 dropout_358/dropout/GreaterEqualGreaterEqual9dropout_358/dropout/random_uniform/RandomUniform:output:0+dropout_358/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 dropout_358/dropout/GreaterEqual?
dropout_358/dropout/CastCast$dropout_358/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_358/dropout/Cast?
dropout_358/dropout/Mul_1Muldropout_358/dropout/Mul:z:0dropout_358/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_358/dropout/Mul_1?
 dense_1075/MatMul/ReadVariableOpReadVariableOp)dense_1075_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02"
 dense_1075/MatMul/ReadVariableOp?
dense_1075/MatMulMatMuldropout_358/dropout/Mul_1:z:0(dense_1075/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1075/MatMul?
!dense_1075/BiasAdd/ReadVariableOpReadVariableOp*dense_1075_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_1075/BiasAdd/ReadVariableOp?
dense_1075/BiasAddBiasAdddense_1075/MatMul:product:0)dense_1075/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1075/BiasAddy
dense_1075/TanhTanhdense_1075/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1075/Tanh?
 dense_1076/MatMul/ReadVariableOpReadVariableOp)dense_1076_matmul_readvariableop_resource*
_output_shapes

:*
dtype02"
 dense_1076/MatMul/ReadVariableOp?
dense_1076/MatMulMatMuldense_1075/Tanh:y:0(dense_1076/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1076/MatMul?
!dense_1076/BiasAdd/ReadVariableOpReadVariableOp*dense_1076_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_1076/BiasAdd/ReadVariableOp?
dense_1076/BiasAddBiasAdddense_1076/MatMul:product:0)dense_1076/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1076/BiasAdd?
dense_1076/SigmoidSigmoiddense_1076/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1076/Sigmoidq
IdentityIdentitydense_1076/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_1074/BiasAdd/ReadVariableOp"^conv2d_1074/Conv2D/ReadVariableOp#^conv2d_1075/BiasAdd/ReadVariableOp"^conv2d_1075/Conv2D/ReadVariableOp#^conv2d_1076/BiasAdd/ReadVariableOp"^conv2d_1076/Conv2D/ReadVariableOp"^dense_1074/BiasAdd/ReadVariableOp!^dense_1074/MatMul/ReadVariableOp"^dense_1075/BiasAdd/ReadVariableOp!^dense_1075/MatMul/ReadVariableOp"^dense_1076/BiasAdd/ReadVariableOp!^dense_1076/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_1074/BiasAdd/ReadVariableOp"conv2d_1074/BiasAdd/ReadVariableOp2F
!conv2d_1074/Conv2D/ReadVariableOp!conv2d_1074/Conv2D/ReadVariableOp2H
"conv2d_1075/BiasAdd/ReadVariableOp"conv2d_1075/BiasAdd/ReadVariableOp2F
!conv2d_1075/Conv2D/ReadVariableOp!conv2d_1075/Conv2D/ReadVariableOp2H
"conv2d_1076/BiasAdd/ReadVariableOp"conv2d_1076/BiasAdd/ReadVariableOp2F
!conv2d_1076/Conv2D/ReadVariableOp!conv2d_1076/Conv2D/ReadVariableOp2F
!dense_1074/BiasAdd/ReadVariableOp!dense_1074/BiasAdd/ReadVariableOp2D
 dense_1074/MatMul/ReadVariableOp dense_1074/MatMul/ReadVariableOp2F
!dense_1075/BiasAdd/ReadVariableOp!dense_1075/BiasAdd/ReadVariableOp2D
 dense_1075/MatMul/ReadVariableOp dense_1075/MatMul/ReadVariableOp2F
!dense_1076/BiasAdd/ReadVariableOp!dense_1076/BiasAdd/ReadVariableOp2D
 dense_1076/MatMul/ReadVariableOp dense_1076/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
k
O__inference_max_pooling2d_1074_layer_call_and_return_conditional_losses_2292595

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
?
P
4__inference_max_pooling2d_1075_layer_call_fn_2293326

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
GPU 2J 8? *X
fSRQ
O__inference_max_pooling2d_1075_layer_call_and_return_conditional_losses_22925322
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
P
4__inference_max_pooling2d_1074_layer_call_fn_2293291

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
GPU 2J 8? *X
fSRQ
O__inference_max_pooling2d_1074_layer_call_and_return_conditional_losses_22925952
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
P
4__inference_max_pooling2d_1076_layer_call_fn_2293371

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
GPU 2J 8? *X
fSRQ
O__inference_max_pooling2d_1076_layer_call_and_return_conditional_losses_22926412
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
?4
?
K__inference_sequential_358_layer_call_and_return_conditional_losses_2293006
conv2d_1074_input-
conv2d_1074_2292970: !
conv2d_1074_2292972: -
conv2d_1075_2292976: @!
conv2d_1075_2292978:@.
conv2d_1076_2292982:@?"
conv2d_1076_2292984:	?%
dense_1074_2292989:	?@ 
dense_1074_2292991:@$
dense_1075_2292995:@ 
dense_1075_2292997:$
dense_1076_2293000: 
dense_1076_2293002:
identity??#conv2d_1074/StatefulPartitionedCall?#conv2d_1075/StatefulPartitionedCall?#conv2d_1076/StatefulPartitionedCall?"dense_1074/StatefulPartitionedCall?"dense_1075/StatefulPartitionedCall?"dense_1076/StatefulPartitionedCall?
#conv2d_1074/StatefulPartitionedCallStatefulPartitionedCallconv2d_1074_inputconv2d_1074_2292970conv2d_1074_2292972*
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
GPU 2J 8? *Q
fLRJ
H__inference_conv2d_1074_layer_call_and_return_conditional_losses_22925852%
#conv2d_1074/StatefulPartitionedCall?
"max_pooling2d_1074/PartitionedCallPartitionedCall,conv2d_1074/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *X
fSRQ
O__inference_max_pooling2d_1074_layer_call_and_return_conditional_losses_22925952$
"max_pooling2d_1074/PartitionedCall?
#conv2d_1075/StatefulPartitionedCallStatefulPartitionedCall+max_pooling2d_1074/PartitionedCall:output:0conv2d_1075_2292976conv2d_1075_2292978*
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
GPU 2J 8? *Q
fLRJ
H__inference_conv2d_1075_layer_call_and_return_conditional_losses_22926082%
#conv2d_1075/StatefulPartitionedCall?
"max_pooling2d_1075/PartitionedCallPartitionedCall,conv2d_1075/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *X
fSRQ
O__inference_max_pooling2d_1075_layer_call_and_return_conditional_losses_22926182$
"max_pooling2d_1075/PartitionedCall?
#conv2d_1076/StatefulPartitionedCallStatefulPartitionedCall+max_pooling2d_1075/PartitionedCall:output:0conv2d_1076_2292982conv2d_1076_2292984*
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
GPU 2J 8? *Q
fLRJ
H__inference_conv2d_1076_layer_call_and_return_conditional_losses_22926312%
#conv2d_1076/StatefulPartitionedCall?
"max_pooling2d_1076/PartitionedCallPartitionedCall,conv2d_1076/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *X
fSRQ
O__inference_max_pooling2d_1076_layer_call_and_return_conditional_losses_22926412$
"max_pooling2d_1076/PartitionedCall?
flatten_358/PartitionedCallPartitionedCall+max_pooling2d_1076/PartitionedCall:output:0*
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
H__inference_flatten_358_layer_call_and_return_conditional_losses_22926492
flatten_358/PartitionedCall?
"dense_1074/StatefulPartitionedCallStatefulPartitionedCall$flatten_358/PartitionedCall:output:0dense_1074_2292989dense_1074_2292991*
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
GPU 2J 8? *P
fKRI
G__inference_dense_1074_layer_call_and_return_conditional_losses_22926622$
"dense_1074/StatefulPartitionedCall?
dropout_358/PartitionedCallPartitionedCall+dense_1074/StatefulPartitionedCall:output:0*
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
H__inference_dropout_358_layer_call_and_return_conditional_losses_22926732
dropout_358/PartitionedCall?
"dense_1075/StatefulPartitionedCallStatefulPartitionedCall$dropout_358/PartitionedCall:output:0dense_1075_2292995dense_1075_2292997*
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
GPU 2J 8? *P
fKRI
G__inference_dense_1075_layer_call_and_return_conditional_losses_22926862$
"dense_1075/StatefulPartitionedCall?
"dense_1076/StatefulPartitionedCallStatefulPartitionedCall+dense_1075/StatefulPartitionedCall:output:0dense_1076_2293000dense_1076_2293002*
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
GPU 2J 8? *P
fKRI
G__inference_dense_1076_layer_call_and_return_conditional_losses_22927032$
"dense_1076/StatefulPartitionedCall?
IdentityIdentity+dense_1076/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp$^conv2d_1074/StatefulPartitionedCall$^conv2d_1075/StatefulPartitionedCall$^conv2d_1076/StatefulPartitionedCall#^dense_1074/StatefulPartitionedCall#^dense_1075/StatefulPartitionedCall#^dense_1076/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2J
#conv2d_1074/StatefulPartitionedCall#conv2d_1074/StatefulPartitionedCall2J
#conv2d_1075/StatefulPartitionedCall#conv2d_1075/StatefulPartitionedCall2J
#conv2d_1076/StatefulPartitionedCall#conv2d_1076/StatefulPartitionedCall2H
"dense_1074/StatefulPartitionedCall"dense_1074/StatefulPartitionedCall2H
"dense_1075/StatefulPartitionedCall"dense_1075/StatefulPartitionedCall2H
"dense_1076/StatefulPartitionedCall"dense_1076/StatefulPartitionedCall:d `
1
_output_shapes
:???????????
+
_user_specified_nameconv2d_1074_input
?
f
H__inference_dropout_358_layer_call_and_return_conditional_losses_2293407

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
k
O__inference_max_pooling2d_1076_layer_call_and_return_conditional_losses_2293356

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
k
O__inference_max_pooling2d_1075_layer_call_and_return_conditional_losses_2292618

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
0__inference_sequential_358_layer_call_fn_2292737
conv2d_1074_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_1074_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
K__inference_sequential_358_layer_call_and_return_conditional_losses_22927102
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
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:???????????
+
_user_specified_nameconv2d_1074_input
?
k
O__inference_max_pooling2d_1076_layer_call_and_return_conditional_losses_2292641

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
?
?
-__inference_conv2d_1076_layer_call_fn_2293351

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
GPU 2J 8? *Q
fLRJ
H__inference_conv2d_1076_layer_call_and_return_conditional_losses_22926312
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
0__inference_sequential_358_layer_call_fn_2293251

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
K__inference_sequential_358_layer_call_and_return_conditional_losses_22929112
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
-__inference_conv2d_1074_layer_call_fn_2293271

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
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
GPU 2J 8? *Q
fLRJ
H__inference_conv2d_1074_layer_call_and_return_conditional_losses_22925852
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
k
O__inference_max_pooling2d_1075_layer_call_and_return_conditional_losses_2293321

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
,__inference_dense_1075_layer_call_fn_2293449

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
GPU 2J 8? *P
fKRI
G__inference_dense_1075_layer_call_and_return_conditional_losses_22926862
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
?_
?
 __inference__traced_save_2293627
file_prefix1
-savev2_conv2d_1074_kernel_read_readvariableop/
+savev2_conv2d_1074_bias_read_readvariableop1
-savev2_conv2d_1075_kernel_read_readvariableop/
+savev2_conv2d_1075_bias_read_readvariableop1
-savev2_conv2d_1076_kernel_read_readvariableop/
+savev2_conv2d_1076_bias_read_readvariableop0
,savev2_dense_1074_kernel_read_readvariableop.
*savev2_dense_1074_bias_read_readvariableop0
,savev2_dense_1075_kernel_read_readvariableop.
*savev2_dense_1075_bias_read_readvariableop0
,savev2_dense_1076_kernel_read_readvariableop.
*savev2_dense_1076_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop8
4savev2_adam_conv2d_1074_kernel_m_read_readvariableop6
2savev2_adam_conv2d_1074_bias_m_read_readvariableop8
4savev2_adam_conv2d_1075_kernel_m_read_readvariableop6
2savev2_adam_conv2d_1075_bias_m_read_readvariableop8
4savev2_adam_conv2d_1076_kernel_m_read_readvariableop6
2savev2_adam_conv2d_1076_bias_m_read_readvariableop7
3savev2_adam_dense_1074_kernel_m_read_readvariableop5
1savev2_adam_dense_1074_bias_m_read_readvariableop7
3savev2_adam_dense_1075_kernel_m_read_readvariableop5
1savev2_adam_dense_1075_bias_m_read_readvariableop7
3savev2_adam_dense_1076_kernel_m_read_readvariableop5
1savev2_adam_dense_1076_bias_m_read_readvariableop8
4savev2_adam_conv2d_1074_kernel_v_read_readvariableop6
2savev2_adam_conv2d_1074_bias_v_read_readvariableop8
4savev2_adam_conv2d_1075_kernel_v_read_readvariableop6
2savev2_adam_conv2d_1075_bias_v_read_readvariableop8
4savev2_adam_conv2d_1076_kernel_v_read_readvariableop6
2savev2_adam_conv2d_1076_bias_v_read_readvariableop7
3savev2_adam_dense_1074_kernel_v_read_readvariableop5
1savev2_adam_dense_1074_bias_v_read_readvariableop7
3savev2_adam_dense_1075_kernel_v_read_readvariableop5
1savev2_adam_dense_1075_bias_v_read_readvariableop7
3savev2_adam_dense_1076_kernel_v_read_readvariableop5
1savev2_adam_dense_1076_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_conv2d_1074_kernel_read_readvariableop+savev2_conv2d_1074_bias_read_readvariableop-savev2_conv2d_1075_kernel_read_readvariableop+savev2_conv2d_1075_bias_read_readvariableop-savev2_conv2d_1076_kernel_read_readvariableop+savev2_conv2d_1076_bias_read_readvariableop,savev2_dense_1074_kernel_read_readvariableop*savev2_dense_1074_bias_read_readvariableop,savev2_dense_1075_kernel_read_readvariableop*savev2_dense_1075_bias_read_readvariableop,savev2_dense_1076_kernel_read_readvariableop*savev2_dense_1076_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop4savev2_adam_conv2d_1074_kernel_m_read_readvariableop2savev2_adam_conv2d_1074_bias_m_read_readvariableop4savev2_adam_conv2d_1075_kernel_m_read_readvariableop2savev2_adam_conv2d_1075_bias_m_read_readvariableop4savev2_adam_conv2d_1076_kernel_m_read_readvariableop2savev2_adam_conv2d_1076_bias_m_read_readvariableop3savev2_adam_dense_1074_kernel_m_read_readvariableop1savev2_adam_dense_1074_bias_m_read_readvariableop3savev2_adam_dense_1075_kernel_m_read_readvariableop1savev2_adam_dense_1075_bias_m_read_readvariableop3savev2_adam_dense_1076_kernel_m_read_readvariableop1savev2_adam_dense_1076_bias_m_read_readvariableop4savev2_adam_conv2d_1074_kernel_v_read_readvariableop2savev2_adam_conv2d_1074_bias_v_read_readvariableop4savev2_adam_conv2d_1075_kernel_v_read_readvariableop2savev2_adam_conv2d_1075_bias_v_read_readvariableop4savev2_adam_conv2d_1076_kernel_v_read_readvariableop2savev2_adam_conv2d_1076_bias_v_read_readvariableop3savev2_adam_dense_1074_kernel_v_read_readvariableop1savev2_adam_dense_1074_bias_v_read_readvariableop3savev2_adam_dense_1075_kernel_v_read_readvariableop1savev2_adam_dense_1075_bias_v_read_readvariableop3savev2_adam_dense_1076_kernel_v_read_readvariableop1savev2_adam_dense_1076_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
k
O__inference_max_pooling2d_1075_layer_call_and_return_conditional_losses_2292532

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
d
H__inference_flatten_358_layer_call_and_return_conditional_losses_2293377

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
?
0__inference_sequential_358_layer_call_fn_2293222

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
K__inference_sequential_358_layer_call_and_return_conditional_losses_22927102
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
k
O__inference_max_pooling2d_1076_layer_call_and_return_conditional_losses_2292554

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
G__inference_dense_1074_layer_call_and_return_conditional_losses_2293393

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
?]
?
"__inference__wrapped_model_2292501
conv2d_1074_inputS
9sequential_358_conv2d_1074_conv2d_readvariableop_resource: H
:sequential_358_conv2d_1074_biasadd_readvariableop_resource: S
9sequential_358_conv2d_1075_conv2d_readvariableop_resource: @H
:sequential_358_conv2d_1075_biasadd_readvariableop_resource:@T
9sequential_358_conv2d_1076_conv2d_readvariableop_resource:@?I
:sequential_358_conv2d_1076_biasadd_readvariableop_resource:	?K
8sequential_358_dense_1074_matmul_readvariableop_resource:	?@G
9sequential_358_dense_1074_biasadd_readvariableop_resource:@J
8sequential_358_dense_1075_matmul_readvariableop_resource:@G
9sequential_358_dense_1075_biasadd_readvariableop_resource:J
8sequential_358_dense_1076_matmul_readvariableop_resource:G
9sequential_358_dense_1076_biasadd_readvariableop_resource:
identity??1sequential_358/conv2d_1074/BiasAdd/ReadVariableOp?0sequential_358/conv2d_1074/Conv2D/ReadVariableOp?1sequential_358/conv2d_1075/BiasAdd/ReadVariableOp?0sequential_358/conv2d_1075/Conv2D/ReadVariableOp?1sequential_358/conv2d_1076/BiasAdd/ReadVariableOp?0sequential_358/conv2d_1076/Conv2D/ReadVariableOp?0sequential_358/dense_1074/BiasAdd/ReadVariableOp?/sequential_358/dense_1074/MatMul/ReadVariableOp?0sequential_358/dense_1075/BiasAdd/ReadVariableOp?/sequential_358/dense_1075/MatMul/ReadVariableOp?0sequential_358/dense_1076/BiasAdd/ReadVariableOp?/sequential_358/dense_1076/MatMul/ReadVariableOp?
0sequential_358/conv2d_1074/Conv2D/ReadVariableOpReadVariableOp9sequential_358_conv2d_1074_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype022
0sequential_358/conv2d_1074/Conv2D/ReadVariableOp?
!sequential_358/conv2d_1074/Conv2DConv2Dconv2d_1074_input8sequential_358/conv2d_1074/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
2#
!sequential_358/conv2d_1074/Conv2D?
1sequential_358/conv2d_1074/BiasAdd/ReadVariableOpReadVariableOp:sequential_358_conv2d_1074_biasadd_readvariableop_resource*
_output_shapes
: *
dtype023
1sequential_358/conv2d_1074/BiasAdd/ReadVariableOp?
"sequential_358/conv2d_1074/BiasAddBiasAdd*sequential_358/conv2d_1074/Conv2D:output:09sequential_358/conv2d_1074/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] 2$
"sequential_358/conv2d_1074/BiasAdd?
sequential_358/conv2d_1074/ReluRelu+sequential_358/conv2d_1074/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] 2!
sequential_358/conv2d_1074/Relu?
)sequential_358/max_pooling2d_1074/MaxPoolMaxPool-sequential_358/conv2d_1074/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
2+
)sequential_358/max_pooling2d_1074/MaxPool?
0sequential_358/conv2d_1075/Conv2D/ReadVariableOpReadVariableOp9sequential_358_conv2d_1075_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype022
0sequential_358/conv2d_1075/Conv2D/ReadVariableOp?
!sequential_358/conv2d_1075/Conv2DConv2D2sequential_358/max_pooling2d_1074/MaxPool:output:08sequential_358/conv2d_1075/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2#
!sequential_358/conv2d_1075/Conv2D?
1sequential_358/conv2d_1075/BiasAdd/ReadVariableOpReadVariableOp:sequential_358_conv2d_1075_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype023
1sequential_358/conv2d_1075/BiasAdd/ReadVariableOp?
"sequential_358/conv2d_1075/BiasAddBiasAdd*sequential_358/conv2d_1075/Conv2D:output:09sequential_358/conv2d_1075/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2$
"sequential_358/conv2d_1075/BiasAdd?
sequential_358/conv2d_1075/ReluRelu+sequential_358/conv2d_1075/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2!
sequential_358/conv2d_1075/Relu?
)sequential_358/max_pooling2d_1075/MaxPoolMaxPool-sequential_358/conv2d_1075/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2+
)sequential_358/max_pooling2d_1075/MaxPool?
0sequential_358/conv2d_1076/Conv2D/ReadVariableOpReadVariableOp9sequential_358_conv2d_1076_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype022
0sequential_358/conv2d_1076/Conv2D/ReadVariableOp?
!sequential_358/conv2d_1076/Conv2DConv2D2sequential_358/max_pooling2d_1075/MaxPool:output:08sequential_358/conv2d_1076/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2#
!sequential_358/conv2d_1076/Conv2D?
1sequential_358/conv2d_1076/BiasAdd/ReadVariableOpReadVariableOp:sequential_358_conv2d_1076_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1sequential_358/conv2d_1076/BiasAdd/ReadVariableOp?
"sequential_358/conv2d_1076/BiasAddBiasAdd*sequential_358/conv2d_1076/Conv2D:output:09sequential_358/conv2d_1076/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2$
"sequential_358/conv2d_1076/BiasAdd?
sequential_358/conv2d_1076/ReluRelu+sequential_358/conv2d_1076/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
sequential_358/conv2d_1076/Relu?
)sequential_358/max_pooling2d_1076/MaxPoolMaxPool-sequential_358/conv2d_1076/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2+
)sequential_358/max_pooling2d_1076/MaxPool?
 sequential_358/flatten_358/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2"
 sequential_358/flatten_358/Const?
"sequential_358/flatten_358/ReshapeReshape2sequential_358/max_pooling2d_1076/MaxPool:output:0)sequential_358/flatten_358/Const:output:0*
T0*(
_output_shapes
:??????????2$
"sequential_358/flatten_358/Reshape?
/sequential_358/dense_1074/MatMul/ReadVariableOpReadVariableOp8sequential_358_dense_1074_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype021
/sequential_358/dense_1074/MatMul/ReadVariableOp?
 sequential_358/dense_1074/MatMulMatMul+sequential_358/flatten_358/Reshape:output:07sequential_358/dense_1074/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 sequential_358/dense_1074/MatMul?
0sequential_358/dense_1074/BiasAdd/ReadVariableOpReadVariableOp9sequential_358_dense_1074_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0sequential_358/dense_1074/BiasAdd/ReadVariableOp?
!sequential_358/dense_1074/BiasAddBiasAdd*sequential_358/dense_1074/MatMul:product:08sequential_358/dense_1074/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2#
!sequential_358/dense_1074/BiasAdd?
sequential_358/dense_1074/TanhTanh*sequential_358/dense_1074/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2 
sequential_358/dense_1074/Tanh?
#sequential_358/dropout_358/IdentityIdentity"sequential_358/dense_1074/Tanh:y:0*
T0*'
_output_shapes
:?????????@2%
#sequential_358/dropout_358/Identity?
/sequential_358/dense_1075/MatMul/ReadVariableOpReadVariableOp8sequential_358_dense_1075_matmul_readvariableop_resource*
_output_shapes

:@*
dtype021
/sequential_358/dense_1075/MatMul/ReadVariableOp?
 sequential_358/dense_1075/MatMulMatMul,sequential_358/dropout_358/Identity:output:07sequential_358/dense_1075/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 sequential_358/dense_1075/MatMul?
0sequential_358/dense_1075/BiasAdd/ReadVariableOpReadVariableOp9sequential_358_dense_1075_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0sequential_358/dense_1075/BiasAdd/ReadVariableOp?
!sequential_358/dense_1075/BiasAddBiasAdd*sequential_358/dense_1075/MatMul:product:08sequential_358/dense_1075/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!sequential_358/dense_1075/BiasAdd?
sequential_358/dense_1075/TanhTanh*sequential_358/dense_1075/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_358/dense_1075/Tanh?
/sequential_358/dense_1076/MatMul/ReadVariableOpReadVariableOp8sequential_358_dense_1076_matmul_readvariableop_resource*
_output_shapes

:*
dtype021
/sequential_358/dense_1076/MatMul/ReadVariableOp?
 sequential_358/dense_1076/MatMulMatMul"sequential_358/dense_1075/Tanh:y:07sequential_358/dense_1076/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 sequential_358/dense_1076/MatMul?
0sequential_358/dense_1076/BiasAdd/ReadVariableOpReadVariableOp9sequential_358_dense_1076_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0sequential_358/dense_1076/BiasAdd/ReadVariableOp?
!sequential_358/dense_1076/BiasAddBiasAdd*sequential_358/dense_1076/MatMul:product:08sequential_358/dense_1076/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!sequential_358/dense_1076/BiasAdd?
!sequential_358/dense_1076/SigmoidSigmoid*sequential_358/dense_1076/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2#
!sequential_358/dense_1076/Sigmoid?
IdentityIdentity%sequential_358/dense_1076/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp2^sequential_358/conv2d_1074/BiasAdd/ReadVariableOp1^sequential_358/conv2d_1074/Conv2D/ReadVariableOp2^sequential_358/conv2d_1075/BiasAdd/ReadVariableOp1^sequential_358/conv2d_1075/Conv2D/ReadVariableOp2^sequential_358/conv2d_1076/BiasAdd/ReadVariableOp1^sequential_358/conv2d_1076/Conv2D/ReadVariableOp1^sequential_358/dense_1074/BiasAdd/ReadVariableOp0^sequential_358/dense_1074/MatMul/ReadVariableOp1^sequential_358/dense_1075/BiasAdd/ReadVariableOp0^sequential_358/dense_1075/MatMul/ReadVariableOp1^sequential_358/dense_1076/BiasAdd/ReadVariableOp0^sequential_358/dense_1076/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2f
1sequential_358/conv2d_1074/BiasAdd/ReadVariableOp1sequential_358/conv2d_1074/BiasAdd/ReadVariableOp2d
0sequential_358/conv2d_1074/Conv2D/ReadVariableOp0sequential_358/conv2d_1074/Conv2D/ReadVariableOp2f
1sequential_358/conv2d_1075/BiasAdd/ReadVariableOp1sequential_358/conv2d_1075/BiasAdd/ReadVariableOp2d
0sequential_358/conv2d_1075/Conv2D/ReadVariableOp0sequential_358/conv2d_1075/Conv2D/ReadVariableOp2f
1sequential_358/conv2d_1076/BiasAdd/ReadVariableOp1sequential_358/conv2d_1076/BiasAdd/ReadVariableOp2d
0sequential_358/conv2d_1076/Conv2D/ReadVariableOp0sequential_358/conv2d_1076/Conv2D/ReadVariableOp2d
0sequential_358/dense_1074/BiasAdd/ReadVariableOp0sequential_358/dense_1074/BiasAdd/ReadVariableOp2b
/sequential_358/dense_1074/MatMul/ReadVariableOp/sequential_358/dense_1074/MatMul/ReadVariableOp2d
0sequential_358/dense_1075/BiasAdd/ReadVariableOp0sequential_358/dense_1075/BiasAdd/ReadVariableOp2b
/sequential_358/dense_1075/MatMul/ReadVariableOp/sequential_358/dense_1075/MatMul/ReadVariableOp2d
0sequential_358/dense_1076/BiasAdd/ReadVariableOp0sequential_358/dense_1076/BiasAdd/ReadVariableOp2b
/sequential_358/dense_1076/MatMul/ReadVariableOp/sequential_358/dense_1076/MatMul/ReadVariableOp:d `
1
_output_shapes
:???????????
+
_user_specified_nameconv2d_1074_input
?
?
H__inference_conv2d_1075_layer_call_and_return_conditional_losses_2292608

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
k
O__inference_max_pooling2d_1074_layer_call_and_return_conditional_losses_2293281

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
G__inference_dense_1076_layer_call_and_return_conditional_losses_2292703

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
?H
?

K__inference_sequential_358_layer_call_and_return_conditional_losses_2293134

inputsD
*conv2d_1074_conv2d_readvariableop_resource: 9
+conv2d_1074_biasadd_readvariableop_resource: D
*conv2d_1075_conv2d_readvariableop_resource: @9
+conv2d_1075_biasadd_readvariableop_resource:@E
*conv2d_1076_conv2d_readvariableop_resource:@?:
+conv2d_1076_biasadd_readvariableop_resource:	?<
)dense_1074_matmul_readvariableop_resource:	?@8
*dense_1074_biasadd_readvariableop_resource:@;
)dense_1075_matmul_readvariableop_resource:@8
*dense_1075_biasadd_readvariableop_resource:;
)dense_1076_matmul_readvariableop_resource:8
*dense_1076_biasadd_readvariableop_resource:
identity??"conv2d_1074/BiasAdd/ReadVariableOp?!conv2d_1074/Conv2D/ReadVariableOp?"conv2d_1075/BiasAdd/ReadVariableOp?!conv2d_1075/Conv2D/ReadVariableOp?"conv2d_1076/BiasAdd/ReadVariableOp?!conv2d_1076/Conv2D/ReadVariableOp?!dense_1074/BiasAdd/ReadVariableOp? dense_1074/MatMul/ReadVariableOp?!dense_1075/BiasAdd/ReadVariableOp? dense_1075/MatMul/ReadVariableOp?!dense_1076/BiasAdd/ReadVariableOp? dense_1076/MatMul/ReadVariableOp?
!conv2d_1074/Conv2D/ReadVariableOpReadVariableOp*conv2d_1074_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02#
!conv2d_1074/Conv2D/ReadVariableOp?
conv2d_1074/Conv2DConv2Dinputs)conv2d_1074/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] *
paddingVALID*
strides
2
conv2d_1074/Conv2D?
"conv2d_1074/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1074_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02$
"conv2d_1074/BiasAdd/ReadVariableOp?
conv2d_1074/BiasAddBiasAddconv2d_1074/Conv2D:output:0*conv2d_1074/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Z] 2
conv2d_1074/BiasAdd?
conv2d_1074/ReluReluconv2d_1074/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Z] 2
conv2d_1074/Relu?
max_pooling2d_1074/MaxPoolMaxPoolconv2d_1074/Relu:activations:0*/
_output_shapes
:?????????-. *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1074/MaxPool?
!conv2d_1075/Conv2D/ReadVariableOpReadVariableOp*conv2d_1075_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02#
!conv2d_1075/Conv2D/ReadVariableOp?
conv2d_1075/Conv2DConv2D#max_pooling2d_1074/MaxPool:output:0)conv2d_1075/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_1075/Conv2D?
"conv2d_1075/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1075_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02$
"conv2d_1075/BiasAdd/ReadVariableOp?
conv2d_1075/BiasAddBiasAddconv2d_1075/Conv2D:output:0*conv2d_1075/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_1075/BiasAdd?
conv2d_1075/ReluReluconv2d_1075/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_1075/Relu?
max_pooling2d_1075/MaxPoolMaxPoolconv2d_1075/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1075/MaxPool?
!conv2d_1076/Conv2D/ReadVariableOpReadVariableOp*conv2d_1076_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02#
!conv2d_1076/Conv2D/ReadVariableOp?
conv2d_1076/Conv2DConv2D#max_pooling2d_1075/MaxPool:output:0)conv2d_1076/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_1076/Conv2D?
"conv2d_1076/BiasAdd/ReadVariableOpReadVariableOp+conv2d_1076_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"conv2d_1076/BiasAdd/ReadVariableOp?
conv2d_1076/BiasAddBiasAddconv2d_1076/Conv2D:output:0*conv2d_1076/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_1076/BiasAdd?
conv2d_1076/ReluReluconv2d_1076/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_1076/Relu?
max_pooling2d_1076/MaxPoolMaxPoolconv2d_1076/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1076/MaxPoolw
flatten_358/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten_358/Const?
flatten_358/ReshapeReshape#max_pooling2d_1076/MaxPool:output:0flatten_358/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_358/Reshape?
 dense_1074/MatMul/ReadVariableOpReadVariableOp)dense_1074_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02"
 dense_1074/MatMul/ReadVariableOp?
dense_1074/MatMulMatMulflatten_358/Reshape:output:0(dense_1074/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1074/MatMul?
!dense_1074/BiasAdd/ReadVariableOpReadVariableOp*dense_1074_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!dense_1074/BiasAdd/ReadVariableOp?
dense_1074/BiasAddBiasAdddense_1074/MatMul:product:0)dense_1074/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1074/BiasAddy
dense_1074/TanhTanhdense_1074/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_1074/Tanh
dropout_358/IdentityIdentitydense_1074/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
dropout_358/Identity?
 dense_1075/MatMul/ReadVariableOpReadVariableOp)dense_1075_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02"
 dense_1075/MatMul/ReadVariableOp?
dense_1075/MatMulMatMuldropout_358/Identity:output:0(dense_1075/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1075/MatMul?
!dense_1075/BiasAdd/ReadVariableOpReadVariableOp*dense_1075_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_1075/BiasAdd/ReadVariableOp?
dense_1075/BiasAddBiasAdddense_1075/MatMul:product:0)dense_1075/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1075/BiasAddy
dense_1075/TanhTanhdense_1075/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1075/Tanh?
 dense_1076/MatMul/ReadVariableOpReadVariableOp)dense_1076_matmul_readvariableop_resource*
_output_shapes

:*
dtype02"
 dense_1076/MatMul/ReadVariableOp?
dense_1076/MatMulMatMuldense_1075/Tanh:y:0(dense_1076/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1076/MatMul?
!dense_1076/BiasAdd/ReadVariableOpReadVariableOp*dense_1076_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_1076/BiasAdd/ReadVariableOp?
dense_1076/BiasAddBiasAdddense_1076/MatMul:product:0)dense_1076/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1076/BiasAdd?
dense_1076/SigmoidSigmoiddense_1076/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1076/Sigmoidq
IdentityIdentitydense_1076/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^conv2d_1074/BiasAdd/ReadVariableOp"^conv2d_1074/Conv2D/ReadVariableOp#^conv2d_1075/BiasAdd/ReadVariableOp"^conv2d_1075/Conv2D/ReadVariableOp#^conv2d_1076/BiasAdd/ReadVariableOp"^conv2d_1076/Conv2D/ReadVariableOp"^dense_1074/BiasAdd/ReadVariableOp!^dense_1074/MatMul/ReadVariableOp"^dense_1075/BiasAdd/ReadVariableOp!^dense_1075/MatMul/ReadVariableOp"^dense_1076/BiasAdd/ReadVariableOp!^dense_1076/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2H
"conv2d_1074/BiasAdd/ReadVariableOp"conv2d_1074/BiasAdd/ReadVariableOp2F
!conv2d_1074/Conv2D/ReadVariableOp!conv2d_1074/Conv2D/ReadVariableOp2H
"conv2d_1075/BiasAdd/ReadVariableOp"conv2d_1075/BiasAdd/ReadVariableOp2F
!conv2d_1075/Conv2D/ReadVariableOp!conv2d_1075/Conv2D/ReadVariableOp2H
"conv2d_1076/BiasAdd/ReadVariableOp"conv2d_1076/BiasAdd/ReadVariableOp2F
!conv2d_1076/Conv2D/ReadVariableOp!conv2d_1076/Conv2D/ReadVariableOp2F
!dense_1074/BiasAdd/ReadVariableOp!dense_1074/BiasAdd/ReadVariableOp2D
 dense_1074/MatMul/ReadVariableOp dense_1074/MatMul/ReadVariableOp2F
!dense_1075/BiasAdd/ReadVariableOp!dense_1075/BiasAdd/ReadVariableOp2D
 dense_1075/MatMul/ReadVariableOp dense_1075/MatMul/ReadVariableOp2F
!dense_1076/BiasAdd/ReadVariableOp!dense_1076/BiasAdd/ReadVariableOp2D
 dense_1076/MatMul/ReadVariableOp dense_1076/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_2293082
conv2d_1074_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_1074_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_22925012
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
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:???????????
+
_user_specified_nameconv2d_1074_input
?

?
G__inference_dense_1075_layer_call_and_return_conditional_losses_2292686

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
?
H__inference_conv2d_1076_layer_call_and_return_conditional_losses_2292631

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
k
O__inference_max_pooling2d_1074_layer_call_and_return_conditional_losses_2293276

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
H__inference_conv2d_1074_layer_call_and_return_conditional_losses_2293262

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
?
I
-__inference_flatten_358_layer_call_fn_2293382

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
H__inference_flatten_358_layer_call_and_return_conditional_losses_22926492
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
?6
?
K__inference_sequential_358_layer_call_and_return_conditional_losses_2293045
conv2d_1074_input-
conv2d_1074_2293009: !
conv2d_1074_2293011: -
conv2d_1075_2293015: @!
conv2d_1075_2293017:@.
conv2d_1076_2293021:@?"
conv2d_1076_2293023:	?%
dense_1074_2293028:	?@ 
dense_1074_2293030:@$
dense_1075_2293034:@ 
dense_1075_2293036:$
dense_1076_2293039: 
dense_1076_2293041:
identity??#conv2d_1074/StatefulPartitionedCall?#conv2d_1075/StatefulPartitionedCall?#conv2d_1076/StatefulPartitionedCall?"dense_1074/StatefulPartitionedCall?"dense_1075/StatefulPartitionedCall?"dense_1076/StatefulPartitionedCall?#dropout_358/StatefulPartitionedCall?
#conv2d_1074/StatefulPartitionedCallStatefulPartitionedCallconv2d_1074_inputconv2d_1074_2293009conv2d_1074_2293011*
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
GPU 2J 8? *Q
fLRJ
H__inference_conv2d_1074_layer_call_and_return_conditional_losses_22925852%
#conv2d_1074/StatefulPartitionedCall?
"max_pooling2d_1074/PartitionedCallPartitionedCall,conv2d_1074/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *X
fSRQ
O__inference_max_pooling2d_1074_layer_call_and_return_conditional_losses_22925952$
"max_pooling2d_1074/PartitionedCall?
#conv2d_1075/StatefulPartitionedCallStatefulPartitionedCall+max_pooling2d_1074/PartitionedCall:output:0conv2d_1075_2293015conv2d_1075_2293017*
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
GPU 2J 8? *Q
fLRJ
H__inference_conv2d_1075_layer_call_and_return_conditional_losses_22926082%
#conv2d_1075/StatefulPartitionedCall?
"max_pooling2d_1075/PartitionedCallPartitionedCall,conv2d_1075/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *X
fSRQ
O__inference_max_pooling2d_1075_layer_call_and_return_conditional_losses_22926182$
"max_pooling2d_1075/PartitionedCall?
#conv2d_1076/StatefulPartitionedCallStatefulPartitionedCall+max_pooling2d_1075/PartitionedCall:output:0conv2d_1076_2293021conv2d_1076_2293023*
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
GPU 2J 8? *Q
fLRJ
H__inference_conv2d_1076_layer_call_and_return_conditional_losses_22926312%
#conv2d_1076/StatefulPartitionedCall?
"max_pooling2d_1076/PartitionedCallPartitionedCall,conv2d_1076/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *X
fSRQ
O__inference_max_pooling2d_1076_layer_call_and_return_conditional_losses_22926412$
"max_pooling2d_1076/PartitionedCall?
flatten_358/PartitionedCallPartitionedCall+max_pooling2d_1076/PartitionedCall:output:0*
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
H__inference_flatten_358_layer_call_and_return_conditional_losses_22926492
flatten_358/PartitionedCall?
"dense_1074/StatefulPartitionedCallStatefulPartitionedCall$flatten_358/PartitionedCall:output:0dense_1074_2293028dense_1074_2293030*
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
GPU 2J 8? *P
fKRI
G__inference_dense_1074_layer_call_and_return_conditional_losses_22926622$
"dense_1074/StatefulPartitionedCall?
#dropout_358/StatefulPartitionedCallStatefulPartitionedCall+dense_1074/StatefulPartitionedCall:output:0*
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
H__inference_dropout_358_layer_call_and_return_conditional_losses_22927772%
#dropout_358/StatefulPartitionedCall?
"dense_1075/StatefulPartitionedCallStatefulPartitionedCall,dropout_358/StatefulPartitionedCall:output:0dense_1075_2293034dense_1075_2293036*
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
GPU 2J 8? *P
fKRI
G__inference_dense_1075_layer_call_and_return_conditional_losses_22926862$
"dense_1075/StatefulPartitionedCall?
"dense_1076/StatefulPartitionedCallStatefulPartitionedCall+dense_1075/StatefulPartitionedCall:output:0dense_1076_2293039dense_1076_2293041*
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
GPU 2J 8? *P
fKRI
G__inference_dense_1076_layer_call_and_return_conditional_losses_22927032$
"dense_1076/StatefulPartitionedCall?
IdentityIdentity+dense_1076/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp$^conv2d_1074/StatefulPartitionedCall$^conv2d_1075/StatefulPartitionedCall$^conv2d_1076/StatefulPartitionedCall#^dense_1074/StatefulPartitionedCall#^dense_1075/StatefulPartitionedCall#^dense_1076/StatefulPartitionedCall$^dropout_358/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2J
#conv2d_1074/StatefulPartitionedCall#conv2d_1074/StatefulPartitionedCall2J
#conv2d_1075/StatefulPartitionedCall#conv2d_1075/StatefulPartitionedCall2J
#conv2d_1076/StatefulPartitionedCall#conv2d_1076/StatefulPartitionedCall2H
"dense_1074/StatefulPartitionedCall"dense_1074/StatefulPartitionedCall2H
"dense_1075/StatefulPartitionedCall"dense_1075/StatefulPartitionedCall2H
"dense_1076/StatefulPartitionedCall"dense_1076/StatefulPartitionedCall2J
#dropout_358/StatefulPartitionedCall#dropout_358/StatefulPartitionedCall:d `
1
_output_shapes
:???????????
+
_user_specified_nameconv2d_1074_input
?
d
H__inference_flatten_358_layer_call_and_return_conditional_losses_2292649

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
P
4__inference_max_pooling2d_1075_layer_call_fn_2293331

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
GPU 2J 8? *X
fSRQ
O__inference_max_pooling2d_1075_layer_call_and_return_conditional_losses_22926182
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
?
?
,__inference_dense_1074_layer_call_fn_2293402

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
GPU 2J 8? *P
fKRI
G__inference_dense_1074_layer_call_and_return_conditional_losses_22926622
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
?
?
0__inference_sequential_358_layer_call_fn_2292967
conv2d_1074_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_1074_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
K__inference_sequential_358_layer_call_and_return_conditional_losses_22929112
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
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:???????????
+
_user_specified_nameconv2d_1074_input
?
?
-__inference_conv2d_1075_layer_call_fn_2293311

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
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
GPU 2J 8? *Q
fLRJ
H__inference_conv2d_1075_layer_call_and_return_conditional_losses_22926082
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
?
f
H__inference_dropout_358_layer_call_and_return_conditional_losses_2292673

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
k
O__inference_max_pooling2d_1076_layer_call_and_return_conditional_losses_2293361

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
?5
?
K__inference_sequential_358_layer_call_and_return_conditional_losses_2292911

inputs-
conv2d_1074_2292875: !
conv2d_1074_2292877: -
conv2d_1075_2292881: @!
conv2d_1075_2292883:@.
conv2d_1076_2292887:@?"
conv2d_1076_2292889:	?%
dense_1074_2292894:	?@ 
dense_1074_2292896:@$
dense_1075_2292900:@ 
dense_1075_2292902:$
dense_1076_2292905: 
dense_1076_2292907:
identity??#conv2d_1074/StatefulPartitionedCall?#conv2d_1075/StatefulPartitionedCall?#conv2d_1076/StatefulPartitionedCall?"dense_1074/StatefulPartitionedCall?"dense_1075/StatefulPartitionedCall?"dense_1076/StatefulPartitionedCall?#dropout_358/StatefulPartitionedCall?
#conv2d_1074/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1074_2292875conv2d_1074_2292877*
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
GPU 2J 8? *Q
fLRJ
H__inference_conv2d_1074_layer_call_and_return_conditional_losses_22925852%
#conv2d_1074/StatefulPartitionedCall?
"max_pooling2d_1074/PartitionedCallPartitionedCall,conv2d_1074/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *X
fSRQ
O__inference_max_pooling2d_1074_layer_call_and_return_conditional_losses_22925952$
"max_pooling2d_1074/PartitionedCall?
#conv2d_1075/StatefulPartitionedCallStatefulPartitionedCall+max_pooling2d_1074/PartitionedCall:output:0conv2d_1075_2292881conv2d_1075_2292883*
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
GPU 2J 8? *Q
fLRJ
H__inference_conv2d_1075_layer_call_and_return_conditional_losses_22926082%
#conv2d_1075/StatefulPartitionedCall?
"max_pooling2d_1075/PartitionedCallPartitionedCall,conv2d_1075/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *X
fSRQ
O__inference_max_pooling2d_1075_layer_call_and_return_conditional_losses_22926182$
"max_pooling2d_1075/PartitionedCall?
#conv2d_1076/StatefulPartitionedCallStatefulPartitionedCall+max_pooling2d_1075/PartitionedCall:output:0conv2d_1076_2292887conv2d_1076_2292889*
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
GPU 2J 8? *Q
fLRJ
H__inference_conv2d_1076_layer_call_and_return_conditional_losses_22926312%
#conv2d_1076/StatefulPartitionedCall?
"max_pooling2d_1076/PartitionedCallPartitionedCall,conv2d_1076/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *X
fSRQ
O__inference_max_pooling2d_1076_layer_call_and_return_conditional_losses_22926412$
"max_pooling2d_1076/PartitionedCall?
flatten_358/PartitionedCallPartitionedCall+max_pooling2d_1076/PartitionedCall:output:0*
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
H__inference_flatten_358_layer_call_and_return_conditional_losses_22926492
flatten_358/PartitionedCall?
"dense_1074/StatefulPartitionedCallStatefulPartitionedCall$flatten_358/PartitionedCall:output:0dense_1074_2292894dense_1074_2292896*
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
GPU 2J 8? *P
fKRI
G__inference_dense_1074_layer_call_and_return_conditional_losses_22926622$
"dense_1074/StatefulPartitionedCall?
#dropout_358/StatefulPartitionedCallStatefulPartitionedCall+dense_1074/StatefulPartitionedCall:output:0*
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
H__inference_dropout_358_layer_call_and_return_conditional_losses_22927772%
#dropout_358/StatefulPartitionedCall?
"dense_1075/StatefulPartitionedCallStatefulPartitionedCall,dropout_358/StatefulPartitionedCall:output:0dense_1075_2292900dense_1075_2292902*
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
GPU 2J 8? *P
fKRI
G__inference_dense_1075_layer_call_and_return_conditional_losses_22926862$
"dense_1075/StatefulPartitionedCall?
"dense_1076/StatefulPartitionedCallStatefulPartitionedCall+dense_1075/StatefulPartitionedCall:output:0dense_1076_2292905dense_1076_2292907*
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
GPU 2J 8? *P
fKRI
G__inference_dense_1076_layer_call_and_return_conditional_losses_22927032$
"dense_1076/StatefulPartitionedCall?
IdentityIdentity+dense_1076/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp$^conv2d_1074/StatefulPartitionedCall$^conv2d_1075/StatefulPartitionedCall$^conv2d_1076/StatefulPartitionedCall#^dense_1074/StatefulPartitionedCall#^dense_1075/StatefulPartitionedCall#^dense_1076/StatefulPartitionedCall$^dropout_358/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2J
#conv2d_1074/StatefulPartitionedCall#conv2d_1074/StatefulPartitionedCall2J
#conv2d_1075/StatefulPartitionedCall#conv2d_1075/StatefulPartitionedCall2J
#conv2d_1076/StatefulPartitionedCall#conv2d_1076/StatefulPartitionedCall2H
"dense_1074/StatefulPartitionedCall"dense_1074/StatefulPartitionedCall2H
"dense_1075/StatefulPartitionedCall"dense_1075/StatefulPartitionedCall2H
"dense_1076/StatefulPartitionedCall"dense_1076/StatefulPartitionedCall2J
#dropout_358/StatefulPartitionedCall#dropout_358/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
H__inference_conv2d_1074_layer_call_and_return_conditional_losses_2292585

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
G__inference_dense_1075_layer_call_and_return_conditional_losses_2293440

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
?4
?
K__inference_sequential_358_layer_call_and_return_conditional_losses_2292710

inputs-
conv2d_1074_2292586: !
conv2d_1074_2292588: -
conv2d_1075_2292609: @!
conv2d_1075_2292611:@.
conv2d_1076_2292632:@?"
conv2d_1076_2292634:	?%
dense_1074_2292663:	?@ 
dense_1074_2292665:@$
dense_1075_2292687:@ 
dense_1075_2292689:$
dense_1076_2292704: 
dense_1076_2292706:
identity??#conv2d_1074/StatefulPartitionedCall?#conv2d_1075/StatefulPartitionedCall?#conv2d_1076/StatefulPartitionedCall?"dense_1074/StatefulPartitionedCall?"dense_1075/StatefulPartitionedCall?"dense_1076/StatefulPartitionedCall?
#conv2d_1074/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1074_2292586conv2d_1074_2292588*
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
GPU 2J 8? *Q
fLRJ
H__inference_conv2d_1074_layer_call_and_return_conditional_losses_22925852%
#conv2d_1074/StatefulPartitionedCall?
"max_pooling2d_1074/PartitionedCallPartitionedCall,conv2d_1074/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *X
fSRQ
O__inference_max_pooling2d_1074_layer_call_and_return_conditional_losses_22925952$
"max_pooling2d_1074/PartitionedCall?
#conv2d_1075/StatefulPartitionedCallStatefulPartitionedCall+max_pooling2d_1074/PartitionedCall:output:0conv2d_1075_2292609conv2d_1075_2292611*
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
GPU 2J 8? *Q
fLRJ
H__inference_conv2d_1075_layer_call_and_return_conditional_losses_22926082%
#conv2d_1075/StatefulPartitionedCall?
"max_pooling2d_1075/PartitionedCallPartitionedCall,conv2d_1075/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *X
fSRQ
O__inference_max_pooling2d_1075_layer_call_and_return_conditional_losses_22926182$
"max_pooling2d_1075/PartitionedCall?
#conv2d_1076/StatefulPartitionedCallStatefulPartitionedCall+max_pooling2d_1075/PartitionedCall:output:0conv2d_1076_2292632conv2d_1076_2292634*
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
GPU 2J 8? *Q
fLRJ
H__inference_conv2d_1076_layer_call_and_return_conditional_losses_22926312%
#conv2d_1076/StatefulPartitionedCall?
"max_pooling2d_1076/PartitionedCallPartitionedCall,conv2d_1076/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *X
fSRQ
O__inference_max_pooling2d_1076_layer_call_and_return_conditional_losses_22926412$
"max_pooling2d_1076/PartitionedCall?
flatten_358/PartitionedCallPartitionedCall+max_pooling2d_1076/PartitionedCall:output:0*
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
H__inference_flatten_358_layer_call_and_return_conditional_losses_22926492
flatten_358/PartitionedCall?
"dense_1074/StatefulPartitionedCallStatefulPartitionedCall$flatten_358/PartitionedCall:output:0dense_1074_2292663dense_1074_2292665*
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
GPU 2J 8? *P
fKRI
G__inference_dense_1074_layer_call_and_return_conditional_losses_22926622$
"dense_1074/StatefulPartitionedCall?
dropout_358/PartitionedCallPartitionedCall+dense_1074/StatefulPartitionedCall:output:0*
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
H__inference_dropout_358_layer_call_and_return_conditional_losses_22926732
dropout_358/PartitionedCall?
"dense_1075/StatefulPartitionedCallStatefulPartitionedCall$dropout_358/PartitionedCall:output:0dense_1075_2292687dense_1075_2292689*
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
GPU 2J 8? *P
fKRI
G__inference_dense_1075_layer_call_and_return_conditional_losses_22926862$
"dense_1075/StatefulPartitionedCall?
"dense_1076/StatefulPartitionedCallStatefulPartitionedCall+dense_1075/StatefulPartitionedCall:output:0dense_1076_2292704dense_1076_2292706*
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
GPU 2J 8? *P
fKRI
G__inference_dense_1076_layer_call_and_return_conditional_losses_22927032$
"dense_1076/StatefulPartitionedCall?
IdentityIdentity+dense_1076/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp$^conv2d_1074/StatefulPartitionedCall$^conv2d_1075/StatefulPartitionedCall$^conv2d_1076/StatefulPartitionedCall#^dense_1074/StatefulPartitionedCall#^dense_1075/StatefulPartitionedCall#^dense_1076/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:???????????: : : : : : : : : : : : 2J
#conv2d_1074/StatefulPartitionedCall#conv2d_1074/StatefulPartitionedCall2J
#conv2d_1075/StatefulPartitionedCall#conv2d_1075/StatefulPartitionedCall2J
#conv2d_1076/StatefulPartitionedCall#conv2d_1076/StatefulPartitionedCall2H
"dense_1074/StatefulPartitionedCall"dense_1074/StatefulPartitionedCall2H
"dense_1075/StatefulPartitionedCall"dense_1075/StatefulPartitionedCall2H
"dense_1076/StatefulPartitionedCall"dense_1076/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
G__inference_dense_1074_layer_call_and_return_conditional_losses_2292662

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
,__inference_dense_1076_layer_call_fn_2293469

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
GPU 2J 8? *P
fKRI
G__inference_dense_1076_layer_call_and_return_conditional_losses_22927032
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
H__inference_dropout_358_layer_call_and_return_conditional_losses_2292777

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
H__inference_dropout_358_layer_call_and_return_conditional_losses_2293419

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
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
Y
conv2d_1074_inputD
#serving_default_conv2d_1074_input:0???????????>

dense_10760
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
,:* 2conv2d_1074/kernel
: 2conv2d_1074/bias
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
,:* @2conv2d_1075/kernel
:@2conv2d_1075/bias
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
-:+@?2conv2d_1076/kernel
:?2conv2d_1076/bias
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
$:"	?@2dense_1074/kernel
:@2dense_1074/bias
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
#:!@2dense_1075/kernel
:2dense_1075/bias
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
#:!2dense_1076/kernel
:2dense_1076/bias
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
1:/ 2Adam/conv2d_1074/kernel/m
#:! 2Adam/conv2d_1074/bias/m
1:/ @2Adam/conv2d_1075/kernel/m
#:!@2Adam/conv2d_1075/bias/m
2:0@?2Adam/conv2d_1076/kernel/m
$:"?2Adam/conv2d_1076/bias/m
):'	?@2Adam/dense_1074/kernel/m
": @2Adam/dense_1074/bias/m
(:&@2Adam/dense_1075/kernel/m
": 2Adam/dense_1075/bias/m
(:&2Adam/dense_1076/kernel/m
": 2Adam/dense_1076/bias/m
1:/ 2Adam/conv2d_1074/kernel/v
#:! 2Adam/conv2d_1074/bias/v
1:/ @2Adam/conv2d_1075/kernel/v
#:!@2Adam/conv2d_1075/bias/v
2:0@?2Adam/conv2d_1076/kernel/v
$:"?2Adam/conv2d_1076/bias/v
):'	?@2Adam/dense_1074/kernel/v
": @2Adam/dense_1074/bias/v
(:&@2Adam/dense_1075/kernel/v
": 2Adam/dense_1075/bias/v
(:&2Adam/dense_1076/kernel/v
": 2Adam/dense_1076/bias/v
?2?
K__inference_sequential_358_layer_call_and_return_conditional_losses_2293134
K__inference_sequential_358_layer_call_and_return_conditional_losses_2293193
K__inference_sequential_358_layer_call_and_return_conditional_losses_2293006
K__inference_sequential_358_layer_call_and_return_conditional_losses_2293045?
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
"__inference__wrapped_model_2292501conv2d_1074_input"?
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
0__inference_sequential_358_layer_call_fn_2292737
0__inference_sequential_358_layer_call_fn_2293222
0__inference_sequential_358_layer_call_fn_2293251
0__inference_sequential_358_layer_call_fn_2292967?
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
H__inference_conv2d_1074_layer_call_and_return_conditional_losses_2293262?
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
-__inference_conv2d_1074_layer_call_fn_2293271?
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
O__inference_max_pooling2d_1074_layer_call_and_return_conditional_losses_2293276
O__inference_max_pooling2d_1074_layer_call_and_return_conditional_losses_2293281?
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
4__inference_max_pooling2d_1074_layer_call_fn_2293286
4__inference_max_pooling2d_1074_layer_call_fn_2293291?
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
H__inference_conv2d_1075_layer_call_and_return_conditional_losses_2293302?
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
-__inference_conv2d_1075_layer_call_fn_2293311?
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
O__inference_max_pooling2d_1075_layer_call_and_return_conditional_losses_2293316
O__inference_max_pooling2d_1075_layer_call_and_return_conditional_losses_2293321?
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
4__inference_max_pooling2d_1075_layer_call_fn_2293326
4__inference_max_pooling2d_1075_layer_call_fn_2293331?
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
H__inference_conv2d_1076_layer_call_and_return_conditional_losses_2293342?
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
-__inference_conv2d_1076_layer_call_fn_2293351?
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
O__inference_max_pooling2d_1076_layer_call_and_return_conditional_losses_2293356
O__inference_max_pooling2d_1076_layer_call_and_return_conditional_losses_2293361?
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
4__inference_max_pooling2d_1076_layer_call_fn_2293366
4__inference_max_pooling2d_1076_layer_call_fn_2293371?
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
H__inference_flatten_358_layer_call_and_return_conditional_losses_2293377?
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
-__inference_flatten_358_layer_call_fn_2293382?
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
G__inference_dense_1074_layer_call_and_return_conditional_losses_2293393?
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
,__inference_dense_1074_layer_call_fn_2293402?
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
H__inference_dropout_358_layer_call_and_return_conditional_losses_2293407
H__inference_dropout_358_layer_call_and_return_conditional_losses_2293419?
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
-__inference_dropout_358_layer_call_fn_2293424
-__inference_dropout_358_layer_call_fn_2293429?
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
G__inference_dense_1075_layer_call_and_return_conditional_losses_2293440?
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
,__inference_dense_1075_layer_call_fn_2293449?
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
G__inference_dense_1076_layer_call_and_return_conditional_losses_2293460?
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
,__inference_dense_1076_layer_call_fn_2293469?
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
%__inference_signature_wrapper_2293082conv2d_1074_input"?
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
"__inference__wrapped_model_2292501?&'45>?DED?A
:?7
5?2
conv2d_1074_input???????????
? "7?4
2

dense_1076$?!

dense_1076??????????
H__inference_conv2d_1074_layer_call_and_return_conditional_losses_2293262n9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????Z] 
? ?
-__inference_conv2d_1074_layer_call_fn_2293271a9?6
/?,
*?'
inputs???????????
? " ??????????Z] ?
H__inference_conv2d_1075_layer_call_and_return_conditional_losses_2293302l7?4
-?*
(?%
inputs?????????-. 
? "-?*
#? 
0?????????@
? ?
-__inference_conv2d_1075_layer_call_fn_2293311_7?4
-?*
(?%
inputs?????????-. 
? " ??????????@?
H__inference_conv2d_1076_layer_call_and_return_conditional_losses_2293342m&'7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
-__inference_conv2d_1076_layer_call_fn_2293351`&'7?4
-?*
(?%
inputs?????????@
? "!????????????
G__inference_dense_1074_layer_call_and_return_conditional_losses_2293393]450?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? ?
,__inference_dense_1074_layer_call_fn_2293402P450?-
&?#
!?
inputs??????????
? "??????????@?
G__inference_dense_1075_layer_call_and_return_conditional_losses_2293440\>?/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? 
,__inference_dense_1075_layer_call_fn_2293449O>?/?,
%?"
 ?
inputs?????????@
? "???????????
G__inference_dense_1076_layer_call_and_return_conditional_losses_2293460\DE/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? 
,__inference_dense_1076_layer_call_fn_2293469ODE/?,
%?"
 ?
inputs?????????
? "???????????
H__inference_dropout_358_layer_call_and_return_conditional_losses_2293407\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
H__inference_dropout_358_layer_call_and_return_conditional_losses_2293419\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
-__inference_dropout_358_layer_call_fn_2293424O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
-__inference_dropout_358_layer_call_fn_2293429O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
H__inference_flatten_358_layer_call_and_return_conditional_losses_2293377b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????
? ?
-__inference_flatten_358_layer_call_fn_2293382U8?5
.?+
)?&
inputs??????????
? "????????????
O__inference_max_pooling2d_1074_layer_call_and_return_conditional_losses_2293276?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
O__inference_max_pooling2d_1074_layer_call_and_return_conditional_losses_2293281h7?4
-?*
(?%
inputs?????????Z] 
? "-?*
#? 
0?????????-. 
? ?
4__inference_max_pooling2d_1074_layer_call_fn_2293286?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
4__inference_max_pooling2d_1074_layer_call_fn_2293291[7?4
-?*
(?%
inputs?????????Z] 
? " ??????????-. ?
O__inference_max_pooling2d_1075_layer_call_and_return_conditional_losses_2293316?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
O__inference_max_pooling2d_1075_layer_call_and_return_conditional_losses_2293321h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
4__inference_max_pooling2d_1075_layer_call_fn_2293326?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
4__inference_max_pooling2d_1075_layer_call_fn_2293331[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
O__inference_max_pooling2d_1076_layer_call_and_return_conditional_losses_2293356?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
O__inference_max_pooling2d_1076_layer_call_and_return_conditional_losses_2293361j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
4__inference_max_pooling2d_1076_layer_call_fn_2293366?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
4__inference_max_pooling2d_1076_layer_call_fn_2293371]8?5
.?+
)?&
inputs??????????
? "!????????????
K__inference_sequential_358_layer_call_and_return_conditional_losses_2293006?&'45>?DEL?I
B??
5?2
conv2d_1074_input???????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_358_layer_call_and_return_conditional_losses_2293045?&'45>?DEL?I
B??
5?2
conv2d_1074_input???????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_358_layer_call_and_return_conditional_losses_2293134x&'45>?DEA?>
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
K__inference_sequential_358_layer_call_and_return_conditional_losses_2293193x&'45>?DEA?>
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
0__inference_sequential_358_layer_call_fn_2292737v&'45>?DEL?I
B??
5?2
conv2d_1074_input???????????
p 

 
? "???????????
0__inference_sequential_358_layer_call_fn_2292967v&'45>?DEL?I
B??
5?2
conv2d_1074_input???????????
p

 
? "???????????
0__inference_sequential_358_layer_call_fn_2293222k&'45>?DEA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
0__inference_sequential_358_layer_call_fn_2293251k&'45>?DEA?>
7?4
*?'
inputs???????????
p

 
? "???????????
%__inference_signature_wrapper_2293082?&'45>?DEY?V
? 
O?L
J
conv2d_1074_input5?2
conv2d_1074_input???????????"7?4
2

dense_1076$?!

dense_1076?????????