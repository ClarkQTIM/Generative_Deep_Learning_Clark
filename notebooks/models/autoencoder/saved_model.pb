Ћы
∞А
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
Ы
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
ј
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
Ѕ
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
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ч
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8ƒ£
М
Adam/decoder_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/decoder_output/bias/v
Е
.Adam/decoder_output/bias/v/Read/ReadVariableOpReadVariableOpAdam/decoder_output/bias/v*
_output_shapes
:*
dtype0
Ь
Adam/decoder_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/decoder_output/kernel/v
Х
0Adam/decoder_output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/decoder_output/kernel/v*&
_output_shapes
: *
dtype0
Ф
Adam/conv2d_transpose_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv2d_transpose_2/bias/v
Н
2Adam/conv2d_transpose_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_2/bias/v*
_output_shapes
: *
dtype0
§
 Adam/conv2d_transpose_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*1
shared_name" Adam/conv2d_transpose_2/kernel/v
Э
4Adam/conv2d_transpose_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_2/kernel/v*&
_output_shapes
: @*
dtype0
Ф
Adam/conv2d_transpose_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv2d_transpose_1/bias/v
Н
2Adam/conv2d_transpose_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_1/bias/v*
_output_shapes
:@*
dtype0
•
 Adam/conv2d_transpose_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*1
shared_name" Adam/conv2d_transpose_1/kernel/v
Ю
4Adam/conv2d_transpose_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_1/kernel/v*'
_output_shapes
:@А*
dtype0
С
Adam/conv2d_transpose/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_nameAdam/conv2d_transpose/bias/v
К
0Adam/conv2d_transpose/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/bias/v*
_output_shapes	
:А*
dtype0
Ґ
Adam/conv2d_transpose/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*/
shared_name Adam/conv2d_transpose/kernel/v
Ы
2Adam/conv2d_transpose/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/kernel/v*(
_output_shapes
:АА*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:А*
dtype0
Г
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	А*
dtype0
М
Adam/encoder_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/encoder_output/bias/v
Е
.Adam/encoder_output/bias/v/Read/ReadVariableOpReadVariableOpAdam/encoder_output/bias/v*
_output_shapes
:*
dtype0
Х
Adam/encoder_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*-
shared_nameAdam/encoder_output/kernel/v
О
0Adam/encoder_output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/encoder_output/kernel/v*
_output_shapes
:	А*
dtype0
Б
Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/conv2d_2/bias/v
z
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes	
:А*
dtype0
С
Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*'
shared_nameAdam/conv2d_2/kernel/v
К
*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*'
_output_shapes
:@А*
dtype0
А
Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_1/bias/v
y
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes
:@*
dtype0
Р
Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_1/kernel/v
Й
*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*&
_output_shapes
: @*
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
: *
dtype0
М
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d/kernel/v
Е
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
: *
dtype0
М
Adam/decoder_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/decoder_output/bias/m
Е
.Adam/decoder_output/bias/m/Read/ReadVariableOpReadVariableOpAdam/decoder_output/bias/m*
_output_shapes
:*
dtype0
Ь
Adam/decoder_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/decoder_output/kernel/m
Х
0Adam/decoder_output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/decoder_output/kernel/m*&
_output_shapes
: *
dtype0
Ф
Adam/conv2d_transpose_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv2d_transpose_2/bias/m
Н
2Adam/conv2d_transpose_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_2/bias/m*
_output_shapes
: *
dtype0
§
 Adam/conv2d_transpose_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*1
shared_name" Adam/conv2d_transpose_2/kernel/m
Э
4Adam/conv2d_transpose_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_2/kernel/m*&
_output_shapes
: @*
dtype0
Ф
Adam/conv2d_transpose_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv2d_transpose_1/bias/m
Н
2Adam/conv2d_transpose_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_1/bias/m*
_output_shapes
:@*
dtype0
•
 Adam/conv2d_transpose_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*1
shared_name" Adam/conv2d_transpose_1/kernel/m
Ю
4Adam/conv2d_transpose_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_1/kernel/m*'
_output_shapes
:@А*
dtype0
С
Adam/conv2d_transpose/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_nameAdam/conv2d_transpose/bias/m
К
0Adam/conv2d_transpose/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/bias/m*
_output_shapes	
:А*
dtype0
Ґ
Adam/conv2d_transpose/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*/
shared_name Adam/conv2d_transpose/kernel/m
Ы
2Adam/conv2d_transpose/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/kernel/m*(
_output_shapes
:АА*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:А*
dtype0
Г
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	А*
dtype0
М
Adam/encoder_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/encoder_output/bias/m
Е
.Adam/encoder_output/bias/m/Read/ReadVariableOpReadVariableOpAdam/encoder_output/bias/m*
_output_shapes
:*
dtype0
Х
Adam/encoder_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*-
shared_nameAdam/encoder_output/kernel/m
О
0Adam/encoder_output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/encoder_output/kernel/m*
_output_shapes
:	А*
dtype0
Б
Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/conv2d_2/bias/m
z
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes	
:А*
dtype0
С
Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*'
shared_nameAdam/conv2d_2/kernel/m
К
*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*'
_output_shapes
:@А*
dtype0
А
Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_1/bias/m
y
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes
:@*
dtype0
Р
Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_1/kernel/m
Й
*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*&
_output_shapes
: @*
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
: *
dtype0
М
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d/kernel/m
Е
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
: *
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
~
decoder_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namedecoder_output/bias
w
'decoder_output/bias/Read/ReadVariableOpReadVariableOpdecoder_output/bias*
_output_shapes
:*
dtype0
О
decoder_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_namedecoder_output/kernel
З
)decoder_output/kernel/Read/ReadVariableOpReadVariableOpdecoder_output/kernel*&
_output_shapes
: *
dtype0
Ж
conv2d_transpose_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameconv2d_transpose_2/bias

+conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/bias*
_output_shapes
: *
dtype0
Ц
conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @**
shared_nameconv2d_transpose_2/kernel
П
-conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/kernel*&
_output_shapes
: @*
dtype0
Ж
conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameconv2d_transpose_1/bias

+conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/bias*
_output_shapes
:@*
dtype0
Ч
conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А**
shared_nameconv2d_transpose_1/kernel
Р
-conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/kernel*'
_output_shapes
:@А*
dtype0
Г
conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameconv2d_transpose/bias
|
)conv2d_transpose/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose/bias*
_output_shapes	
:А*
dtype0
Ф
conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameconv2d_transpose/kernel
Н
+conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose/kernel*(
_output_shapes
:АА*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:А*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	А*
dtype0
~
encoder_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameencoder_output/bias
w
'encoder_output/bias/Read/ReadVariableOpReadVariableOpencoder_output/bias*
_output_shapes
:*
dtype0
З
encoder_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameencoder_output/kernel
А
)encoder_output/kernel/Read/ReadVariableOpReadVariableOpencoder_output/kernel*
_output_shapes
:	А*
dtype0
s
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_2/bias
l
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes	
:А*
dtype0
Г
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А* 
shared_nameconv2d_2/kernel
|
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*'
_output_shapes
:@А*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:@*
dtype0
В
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: @*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
: *
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: *
dtype0
Р
serving_default_encoder_inputPlaceholder*/
_output_shapes
:€€€€€€€€€  *
dtype0*$
shape:€€€€€€€€€  
…
StatefulPartitionedCallStatefulPartitionedCallserving_default_encoder_inputconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasencoder_output/kernelencoder_output/biasdense/kernel
dense/biasconv2d_transpose/kernelconv2d_transpose/biasconv2d_transpose_1/kernelconv2d_transpose_1/biasconv2d_transpose_2/kernelconv2d_transpose_2/biasdecoder_output/kerneldecoder_output/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_16761

NoOpNoOp
Ћ}
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ж}
valueь|Bщ| Bт|
©
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

 kernel
!bias
 "_jit_compiled_convolution_op*
»
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

)kernel
*bias
 +_jit_compiled_convolution_op*
О
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses* 
¶
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias*
н
:layer-0
;layer_with_weights-0
;layer-1
<layer-2
=layer_with_weights-1
=layer-3
>layer_with_weights-2
>layer-4
?layer_with_weights-3
?layer-5
@layer_with_weights-4
@layer-6
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses*
К
0
1
 2
!3
)4
*5
86
97
G8
H9
I10
J11
K12
L13
M14
N15
O16
P17*
К
0
1
 2
!3
)4
*5
86
97
G8
H9
I10
J11
K12
L13
M14
N15
O16
P17*
* 
∞
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_3* 
6
Ztrace_0
[trace_1
\trace_2
]trace_3* 
* 
ђ
^iter

_beta_1

`beta_2
	adecay
blearning_ratemлmм mн!mо)mп*mр8mс9mтGmуHmфImхJmцKmчLmшMmщNmъOmыPmьvэvю v€!vА)vБ*vВ8vГ9vДGvЕHvЖIvЗJvИKvЙLvКMvЛNvМOvНPvО*

cserving_default* 

0
1*

0
1*
* 
У
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

itrace_0* 

jtrace_0* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

 0
!1*

 0
!1*
* 
У
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ptrace_0* 

qtrace_0* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

)0
*1*

)0
*1*
* 
У
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*

wtrace_0* 

xtrace_0* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
С
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses* 

~trace_0* 

trace_0* 

80
91*

80
91*
* 
Ш
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

Еtrace_0* 

Жtrace_0* 
e_
VARIABLE_VALUEencoder_output/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEencoder_output/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
ђ
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses

Gkernel
Hbias*
Ф
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses* 
ѕ
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses

Ikernel
Jbias
!Щ_jit_compiled_convolution_op*
ѕ
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses

Kkernel
Lbias
!†_jit_compiled_convolution_op*
ѕ
°	variables
Ґtrainable_variables
£regularization_losses
§	keras_api
•__call__
+¶&call_and_return_all_conditional_losses

Mkernel
Nbias
!І_jit_compiled_convolution_op*
ѕ
®	variables
©trainable_variables
™regularization_losses
Ђ	keras_api
ђ__call__
+≠&call_and_return_all_conditional_losses

Okernel
Pbias
!Ѓ_jit_compiled_convolution_op*
J
G0
H1
I2
J3
K4
L5
M6
N7
O8
P9*
J
G0
H1
I2
J3
K4
L5
M6
N7
O8
P9*
* 
Ш
ѓnon_trainable_variables
∞layers
±metrics
 ≤layer_regularization_losses
≥layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*
:
іtrace_0
µtrace_1
ґtrace_2
Јtrace_3* 
:
Єtrace_0
єtrace_1
Їtrace_2
їtrace_3* 
LF
VARIABLE_VALUEdense/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
dense/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEconv2d_transpose/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv2d_transpose_1/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose_1/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv2d_transpose_2/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose_2/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEdecoder_output/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEdecoder_output/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
* 
5
0
1
2
3
4
5
6*

Љ0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

G0
H1*

G0
H1*
* 
Ю
љnon_trainable_variables
Њlayers
њmetrics
 јlayer_regularization_losses
Ѕlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses*

¬trace_0* 

√trace_0* 
* 
* 
* 
Ь
ƒnon_trainable_variables
≈layers
∆metrics
 «layer_regularization_losses
»layer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses* 

…trace_0* 

 trace_0* 

I0
J1*

I0
J1*
* 
Ю
Ћnon_trainable_variables
ћlayers
Ќmetrics
 ќlayer_regularization_losses
ѕlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses*

–trace_0* 

—trace_0* 
* 

K0
L1*

K0
L1*
* 
Ю
“non_trainable_variables
”layers
‘metrics
 ’layer_regularization_losses
÷layer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses*

„trace_0* 

Ўtrace_0* 
* 

M0
N1*

M0
N1*
* 
Ю
ўnon_trainable_variables
Џlayers
џmetrics
 №layer_regularization_losses
Ёlayer_metrics
°	variables
Ґtrainable_variables
£regularization_losses
•__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses*

ёtrace_0* 

яtrace_0* 
* 

O0
P1*

O0
P1*
* 
Ю
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
®	variables
©trainable_variables
™regularization_losses
ђ__call__
+≠&call_and_return_all_conditional_losses
'≠"call_and_return_conditional_losses*

еtrace_0* 

жtrace_0* 
* 
* 
5
:0
;1
<2
=3
>4
?5
@6*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
з	variables
и	keras_api

йtotal

кcount*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

й0
к1*

з	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2d/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/conv2d_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/conv2d_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЙВ
VARIABLE_VALUEAdam/encoder_output/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/encoder_output/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEAdam/dense/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/conv2d_transpose/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_1/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_1/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_2/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_2/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/decoder_output/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/decoder_output/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2d/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/conv2d_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/conv2d_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЙВ
VARIABLE_VALUEAdam/encoder_output/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/encoder_output/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEAdam/dense/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/conv2d_transpose/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_1/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_1/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_2/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_2/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/decoder_output/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/decoder_output/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ь
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp)encoder_output/kernel/Read/ReadVariableOp'encoder_output/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp+conv2d_transpose/kernel/Read/ReadVariableOp)conv2d_transpose/bias/Read/ReadVariableOp-conv2d_transpose_1/kernel/Read/ReadVariableOp+conv2d_transpose_1/bias/Read/ReadVariableOp-conv2d_transpose_2/kernel/Read/ReadVariableOp+conv2d_transpose_2/bias/Read/ReadVariableOp)decoder_output/kernel/Read/ReadVariableOp'decoder_output/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp*Adam/conv2d_2/kernel/m/Read/ReadVariableOp(Adam/conv2d_2/bias/m/Read/ReadVariableOp0Adam/encoder_output/kernel/m/Read/ReadVariableOp.Adam/encoder_output/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp2Adam/conv2d_transpose/kernel/m/Read/ReadVariableOp0Adam/conv2d_transpose/bias/m/Read/ReadVariableOp4Adam/conv2d_transpose_1/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_1/bias/m/Read/ReadVariableOp4Adam/conv2d_transpose_2/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_2/bias/m/Read/ReadVariableOp0Adam/decoder_output/kernel/m/Read/ReadVariableOp.Adam/decoder_output/bias/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp*Adam/conv2d_2/kernel/v/Read/ReadVariableOp(Adam/conv2d_2/bias/v/Read/ReadVariableOp0Adam/encoder_output/kernel/v/Read/ReadVariableOp.Adam/encoder_output/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp2Adam/conv2d_transpose/kernel/v/Read/ReadVariableOp0Adam/conv2d_transpose/bias/v/Read/ReadVariableOp4Adam/conv2d_transpose_1/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_1/bias/v/Read/ReadVariableOp4Adam/conv2d_transpose_2/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_2/bias/v/Read/ReadVariableOp0Adam/decoder_output/kernel/v/Read/ReadVariableOp.Adam/decoder_output/bias/v/Read/ReadVariableOpConst*J
TinC
A2?	*
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
GPU 2J 8В *'
f"R 
__inference__traced_save_17782
”
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasencoder_output/kernelencoder_output/biasdense/kernel
dense/biasconv2d_transpose/kernelconv2d_transpose/biasconv2d_transpose_1/kernelconv2d_transpose_1/biasconv2d_transpose_2/kernelconv2d_transpose_2/biasdecoder_output/kerneldecoder_output/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/conv2d_2/kernel/mAdam/conv2d_2/bias/mAdam/encoder_output/kernel/mAdam/encoder_output/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/conv2d_transpose/kernel/mAdam/conv2d_transpose/bias/m Adam/conv2d_transpose_1/kernel/mAdam/conv2d_transpose_1/bias/m Adam/conv2d_transpose_2/kernel/mAdam/conv2d_transpose_2/bias/mAdam/decoder_output/kernel/mAdam/decoder_output/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/vAdam/encoder_output/kernel/vAdam/encoder_output/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/conv2d_transpose/kernel/vAdam/conv2d_transpose/bias/v Adam/conv2d_transpose_1/kernel/vAdam/conv2d_transpose_1/bias/v Adam/conv2d_transpose_2/kernel/vAdam/conv2d_transpose_2/bias/vAdam/decoder_output/kernel/vAdam/decoder_output/bias/v*I
TinB
@2>*
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
GPU 2J 8В **
f%R#
!__inference__traced_restore_17975фщ
»
®
0__inference_conv2d_transpose_layer_call_fn_17436

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_15879К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
А
ъ
A__inference_conv2d_layer_call_and_return_conditional_losses_17095

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
»
®
2__inference_conv2d_transpose_1_layer_call_fn_17479

inputs"
unknown:@А
	unknown_0:@
identityИҐStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_15924Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
м
Я
(__inference_conv2d_2_layer_call_fn_17124

inputs"
unknown:@А
	unknown_0:	А
identityИҐStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16314x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ћ!
Џ
B__inference_model_1_layer_call_and_return_conditional_losses_16232
decoder_input
dense_16205:	А
dense_16207:	А2
conv2d_transpose_16211:АА%
conv2d_transpose_16213:	А3
conv2d_transpose_1_16216:@А&
conv2d_transpose_1_16218:@2
conv2d_transpose_2_16221: @&
conv2d_transpose_2_16223: .
decoder_output_16226: "
decoder_output_16228:
identityИҐ(conv2d_transpose/StatefulPartitionedCallҐ*conv2d_transpose_1/StatefulPartitionedCallҐ*conv2d_transpose_2/StatefulPartitionedCallҐ&decoder_output/StatefulPartitionedCallҐdense/StatefulPartitionedCallй
dense/StatefulPartitionedCallStatefulPartitionedCalldecoder_inputdense_16205dense_16207*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_15993ё
reshape/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_16013∞
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_16211conv2d_transpose_16213*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_15879»
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_1_16216conv2d_transpose_1_16218*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_15924 
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_2_16221conv2d_transpose_2_16223*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_15969Ї
&decoder_output/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0decoder_output_16226decoder_output_16228*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_decoder_output_layer_call_and_return_conditional_losses_16041Ж
IdentityIdentity/decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  Ф
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall'^decoder_output/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€: : : : : : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2P
&decoder_output/StatefulPartitionedCall&decoder_output/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:V R
'
_output_shapes
:€€€€€€€€€
'
_user_specified_namedecoder_input
 	
у
@__inference_dense_layer_call_and_return_conditional_losses_15993

inputs1
matmul_readvariableop_resource:	А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
в
У
'__inference_model_2_layer_call_fn_16405
encoder_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А
	unknown_5:	А
	unknown_6:
	unknown_7:	А
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А%

unknown_11:@А

unknown_12:@$

unknown_13: @

unknown_14: $

unknown_15: 

unknown_16:
identityИҐStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallencoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_16366w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
/
_output_shapes
:€€€€€€€€€  
'
_user_specified_nameencoder_input
д
Ы
&__inference_conv2d_layer_call_fn_17084

inputs!
unknown: 
	unknown_0: 
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_16280w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
В
ь
C__inference_conv2d_1_layer_call_and_return_conditional_losses_17115

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
≥"
Т
B__inference_model_2_layer_call_and_return_conditional_losses_16540

inputs&
conv2d_16497: 
conv2d_16499: (
conv2d_1_16502: @
conv2d_1_16504:@)
conv2d_2_16507:@А
conv2d_2_16509:	А'
encoder_output_16513:	А"
encoder_output_16515: 
model_1_16518:	А
model_1_16520:	А)
model_1_16522:АА
model_1_16524:	А(
model_1_16526:@А
model_1_16528:@'
model_1_16530: @
model_1_16532: '
model_1_16534: 
model_1_16536:
identityИҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐ&encoder_output/StatefulPartitionedCallҐmodel_1/StatefulPartitionedCallн
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_16497conv2d_16499*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_16280Ц
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_16502conv2d_1_16504*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_16297Щ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_16507conv2d_2_16509*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16314ў
flatten/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_16326Я
&encoder_output/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0encoder_output_16513encoder_output_16515*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_encoder_output_layer_call_and_return_conditional_losses_16338Ґ
model_1/StatefulPartitionedCallStatefulPartitionedCall/encoder_output/StatefulPartitionedCall:output:0model_1_16518model_1_16520model_1_16522model_1_16524model_1_16526model_1_16528model_1_16530model_1_16532model_1_16534model_1_16536*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_16154
IdentityIdentity(model_1/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  ш
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall'^encoder_output/StatefulPartitionedCall ^model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2P
&encoder_output/StatefulPartitionedCall&encoder_output/StatefulPartitionedCall2B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
ќ
^
B__inference_reshape_layer_call_and_return_conditional_losses_17427

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аa
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ќ!
Ы
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_17470

inputsD
(conv2d_transpose_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аy
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskТ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ё
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ъ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€Аk
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А|
IdentityIdentityRelu:activations:0^NoOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€АБ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
В
ь
C__inference_conv2d_1_layer_call_and_return_conditional_losses_16297

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
§†
р
B__inference_model_2_layer_call_and_return_conditional_losses_17075

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource: @6
(conv2d_1_biasadd_readvariableop_resource:@B
'conv2d_2_conv2d_readvariableop_resource:@А7
(conv2d_2_biasadd_readvariableop_resource:	А@
-encoder_output_matmul_readvariableop_resource:	А<
.encoder_output_biasadd_readvariableop_resource:?
,model_1_dense_matmul_readvariableop_resource:	А<
-model_1_dense_biasadd_readvariableop_resource:	А]
Amodel_1_conv2d_transpose_conv2d_transpose_readvariableop_resource:ААG
8model_1_conv2d_transpose_biasadd_readvariableop_resource:	А^
Cmodel_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:@АH
:model_1_conv2d_transpose_1_biasadd_readvariableop_resource:@]
Cmodel_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource: @H
:model_1_conv2d_transpose_2_biasadd_readvariableop_resource: O
5model_1_decoder_output_conv2d_readvariableop_resource: D
6model_1_decoder_output_biasadd_readvariableop_resource:
identityИҐconv2d/BiasAdd/ReadVariableOpҐconv2d/Conv2D/ReadVariableOpҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOpҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOpҐ%encoder_output/BiasAdd/ReadVariableOpҐ$encoder_output/MatMul/ReadVariableOpҐ/model_1/conv2d_transpose/BiasAdd/ReadVariableOpҐ8model_1/conv2d_transpose/conv2d_transpose/ReadVariableOpҐ1model_1/conv2d_transpose_1/BiasAdd/ReadVariableOpҐ:model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpҐ1model_1/conv2d_transpose_2/BiasAdd/ReadVariableOpҐ:model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpҐ-model_1/decoder_output/BiasAdd/ReadVariableOpҐ,model_1/decoder_output/Conv2D/ReadVariableOpҐ$model_1/dense/BiasAdd/ReadVariableOpҐ#model_1/dense/MatMul/ReadVariableOpК
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0І
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
А
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Т
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ f
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ О
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Њ
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
Д
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@П
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ѕ
conv2d_2/Conv2DConv2Dconv2d_1/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
Е
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Аk
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   В
flatten/ReshapeReshapeconv2d_2/Relu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АУ
$encoder_output/MatMul/ReadVariableOpReadVariableOp-encoder_output_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Щ
encoder_output/MatMulMatMulflatten/Reshape:output:0,encoder_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Р
%encoder_output/BiasAdd/ReadVariableOpReadVariableOp.encoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0£
encoder_output/BiasAddBiasAddencoder_output/MatMul:product:0-encoder_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€С
#model_1/dense/MatMul/ReadVariableOpReadVariableOp,model_1_dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Я
model_1/dense/MatMulMatMulencoder_output/BiasAdd:output:0+model_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АП
$model_1/dense/BiasAdd/ReadVariableOpReadVariableOp-model_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0°
model_1/dense/BiasAddBiasAddmodel_1/dense/MatMul:product:0,model_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
model_1/reshape/ShapeShapemodel_1/dense/BiasAdd:output:0*
T0*
_output_shapes
:m
#model_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%model_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%model_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
model_1/reshape/strided_sliceStridedSlicemodel_1/reshape/Shape:output:0,model_1/reshape/strided_slice/stack:output:0.model_1/reshape/strided_slice/stack_1:output:0.model_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
model_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :a
model_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :b
model_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :Ащ
model_1/reshape/Reshape/shapePack&model_1/reshape/strided_slice:output:0(model_1/reshape/Reshape/shape/1:output:0(model_1/reshape/Reshape/shape/2:output:0(model_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:•
model_1/reshape/ReshapeReshapemodel_1/dense/BiasAdd:output:0&model_1/reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аn
model_1/conv2d_transpose/ShapeShape model_1/reshape/Reshape:output:0*
T0*
_output_shapes
:v
,model_1/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.model_1/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.model_1/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
&model_1/conv2d_transpose/strided_sliceStridedSlice'model_1/conv2d_transpose/Shape:output:05model_1/conv2d_transpose/strided_slice/stack:output:07model_1/conv2d_transpose/strided_slice/stack_1:output:07model_1/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 model_1/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :b
 model_1/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :c
 model_1/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :АЖ
model_1/conv2d_transpose/stackPack/model_1/conv2d_transpose/strided_slice:output:0)model_1/conv2d_transpose/stack/1:output:0)model_1/conv2d_transpose/stack/2:output:0)model_1/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:x
.model_1/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0model_1/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0model_1/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:÷
(model_1/conv2d_transpose/strided_slice_1StridedSlice'model_1/conv2d_transpose/stack:output:07model_1/conv2d_transpose/strided_slice_1/stack:output:09model_1/conv2d_transpose/strided_slice_1/stack_1:output:09model_1/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskƒ
8model_1/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpAmodel_1_conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0∞
)model_1/conv2d_transpose/conv2d_transposeConv2DBackpropInput'model_1/conv2d_transpose/stack:output:0@model_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0 model_1/reshape/Reshape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
•
/model_1/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp8model_1_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0”
 model_1/conv2d_transpose/BiasAddBiasAdd2model_1/conv2d_transpose/conv2d_transpose:output:07model_1/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АЛ
model_1/conv2d_transpose/ReluRelu)model_1/conv2d_transpose/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А{
 model_1/conv2d_transpose_1/ShapeShape+model_1/conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:x
.model_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0model_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0model_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
(model_1/conv2d_transpose_1/strided_sliceStridedSlice)model_1/conv2d_transpose_1/Shape:output:07model_1/conv2d_transpose_1/strided_slice/stack:output:09model_1/conv2d_transpose_1/strided_slice/stack_1:output:09model_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_1/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :d
"model_1/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :d
"model_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@Р
 model_1/conv2d_transpose_1/stackPack1model_1/conv2d_transpose_1/strided_slice:output:0+model_1/conv2d_transpose_1/stack/1:output:0+model_1/conv2d_transpose_1/stack/2:output:0+model_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:z
0model_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:а
*model_1/conv2d_transpose_1/strided_slice_1StridedSlice)model_1/conv2d_transpose_1/stack:output:09model_1/conv2d_transpose_1/strided_slice_1/stack:output:0;model_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0;model_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask«
:model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpCmodel_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype0ј
+model_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput)model_1/conv2d_transpose_1/stack:output:0Bmodel_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0+model_1/conv2d_transpose/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
®
1model_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp:model_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ў
"model_1/conv2d_transpose_1/BiasAddBiasAdd4model_1/conv2d_transpose_1/conv2d_transpose:output:09model_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@О
model_1/conv2d_transpose_1/ReluRelu+model_1/conv2d_transpose_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@}
 model_1/conv2d_transpose_2/ShapeShape-model_1/conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:x
.model_1/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0model_1/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0model_1/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
(model_1/conv2d_transpose_2/strided_sliceStridedSlice)model_1/conv2d_transpose_2/Shape:output:07model_1/conv2d_transpose_2/strided_slice/stack:output:09model_1/conv2d_transpose_2/strided_slice/stack_1:output:09model_1/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_1/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : d
"model_1/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : d
"model_1/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B : Р
 model_1/conv2d_transpose_2/stackPack1model_1/conv2d_transpose_2/strided_slice:output:0+model_1/conv2d_transpose_2/stack/1:output:0+model_1/conv2d_transpose_2/stack/2:output:0+model_1/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:z
0model_1/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_1/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:а
*model_1/conv2d_transpose_2/strided_slice_1StridedSlice)model_1/conv2d_transpose_2/stack:output:09model_1/conv2d_transpose_2/strided_slice_1/stack:output:0;model_1/conv2d_transpose_2/strided_slice_1/stack_1:output:0;model_1/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask∆
:model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpCmodel_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0¬
+model_1/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput)model_1/conv2d_transpose_2/stack:output:0Bmodel_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0-model_1/conv2d_transpose_1/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
®
1model_1/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp:model_1_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ў
"model_1/conv2d_transpose_2/BiasAddBiasAdd4model_1/conv2d_transpose_2/conv2d_transpose:output:09model_1/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   О
model_1/conv2d_transpose_2/ReluRelu+model_1/conv2d_transpose_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   ™
,model_1/decoder_output/Conv2D/ReadVariableOpReadVariableOp5model_1_decoder_output_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0о
model_1/decoder_output/Conv2DConv2D-model_1/conv2d_transpose_2/Relu:activations:04model_1/decoder_output/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  *
paddingSAME*
strides
†
-model_1/decoder_output/BiasAdd/ReadVariableOpReadVariableOp6model_1_decoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¬
model_1/decoder_output/BiasAddBiasAdd&model_1/decoder_output/Conv2D:output:05model_1/decoder_output/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  М
model_1/decoder_output/SigmoidSigmoid'model_1/decoder_output/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  y
IdentityIdentity"model_1/decoder_output/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  ’
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp&^encoder_output/BiasAdd/ReadVariableOp%^encoder_output/MatMul/ReadVariableOp0^model_1/conv2d_transpose/BiasAdd/ReadVariableOp9^model_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2^model_1/conv2d_transpose_1/BiasAdd/ReadVariableOp;^model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2^model_1/conv2d_transpose_2/BiasAdd/ReadVariableOp;^model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp.^model_1/decoder_output/BiasAdd/ReadVariableOp-^model_1/decoder_output/Conv2D/ReadVariableOp%^model_1/dense/BiasAdd/ReadVariableOp$^model_1/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2N
%encoder_output/BiasAdd/ReadVariableOp%encoder_output/BiasAdd/ReadVariableOp2L
$encoder_output/MatMul/ReadVariableOp$encoder_output/MatMul/ReadVariableOp2b
/model_1/conv2d_transpose/BiasAdd/ReadVariableOp/model_1/conv2d_transpose/BiasAdd/ReadVariableOp2t
8model_1/conv2d_transpose/conv2d_transpose/ReadVariableOp8model_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2f
1model_1/conv2d_transpose_1/BiasAdd/ReadVariableOp1model_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2x
:model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2f
1model_1/conv2d_transpose_2/BiasAdd/ReadVariableOp1model_1/conv2d_transpose_2/BiasAdd/ReadVariableOp2x
:model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2^
-model_1/decoder_output/BiasAdd/ReadVariableOp-model_1/decoder_output/BiasAdd/ReadVariableOp2\
,model_1/decoder_output/Conv2D/ReadVariableOp,model_1/decoder_output/Conv2D/ReadVariableOp2L
$model_1/dense/BiasAdd/ReadVariableOp$model_1/dense/BiasAdd/ReadVariableOp2J
#model_1/dense/MatMul/ReadVariableOp#model_1/dense/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
Ќ
М
'__inference_model_2_layer_call_fn_16843

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А
	unknown_5:	А
	unknown_6:
	unknown_7:	А
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А%

unknown_11:@А

unknown_12:@$

unknown_13: @

unknown_14: $

unknown_15: 

unknown_16:
identityИҐStatefulPartitionedCallґ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_16540w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
≠
C
'__inference_reshape_layer_call_fn_17413

inputs
identityґ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_16013i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
О≥
х
 __inference__wrapped_model_15841
encoder_inputG
-model_2_conv2d_conv2d_readvariableop_resource: <
.model_2_conv2d_biasadd_readvariableop_resource: I
/model_2_conv2d_1_conv2d_readvariableop_resource: @>
0model_2_conv2d_1_biasadd_readvariableop_resource:@J
/model_2_conv2d_2_conv2d_readvariableop_resource:@А?
0model_2_conv2d_2_biasadd_readvariableop_resource:	АH
5model_2_encoder_output_matmul_readvariableop_resource:	АD
6model_2_encoder_output_biasadd_readvariableop_resource:G
4model_2_model_1_dense_matmul_readvariableop_resource:	АD
5model_2_model_1_dense_biasadd_readvariableop_resource:	Аe
Imodel_2_model_1_conv2d_transpose_conv2d_transpose_readvariableop_resource:ААO
@model_2_model_1_conv2d_transpose_biasadd_readvariableop_resource:	Аf
Kmodel_2_model_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:@АP
Bmodel_2_model_1_conv2d_transpose_1_biasadd_readvariableop_resource:@e
Kmodel_2_model_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource: @P
Bmodel_2_model_1_conv2d_transpose_2_biasadd_readvariableop_resource: W
=model_2_model_1_decoder_output_conv2d_readvariableop_resource: L
>model_2_model_1_decoder_output_biasadd_readvariableop_resource:
identityИҐ%model_2/conv2d/BiasAdd/ReadVariableOpҐ$model_2/conv2d/Conv2D/ReadVariableOpҐ'model_2/conv2d_1/BiasAdd/ReadVariableOpҐ&model_2/conv2d_1/Conv2D/ReadVariableOpҐ'model_2/conv2d_2/BiasAdd/ReadVariableOpҐ&model_2/conv2d_2/Conv2D/ReadVariableOpҐ-model_2/encoder_output/BiasAdd/ReadVariableOpҐ,model_2/encoder_output/MatMul/ReadVariableOpҐ7model_2/model_1/conv2d_transpose/BiasAdd/ReadVariableOpҐ@model_2/model_1/conv2d_transpose/conv2d_transpose/ReadVariableOpҐ9model_2/model_1/conv2d_transpose_1/BiasAdd/ReadVariableOpҐBmodel_2/model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpҐ9model_2/model_1/conv2d_transpose_2/BiasAdd/ReadVariableOpҐBmodel_2/model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpҐ5model_2/model_1/decoder_output/BiasAdd/ReadVariableOpҐ4model_2/model_1/decoder_output/Conv2D/ReadVariableOpҐ,model_2/model_1/dense/BiasAdd/ReadVariableOpҐ+model_2/model_1/dense/MatMul/ReadVariableOpЪ
$model_2/conv2d/Conv2D/ReadVariableOpReadVariableOp-model_2_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Њ
model_2/conv2d/Conv2DConv2Dencoder_input,model_2/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
Р
%model_2/conv2d/BiasAdd/ReadVariableOpReadVariableOp.model_2_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0™
model_2/conv2d/BiasAddBiasAddmodel_2/conv2d/Conv2D:output:0-model_2/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ v
model_2/conv2d/ReluRelumodel_2/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ Ю
&model_2/conv2d_1/Conv2D/ReadVariableOpReadVariableOp/model_2_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0÷
model_2/conv2d_1/Conv2DConv2D!model_2/conv2d/Relu:activations:0.model_2/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
Ф
'model_2/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp0model_2_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0∞
model_2/conv2d_1/BiasAddBiasAdd model_2/conv2d_1/Conv2D:output:0/model_2/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@z
model_2/conv2d_1/ReluRelu!model_2/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Я
&model_2/conv2d_2/Conv2D/ReadVariableOpReadVariableOp/model_2_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0ў
model_2/conv2d_2/Conv2DConv2D#model_2/conv2d_1/Relu:activations:0.model_2/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
Х
'model_2/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp0model_2_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0±
model_2/conv2d_2/BiasAddBiasAdd model_2/conv2d_2/Conv2D:output:0/model_2/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А{
model_2/conv2d_2/ReluRelu!model_2/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аf
model_2/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ъ
model_2/flatten/ReshapeReshape#model_2/conv2d_2/Relu:activations:0model_2/flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А£
,model_2/encoder_output/MatMul/ReadVariableOpReadVariableOp5model_2_encoder_output_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0±
model_2/encoder_output/MatMulMatMul model_2/flatten/Reshape:output:04model_2/encoder_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
-model_2/encoder_output/BiasAdd/ReadVariableOpReadVariableOp6model_2_encoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ї
model_2/encoder_output/BiasAddBiasAdd'model_2/encoder_output/MatMul:product:05model_2/encoder_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€°
+model_2/model_1/dense/MatMul/ReadVariableOpReadVariableOp4model_2_model_1_dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Ј
model_2/model_1/dense/MatMulMatMul'model_2/encoder_output/BiasAdd:output:03model_2/model_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЯ
,model_2/model_1/dense/BiasAdd/ReadVariableOpReadVariableOp5model_2_model_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0є
model_2/model_1/dense/BiasAddBiasAdd&model_2/model_1/dense/MatMul:product:04model_2/model_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
model_2/model_1/reshape/ShapeShape&model_2/model_1/dense/BiasAdd:output:0*
T0*
_output_shapes
:u
+model_2/model_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-model_2/model_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-model_2/model_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:…
%model_2/model_1/reshape/strided_sliceStridedSlice&model_2/model_1/reshape/Shape:output:04model_2/model_1/reshape/strided_slice/stack:output:06model_2/model_1/reshape/strided_slice/stack_1:output:06model_2/model_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'model_2/model_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :i
'model_2/model_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :j
'model_2/model_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А°
%model_2/model_1/reshape/Reshape/shapePack.model_2/model_1/reshape/strided_slice:output:00model_2/model_1/reshape/Reshape/shape/1:output:00model_2/model_1/reshape/Reshape/shape/2:output:00model_2/model_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:љ
model_2/model_1/reshape/ReshapeReshape&model_2/model_1/dense/BiasAdd:output:0.model_2/model_1/reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А~
&model_2/model_1/conv2d_transpose/ShapeShape(model_2/model_1/reshape/Reshape:output:0*
T0*
_output_shapes
:~
4model_2/model_1/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: А
6model_2/model_1/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6model_2/model_1/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
.model_2/model_1/conv2d_transpose/strided_sliceStridedSlice/model_2/model_1/conv2d_transpose/Shape:output:0=model_2/model_1/conv2d_transpose/strided_slice/stack:output:0?model_2/model_1/conv2d_transpose/strided_slice/stack_1:output:0?model_2/model_1/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(model_2/model_1/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :j
(model_2/model_1/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :k
(model_2/model_1/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :АЃ
&model_2/model_1/conv2d_transpose/stackPack7model_2/model_1/conv2d_transpose/strided_slice:output:01model_2/model_1/conv2d_transpose/stack/1:output:01model_2/model_1/conv2d_transpose/stack/2:output:01model_2/model_1/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:А
6model_2/model_1/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: В
8model_2/model_1/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:В
8model_2/model_1/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ю
0model_2/model_1/conv2d_transpose/strided_slice_1StridedSlice/model_2/model_1/conv2d_transpose/stack:output:0?model_2/model_1/conv2d_transpose/strided_slice_1/stack:output:0Amodel_2/model_1/conv2d_transpose/strided_slice_1/stack_1:output:0Amodel_2/model_1/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask‘
@model_2/model_1/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpImodel_2_model_1_conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0–
1model_2/model_1/conv2d_transpose/conv2d_transposeConv2DBackpropInput/model_2/model_1/conv2d_transpose/stack:output:0Hmodel_2/model_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0(model_2/model_1/reshape/Reshape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
µ
7model_2/model_1/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp@model_2_model_1_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0л
(model_2/model_1/conv2d_transpose/BiasAddBiasAdd:model_2/model_1/conv2d_transpose/conv2d_transpose:output:0?model_2/model_1/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АЫ
%model_2/model_1/conv2d_transpose/ReluRelu1model_2/model_1/conv2d_transpose/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€АЛ
(model_2/model_1/conv2d_transpose_1/ShapeShape3model_2/model_1/conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:А
6model_2/model_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: В
8model_2/model_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:В
8model_2/model_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
0model_2/model_1/conv2d_transpose_1/strided_sliceStridedSlice1model_2/model_1/conv2d_transpose_1/Shape:output:0?model_2/model_1/conv2d_transpose_1/strided_slice/stack:output:0Amodel_2/model_1/conv2d_transpose_1/strided_slice/stack_1:output:0Amodel_2/model_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*model_2/model_1/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :l
*model_2/model_1/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :l
*model_2/model_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@Є
(model_2/model_1/conv2d_transpose_1/stackPack9model_2/model_1/conv2d_transpose_1/strided_slice:output:03model_2/model_1/conv2d_transpose_1/stack/1:output:03model_2/model_1/conv2d_transpose_1/stack/2:output:03model_2/model_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:В
8model_2/model_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Д
:model_2/model_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Д
:model_2/model_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
2model_2/model_1/conv2d_transpose_1/strided_slice_1StridedSlice1model_2/model_1/conv2d_transpose_1/stack:output:0Amodel_2/model_1/conv2d_transpose_1/strided_slice_1/stack:output:0Cmodel_2/model_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0Cmodel_2/model_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask„
Bmodel_2/model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpKmodel_2_model_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype0а
3model_2/model_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput1model_2/model_1/conv2d_transpose_1/stack:output:0Jmodel_2/model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:03model_2/model_1/conv2d_transpose/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
Є
9model_2/model_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOpBmodel_2_model_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0р
*model_2/model_1/conv2d_transpose_1/BiasAddBiasAdd<model_2/model_1/conv2d_transpose_1/conv2d_transpose:output:0Amodel_2/model_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@Ю
'model_2/model_1/conv2d_transpose_1/ReluRelu3model_2/model_1/conv2d_transpose_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Н
(model_2/model_1/conv2d_transpose_2/ShapeShape5model_2/model_1/conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:А
6model_2/model_1/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: В
8model_2/model_1/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:В
8model_2/model_1/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
0model_2/model_1/conv2d_transpose_2/strided_sliceStridedSlice1model_2/model_1/conv2d_transpose_2/Shape:output:0?model_2/model_1/conv2d_transpose_2/strided_slice/stack:output:0Amodel_2/model_1/conv2d_transpose_2/strided_slice/stack_1:output:0Amodel_2/model_1/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*model_2/model_1/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : l
*model_2/model_1/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : l
*model_2/model_1/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B : Є
(model_2/model_1/conv2d_transpose_2/stackPack9model_2/model_1/conv2d_transpose_2/strided_slice:output:03model_2/model_1/conv2d_transpose_2/stack/1:output:03model_2/model_1/conv2d_transpose_2/stack/2:output:03model_2/model_1/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:В
8model_2/model_1/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Д
:model_2/model_1/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Д
:model_2/model_1/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
2model_2/model_1/conv2d_transpose_2/strided_slice_1StridedSlice1model_2/model_1/conv2d_transpose_2/stack:output:0Amodel_2/model_1/conv2d_transpose_2/strided_slice_1/stack:output:0Cmodel_2/model_1/conv2d_transpose_2/strided_slice_1/stack_1:output:0Cmodel_2/model_1/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask÷
Bmodel_2/model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpKmodel_2_model_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0в
3model_2/model_1/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput1model_2/model_1/conv2d_transpose_2/stack:output:0Jmodel_2/model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:05model_2/model_1/conv2d_transpose_1/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
Є
9model_2/model_1/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOpBmodel_2_model_1_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0р
*model_2/model_1/conv2d_transpose_2/BiasAddBiasAdd<model_2/model_1/conv2d_transpose_2/conv2d_transpose:output:0Amodel_2/model_1/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   Ю
'model_2/model_1/conv2d_transpose_2/ReluRelu3model_2/model_1/conv2d_transpose_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   Ї
4model_2/model_1/decoder_output/Conv2D/ReadVariableOpReadVariableOp=model_2_model_1_decoder_output_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ж
%model_2/model_1/decoder_output/Conv2DConv2D5model_2/model_1/conv2d_transpose_2/Relu:activations:0<model_2/model_1/decoder_output/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  *
paddingSAME*
strides
∞
5model_2/model_1/decoder_output/BiasAdd/ReadVariableOpReadVariableOp>model_2_model_1_decoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Џ
&model_2/model_1/decoder_output/BiasAddBiasAdd.model_2/model_1/decoder_output/Conv2D:output:0=model_2/model_1/decoder_output/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  Ь
&model_2/model_1/decoder_output/SigmoidSigmoid/model_2/model_1/decoder_output/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  Б
IdentityIdentity*model_2/model_1/decoder_output/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  е
NoOpNoOp&^model_2/conv2d/BiasAdd/ReadVariableOp%^model_2/conv2d/Conv2D/ReadVariableOp(^model_2/conv2d_1/BiasAdd/ReadVariableOp'^model_2/conv2d_1/Conv2D/ReadVariableOp(^model_2/conv2d_2/BiasAdd/ReadVariableOp'^model_2/conv2d_2/Conv2D/ReadVariableOp.^model_2/encoder_output/BiasAdd/ReadVariableOp-^model_2/encoder_output/MatMul/ReadVariableOp8^model_2/model_1/conv2d_transpose/BiasAdd/ReadVariableOpA^model_2/model_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:^model_2/model_1/conv2d_transpose_1/BiasAdd/ReadVariableOpC^model_2/model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:^model_2/model_1/conv2d_transpose_2/BiasAdd/ReadVariableOpC^model_2/model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp6^model_2/model_1/decoder_output/BiasAdd/ReadVariableOp5^model_2/model_1/decoder_output/Conv2D/ReadVariableOp-^model_2/model_1/dense/BiasAdd/ReadVariableOp,^model_2/model_1/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : : : 2N
%model_2/conv2d/BiasAdd/ReadVariableOp%model_2/conv2d/BiasAdd/ReadVariableOp2L
$model_2/conv2d/Conv2D/ReadVariableOp$model_2/conv2d/Conv2D/ReadVariableOp2R
'model_2/conv2d_1/BiasAdd/ReadVariableOp'model_2/conv2d_1/BiasAdd/ReadVariableOp2P
&model_2/conv2d_1/Conv2D/ReadVariableOp&model_2/conv2d_1/Conv2D/ReadVariableOp2R
'model_2/conv2d_2/BiasAdd/ReadVariableOp'model_2/conv2d_2/BiasAdd/ReadVariableOp2P
&model_2/conv2d_2/Conv2D/ReadVariableOp&model_2/conv2d_2/Conv2D/ReadVariableOp2^
-model_2/encoder_output/BiasAdd/ReadVariableOp-model_2/encoder_output/BiasAdd/ReadVariableOp2\
,model_2/encoder_output/MatMul/ReadVariableOp,model_2/encoder_output/MatMul/ReadVariableOp2r
7model_2/model_1/conv2d_transpose/BiasAdd/ReadVariableOp7model_2/model_1/conv2d_transpose/BiasAdd/ReadVariableOp2Д
@model_2/model_1/conv2d_transpose/conv2d_transpose/ReadVariableOp@model_2/model_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2v
9model_2/model_1/conv2d_transpose_1/BiasAdd/ReadVariableOp9model_2/model_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2И
Bmodel_2/model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpBmodel_2/model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2v
9model_2/model_1/conv2d_transpose_2/BiasAdd/ReadVariableOp9model_2/model_1/conv2d_transpose_2/BiasAdd/ReadVariableOp2И
Bmodel_2/model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpBmodel_2/model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2n
5model_2/model_1/decoder_output/BiasAdd/ReadVariableOp5model_2/model_1/decoder_output/BiasAdd/ReadVariableOp2l
4model_2/model_1/decoder_output/Conv2D/ReadVariableOp4model_2/model_1/decoder_output/Conv2D/ReadVariableOp2\
,model_2/model_1/dense/BiasAdd/ReadVariableOp,model_2/model_1/dense/BiasAdd/ReadVariableOp2Z
+model_2/model_1/dense/MatMul/ReadVariableOp+model_2/model_1/dense/MatMul/ReadVariableOp:^ Z
/
_output_shapes
:€€€€€€€€€  
'
_user_specified_nameencoder_input
и
Э
(__inference_conv2d_1_layer_call_fn_17104

inputs!
unknown: @
	unknown_0:@
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_16297w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
в
У
'__inference_model_2_layer_call_fn_16620
encoder_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А
	unknown_5:	А
	unknown_6:
	unknown_7:	А
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А%

unknown_11:@А

unknown_12:@$

unknown_13: @

unknown_14: $

unknown_15: 

unknown_16:
identityИҐStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallencoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_16540w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
/
_output_shapes
:€€€€€€€€€  
'
_user_specified_nameencoder_input
«!
Ы
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_17513

inputsC
(conv2d_transpose_readvariableop_resource:@А-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskС
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype0№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
ґ!
”
B__inference_model_1_layer_call_and_return_conditional_losses_16048

inputs
dense_15994:	А
dense_15996:	А2
conv2d_transpose_16015:АА%
conv2d_transpose_16017:	А3
conv2d_transpose_1_16020:@А&
conv2d_transpose_1_16022:@2
conv2d_transpose_2_16025: @&
conv2d_transpose_2_16027: .
decoder_output_16042: "
decoder_output_16044:
identityИҐ(conv2d_transpose/StatefulPartitionedCallҐ*conv2d_transpose_1/StatefulPartitionedCallҐ*conv2d_transpose_2/StatefulPartitionedCallҐ&decoder_output/StatefulPartitionedCallҐdense/StatefulPartitionedCallв
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_15994dense_15996*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_15993ё
reshape/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_16013∞
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_16015conv2d_transpose_16017*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_15879»
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_1_16020conv2d_transpose_1_16022*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_15924 
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_2_16025conv2d_transpose_2_16027*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_15969Ї
&decoder_output/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0decoder_output_16042decoder_output_16044*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_decoder_output_layer_call_and_return_conditional_losses_16041Ж
IdentityIdentity/decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  Ф
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall'^decoder_output/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€: : : : : : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2P
&decoder_output/StatefulPartitionedCall&decoder_output/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ѕ
Ь
.__inference_encoder_output_layer_call_fn_17155

inputs
unknown:	А
	unknown_0:
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_encoder_output_layer_call_and_return_conditional_losses_16338o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
З
В
I__inference_decoder_output_layer_call_and_return_conditional_losses_16041

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  ^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
≥"
Т
B__inference_model_2_layer_call_and_return_conditional_losses_16366

inputs&
conv2d_16281: 
conv2d_16283: (
conv2d_1_16298: @
conv2d_1_16300:@)
conv2d_2_16315:@А
conv2d_2_16317:	А'
encoder_output_16339:	А"
encoder_output_16341: 
model_1_16344:	А
model_1_16346:	А)
model_1_16348:АА
model_1_16350:	А(
model_1_16352:@А
model_1_16354:@'
model_1_16356: @
model_1_16358: '
model_1_16360: 
model_1_16362:
identityИҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐ&encoder_output/StatefulPartitionedCallҐmodel_1/StatefulPartitionedCallн
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_16281conv2d_16283*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_16280Ц
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_16298conv2d_1_16300*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_16297Щ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_16315conv2d_2_16317*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16314ў
flatten/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_16326Я
&encoder_output/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0encoder_output_16339encoder_output_16341*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_encoder_output_layer_call_and_return_conditional_losses_16338Ґ
model_1/StatefulPartitionedCallStatefulPartitionedCall/encoder_output/StatefulPartitionedCall:output:0model_1_16344model_1_16346model_1_16348model_1_16350model_1_16352model_1_16354model_1_16356model_1_16358model_1_16360model_1_16362*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_16048
IdentityIdentity(model_1/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  ш
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall'^encoder_output/StatefulPartitionedCall ^model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2P
&encoder_output/StatefulPartitionedCall&encoder_output/StatefulPartitionedCall2B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
ƒ

Т
'__inference_model_1_layer_call_fn_17190

inputs
unknown:	А
	unknown_0:	А%
	unknown_1:АА
	unknown_2:	А$
	unknown_3:@А
	unknown_4:@#
	unknown_5: @
	unknown_6: #
	unknown_7: 
	unknown_8:
identityИҐStatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_16048w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
З
В
I__inference_decoder_output_layer_call_and_return_conditional_losses_17576

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  ^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
ў

Щ
'__inference_model_1_layer_call_fn_16202
decoder_input
unknown:	А
	unknown_0:	А%
	unknown_1:АА
	unknown_2:	А$
	unknown_3:@А
	unknown_4:@#
	unknown_5: @
	unknown_6: #
	unknown_7: 
	unknown_8:
identityИҐStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCalldecoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_16154w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:€€€€€€€€€
'
_user_specified_namedecoder_input
К
ю
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16314

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ќ
М
'__inference_model_2_layer_call_fn_16802

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А
	unknown_5:	А
	unknown_6:
	unknown_7:	А
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А%

unknown_11:@А

unknown_12:@$

unknown_13: @

unknown_14: $

unknown_15: 

unknown_16:
identityИҐStatefulPartitionedCallґ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_16366w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
 	
у
@__inference_dense_layer_call_and_return_conditional_losses_17408

inputs1
matmul_readvariableop_resource:	А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
∆
^
B__inference_flatten_layer_call_and_return_conditional_losses_17146

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ƒ

Т
'__inference_model_1_layer_call_fn_17215

inputs
unknown:	А
	unknown_0:	А%
	unknown_1:АА
	unknown_2:	А$
	unknown_3:@А
	unknown_4:@#
	unknown_5: @
	unknown_6: #
	unknown_7: 
	unknown_8:
identityИҐStatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_16154w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
»"
Щ
B__inference_model_2_layer_call_and_return_conditional_losses_16666
encoder_input&
conv2d_16623: 
conv2d_16625: (
conv2d_1_16628: @
conv2d_1_16630:@)
conv2d_2_16633:@А
conv2d_2_16635:	А'
encoder_output_16639:	А"
encoder_output_16641: 
model_1_16644:	А
model_1_16646:	А)
model_1_16648:АА
model_1_16650:	А(
model_1_16652:@А
model_1_16654:@'
model_1_16656: @
model_1_16658: '
model_1_16660: 
model_1_16662:
identityИҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐ&encoder_output/StatefulPartitionedCallҐmodel_1/StatefulPartitionedCallф
conv2d/StatefulPartitionedCallStatefulPartitionedCallencoder_inputconv2d_16623conv2d_16625*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_16280Ц
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_16628conv2d_1_16630*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_16297Щ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_16633conv2d_2_16635*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16314ў
flatten/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_16326Я
&encoder_output/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0encoder_output_16639encoder_output_16641*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_encoder_output_layer_call_and_return_conditional_losses_16338Ґ
model_1/StatefulPartitionedCallStatefulPartitionedCall/encoder_output/StatefulPartitionedCall:output:0model_1_16644model_1_16646model_1_16648model_1_16650model_1_16652model_1_16654model_1_16656model_1_16658model_1_16660model_1_16662*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_16048
IdentityIdentity(model_1/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  ш
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall'^encoder_output/StatefulPartitionedCall ^model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2P
&encoder_output/StatefulPartitionedCall&encoder_output/StatefulPartitionedCall2B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall:^ Z
/
_output_shapes
:€€€€€€€€€  
'
_user_specified_nameencoder_input
чу
Ь(
!__inference__traced_restore_17975
file_prefix8
assignvariableop_conv2d_kernel: ,
assignvariableop_1_conv2d_bias: <
"assignvariableop_2_conv2d_1_kernel: @.
 assignvariableop_3_conv2d_1_bias:@=
"assignvariableop_4_conv2d_2_kernel:@А/
 assignvariableop_5_conv2d_2_bias:	А;
(assignvariableop_6_encoder_output_kernel:	А4
&assignvariableop_7_encoder_output_bias:2
assignvariableop_8_dense_kernel:	А,
assignvariableop_9_dense_bias:	АG
+assignvariableop_10_conv2d_transpose_kernel:АА8
)assignvariableop_11_conv2d_transpose_bias:	АH
-assignvariableop_12_conv2d_transpose_1_kernel:@А9
+assignvariableop_13_conv2d_transpose_1_bias:@G
-assignvariableop_14_conv2d_transpose_2_kernel: @9
+assignvariableop_15_conv2d_transpose_2_bias: C
)assignvariableop_16_decoder_output_kernel: 5
'assignvariableop_17_decoder_output_bias:'
assignvariableop_18_adam_iter:	 )
assignvariableop_19_adam_beta_1: )
assignvariableop_20_adam_beta_2: (
assignvariableop_21_adam_decay: 0
&assignvariableop_22_adam_learning_rate: #
assignvariableop_23_total: #
assignvariableop_24_count: B
(assignvariableop_25_adam_conv2d_kernel_m: 4
&assignvariableop_26_adam_conv2d_bias_m: D
*assignvariableop_27_adam_conv2d_1_kernel_m: @6
(assignvariableop_28_adam_conv2d_1_bias_m:@E
*assignvariableop_29_adam_conv2d_2_kernel_m:@А7
(assignvariableop_30_adam_conv2d_2_bias_m:	АC
0assignvariableop_31_adam_encoder_output_kernel_m:	А<
.assignvariableop_32_adam_encoder_output_bias_m::
'assignvariableop_33_adam_dense_kernel_m:	А4
%assignvariableop_34_adam_dense_bias_m:	АN
2assignvariableop_35_adam_conv2d_transpose_kernel_m:АА?
0assignvariableop_36_adam_conv2d_transpose_bias_m:	АO
4assignvariableop_37_adam_conv2d_transpose_1_kernel_m:@А@
2assignvariableop_38_adam_conv2d_transpose_1_bias_m:@N
4assignvariableop_39_adam_conv2d_transpose_2_kernel_m: @@
2assignvariableop_40_adam_conv2d_transpose_2_bias_m: J
0assignvariableop_41_adam_decoder_output_kernel_m: <
.assignvariableop_42_adam_decoder_output_bias_m:B
(assignvariableop_43_adam_conv2d_kernel_v: 4
&assignvariableop_44_adam_conv2d_bias_v: D
*assignvariableop_45_adam_conv2d_1_kernel_v: @6
(assignvariableop_46_adam_conv2d_1_bias_v:@E
*assignvariableop_47_adam_conv2d_2_kernel_v:@А7
(assignvariableop_48_adam_conv2d_2_bias_v:	АC
0assignvariableop_49_adam_encoder_output_kernel_v:	А<
.assignvariableop_50_adam_encoder_output_bias_v::
'assignvariableop_51_adam_dense_kernel_v:	А4
%assignvariableop_52_adam_dense_bias_v:	АN
2assignvariableop_53_adam_conv2d_transpose_kernel_v:АА?
0assignvariableop_54_adam_conv2d_transpose_bias_v:	АO
4assignvariableop_55_adam_conv2d_transpose_1_kernel_v:@А@
2assignvariableop_56_adam_conv2d_transpose_1_bias_v:@N
4assignvariableop_57_adam_conv2d_transpose_2_kernel_v: @@
2assignvariableop_58_adam_conv2d_transpose_2_bias_v: J
0assignvariableop_59_adam_decoder_output_kernel_v: <
.assignvariableop_60_adam_decoder_output_bias_v:
identity_62ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_60ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Њ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*д
valueЏB„>B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHп
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*С
valueЗBД>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B „
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*О
_output_shapesы
ш::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*L
dtypesB
@2>	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_6AssignVariableOp(assignvariableop_6_encoder_output_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_7AssignVariableOp&assignvariableop_7_encoder_output_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_10AssignVariableOp+assignvariableop_10_conv2d_transpose_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_11AssignVariableOp)assignvariableop_11_conv2d_transpose_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_12AssignVariableOp-assignvariableop_12_conv2d_transpose_1_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_13AssignVariableOp+assignvariableop_13_conv2d_transpose_1_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_14AssignVariableOp-assignvariableop_14_conv2d_transpose_2_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_15AssignVariableOp+assignvariableop_15_conv2d_transpose_2_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_16AssignVariableOp)assignvariableop_16_decoder_output_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_17AssignVariableOp'assignvariableop_17_decoder_output_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_iterIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_beta_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_beta_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_decayIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_learning_rateIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_conv2d_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_conv2d_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_conv2d_1_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_conv2d_1_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_conv2d_2_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_conv2d_2_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_31AssignVariableOp0assignvariableop_31_adam_encoder_output_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_32AssignVariableOp.assignvariableop_32_adam_encoder_output_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_dense_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_34AssignVariableOp%assignvariableop_34_adam_dense_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_35AssignVariableOp2assignvariableop_35_adam_conv2d_transpose_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_36AssignVariableOp0assignvariableop_36_adam_conv2d_transpose_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_37AssignVariableOp4assignvariableop_37_adam_conv2d_transpose_1_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_38AssignVariableOp2assignvariableop_38_adam_conv2d_transpose_1_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_conv2d_transpose_2_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_40AssignVariableOp2assignvariableop_40_adam_conv2d_transpose_2_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_41AssignVariableOp0assignvariableop_41_adam_decoder_output_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_42AssignVariableOp.assignvariableop_42_adam_decoder_output_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_conv2d_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_44AssignVariableOp&assignvariableop_44_adam_conv2d_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_conv2d_1_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_conv2d_1_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_conv2d_2_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_conv2d_2_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_49AssignVariableOp0assignvariableop_49_adam_encoder_output_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_50AssignVariableOp.assignvariableop_50_adam_encoder_output_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_51AssignVariableOp'assignvariableop_51_adam_dense_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_52AssignVariableOp%assignvariableop_52_adam_dense_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_53AssignVariableOp2assignvariableop_53_adam_conv2d_transpose_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_54AssignVariableOp0assignvariableop_54_adam_conv2d_transpose_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_55AssignVariableOp4assignvariableop_55_adam_conv2d_transpose_1_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_56AssignVariableOp2assignvariableop_56_adam_conv2d_transpose_1_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_57AssignVariableOp4assignvariableop_57_adam_conv2d_transpose_2_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_58AssignVariableOp2assignvariableop_58_adam_conv2d_transpose_2_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_59AssignVariableOp0assignvariableop_59_adam_decoder_output_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_60AssignVariableOp.assignvariableop_60_adam_decoder_output_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Н
Identity_61Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_62IdentityIdentity_61:output:0^NoOp_1*
T0*
_output_shapes
: ъ

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_62Identity_62:output:0*П
_input_shapes~
|: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ґ!
”
B__inference_model_1_layer_call_and_return_conditional_losses_16154

inputs
dense_16127:	А
dense_16129:	А2
conv2d_transpose_16133:АА%
conv2d_transpose_16135:	А3
conv2d_transpose_1_16138:@А&
conv2d_transpose_1_16140:@2
conv2d_transpose_2_16143: @&
conv2d_transpose_2_16145: .
decoder_output_16148: "
decoder_output_16150:
identityИҐ(conv2d_transpose/StatefulPartitionedCallҐ*conv2d_transpose_1/StatefulPartitionedCallҐ*conv2d_transpose_2/StatefulPartitionedCallҐ&decoder_output/StatefulPartitionedCallҐdense/StatefulPartitionedCallв
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_16127dense_16129*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_15993ё
reshape/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_16013∞
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_16133conv2d_transpose_16135*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_15879»
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_1_16138conv2d_transpose_1_16140*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_15924 
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_2_16143conv2d_transpose_2_16145*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_15969Ї
&decoder_output/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0decoder_output_16148decoder_output_16150*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_decoder_output_layer_call_and_return_conditional_losses_16041Ж
IdentityIdentity/decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  Ф
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall'^decoder_output/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€: : : : : : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2P
&decoder_output/StatefulPartitionedCall&decoder_output/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
А
ъ
A__inference_conv2d_layer_call_and_return_conditional_losses_16280

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
Њ
Ф
%__inference_dense_layer_call_fn_17398

inputs
unknown:	А
	unknown_0:	А
identityИҐStatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_15993p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Љ
П
#__inference_signature_wrapper_16761
encoder_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А
	unknown_5:	А
	unknown_6:
	unknown_7:	А
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А%

unknown_11:@А

unknown_12:@$

unknown_13: @

unknown_14: $

unknown_15: 

unknown_16:
identityИҐStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallencoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_15841w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
/
_output_shapes
:€€€€€€€€€  
'
_user_specified_nameencoder_input
ў

Щ
'__inference_model_1_layer_call_fn_16071
decoder_input
unknown:	А
	unknown_0:	А%
	unknown_1:АА
	unknown_2:	А$
	unknown_3:@А
	unknown_4:@#
	unknown_5: @
	unknown_6: #
	unknown_7: 
	unknown_8:
identityИҐStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCalldecoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_16048w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:€€€€€€€€€
'
_user_specified_namedecoder_input
»n
Ќ	
B__inference_model_1_layer_call_and_return_conditional_losses_17389

inputs7
$dense_matmul_readvariableop_resource:	А4
%dense_biasadd_readvariableop_resource:	АU
9conv2d_transpose_conv2d_transpose_readvariableop_resource:АА?
0conv2d_transpose_biasadd_readvariableop_resource:	АV
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:@А@
2conv2d_transpose_1_biasadd_readvariableop_resource:@U
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource: @@
2conv2d_transpose_2_biasadd_readvariableop_resource: G
-decoder_output_conv2d_readvariableop_resource: <
.decoder_output_biasadd_readvariableop_resource:
identityИҐ'conv2d_transpose/BiasAdd/ReadVariableOpҐ0conv2d_transpose/conv2d_transpose/ReadVariableOpҐ)conv2d_transpose_1/BiasAdd/ReadVariableOpҐ2conv2d_transpose_1/conv2d_transpose/ReadVariableOpҐ)conv2d_transpose_2/BiasAdd/ReadVariableOpҐ2conv2d_transpose_2/conv2d_transpose/ReadVariableOpҐ%decoder_output/BiasAdd/ReadVariableOpҐ$decoder_output/Conv2D/ReadVariableOpҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpБ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0v
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АS
reshape/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Z
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А—
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Н
reshape/ReshapeReshapedense/BiasAdd:output:0reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А^
conv2d_transpose/ShapeShapereshape/Reshape:output:0*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¶
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :Z
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :[
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аё
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskі
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0Р
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0reshape/Reshape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
Х
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ї
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А{
conv2d_transpose/ReluRelu!conv2d_transpose/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аk
conv2d_transpose_1/ShapeShape#conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∞
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@и
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЈ
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype0†
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0#conv2d_transpose/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
Ш
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ј
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@~
conv2d_transpose_1/ReluRelu#conv2d_transpose_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@m
conv2d_transpose_2/ShapeShape%conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∞
 conv2d_transpose_2/strided_sliceStridedSlice!conv2d_transpose_2/Shape:output:0/conv2d_transpose_2/strided_slice/stack:output:01conv2d_transpose_2/strided_slice/stack_1:output:01conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B : и
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskґ
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0Ґ
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0%conv2d_transpose_1/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
Ш
)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ј
conv2d_transpose_2/BiasAddBiasAdd,conv2d_transpose_2/conv2d_transpose:output:01conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   ~
conv2d_transpose_2/ReluRelu#conv2d_transpose_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   Ъ
$decoder_output/Conv2D/ReadVariableOpReadVariableOp-decoder_output_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0÷
decoder_output/Conv2DConv2D%conv2d_transpose_2/Relu:activations:0,decoder_output/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  *
paddingSAME*
strides
Р
%decoder_output/BiasAdd/ReadVariableOpReadVariableOp.decoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0™
decoder_output/BiasAddBiasAdddecoder_output/Conv2D:output:0-decoder_output/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  |
decoder_output/SigmoidSigmoiddecoder_output/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  q
IdentityIdentitydecoder_output/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  с
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*^conv2d_transpose_2/BiasAdd/ReadVariableOp3^conv2d_transpose_2/conv2d_transpose/ReadVariableOp&^decoder_output/BiasAdd/ReadVariableOp%^decoder_output/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€: : : : : : : : : : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_2/BiasAdd/ReadVariableOp)conv2d_transpose_2/BiasAdd/ReadVariableOp2h
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2N
%decoder_output/BiasAdd/ReadVariableOp%decoder_output/BiasAdd/ReadVariableOp2L
$decoder_output/Conv2D/ReadVariableOp$decoder_output/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
»"
Щ
B__inference_model_2_layer_call_and_return_conditional_losses_16712
encoder_input&
conv2d_16669: 
conv2d_16671: (
conv2d_1_16674: @
conv2d_1_16676:@)
conv2d_2_16679:@А
conv2d_2_16681:	А'
encoder_output_16685:	А"
encoder_output_16687: 
model_1_16690:	А
model_1_16692:	А)
model_1_16694:АА
model_1_16696:	А(
model_1_16698:@А
model_1_16700:@'
model_1_16702: @
model_1_16704: '
model_1_16706: 
model_1_16708:
identityИҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐ&encoder_output/StatefulPartitionedCallҐmodel_1/StatefulPartitionedCallф
conv2d/StatefulPartitionedCallStatefulPartitionedCallencoder_inputconv2d_16669conv2d_16671*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_16280Ц
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_16674conv2d_1_16676*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_16297Щ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_16679conv2d_2_16681*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16314ў
flatten/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_16326Я
&encoder_output/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0encoder_output_16685encoder_output_16687*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_encoder_output_layer_call_and_return_conditional_losses_16338Ґ
model_1/StatefulPartitionedCallStatefulPartitionedCall/encoder_output/StatefulPartitionedCall:output:0model_1_16690model_1_16692model_1_16694model_1_16696model_1_16698model_1_16700model_1_16702model_1_16704model_1_16706model_1_16708*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_16154
IdentityIdentity(model_1/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  ш
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall'^encoder_output/StatefulPartitionedCall ^model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2P
&encoder_output/StatefulPartitionedCall&encoder_output/StatefulPartitionedCall2B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall:^ Z
/
_output_shapes
:€€€€€€€€€  
'
_user_specified_nameencoder_input
К
ю
C__inference_conv2d_2_layer_call_and_return_conditional_losses_17135

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ћ!
Џ
B__inference_model_1_layer_call_and_return_conditional_losses_16262
decoder_input
dense_16235:	А
dense_16237:	А2
conv2d_transpose_16241:АА%
conv2d_transpose_16243:	А3
conv2d_transpose_1_16246:@А&
conv2d_transpose_1_16248:@2
conv2d_transpose_2_16251: @&
conv2d_transpose_2_16253: .
decoder_output_16256: "
decoder_output_16258:
identityИҐ(conv2d_transpose/StatefulPartitionedCallҐ*conv2d_transpose_1/StatefulPartitionedCallҐ*conv2d_transpose_2/StatefulPartitionedCallҐ&decoder_output/StatefulPartitionedCallҐdense/StatefulPartitionedCallй
dense/StatefulPartitionedCallStatefulPartitionedCalldecoder_inputdense_16235dense_16237*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_15993ё
reshape/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_16013∞
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_16241conv2d_transpose_16243*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_15879»
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_1_16246conv2d_transpose_1_16248*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_15924 
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_2_16251conv2d_transpose_2_16253*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_15969Ї
&decoder_output/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0decoder_output_16256decoder_output_16258*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_decoder_output_layer_call_and_return_conditional_losses_16041Ж
IdentityIdentity/decoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  Ф
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall'^decoder_output/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€: : : : : : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2P
&decoder_output/StatefulPartitionedCall&decoder_output/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:V R
'
_output_shapes
:€€€€€€€€€
'
_user_specified_namedecoder_input
√!
Ъ
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_15969

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
–	
ы
I__inference_encoder_output_layer_call_and_return_conditional_losses_17165

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
∆
^
B__inference_flatten_layer_call_and_return_conditional_losses_16326

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
≈
І
2__inference_conv2d_transpose_2_layer_call_fn_17522

inputs!
unknown: @
	unknown_0: 
identityИҐStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_15969Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
«!
Ы
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_15924

inputsC
(conv2d_transpose_readvariableop_resource:@А-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskС
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype0№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
≠
C
'__inference_flatten_layer_call_fn_17140

inputs
identityЃ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_16326a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
√!
Ъ
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_17556

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
»n
Ќ	
B__inference_model_1_layer_call_and_return_conditional_losses_17302

inputs7
$dense_matmul_readvariableop_resource:	А4
%dense_biasadd_readvariableop_resource:	АU
9conv2d_transpose_conv2d_transpose_readvariableop_resource:АА?
0conv2d_transpose_biasadd_readvariableop_resource:	АV
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:@А@
2conv2d_transpose_1_biasadd_readvariableop_resource:@U
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource: @@
2conv2d_transpose_2_biasadd_readvariableop_resource: G
-decoder_output_conv2d_readvariableop_resource: <
.decoder_output_biasadd_readvariableop_resource:
identityИҐ'conv2d_transpose/BiasAdd/ReadVariableOpҐ0conv2d_transpose/conv2d_transpose/ReadVariableOpҐ)conv2d_transpose_1/BiasAdd/ReadVariableOpҐ2conv2d_transpose_1/conv2d_transpose/ReadVariableOpҐ)conv2d_transpose_2/BiasAdd/ReadVariableOpҐ2conv2d_transpose_2/conv2d_transpose/ReadVariableOpҐ%decoder_output/BiasAdd/ReadVariableOpҐ$decoder_output/Conv2D/ReadVariableOpҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpБ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0v
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АS
reshape/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Z
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А—
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Н
reshape/ReshapeReshapedense/BiasAdd:output:0reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А^
conv2d_transpose/ShapeShapereshape/Reshape:output:0*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¶
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :Z
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :[
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аё
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskі
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0Р
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0reshape/Reshape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
Х
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ї
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А{
conv2d_transpose/ReluRelu!conv2d_transpose/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аk
conv2d_transpose_1/ShapeShape#conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∞
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@и
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЈ
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype0†
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0#conv2d_transpose/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
Ш
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ј
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@~
conv2d_transpose_1/ReluRelu#conv2d_transpose_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@m
conv2d_transpose_2/ShapeShape%conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∞
 conv2d_transpose_2/strided_sliceStridedSlice!conv2d_transpose_2/Shape:output:0/conv2d_transpose_2/strided_slice/stack:output:01conv2d_transpose_2/strided_slice/stack_1:output:01conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B : и
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskґ
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0Ґ
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0%conv2d_transpose_1/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
Ш
)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ј
conv2d_transpose_2/BiasAddBiasAdd,conv2d_transpose_2/conv2d_transpose:output:01conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   ~
conv2d_transpose_2/ReluRelu#conv2d_transpose_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   Ъ
$decoder_output/Conv2D/ReadVariableOpReadVariableOp-decoder_output_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0÷
decoder_output/Conv2DConv2D%conv2d_transpose_2/Relu:activations:0,decoder_output/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  *
paddingSAME*
strides
Р
%decoder_output/BiasAdd/ReadVariableOpReadVariableOp.decoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0™
decoder_output/BiasAddBiasAdddecoder_output/Conv2D:output:0-decoder_output/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  |
decoder_output/SigmoidSigmoiddecoder_output/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  q
IdentityIdentitydecoder_output/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  с
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*^conv2d_transpose_2/BiasAdd/ReadVariableOp3^conv2d_transpose_2/conv2d_transpose/ReadVariableOp&^decoder_output/BiasAdd/ReadVariableOp%^decoder_output/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€: : : : : : : : : : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_2/BiasAdd/ReadVariableOp)conv2d_transpose_2/BiasAdd/ReadVariableOp2h
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2N
%decoder_output/BiasAdd/ReadVariableOp%decoder_output/BiasAdd/ReadVariableOp2L
$decoder_output/Conv2D/ReadVariableOp$decoder_output/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ќ!
Ы
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_15879

inputsD
(conv2d_transpose_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аy
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskТ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ё
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ъ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€Аk
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А|
IdentityIdentityRelu:activations:0^NoOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€АБ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Вz
ѕ
__inference__traced_save_17782
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop4
0savev2_encoder_output_kernel_read_readvariableop2
.savev2_encoder_output_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop6
2savev2_conv2d_transpose_kernel_read_readvariableop4
0savev2_conv2d_transpose_bias_read_readvariableop8
4savev2_conv2d_transpose_1_kernel_read_readvariableop6
2savev2_conv2d_transpose_1_bias_read_readvariableop8
4savev2_conv2d_transpose_2_kernel_read_readvariableop6
2savev2_conv2d_transpose_2_bias_read_readvariableop4
0savev2_decoder_output_kernel_read_readvariableop2
.savev2_decoder_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableop;
7savev2_adam_encoder_output_kernel_m_read_readvariableop9
5savev2_adam_encoder_output_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop=
9savev2_adam_conv2d_transpose_kernel_m_read_readvariableop;
7savev2_adam_conv2d_transpose_bias_m_read_readvariableop?
;savev2_adam_conv2d_transpose_1_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_1_bias_m_read_readvariableop?
;savev2_adam_conv2d_transpose_2_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_2_bias_m_read_readvariableop;
7savev2_adam_decoder_output_kernel_m_read_readvariableop9
5savev2_adam_decoder_output_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableop;
7savev2_adam_encoder_output_kernel_v_read_readvariableop9
5savev2_adam_encoder_output_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop=
9savev2_adam_conv2d_transpose_kernel_v_read_readvariableop;
7savev2_adam_conv2d_transpose_bias_v_read_readvariableop?
;savev2_adam_conv2d_transpose_1_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_1_bias_v_read_readvariableop?
;savev2_adam_conv2d_transpose_2_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_2_bias_v_read_readvariableop;
7savev2_adam_decoder_output_kernel_v_read_readvariableop9
5savev2_adam_decoder_output_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ї
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*д
valueЏB„>B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHм
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*С
valueЗBД>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ё
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop0savev2_encoder_output_kernel_read_readvariableop.savev2_encoder_output_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop2savev2_conv2d_transpose_kernel_read_readvariableop0savev2_conv2d_transpose_bias_read_readvariableop4savev2_conv2d_transpose_1_kernel_read_readvariableop2savev2_conv2d_transpose_1_bias_read_readvariableop4savev2_conv2d_transpose_2_kernel_read_readvariableop2savev2_conv2d_transpose_2_bias_read_readvariableop0savev2_decoder_output_kernel_read_readvariableop.savev2_decoder_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop7savev2_adam_encoder_output_kernel_m_read_readvariableop5savev2_adam_encoder_output_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop9savev2_adam_conv2d_transpose_kernel_m_read_readvariableop7savev2_adam_conv2d_transpose_bias_m_read_readvariableop;savev2_adam_conv2d_transpose_1_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_1_bias_m_read_readvariableop;savev2_adam_conv2d_transpose_2_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_2_bias_m_read_readvariableop7savev2_adam_decoder_output_kernel_m_read_readvariableop5savev2_adam_decoder_output_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop7savev2_adam_encoder_output_kernel_v_read_readvariableop5savev2_adam_encoder_output_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop9savev2_adam_conv2d_transpose_kernel_v_read_readvariableop7savev2_adam_conv2d_transpose_bias_v_read_readvariableop;savev2_adam_conv2d_transpose_1_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_1_bias_v_read_readvariableop;savev2_adam_conv2d_transpose_2_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_2_bias_v_read_readvariableop7savev2_adam_decoder_output_kernel_v_read_readvariableop5savev2_adam_decoder_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *L
dtypesB
@2>	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*Ъ
_input_shapesИ
Е: : : : @:@:@А:А:	А::	А:А:АА:А:@А:@: @: : :: : : : : : : : : : @:@:@А:А:	А::	А:А:АА:А:@А:@: @: : :: : : @:@:@А:А:	А::	А:А:АА:А:@А:@: @: : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 
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
:@А:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::%	!

_output_shapes
:	А:!


_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:-)
'
_output_shapes
:@А: 

_output_shapes
:@:,(
&
_output_shapes
: @: 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:% !

_output_shapes
:	А: !

_output_shapes
::%"!

_output_shapes
:	А:!#

_output_shapes	
:А:.$*
(
_output_shapes
:АА:!%

_output_shapes	
:А:-&)
'
_output_shapes
:@А: '

_output_shapes
:@:,((
&
_output_shapes
: @: )

_output_shapes
: :,*(
&
_output_shapes
: : +

_output_shapes
::,,(
&
_output_shapes
: : -

_output_shapes
: :,.(
&
_output_shapes
: @: /

_output_shapes
:@:-0)
'
_output_shapes
:@А:!1

_output_shapes	
:А:%2!

_output_shapes
:	А: 3

_output_shapes
::%4!

_output_shapes
:	А:!5

_output_shapes	
:А:.6*
(
_output_shapes
:АА:!7

_output_shapes	
:А:-8)
'
_output_shapes
:@А: 9

_output_shapes
:@:,:(
&
_output_shapes
: @: ;

_output_shapes
: :,<(
&
_output_shapes
: : =

_output_shapes
::>

_output_shapes
: 
ф
£
.__inference_decoder_output_layer_call_fn_17565

inputs!
unknown: 
	unknown_0:
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_decoder_output_layer_call_and_return_conditional_losses_16041w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€   : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
–	
ы
I__inference_encoder_output_layer_call_and_return_conditional_losses_16338

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
§†
р
B__inference_model_2_layer_call_and_return_conditional_losses_16959

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource: @6
(conv2d_1_biasadd_readvariableop_resource:@B
'conv2d_2_conv2d_readvariableop_resource:@А7
(conv2d_2_biasadd_readvariableop_resource:	А@
-encoder_output_matmul_readvariableop_resource:	А<
.encoder_output_biasadd_readvariableop_resource:?
,model_1_dense_matmul_readvariableop_resource:	А<
-model_1_dense_biasadd_readvariableop_resource:	А]
Amodel_1_conv2d_transpose_conv2d_transpose_readvariableop_resource:ААG
8model_1_conv2d_transpose_biasadd_readvariableop_resource:	А^
Cmodel_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:@АH
:model_1_conv2d_transpose_1_biasadd_readvariableop_resource:@]
Cmodel_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource: @H
:model_1_conv2d_transpose_2_biasadd_readvariableop_resource: O
5model_1_decoder_output_conv2d_readvariableop_resource: D
6model_1_decoder_output_biasadd_readvariableop_resource:
identityИҐconv2d/BiasAdd/ReadVariableOpҐconv2d/Conv2D/ReadVariableOpҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOpҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOpҐ%encoder_output/BiasAdd/ReadVariableOpҐ$encoder_output/MatMul/ReadVariableOpҐ/model_1/conv2d_transpose/BiasAdd/ReadVariableOpҐ8model_1/conv2d_transpose/conv2d_transpose/ReadVariableOpҐ1model_1/conv2d_transpose_1/BiasAdd/ReadVariableOpҐ:model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpҐ1model_1/conv2d_transpose_2/BiasAdd/ReadVariableOpҐ:model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpҐ-model_1/decoder_output/BiasAdd/ReadVariableOpҐ,model_1/decoder_output/Conv2D/ReadVariableOpҐ$model_1/dense/BiasAdd/ReadVariableOpҐ#model_1/dense/MatMul/ReadVariableOpК
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0І
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
А
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Т
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ f
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ О
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Њ
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
Д
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@П
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ѕ
conv2d_2/Conv2DConv2Dconv2d_1/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
Е
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Аk
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   В
flatten/ReshapeReshapeconv2d_2/Relu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АУ
$encoder_output/MatMul/ReadVariableOpReadVariableOp-encoder_output_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Щ
encoder_output/MatMulMatMulflatten/Reshape:output:0,encoder_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Р
%encoder_output/BiasAdd/ReadVariableOpReadVariableOp.encoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0£
encoder_output/BiasAddBiasAddencoder_output/MatMul:product:0-encoder_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€С
#model_1/dense/MatMul/ReadVariableOpReadVariableOp,model_1_dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Я
model_1/dense/MatMulMatMulencoder_output/BiasAdd:output:0+model_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АП
$model_1/dense/BiasAdd/ReadVariableOpReadVariableOp-model_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0°
model_1/dense/BiasAddBiasAddmodel_1/dense/MatMul:product:0,model_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
model_1/reshape/ShapeShapemodel_1/dense/BiasAdd:output:0*
T0*
_output_shapes
:m
#model_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%model_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%model_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
model_1/reshape/strided_sliceStridedSlicemodel_1/reshape/Shape:output:0,model_1/reshape/strided_slice/stack:output:0.model_1/reshape/strided_slice/stack_1:output:0.model_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
model_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :a
model_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :b
model_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :Ащ
model_1/reshape/Reshape/shapePack&model_1/reshape/strided_slice:output:0(model_1/reshape/Reshape/shape/1:output:0(model_1/reshape/Reshape/shape/2:output:0(model_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:•
model_1/reshape/ReshapeReshapemodel_1/dense/BiasAdd:output:0&model_1/reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аn
model_1/conv2d_transpose/ShapeShape model_1/reshape/Reshape:output:0*
T0*
_output_shapes
:v
,model_1/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.model_1/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.model_1/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
&model_1/conv2d_transpose/strided_sliceStridedSlice'model_1/conv2d_transpose/Shape:output:05model_1/conv2d_transpose/strided_slice/stack:output:07model_1/conv2d_transpose/strided_slice/stack_1:output:07model_1/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 model_1/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :b
 model_1/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :c
 model_1/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :АЖ
model_1/conv2d_transpose/stackPack/model_1/conv2d_transpose/strided_slice:output:0)model_1/conv2d_transpose/stack/1:output:0)model_1/conv2d_transpose/stack/2:output:0)model_1/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:x
.model_1/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0model_1/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0model_1/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:÷
(model_1/conv2d_transpose/strided_slice_1StridedSlice'model_1/conv2d_transpose/stack:output:07model_1/conv2d_transpose/strided_slice_1/stack:output:09model_1/conv2d_transpose/strided_slice_1/stack_1:output:09model_1/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskƒ
8model_1/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpAmodel_1_conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0∞
)model_1/conv2d_transpose/conv2d_transposeConv2DBackpropInput'model_1/conv2d_transpose/stack:output:0@model_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0 model_1/reshape/Reshape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
•
/model_1/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp8model_1_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0”
 model_1/conv2d_transpose/BiasAddBiasAdd2model_1/conv2d_transpose/conv2d_transpose:output:07model_1/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АЛ
model_1/conv2d_transpose/ReluRelu)model_1/conv2d_transpose/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А{
 model_1/conv2d_transpose_1/ShapeShape+model_1/conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:x
.model_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0model_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0model_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
(model_1/conv2d_transpose_1/strided_sliceStridedSlice)model_1/conv2d_transpose_1/Shape:output:07model_1/conv2d_transpose_1/strided_slice/stack:output:09model_1/conv2d_transpose_1/strided_slice/stack_1:output:09model_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_1/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :d
"model_1/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :d
"model_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@Р
 model_1/conv2d_transpose_1/stackPack1model_1/conv2d_transpose_1/strided_slice:output:0+model_1/conv2d_transpose_1/stack/1:output:0+model_1/conv2d_transpose_1/stack/2:output:0+model_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:z
0model_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:а
*model_1/conv2d_transpose_1/strided_slice_1StridedSlice)model_1/conv2d_transpose_1/stack:output:09model_1/conv2d_transpose_1/strided_slice_1/stack:output:0;model_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0;model_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask«
:model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpCmodel_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype0ј
+model_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput)model_1/conv2d_transpose_1/stack:output:0Bmodel_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0+model_1/conv2d_transpose/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
®
1model_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp:model_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ў
"model_1/conv2d_transpose_1/BiasAddBiasAdd4model_1/conv2d_transpose_1/conv2d_transpose:output:09model_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@О
model_1/conv2d_transpose_1/ReluRelu+model_1/conv2d_transpose_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@}
 model_1/conv2d_transpose_2/ShapeShape-model_1/conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:x
.model_1/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0model_1/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0model_1/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
(model_1/conv2d_transpose_2/strided_sliceStridedSlice)model_1/conv2d_transpose_2/Shape:output:07model_1/conv2d_transpose_2/strided_slice/stack:output:09model_1/conv2d_transpose_2/strided_slice/stack_1:output:09model_1/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_1/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : d
"model_1/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : d
"model_1/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B : Р
 model_1/conv2d_transpose_2/stackPack1model_1/conv2d_transpose_2/strided_slice:output:0+model_1/conv2d_transpose_2/stack/1:output:0+model_1/conv2d_transpose_2/stack/2:output:0+model_1/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:z
0model_1/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_1/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:а
*model_1/conv2d_transpose_2/strided_slice_1StridedSlice)model_1/conv2d_transpose_2/stack:output:09model_1/conv2d_transpose_2/strided_slice_1/stack:output:0;model_1/conv2d_transpose_2/strided_slice_1/stack_1:output:0;model_1/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask∆
:model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpCmodel_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0¬
+model_1/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput)model_1/conv2d_transpose_2/stack:output:0Bmodel_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0-model_1/conv2d_transpose_1/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
®
1model_1/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp:model_1_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ў
"model_1/conv2d_transpose_2/BiasAddBiasAdd4model_1/conv2d_transpose_2/conv2d_transpose:output:09model_1/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   О
model_1/conv2d_transpose_2/ReluRelu+model_1/conv2d_transpose_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   ™
,model_1/decoder_output/Conv2D/ReadVariableOpReadVariableOp5model_1_decoder_output_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0о
model_1/decoder_output/Conv2DConv2D-model_1/conv2d_transpose_2/Relu:activations:04model_1/decoder_output/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  *
paddingSAME*
strides
†
-model_1/decoder_output/BiasAdd/ReadVariableOpReadVariableOp6model_1_decoder_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¬
model_1/decoder_output/BiasAddBiasAdd&model_1/decoder_output/Conv2D:output:05model_1/decoder_output/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  М
model_1/decoder_output/SigmoidSigmoid'model_1/decoder_output/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  y
IdentityIdentity"model_1/decoder_output/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  ’
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp&^encoder_output/BiasAdd/ReadVariableOp%^encoder_output/MatMul/ReadVariableOp0^model_1/conv2d_transpose/BiasAdd/ReadVariableOp9^model_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2^model_1/conv2d_transpose_1/BiasAdd/ReadVariableOp;^model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2^model_1/conv2d_transpose_2/BiasAdd/ReadVariableOp;^model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp.^model_1/decoder_output/BiasAdd/ReadVariableOp-^model_1/decoder_output/Conv2D/ReadVariableOp%^model_1/dense/BiasAdd/ReadVariableOp$^model_1/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€  : : : : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2N
%encoder_output/BiasAdd/ReadVariableOp%encoder_output/BiasAdd/ReadVariableOp2L
$encoder_output/MatMul/ReadVariableOp$encoder_output/MatMul/ReadVariableOp2b
/model_1/conv2d_transpose/BiasAdd/ReadVariableOp/model_1/conv2d_transpose/BiasAdd/ReadVariableOp2t
8model_1/conv2d_transpose/conv2d_transpose/ReadVariableOp8model_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2f
1model_1/conv2d_transpose_1/BiasAdd/ReadVariableOp1model_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2x
:model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:model_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2f
1model_1/conv2d_transpose_2/BiasAdd/ReadVariableOp1model_1/conv2d_transpose_2/BiasAdd/ReadVariableOp2x
:model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:model_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2^
-model_1/decoder_output/BiasAdd/ReadVariableOp-model_1/decoder_output/BiasAdd/ReadVariableOp2\
,model_1/decoder_output/Conv2D/ReadVariableOp,model_1/decoder_output/Conv2D/ReadVariableOp2L
$model_1/dense/BiasAdd/ReadVariableOp$model_1/dense/BiasAdd/ReadVariableOp2J
#model_1/dense/MatMul/ReadVariableOp#model_1/dense/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
ќ
^
B__inference_reshape_layer_call_and_return_conditional_losses_16013

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аa
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*∆
serving_default≤
O
encoder_input>
serving_default_encoder_input:0€€€€€€€€€  C
model_18
StatefulPartitionedCall:0€€€€€€€€€  tensorflow/serving/predict:‘Њ
ј
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
Ё
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
Ё
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

 kernel
!bias
 "_jit_compiled_convolution_op"
_tf_keras_layer
Ё
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

)kernel
*bias
 +_jit_compiled_convolution_op"
_tf_keras_layer
•
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias"
_tf_keras_layer
Д
:layer-0
;layer_with_weights-0
;layer-1
<layer-2
=layer_with_weights-1
=layer-3
>layer_with_weights-2
>layer-4
?layer_with_weights-3
?layer-5
@layer_with_weights-4
@layer-6
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_network
¶
0
1
 2
!3
)4
*5
86
97
G8
H9
I10
J11
K12
L13
M14
N15
O16
P17"
trackable_list_wrapper
¶
0
1
 2
!3
)4
*5
86
97
G8
H9
I10
J11
K12
L13
M14
N15
O16
P17"
trackable_list_wrapper
 "
trackable_list_wrapper
 
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
—
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_32ж
'__inference_model_2_layer_call_fn_16405
'__inference_model_2_layer_call_fn_16802
'__inference_model_2_layer_call_fn_16843
'__inference_model_2_layer_call_fn_16620њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zVtrace_0zWtrace_1zXtrace_2zYtrace_3
љ
Ztrace_0
[trace_1
\trace_2
]trace_32“
B__inference_model_2_layer_call_and_return_conditional_losses_16959
B__inference_model_2_layer_call_and_return_conditional_losses_17075
B__inference_model_2_layer_call_and_return_conditional_losses_16666
B__inference_model_2_layer_call_and_return_conditional_losses_16712њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zZtrace_0z[trace_1z\trace_2z]trace_3
—Bќ
 __inference__wrapped_model_15841encoder_input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ї
^iter

_beta_1

`beta_2
	adecay
blearning_ratemлmм mн!mо)mп*mр8mс9mтGmуHmфImхJmцKmчLmшMmщNmъOmыPmьvэvю v€!vА)vБ*vВ8vГ9vДGvЕHvЖIvЗJvИKvЙLvКMvЛNvМOvНPvО"
	optimizer
,
cserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
к
itrace_02Ќ
&__inference_conv2d_layer_call_fn_17084Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zitrace_0
Е
jtrace_02и
A__inference_conv2d_layer_call_and_return_conditional_losses_17095Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zjtrace_0
':% 2conv2d/kernel
: 2conv2d/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
м
ptrace_02ѕ
(__inference_conv2d_1_layer_call_fn_17104Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zptrace_0
З
qtrace_02к
C__inference_conv2d_1_layer_call_and_return_conditional_losses_17115Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zqtrace_0
):' @2conv2d_1/kernel
:@2conv2d_1/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
м
wtrace_02ѕ
(__inference_conv2d_2_layer_call_fn_17124Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zwtrace_0
З
xtrace_02к
C__inference_conv2d_2_layer_call_and_return_conditional_losses_17135Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zxtrace_0
*:(@А2conv2d_2/kernel
:А2conv2d_2/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
л
~trace_02ќ
'__inference_flatten_layer_call_fn_17140Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z~trace_0
Ж
trace_02й
B__inference_flatten_layer_call_and_return_conditional_losses_17146Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 ztrace_0
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
ф
Еtrace_02’
.__inference_encoder_output_layer_call_fn_17155Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЕtrace_0
П
Жtrace_02р
I__inference_encoder_output_layer_call_and_return_conditional_losses_17165Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЖtrace_0
(:&	А2encoder_output/kernel
!:2encoder_output/bias
"
_tf_keras_input_layer
Ѕ
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses

Gkernel
Hbias"
_tf_keras_layer
Ђ
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses"
_tf_keras_layer
д
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses

Ikernel
Jbias
!Щ_jit_compiled_convolution_op"
_tf_keras_layer
д
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses

Kkernel
Lbias
!†_jit_compiled_convolution_op"
_tf_keras_layer
д
°	variables
Ґtrainable_variables
£regularization_losses
§	keras_api
•__call__
+¶&call_and_return_all_conditional_losses

Mkernel
Nbias
!І_jit_compiled_convolution_op"
_tf_keras_layer
д
®	variables
©trainable_variables
™regularization_losses
Ђ	keras_api
ђ__call__
+≠&call_and_return_all_conditional_losses

Okernel
Pbias
!Ѓ_jit_compiled_convolution_op"
_tf_keras_layer
f
G0
H1
I2
J3
K4
L5
M6
N7
O8
P9"
trackable_list_wrapper
f
G0
H1
I2
J3
K4
L5
M6
N7
O8
P9"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ѓnon_trainable_variables
∞layers
±metrics
 ≤layer_regularization_losses
≥layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
ў
іtrace_0
µtrace_1
ґtrace_2
Јtrace_32ж
'__inference_model_1_layer_call_fn_16071
'__inference_model_1_layer_call_fn_17190
'__inference_model_1_layer_call_fn_17215
'__inference_model_1_layer_call_fn_16202њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zіtrace_0zµtrace_1zґtrace_2zЈtrace_3
≈
Єtrace_0
єtrace_1
Їtrace_2
їtrace_32“
B__inference_model_1_layer_call_and_return_conditional_losses_17302
B__inference_model_1_layer_call_and_return_conditional_losses_17389
B__inference_model_1_layer_call_and_return_conditional_losses_16232
B__inference_model_1_layer_call_and_return_conditional_losses_16262њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЄtrace_0zєtrace_1zЇtrace_2zїtrace_3
:	А2dense/kernel
:А2
dense/bias
3:1АА2conv2d_transpose/kernel
$:"А2conv2d_transpose/bias
4:2@А2conv2d_transpose_1/kernel
%:#@2conv2d_transpose_1/bias
3:1 @2conv2d_transpose_2/kernel
%:# 2conv2d_transpose_2/bias
/:- 2decoder_output/kernel
!:2decoder_output/bias
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
(
Љ0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
€Bь
'__inference_model_2_layer_call_fn_16405encoder_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
'__inference_model_2_layer_call_fn_16802inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
'__inference_model_2_layer_call_fn_16843inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
'__inference_model_2_layer_call_fn_16620encoder_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
УBР
B__inference_model_2_layer_call_and_return_conditional_losses_16959inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
УBР
B__inference_model_2_layer_call_and_return_conditional_losses_17075inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
B__inference_model_2_layer_call_and_return_conditional_losses_16666encoder_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
B__inference_model_2_layer_call_and_return_conditional_losses_16712encoder_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
–BЌ
#__inference_signature_wrapper_16761encoder_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
ЏB„
&__inference_conv2d_layer_call_fn_17084inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
хBт
A__inference_conv2d_layer_call_and_return_conditional_losses_17095inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
№Bў
(__inference_conv2d_1_layer_call_fn_17104inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
чBф
C__inference_conv2d_1_layer_call_and_return_conditional_losses_17115inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
№Bў
(__inference_conv2d_2_layer_call_fn_17124inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
чBф
C__inference_conv2d_2_layer_call_and_return_conditional_losses_17135inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
џBЎ
'__inference_flatten_layer_call_fn_17140inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
B__inference_flatten_layer_call_and_return_conditional_losses_17146inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
вBя
.__inference_encoder_output_layer_call_fn_17155inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
I__inference_encoder_output_layer_call_and_return_conditional_losses_17165inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
љnon_trainable_variables
Њlayers
њmetrics
 јlayer_regularization_losses
Ѕlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
л
¬trace_02ћ
%__inference_dense_layer_call_fn_17398Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z¬trace_0
Ж
√trace_02з
@__inference_dense_layer_call_and_return_conditional_losses_17408Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z√trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
ƒnon_trainable_variables
≈layers
∆metrics
 «layer_regularization_losses
»layer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
н
…trace_02ќ
'__inference_reshape_layer_call_fn_17413Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z…trace_0
И
 trace_02й
B__inference_reshape_layer_call_and_return_conditional_losses_17427Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z trace_0
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ћnon_trainable_variables
ћlayers
Ќmetrics
 ќlayer_regularization_losses
ѕlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
ц
–trace_02„
0__inference_conv2d_transpose_layer_call_fn_17436Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z–trace_0
С
—trace_02т
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_17470Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z—trace_0
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
“non_trainable_variables
”layers
‘metrics
 ’layer_regularization_losses
÷layer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
ш
„trace_02ў
2__inference_conv2d_transpose_1_layer_call_fn_17479Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z„trace_0
У
Ўtrace_02ф
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_17513Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЎtrace_0
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
ўnon_trainable_variables
Џlayers
џmetrics
 №layer_regularization_losses
Ёlayer_metrics
°	variables
Ґtrainable_variables
£regularization_losses
•__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
ш
ёtrace_02ў
2__inference_conv2d_transpose_2_layer_call_fn_17522Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zёtrace_0
У
яtrace_02ф
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_17556Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zяtrace_0
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
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
Є
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
®	variables
©trainable_variables
™regularization_losses
ђ__call__
+≠&call_and_return_all_conditional_losses
'≠"call_and_return_conditional_losses"
_generic_user_object
ф
еtrace_02’
.__inference_decoder_output_layer_call_fn_17565Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zеtrace_0
П
жtrace_02р
I__inference_decoder_output_layer_call_and_return_conditional_losses_17576Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zжtrace_0
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
Q
:0
;1
<2
=3
>4
?5
@6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
€Bь
'__inference_model_1_layer_call_fn_16071decoder_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
'__inference_model_1_layer_call_fn_17190inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
'__inference_model_1_layer_call_fn_17215inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
'__inference_model_1_layer_call_fn_16202decoder_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
УBР
B__inference_model_1_layer_call_and_return_conditional_losses_17302inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
УBР
B__inference_model_1_layer_call_and_return_conditional_losses_17389inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
B__inference_model_1_layer_call_and_return_conditional_losses_16232decoder_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
B__inference_model_1_layer_call_and_return_conditional_losses_16262decoder_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
з	variables
и	keras_api

йtotal

кcount"
_tf_keras_metric
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
ўB÷
%__inference_dense_layer_call_fn_17398inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
фBс
@__inference_dense_layer_call_and_return_conditional_losses_17408inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
џBЎ
'__inference_reshape_layer_call_fn_17413inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
B__inference_reshape_layer_call_and_return_conditional_losses_17427inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
дBб
0__inference_conv2d_transpose_layer_call_fn_17436inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_17470inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
жBг
2__inference_conv2d_transpose_1_layer_call_fn_17479inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_17513inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
жBг
2__inference_conv2d_transpose_2_layer_call_fn_17522inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_17556inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
вBя
.__inference_decoder_output_layer_call_fn_17565inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
I__inference_decoder_output_layer_call_and_return_conditional_losses_17576inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
0
й0
к1"
trackable_list_wrapper
.
з	variables"
_generic_user_object
:  (2total
:  (2count
,:* 2Adam/conv2d/kernel/m
: 2Adam/conv2d/bias/m
.:, @2Adam/conv2d_1/kernel/m
 :@2Adam/conv2d_1/bias/m
/:-@А2Adam/conv2d_2/kernel/m
!:А2Adam/conv2d_2/bias/m
-:+	А2Adam/encoder_output/kernel/m
&:$2Adam/encoder_output/bias/m
$:"	А2Adam/dense/kernel/m
:А2Adam/dense/bias/m
8:6АА2Adam/conv2d_transpose/kernel/m
):'А2Adam/conv2d_transpose/bias/m
9:7@А2 Adam/conv2d_transpose_1/kernel/m
*:(@2Adam/conv2d_transpose_1/bias/m
8:6 @2 Adam/conv2d_transpose_2/kernel/m
*:( 2Adam/conv2d_transpose_2/bias/m
4:2 2Adam/decoder_output/kernel/m
&:$2Adam/decoder_output/bias/m
,:* 2Adam/conv2d/kernel/v
: 2Adam/conv2d/bias/v
.:, @2Adam/conv2d_1/kernel/v
 :@2Adam/conv2d_1/bias/v
/:-@А2Adam/conv2d_2/kernel/v
!:А2Adam/conv2d_2/bias/v
-:+	А2Adam/encoder_output/kernel/v
&:$2Adam/encoder_output/bias/v
$:"	А2Adam/dense/kernel/v
:А2Adam/dense/bias/v
8:6АА2Adam/conv2d_transpose/kernel/v
):'А2Adam/conv2d_transpose/bias/v
9:7@А2 Adam/conv2d_transpose_1/kernel/v
*:(@2Adam/conv2d_transpose_1/bias/v
8:6 @2 Adam/conv2d_transpose_2/kernel/v
*:( 2Adam/conv2d_transpose_2/bias/v
4:2 2Adam/decoder_output/kernel/v
&:$2Adam/decoder_output/bias/vі
 __inference__wrapped_model_15841П !)*89GHIJKLMNOP>Ґ;
4Ґ1
/К,
encoder_input€€€€€€€€€  
™ "9™6
4
model_1)К&
model_1€€€€€€€€€  ≥
C__inference_conv2d_1_layer_call_and_return_conditional_losses_17115l !7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ Л
(__inference_conv2d_1_layer_call_fn_17104_ !7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ " К€€€€€€€€€@і
C__inference_conv2d_2_layer_call_and_return_conditional_losses_17135m)*7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ М
(__inference_conv2d_2_layer_call_fn_17124`)*7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "!К€€€€€€€€€А±
A__inference_conv2d_layer_call_and_return_conditional_losses_17095l7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€  
™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ Й
&__inference_conv2d_layer_call_fn_17084_7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€  
™ " К€€€€€€€€€ г
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_17513СKLJҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Ъ ї
2__inference_conv2d_transpose_1_layer_call_fn_17479ДKLJҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€@в
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_17556РMNIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ Ї
2__inference_conv2d_transpose_2_layer_call_fn_17522ГMNIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€ в
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_17470ТIJJҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
™ "@Ґ=
6К3
0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Ъ Ї
0__inference_conv2d_transpose_layer_call_fn_17436ЕIJJҐG
@Ґ=
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
™ "3К0,€€€€€€€€€€€€€€€€€€€€€€€€€€€Ає
I__inference_decoder_output_layer_call_and_return_conditional_losses_17576lOP7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€   
™ "-Ґ*
#К 
0€€€€€€€€€  
Ъ С
.__inference_decoder_output_layer_call_fn_17565_OP7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€   
™ " К€€€€€€€€€  °
@__inference_dense_layer_call_and_return_conditional_losses_17408]GH/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "&Ґ#
К
0€€€€€€€€€А
Ъ y
%__inference_dense_layer_call_fn_17398PGH/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€А™
I__inference_encoder_output_layer_call_and_return_conditional_losses_17165]890Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ В
.__inference_encoder_output_layer_call_fn_17155P890Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€®
B__inference_flatten_layer_call_and_return_conditional_losses_17146b8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ А
'__inference_flatten_layer_call_fn_17140U8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "К€€€€€€€€€АЅ
B__inference_model_1_layer_call_and_return_conditional_losses_16232{
GHIJKLMNOP>Ґ;
4Ґ1
'К$
decoder_input€€€€€€€€€
p 

 
™ "-Ґ*
#К 
0€€€€€€€€€  
Ъ Ѕ
B__inference_model_1_layer_call_and_return_conditional_losses_16262{
GHIJKLMNOP>Ґ;
4Ґ1
'К$
decoder_input€€€€€€€€€
p

 
™ "-Ґ*
#К 
0€€€€€€€€€  
Ъ Ї
B__inference_model_1_layer_call_and_return_conditional_losses_17302t
GHIJKLMNOP7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ "-Ґ*
#К 
0€€€€€€€€€  
Ъ Ї
B__inference_model_1_layer_call_and_return_conditional_losses_17389t
GHIJKLMNOP7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ "-Ґ*
#К 
0€€€€€€€€€  
Ъ Щ
'__inference_model_1_layer_call_fn_16071n
GHIJKLMNOP>Ґ;
4Ґ1
'К$
decoder_input€€€€€€€€€
p 

 
™ " К€€€€€€€€€  Щ
'__inference_model_1_layer_call_fn_16202n
GHIJKLMNOP>Ґ;
4Ґ1
'К$
decoder_input€€€€€€€€€
p

 
™ " К€€€€€€€€€  Т
'__inference_model_1_layer_call_fn_17190g
GHIJKLMNOP7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ " К€€€€€€€€€  Т
'__inference_model_1_layer_call_fn_17215g
GHIJKLMNOP7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ " К€€€€€€€€€  “
B__inference_model_2_layer_call_and_return_conditional_losses_16666Л !)*89GHIJKLMNOPFҐC
<Ґ9
/К,
encoder_input€€€€€€€€€  
p 

 
™ "-Ґ*
#К 
0€€€€€€€€€  
Ъ “
B__inference_model_2_layer_call_and_return_conditional_losses_16712Л !)*89GHIJKLMNOPFҐC
<Ґ9
/К,
encoder_input€€€€€€€€€  
p

 
™ "-Ґ*
#К 
0€€€€€€€€€  
Ъ Ћ
B__inference_model_2_layer_call_and_return_conditional_losses_16959Д !)*89GHIJKLMNOP?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€  
p 

 
™ "-Ґ*
#К 
0€€€€€€€€€  
Ъ Ћ
B__inference_model_2_layer_call_and_return_conditional_losses_17075Д !)*89GHIJKLMNOP?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€  
p

 
™ "-Ґ*
#К 
0€€€€€€€€€  
Ъ ©
'__inference_model_2_layer_call_fn_16405~ !)*89GHIJKLMNOPFҐC
<Ґ9
/К,
encoder_input€€€€€€€€€  
p 

 
™ " К€€€€€€€€€  ©
'__inference_model_2_layer_call_fn_16620~ !)*89GHIJKLMNOPFҐC
<Ґ9
/К,
encoder_input€€€€€€€€€  
p

 
™ " К€€€€€€€€€  Ґ
'__inference_model_2_layer_call_fn_16802w !)*89GHIJKLMNOP?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€  
p 

 
™ " К€€€€€€€€€  Ґ
'__inference_model_2_layer_call_fn_16843w !)*89GHIJKLMNOP?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€  
p

 
™ " К€€€€€€€€€  ®
B__inference_reshape_layer_call_and_return_conditional_losses_17427b0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ А
'__inference_reshape_layer_call_fn_17413U0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "!К€€€€€€€€€А»
#__inference_signature_wrapper_16761† !)*89GHIJKLMNOPOҐL
Ґ 
E™B
@
encoder_input/К,
encoder_input€€€€€€€€€  "9™6
4
model_1)К&
model_1€€€€€€€€€  