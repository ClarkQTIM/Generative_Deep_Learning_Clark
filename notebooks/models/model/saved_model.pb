“є&
Л#Џ"
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
,
Cos
x"T
y"T"
Ttype:

2
$
DisableCopyOnRead
resourceИ
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
A
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
?
FloorMod
x"T
y"T
z"T"
Ttype:
2	
Ѓ
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
П
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
8
Pow
x"T
y"T
z"T"
Ttype:
2
	
П
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
•
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
.
Rsqrt
x"T
y"T"
Ttype:

2
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
d
Shape

input"T&
output"out_typeКнout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
,
Sin
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	Р
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
2
StopGradient

input"T
output"T"	
Ttype
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758жП#
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
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
Р
Adam/v/duration_outputs/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/v/duration_outputs/bias
Й
0Adam/v/duration_outputs/bias/Read/ReadVariableOpReadVariableOpAdam/v/duration_outputs/bias*
_output_shapes
:*
dtype0
Р
Adam/m/duration_outputs/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/m/duration_outputs/bias
Й
0Adam/m/duration_outputs/bias/Read/ReadVariableOpReadVariableOpAdam/m/duration_outputs/bias*
_output_shapes
:*
dtype0
Щ
Adam/v/duration_outputs/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*/
shared_name Adam/v/duration_outputs/kernel
Т
2Adam/v/duration_outputs/kernel/Read/ReadVariableOpReadVariableOpAdam/v/duration_outputs/kernel*
_output_shapes
:	А*
dtype0
Щ
Adam/m/duration_outputs/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*/
shared_name Adam/m/duration_outputs/kernel
Т
2Adam/m/duration_outputs/kernel/Read/ReadVariableOpReadVariableOpAdam/m/duration_outputs/kernel*
_output_shapes
:	А*
dtype0
И
Adam/v/note_outputs/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:;*)
shared_nameAdam/v/note_outputs/bias
Б
,Adam/v/note_outputs/bias/Read/ReadVariableOpReadVariableOpAdam/v/note_outputs/bias*
_output_shapes
:;*
dtype0
И
Adam/m/note_outputs/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:;*)
shared_nameAdam/m/note_outputs/bias
Б
,Adam/m/note_outputs/bias/Read/ReadVariableOpReadVariableOpAdam/m/note_outputs/bias*
_output_shapes
:;*
dtype0
С
Adam/v/note_outputs/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А;*+
shared_nameAdam/v/note_outputs/kernel
К
.Adam/v/note_outputs/kernel/Read/ReadVariableOpReadVariableOpAdam/v/note_outputs/kernel*
_output_shapes
:	А;*
dtype0
С
Adam/m/note_outputs/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А;*+
shared_nameAdam/m/note_outputs/kernel
К
.Adam/m/note_outputs/kernel/Read/ReadVariableOpReadVariableOpAdam/m/note_outputs/kernel*
_output_shapes
:	А;*
dtype0
ѓ
+Adam/v/attention/layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*<
shared_name-+Adam/v/attention/layer_normalization_3/beta
®
?Adam/v/attention/layer_normalization_3/beta/Read/ReadVariableOpReadVariableOp+Adam/v/attention/layer_normalization_3/beta*
_output_shapes	
:А*
dtype0
ѓ
+Adam/m/attention/layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*<
shared_name-+Adam/m/attention/layer_normalization_3/beta
®
?Adam/m/attention/layer_normalization_3/beta/Read/ReadVariableOpReadVariableOp+Adam/m/attention/layer_normalization_3/beta*
_output_shapes	
:А*
dtype0
±
,Adam/v/attention/layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*=
shared_name.,Adam/v/attention/layer_normalization_3/gamma
™
@Adam/v/attention/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOp,Adam/v/attention/layer_normalization_3/gamma*
_output_shapes	
:А*
dtype0
±
,Adam/m/attention/layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*=
shared_name.,Adam/m/attention/layer_normalization_3/gamma
™
@Adam/m/attention/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOp,Adam/m/attention/layer_normalization_3/gamma*
_output_shapes	
:А*
dtype0
У
Adam/v/attention/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*.
shared_nameAdam/v/attention/dense_3/bias
М
1Adam/v/attention/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/attention/dense_3/bias*
_output_shapes	
:А*
dtype0
У
Adam/m/attention/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*.
shared_nameAdam/m/attention/dense_3/bias
М
1Adam/m/attention/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/attention/dense_3/bias*
_output_shapes	
:А*
dtype0
Ь
Adam/v/attention/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*0
shared_name!Adam/v/attention/dense_3/kernel
Х
3Adam/v/attention/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/attention/dense_3/kernel* 
_output_shapes
:
АА*
dtype0
Ь
Adam/m/attention/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*0
shared_name!Adam/m/attention/dense_3/kernel
Х
3Adam/m/attention/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/attention/dense_3/kernel* 
_output_shapes
:
АА*
dtype0
У
Adam/v/attention/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*.
shared_nameAdam/v/attention/dense_2/bias
М
1Adam/v/attention/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/attention/dense_2/bias*
_output_shapes	
:А*
dtype0
У
Adam/m/attention/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*.
shared_nameAdam/m/attention/dense_2/bias
М
1Adam/m/attention/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/attention/dense_2/bias*
_output_shapes	
:А*
dtype0
Ь
Adam/v/attention/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*0
shared_name!Adam/v/attention/dense_2/kernel
Х
3Adam/v/attention/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/attention/dense_2/kernel* 
_output_shapes
:
АА*
dtype0
Ь
Adam/m/attention/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*0
shared_name!Adam/m/attention/dense_2/kernel
Х
3Adam/m/attention/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/attention/dense_2/kernel* 
_output_shapes
:
АА*
dtype0
ѓ
+Adam/v/attention/layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*<
shared_name-+Adam/v/attention/layer_normalization_2/beta
®
?Adam/v/attention/layer_normalization_2/beta/Read/ReadVariableOpReadVariableOp+Adam/v/attention/layer_normalization_2/beta*
_output_shapes	
:А*
dtype0
ѓ
+Adam/m/attention/layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*<
shared_name-+Adam/m/attention/layer_normalization_2/beta
®
?Adam/m/attention/layer_normalization_2/beta/Read/ReadVariableOpReadVariableOp+Adam/m/attention/layer_normalization_2/beta*
_output_shapes	
:А*
dtype0
±
,Adam/v/attention/layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*=
shared_name.,Adam/v/attention/layer_normalization_2/gamma
™
@Adam/v/attention/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOp,Adam/v/attention/layer_normalization_2/gamma*
_output_shapes	
:А*
dtype0
±
,Adam/m/attention/layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*=
shared_name.,Adam/m/attention/layer_normalization_2/gamma
™
@Adam/m/attention/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOp,Adam/m/attention/layer_normalization_2/gamma*
_output_shapes	
:А*
dtype0
”
=Adam/v/attention/multi_head_attention_1/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*N
shared_name?=Adam/v/attention/multi_head_attention_1/attention_output/bias
ћ
QAdam/v/attention/multi_head_attention_1/attention_output/bias/Read/ReadVariableOpReadVariableOp=Adam/v/attention/multi_head_attention_1/attention_output/bias*
_output_shapes	
:А*
dtype0
”
=Adam/m/attention/multi_head_attention_1/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*N
shared_name?=Adam/m/attention/multi_head_attention_1/attention_output/bias
ћ
QAdam/m/attention/multi_head_attention_1/attention_output/bias/Read/ReadVariableOpReadVariableOp=Adam/m/attention/multi_head_attention_1/attention_output/bias*
_output_shapes	
:А*
dtype0
а
?Adam/v/attention/multi_head_attention_1/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*P
shared_nameA?Adam/v/attention/multi_head_attention_1/attention_output/kernel
ў
SAdam/v/attention/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpReadVariableOp?Adam/v/attention/multi_head_attention_1/attention_output/kernel*$
_output_shapes
:АА*
dtype0
а
?Adam/m/attention/multi_head_attention_1/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*P
shared_nameA?Adam/m/attention/multi_head_attention_1/attention_output/kernel
ў
SAdam/m/attention/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpReadVariableOp?Adam/m/attention/multi_head_attention_1/attention_output/kernel*$
_output_shapes
:АА*
dtype0
Ѕ
2Adam/v/attention/multi_head_attention_1/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*C
shared_name42Adam/v/attention/multi_head_attention_1/value/bias
Ї
FAdam/v/attention/multi_head_attention_1/value/bias/Read/ReadVariableOpReadVariableOp2Adam/v/attention/multi_head_attention_1/value/bias*
_output_shapes
:	А*
dtype0
Ѕ
2Adam/m/attention/multi_head_attention_1/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*C
shared_name42Adam/m/attention/multi_head_attention_1/value/bias
Ї
FAdam/m/attention/multi_head_attention_1/value/bias/Read/ReadVariableOpReadVariableOp2Adam/m/attention/multi_head_attention_1/value/bias*
_output_shapes
:	А*
dtype0
 
4Adam/v/attention/multi_head_attention_1/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*E
shared_name64Adam/v/attention/multi_head_attention_1/value/kernel
√
HAdam/v/attention/multi_head_attention_1/value/kernel/Read/ReadVariableOpReadVariableOp4Adam/v/attention/multi_head_attention_1/value/kernel*$
_output_shapes
:АА*
dtype0
 
4Adam/m/attention/multi_head_attention_1/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*E
shared_name64Adam/m/attention/multi_head_attention_1/value/kernel
√
HAdam/m/attention/multi_head_attention_1/value/kernel/Read/ReadVariableOpReadVariableOp4Adam/m/attention/multi_head_attention_1/value/kernel*$
_output_shapes
:АА*
dtype0
љ
0Adam/v/attention/multi_head_attention_1/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*A
shared_name20Adam/v/attention/multi_head_attention_1/key/bias
ґ
DAdam/v/attention/multi_head_attention_1/key/bias/Read/ReadVariableOpReadVariableOp0Adam/v/attention/multi_head_attention_1/key/bias*
_output_shapes
:	А*
dtype0
љ
0Adam/m/attention/multi_head_attention_1/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*A
shared_name20Adam/m/attention/multi_head_attention_1/key/bias
ґ
DAdam/m/attention/multi_head_attention_1/key/bias/Read/ReadVariableOpReadVariableOp0Adam/m/attention/multi_head_attention_1/key/bias*
_output_shapes
:	А*
dtype0
∆
2Adam/v/attention/multi_head_attention_1/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*C
shared_name42Adam/v/attention/multi_head_attention_1/key/kernel
њ
FAdam/v/attention/multi_head_attention_1/key/kernel/Read/ReadVariableOpReadVariableOp2Adam/v/attention/multi_head_attention_1/key/kernel*$
_output_shapes
:АА*
dtype0
∆
2Adam/m/attention/multi_head_attention_1/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*C
shared_name42Adam/m/attention/multi_head_attention_1/key/kernel
њ
FAdam/m/attention/multi_head_attention_1/key/kernel/Read/ReadVariableOpReadVariableOp2Adam/m/attention/multi_head_attention_1/key/kernel*$
_output_shapes
:АА*
dtype0
Ѕ
2Adam/v/attention/multi_head_attention_1/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*C
shared_name42Adam/v/attention/multi_head_attention_1/query/bias
Ї
FAdam/v/attention/multi_head_attention_1/query/bias/Read/ReadVariableOpReadVariableOp2Adam/v/attention/multi_head_attention_1/query/bias*
_output_shapes
:	А*
dtype0
Ѕ
2Adam/m/attention/multi_head_attention_1/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*C
shared_name42Adam/m/attention/multi_head_attention_1/query/bias
Ї
FAdam/m/attention/multi_head_attention_1/query/bias/Read/ReadVariableOpReadVariableOp2Adam/m/attention/multi_head_attention_1/query/bias*
_output_shapes
:	А*
dtype0
 
4Adam/v/attention/multi_head_attention_1/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*E
shared_name64Adam/v/attention/multi_head_attention_1/query/kernel
√
HAdam/v/attention/multi_head_attention_1/query/kernel/Read/ReadVariableOpReadVariableOp4Adam/v/attention/multi_head_attention_1/query/kernel*$
_output_shapes
:АА*
dtype0
 
4Adam/m/attention/multi_head_attention_1/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*E
shared_name64Adam/m/attention/multi_head_attention_1/query/kernel
√
HAdam/m/attention/multi_head_attention_1/query/kernel/Read/ReadVariableOpReadVariableOp4Adam/m/attention/multi_head_attention_1/query/kernel*$
_output_shapes
:АА*
dtype0
’
<Adam/v/token_and_position_embedding_6/embedding_6/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*M
shared_name><Adam/v/token_and_position_embedding_6/embedding_6/embeddings
ќ
PAdam/v/token_and_position_embedding_6/embedding_6/embeddings/Read/ReadVariableOpReadVariableOp<Adam/v/token_and_position_embedding_6/embedding_6/embeddings*
_output_shapes
:	А*
dtype0
’
<Adam/m/token_and_position_embedding_6/embedding_6/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*M
shared_name><Adam/m/token_and_position_embedding_6/embedding_6/embeddings
ќ
PAdam/m/token_and_position_embedding_6/embedding_6/embeddings/Read/ReadVariableOpReadVariableOp<Adam/m/token_and_position_embedding_6/embedding_6/embeddings*
_output_shapes
:	А*
dtype0
’
<Adam/v/token_and_position_embedding_5/embedding_5/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	;А*M
shared_name><Adam/v/token_and_position_embedding_5/embedding_5/embeddings
ќ
PAdam/v/token_and_position_embedding_5/embedding_5/embeddings/Read/ReadVariableOpReadVariableOp<Adam/v/token_and_position_embedding_5/embedding_5/embeddings*
_output_shapes
:	;А*
dtype0
’
<Adam/m/token_and_position_embedding_5/embedding_5/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	;А*M
shared_name><Adam/m/token_and_position_embedding_5/embedding_5/embeddings
ќ
PAdam/m/token_and_position_embedding_5/embedding_5/embeddings/Read/ReadVariableOpReadVariableOp<Adam/m/token_and_position_embedding_5/embedding_5/embeddings*
_output_shapes
:	;А*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
°
$attention/layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*5
shared_name&$attention/layer_normalization_3/beta
Ъ
8attention/layer_normalization_3/beta/Read/ReadVariableOpReadVariableOp$attention/layer_normalization_3/beta*
_output_shapes	
:А*
dtype0
£
%attention/layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*6
shared_name'%attention/layer_normalization_3/gamma
Ь
9attention/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOp%attention/layer_normalization_3/gamma*
_output_shapes	
:А*
dtype0
Е
attention/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*'
shared_nameattention/dense_3/bias
~
*attention/dense_3/bias/Read/ReadVariableOpReadVariableOpattention/dense_3/bias*
_output_shapes	
:А*
dtype0
О
attention/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*)
shared_nameattention/dense_3/kernel
З
,attention/dense_3/kernel/Read/ReadVariableOpReadVariableOpattention/dense_3/kernel* 
_output_shapes
:
АА*
dtype0
Е
attention/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*'
shared_nameattention/dense_2/bias
~
*attention/dense_2/bias/Read/ReadVariableOpReadVariableOpattention/dense_2/bias*
_output_shapes	
:А*
dtype0
О
attention/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*)
shared_nameattention/dense_2/kernel
З
,attention/dense_2/kernel/Read/ReadVariableOpReadVariableOpattention/dense_2/kernel* 
_output_shapes
:
АА*
dtype0
°
$attention/layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*5
shared_name&$attention/layer_normalization_2/beta
Ъ
8attention/layer_normalization_2/beta/Read/ReadVariableOpReadVariableOp$attention/layer_normalization_2/beta*
_output_shapes	
:А*
dtype0
£
%attention/layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*6
shared_name'%attention/layer_normalization_2/gamma
Ь
9attention/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOp%attention/layer_normalization_2/gamma*
_output_shapes	
:А*
dtype0
≈
6attention/multi_head_attention_1/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*G
shared_name86attention/multi_head_attention_1/attention_output/bias
Њ
Jattention/multi_head_attention_1/attention_output/bias/Read/ReadVariableOpReadVariableOp6attention/multi_head_attention_1/attention_output/bias*
_output_shapes	
:А*
dtype0
“
8attention/multi_head_attention_1/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*I
shared_name:8attention/multi_head_attention_1/attention_output/kernel
Ћ
Lattention/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpReadVariableOp8attention/multi_head_attention_1/attention_output/kernel*$
_output_shapes
:АА*
dtype0
≥
+attention/multi_head_attention_1/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*<
shared_name-+attention/multi_head_attention_1/value/bias
ђ
?attention/multi_head_attention_1/value/bias/Read/ReadVariableOpReadVariableOp+attention/multi_head_attention_1/value/bias*
_output_shapes
:	А*
dtype0
Љ
-attention/multi_head_attention_1/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*>
shared_name/-attention/multi_head_attention_1/value/kernel
µ
Aattention/multi_head_attention_1/value/kernel/Read/ReadVariableOpReadVariableOp-attention/multi_head_attention_1/value/kernel*$
_output_shapes
:АА*
dtype0
ѓ
)attention/multi_head_attention_1/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*:
shared_name+)attention/multi_head_attention_1/key/bias
®
=attention/multi_head_attention_1/key/bias/Read/ReadVariableOpReadVariableOp)attention/multi_head_attention_1/key/bias*
_output_shapes
:	А*
dtype0
Є
+attention/multi_head_attention_1/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*<
shared_name-+attention/multi_head_attention_1/key/kernel
±
?attention/multi_head_attention_1/key/kernel/Read/ReadVariableOpReadVariableOp+attention/multi_head_attention_1/key/kernel*$
_output_shapes
:АА*
dtype0
≥
+attention/multi_head_attention_1/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*<
shared_name-+attention/multi_head_attention_1/query/bias
ђ
?attention/multi_head_attention_1/query/bias/Read/ReadVariableOpReadVariableOp+attention/multi_head_attention_1/query/bias*
_output_shapes
:	А*
dtype0
Љ
-attention/multi_head_attention_1/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*>
shared_name/-attention/multi_head_attention_1/query/kernel
µ
Aattention/multi_head_attention_1/query/kernel/Read/ReadVariableOpReadVariableOp-attention/multi_head_attention_1/query/kernel*$
_output_shapes
:АА*
dtype0
«
5token_and_position_embedding_6/embedding_6/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*F
shared_name75token_and_position_embedding_6/embedding_6/embeddings
ј
Itoken_and_position_embedding_6/embedding_6/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_6/embedding_6/embeddings*
_output_shapes
:	А*
dtype0
«
5token_and_position_embedding_5/embedding_5/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	;А*F
shared_name75token_and_position_embedding_5/embedding_5/embeddings
ј
Itoken_and_position_embedding_5/embedding_5/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_5/embedding_5/embeddings*
_output_shapes
:	;А*
dtype0
В
duration_outputs/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameduration_outputs/bias
{
)duration_outputs/bias/Read/ReadVariableOpReadVariableOpduration_outputs/bias*
_output_shapes
:*
dtype0
Л
duration_outputs/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*(
shared_nameduration_outputs/kernel
Д
+duration_outputs/kernel/Read/ReadVariableOpReadVariableOpduration_outputs/kernel*
_output_shapes
:	А*
dtype0
z
note_outputs/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:;*"
shared_namenote_outputs/bias
s
%note_outputs/bias/Read/ReadVariableOpReadVariableOpnote_outputs/bias*
_output_shapes
:;*
dtype0
Г
note_outputs/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А;*$
shared_namenote_outputs/kernel
|
'note_outputs/kernel/Read/ReadVariableOpReadVariableOpnote_outputs/kernel*
_output_shapes
:	А;*
dtype0
М
serving_default_input_3Placeholder*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
dtype0*%
shape:€€€€€€€€€€€€€€€€€€
М
serving_default_input_4Placeholder*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
dtype0*%
shape:€€€€€€€€€€€€€€€€€€
н	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3serving_default_input_45token_and_position_embedding_5/embedding_5/embeddings5token_and_position_embedding_6/embedding_6/embeddings-attention/multi_head_attention_1/query/kernel+attention/multi_head_attention_1/query/bias+attention/multi_head_attention_1/key/kernel)attention/multi_head_attention_1/key/bias-attention/multi_head_attention_1/value/kernel+attention/multi_head_attention_1/value/bias8attention/multi_head_attention_1/attention_output/kernel6attention/multi_head_attention_1/attention_output/bias%attention/layer_normalization_2/gamma$attention/layer_normalization_2/betaattention/dense_2/kernelattention/dense_2/biasattention/dense_3/kernelattention/dense_3/bias%attention/layer_normalization_3/gamma$attention/layer_normalization_3/betaduration_outputs/kernelduration_outputs/biasnote_outputs/kernelnote_outputs/bias*#
Tin
2*
Tout
2*
_collective_manager_ids
 *T
_output_shapesB
@:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€;*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *.
f)R'
%__inference_signature_wrapper_2666551

NoOpNoOp
Џї
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Фї
valueЙїBЕї BэЇ
ј
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures*
* 
* 
ђ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	token_emb
pos_emb*
ђ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!	token_emb
"pos_emb*
О
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses* 
в
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses
/attn
0	dropout_1
1ln_1
	2ffn_1
	3ffn_2
4	dropout_2
5ln_2*
¶
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias*
¶
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias*
™
F0
G1
H2
I3
J4
K5
L6
M7
N8
O9
P10
Q11
R12
S13
T14
U15
V16
W17
<18
=19
D20
E21*
™
F0
G1
H2
I3
J4
K5
L6
M7
N8
O9
P10
Q11
R12
S13
T14
U15
V16
W17
<18
=19
D20
E21*
* 
∞
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
]trace_0
^trace_1
_trace_2
`trace_3* 
6
atrace_0
btrace_1
ctrace_2
dtrace_3* 
* 
Б
e
_variables
f_iterations
g_learning_rate
h_index_dict
i
_momentums
j_velocities
k_update_step_xla*
* 

lserving_default* 

F0*

F0*
* 
У
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

rtrace_0* 

strace_0* 
†
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses
F
embeddings*
О
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses* 

G0*

G0*
* 
Ш
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*

Еtrace_0* 

Жtrace_0* 
¶
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses
G
embeddings*
Ф
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses* 
* 
* 
* 
Ц
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses* 

Шtrace_0* 

Щtrace_0* 
z
H0
I1
J2
K3
L4
M5
N6
O7
P8
Q9
R10
S11
T12
U13
V14
W15*
z
H0
I1
J2
K3
L4
M5
N6
O7
P8
Q9
R10
S11
T12
U13
V14
W15*
* 
Ш
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

Яtrace_0
†trace_1* 

°trace_0
Ґtrace_1* 
Е
£	variables
§trainable_variables
•regularization_losses
¶	keras_api
І__call__
+®&call_and_return_all_conditional_losses
©_query_dense
™
_key_dense
Ђ_value_dense
ђ_softmax
≠_dropout_layer
Ѓ_output_dense*
ђ
ѓ	variables
∞trainable_variables
±regularization_losses
≤	keras_api
≥__call__
+і&call_and_return_all_conditional_losses
µ_random_generator* 
ґ
ґ	variables
Јtrainable_variables
Єregularization_losses
є	keras_api
Ї__call__
+ї&call_and_return_all_conditional_losses
	Љaxis
	Pgamma
Qbeta*
ђ
љ	variables
Њtrainable_variables
њregularization_losses
ј	keras_api
Ѕ__call__
+¬&call_and_return_all_conditional_losses

Rkernel
Sbias*
ђ
√	variables
ƒtrainable_variables
≈regularization_losses
∆	keras_api
«__call__
+»&call_and_return_all_conditional_losses

Tkernel
Ubias*
ђ
…	variables
 trainable_variables
Ћregularization_losses
ћ	keras_api
Ќ__call__
+ќ&call_and_return_all_conditional_losses
ѕ_random_generator* 
ґ
–	variables
—trainable_variables
“regularization_losses
”	keras_api
‘__call__
+’&call_and_return_all_conditional_losses
	÷axis
	Vgamma
Wbeta*

<0
=1*

<0
=1*
* 
Ш
„non_trainable_variables
Ўlayers
ўmetrics
 Џlayer_regularization_losses
џlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

№trace_0* 

Ёtrace_0* 
c]
VARIABLE_VALUEnote_outputs/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEnote_outputs/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

D0
E1*

D0
E1*
* 
Ш
ёnon_trainable_variables
яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses*

гtrace_0* 

дtrace_0* 
ga
VARIABLE_VALUEduration_outputs/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEduration_outputs/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5token_and_position_embedding_5/embedding_5/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5token_and_position_embedding_6/embedding_6/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE-attention/multi_head_attention_1/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE+attention/multi_head_attention_1/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE+attention/multi_head_attention_1/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE)attention/multi_head_attention_1/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE-attention/multi_head_attention_1/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE+attention/multi_head_attention_1/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8attention/multi_head_attention_1/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE6attention/multi_head_attention_1/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%attention/layer_normalization_2/gamma'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$attention/layer_normalization_2/beta'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEattention/dense_2/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEattention/dense_2/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEattention/dense_3/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEattention/dense_3/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%attention/layer_normalization_3/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$attention/layer_normalization_3/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
0
1
2
3
4
5
6
7*

е0
ж1
з2*
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
О
f0
и1
й2
к3
л4
м5
н6
о7
п8
р9
с10
т11
у12
ф13
х14
ц15
ч16
ш17
щ18
ъ19
ы20
ь21
э22
ю23
€24
А25
Б26
В27
Г28
Д29
Е30
Ж31
З32
И33
Й34
К35
Л36
М37
Н38
О39
П40
Р41
С42
Т43
У44*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
ј
и0
к1
м2
о3
р4
т5
ф6
ц7
ш8
ъ9
ь10
ю11
А12
В13
Д14
Ж15
И16
К17
М18
О19
Р20
Т21*
ј
й0
л1
н2
п3
с4
у5
х6
ч7
щ8
ы9
э10
€11
Б12
Г13
Е14
З15
Й16
Л17
Н18
П19
С20
У21*
* 
* 
* 

0
1*
* 
* 
* 
* 
* 

F0*

F0*
* 
Ш
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
* 

!0
"1*
* 
* 
* 
* 
* 

G0*

G0*
* 
Ю
Юnon_trainable_variables
Яlayers
†metrics
 °layer_regularization_losses
Ґlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
£non_trainable_variables
§layers
•metrics
 ¶layer_regularization_losses
Іlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses* 
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
5
/0
01
12
23
34
45
56*
* 
* 
* 
* 
* 
* 
* 
<
H0
I1
J2
K3
L4
M5
N6
O7*
<
H0
I1
J2
K3
L4
M5
N6
O7*
* 
Ю
®non_trainable_variables
©layers
™metrics
 Ђlayer_regularization_losses
ђlayer_metrics
£	variables
§trainable_variables
•regularization_losses
І__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses*
* 
* 
я
≠	variables
Ѓtrainable_variables
ѓregularization_losses
∞	keras_api
±__call__
+≤&call_and_return_all_conditional_losses
≥partial_output_shape
іfull_output_shape

Hkernel
Ibias*
я
µ	variables
ґtrainable_variables
Јregularization_losses
Є	keras_api
є__call__
+Ї&call_and_return_all_conditional_losses
їpartial_output_shape
Љfull_output_shape

Jkernel
Kbias*
я
љ	variables
Њtrainable_variables
њregularization_losses
ј	keras_api
Ѕ__call__
+¬&call_and_return_all_conditional_losses
√partial_output_shape
ƒfull_output_shape

Lkernel
Mbias*
Ф
≈	variables
∆trainable_variables
«regularization_losses
»	keras_api
…__call__
+ &call_and_return_all_conditional_losses* 
ђ
Ћ	variables
ћtrainable_variables
Ќregularization_losses
ќ	keras_api
ѕ__call__
+–&call_and_return_all_conditional_losses
—_random_generator* 
я
“	variables
”trainable_variables
‘regularization_losses
’	keras_api
÷__call__
+„&call_and_return_all_conditional_losses
Ўpartial_output_shape
ўfull_output_shape

Nkernel
Obias*
* 
* 
* 
Ь
Џnon_trainable_variables
џlayers
№metrics
 Ёlayer_regularization_losses
ёlayer_metrics
ѓ	variables
∞trainable_variables
±regularization_losses
≥__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses* 
* 
* 
* 

P0
Q1*

P0
Q1*
* 
Ю
яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
ґ	variables
Јtrainable_variables
Єregularization_losses
Ї__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses*
* 
* 
* 

R0
S1*

R0
S1*
* 
Ю
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
љ	variables
Њtrainable_variables
њregularization_losses
Ѕ__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses*
* 
* 

T0
U1*

T0
U1*
* 
Ю
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
√	variables
ƒtrainable_variables
≈regularization_losses
«__call__
+»&call_and_return_all_conditional_losses
'»"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
…	variables
 trainable_variables
Ћregularization_losses
Ќ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses* 
* 
* 
* 

V0
W1*

V0
W1*
* 
Ю
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
–	variables
—trainable_variables
“regularization_losses
‘__call__
+’&call_and_return_all_conditional_losses
'’"call_and_return_conditional_losses*
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
<
ш	variables
щ	keras_api

ъtotal

ыcount*
<
ь	variables
э	keras_api

юtotal

€count*
<
А	variables
Б	keras_api

Вtotal

Гcount*
ИБ
VARIABLE_VALUE<Adam/m/token_and_position_embedding_5/embedding_5/embeddings1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ИБ
VARIABLE_VALUE<Adam/v/token_and_position_embedding_5/embedding_5/embeddings1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ИБ
VARIABLE_VALUE<Adam/m/token_and_position_embedding_6/embedding_6/embeddings1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ИБ
VARIABLE_VALUE<Adam/v/token_and_position_embedding_6/embedding_6/embeddings1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE4Adam/m/attention/multi_head_attention_1/query/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE4Adam/v/attention/multi_head_attention_1/query/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE2Adam/m/attention/multi_head_attention_1/query/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE2Adam/v/attention/multi_head_attention_1/query/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE2Adam/m/attention/multi_head_attention_1/key/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE2Adam/v/attention/multi_head_attention_1/key/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE0Adam/m/attention/multi_head_attention_1/key/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE0Adam/v/attention/multi_head_attention_1/key/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE4Adam/m/attention/multi_head_attention_1/value/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE4Adam/v/attention/multi_head_attention_1/value/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE2Adam/m/attention/multi_head_attention_1/value/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE2Adam/v/attention/multi_head_attention_1/value/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
МЕ
VARIABLE_VALUE?Adam/m/attention/multi_head_attention_1/attention_output/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
МЕ
VARIABLE_VALUE?Adam/v/attention/multi_head_attention_1/attention_output/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
КГ
VARIABLE_VALUE=Adam/m/attention/multi_head_attention_1/attention_output/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
КГ
VARIABLE_VALUE=Adam/v/attention/multi_head_attention_1/attention_output/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adam/m/attention/layer_normalization_2/gamma2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adam/v/attention/layer_normalization_2/gamma2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+Adam/m/attention/layer_normalization_2/beta2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+Adam/v/attention/layer_normalization_2/beta2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/m/attention/dense_2/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/v/attention/dense_2/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/attention/dense_2/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/attention/dense_2/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/m/attention/dense_3/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/v/attention/dense_3/kernel2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/attention/dense_3/bias2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/attention/dense_3/bias2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adam/m/attention/layer_normalization_3/gamma2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adam/v/attention/layer_normalization_3/gamma2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+Adam/m/attention/layer_normalization_3/beta2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+Adam/v/attention/layer_normalization_3/beta2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/m/note_outputs/kernel2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/v/note_outputs/kernel2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/note_outputs/bias2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/note_outputs/bias2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/duration_outputs/kernel2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/duration_outputs/kernel2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/m/duration_outputs/bias2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/duration_outputs/bias2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*
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
4
©0
™1
Ђ2
ђ3
≠4
Ѓ5*
* 
* 
* 

H0
I1*

H0
I1*
* 
Ю
Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
≠	variables
Ѓtrainable_variables
ѓregularization_losses
±__call__
+≤&call_and_return_all_conditional_losses
'≤"call_and_return_conditional_losses*
* 
* 
* 
* 

J0
K1*

J0
K1*
* 
Ю
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
µ	variables
ґtrainable_variables
Јregularization_losses
є__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses*
* 
* 
* 
* 

L0
M1*

L0
M1*
* 
Ю
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
љ	variables
Њtrainable_variables
њregularization_losses
Ѕ__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
Ь
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
≈	variables
∆trainable_variables
«regularization_losses
…__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ь
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
Ћ	variables
ћtrainable_variables
Ќregularization_losses
ѕ__call__
+–&call_and_return_all_conditional_losses
'–"call_and_return_conditional_losses* 
* 
* 
* 

N0
O1*

N0
O1*
* 
Ю
Эnon_trainable_variables
Юlayers
Яmetrics
 †layer_regularization_losses
°layer_metrics
“	variables
”trainable_variables
‘regularization_losses
÷__call__
+„&call_and_return_all_conditional_losses
'„"call_and_return_conditional_losses*
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
ъ0
ы1*

ш	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

ю0
€1*

ь	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

В0
Г1*

А	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
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
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Є
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamenote_outputs/kernelnote_outputs/biasduration_outputs/kernelduration_outputs/bias5token_and_position_embedding_5/embedding_5/embeddings5token_and_position_embedding_6/embedding_6/embeddings-attention/multi_head_attention_1/query/kernel+attention/multi_head_attention_1/query/bias+attention/multi_head_attention_1/key/kernel)attention/multi_head_attention_1/key/bias-attention/multi_head_attention_1/value/kernel+attention/multi_head_attention_1/value/bias8attention/multi_head_attention_1/attention_output/kernel6attention/multi_head_attention_1/attention_output/bias%attention/layer_normalization_2/gamma$attention/layer_normalization_2/betaattention/dense_2/kernelattention/dense_2/biasattention/dense_3/kernelattention/dense_3/bias%attention/layer_normalization_3/gamma$attention/layer_normalization_3/beta	iterationlearning_rate<Adam/m/token_and_position_embedding_5/embedding_5/embeddings<Adam/v/token_and_position_embedding_5/embedding_5/embeddings<Adam/m/token_and_position_embedding_6/embedding_6/embeddings<Adam/v/token_and_position_embedding_6/embedding_6/embeddings4Adam/m/attention/multi_head_attention_1/query/kernel4Adam/v/attention/multi_head_attention_1/query/kernel2Adam/m/attention/multi_head_attention_1/query/bias2Adam/v/attention/multi_head_attention_1/query/bias2Adam/m/attention/multi_head_attention_1/key/kernel2Adam/v/attention/multi_head_attention_1/key/kernel0Adam/m/attention/multi_head_attention_1/key/bias0Adam/v/attention/multi_head_attention_1/key/bias4Adam/m/attention/multi_head_attention_1/value/kernel4Adam/v/attention/multi_head_attention_1/value/kernel2Adam/m/attention/multi_head_attention_1/value/bias2Adam/v/attention/multi_head_attention_1/value/bias?Adam/m/attention/multi_head_attention_1/attention_output/kernel?Adam/v/attention/multi_head_attention_1/attention_output/kernel=Adam/m/attention/multi_head_attention_1/attention_output/bias=Adam/v/attention/multi_head_attention_1/attention_output/bias,Adam/m/attention/layer_normalization_2/gamma,Adam/v/attention/layer_normalization_2/gamma+Adam/m/attention/layer_normalization_2/beta+Adam/v/attention/layer_normalization_2/betaAdam/m/attention/dense_2/kernelAdam/v/attention/dense_2/kernelAdam/m/attention/dense_2/biasAdam/v/attention/dense_2/biasAdam/m/attention/dense_3/kernelAdam/v/attention/dense_3/kernelAdam/m/attention/dense_3/biasAdam/v/attention/dense_3/bias,Adam/m/attention/layer_normalization_3/gamma,Adam/v/attention/layer_normalization_3/gamma+Adam/m/attention/layer_normalization_3/beta+Adam/v/attention/layer_normalization_3/betaAdam/m/note_outputs/kernelAdam/v/note_outputs/kernelAdam/m/note_outputs/biasAdam/v/note_outputs/biasAdam/m/duration_outputs/kernelAdam/v/duration_outputs/kernelAdam/m/duration_outputs/biasAdam/v/duration_outputs/biastotal_2count_2total_1count_1totalcountConst*W
TinP
N2L*
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
GPU 2J 8В *)
f$R"
 __inference__traced_save_2668427
≥
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamenote_outputs/kernelnote_outputs/biasduration_outputs/kernelduration_outputs/bias5token_and_position_embedding_5/embedding_5/embeddings5token_and_position_embedding_6/embedding_6/embeddings-attention/multi_head_attention_1/query/kernel+attention/multi_head_attention_1/query/bias+attention/multi_head_attention_1/key/kernel)attention/multi_head_attention_1/key/bias-attention/multi_head_attention_1/value/kernel+attention/multi_head_attention_1/value/bias8attention/multi_head_attention_1/attention_output/kernel6attention/multi_head_attention_1/attention_output/bias%attention/layer_normalization_2/gamma$attention/layer_normalization_2/betaattention/dense_2/kernelattention/dense_2/biasattention/dense_3/kernelattention/dense_3/bias%attention/layer_normalization_3/gamma$attention/layer_normalization_3/beta	iterationlearning_rate<Adam/m/token_and_position_embedding_5/embedding_5/embeddings<Adam/v/token_and_position_embedding_5/embedding_5/embeddings<Adam/m/token_and_position_embedding_6/embedding_6/embeddings<Adam/v/token_and_position_embedding_6/embedding_6/embeddings4Adam/m/attention/multi_head_attention_1/query/kernel4Adam/v/attention/multi_head_attention_1/query/kernel2Adam/m/attention/multi_head_attention_1/query/bias2Adam/v/attention/multi_head_attention_1/query/bias2Adam/m/attention/multi_head_attention_1/key/kernel2Adam/v/attention/multi_head_attention_1/key/kernel0Adam/m/attention/multi_head_attention_1/key/bias0Adam/v/attention/multi_head_attention_1/key/bias4Adam/m/attention/multi_head_attention_1/value/kernel4Adam/v/attention/multi_head_attention_1/value/kernel2Adam/m/attention/multi_head_attention_1/value/bias2Adam/v/attention/multi_head_attention_1/value/bias?Adam/m/attention/multi_head_attention_1/attention_output/kernel?Adam/v/attention/multi_head_attention_1/attention_output/kernel=Adam/m/attention/multi_head_attention_1/attention_output/bias=Adam/v/attention/multi_head_attention_1/attention_output/bias,Adam/m/attention/layer_normalization_2/gamma,Adam/v/attention/layer_normalization_2/gamma+Adam/m/attention/layer_normalization_2/beta+Adam/v/attention/layer_normalization_2/betaAdam/m/attention/dense_2/kernelAdam/v/attention/dense_2/kernelAdam/m/attention/dense_2/biasAdam/v/attention/dense_2/biasAdam/m/attention/dense_3/kernelAdam/v/attention/dense_3/kernelAdam/m/attention/dense_3/biasAdam/v/attention/dense_3/bias,Adam/m/attention/layer_normalization_3/gamma,Adam/v/attention/layer_normalization_3/gamma+Adam/m/attention/layer_normalization_3/beta+Adam/v/attention/layer_normalization_3/betaAdam/m/note_outputs/kernelAdam/v/note_outputs/kernelAdam/m/note_outputs/biasAdam/v/note_outputs/biasAdam/m/duration_outputs/kernelAdam/v/duration_outputs/kernelAdam/m/duration_outputs/biasAdam/v/duration_outputs/biastotal_2count_2total_1count_1totalcount*V
TinO
M2K*
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
GPU 2J 8В *,
f'R%
#__inference__traced_restore_2668659≥’
Йђ
щN
 __inference__traced_save_2668427
file_prefix=
*read_disablecopyonread_note_outputs_kernel:	А;8
*read_1_disablecopyonread_note_outputs_bias:;C
0read_2_disablecopyonread_duration_outputs_kernel:	А<
.read_3_disablecopyonread_duration_outputs_bias:a
Nread_4_disablecopyonread_token_and_position_embedding_5_embedding_5_embeddings:	;Аa
Nread_5_disablecopyonread_token_and_position_embedding_6_embedding_6_embeddings:	А^
Fread_6_disablecopyonread_attention_multi_head_attention_1_query_kernel:ААW
Dread_7_disablecopyonread_attention_multi_head_attention_1_query_bias:	А\
Dread_8_disablecopyonread_attention_multi_head_attention_1_key_kernel:ААU
Bread_9_disablecopyonread_attention_multi_head_attention_1_key_bias:	А_
Gread_10_disablecopyonread_attention_multi_head_attention_1_value_kernel:ААX
Eread_11_disablecopyonread_attention_multi_head_attention_1_value_bias:	Аj
Rread_12_disablecopyonread_attention_multi_head_attention_1_attention_output_kernel:АА_
Pread_13_disablecopyonread_attention_multi_head_attention_1_attention_output_bias:	АN
?read_14_disablecopyonread_attention_layer_normalization_2_gamma:	АM
>read_15_disablecopyonread_attention_layer_normalization_2_beta:	АF
2read_16_disablecopyonread_attention_dense_2_kernel:
АА?
0read_17_disablecopyonread_attention_dense_2_bias:	АF
2read_18_disablecopyonread_attention_dense_3_kernel:
АА?
0read_19_disablecopyonread_attention_dense_3_bias:	АN
?read_20_disablecopyonread_attention_layer_normalization_3_gamma:	АM
>read_21_disablecopyonread_attention_layer_normalization_3_beta:	А-
#read_22_disablecopyonread_iteration:	 1
'read_23_disablecopyonread_learning_rate: i
Vread_24_disablecopyonread_adam_m_token_and_position_embedding_5_embedding_5_embeddings:	;Аi
Vread_25_disablecopyonread_adam_v_token_and_position_embedding_5_embedding_5_embeddings:	;Аi
Vread_26_disablecopyonread_adam_m_token_and_position_embedding_6_embedding_6_embeddings:	Аi
Vread_27_disablecopyonread_adam_v_token_and_position_embedding_6_embedding_6_embeddings:	Аf
Nread_28_disablecopyonread_adam_m_attention_multi_head_attention_1_query_kernel:ААf
Nread_29_disablecopyonread_adam_v_attention_multi_head_attention_1_query_kernel:АА_
Lread_30_disablecopyonread_adam_m_attention_multi_head_attention_1_query_bias:	А_
Lread_31_disablecopyonread_adam_v_attention_multi_head_attention_1_query_bias:	Аd
Lread_32_disablecopyonread_adam_m_attention_multi_head_attention_1_key_kernel:ААd
Lread_33_disablecopyonread_adam_v_attention_multi_head_attention_1_key_kernel:АА]
Jread_34_disablecopyonread_adam_m_attention_multi_head_attention_1_key_bias:	А]
Jread_35_disablecopyonread_adam_v_attention_multi_head_attention_1_key_bias:	Аf
Nread_36_disablecopyonread_adam_m_attention_multi_head_attention_1_value_kernel:ААf
Nread_37_disablecopyonread_adam_v_attention_multi_head_attention_1_value_kernel:АА_
Lread_38_disablecopyonread_adam_m_attention_multi_head_attention_1_value_bias:	А_
Lread_39_disablecopyonread_adam_v_attention_multi_head_attention_1_value_bias:	Аq
Yread_40_disablecopyonread_adam_m_attention_multi_head_attention_1_attention_output_kernel:ААq
Yread_41_disablecopyonread_adam_v_attention_multi_head_attention_1_attention_output_kernel:ААf
Wread_42_disablecopyonread_adam_m_attention_multi_head_attention_1_attention_output_bias:	Аf
Wread_43_disablecopyonread_adam_v_attention_multi_head_attention_1_attention_output_bias:	АU
Fread_44_disablecopyonread_adam_m_attention_layer_normalization_2_gamma:	АU
Fread_45_disablecopyonread_adam_v_attention_layer_normalization_2_gamma:	АT
Eread_46_disablecopyonread_adam_m_attention_layer_normalization_2_beta:	АT
Eread_47_disablecopyonread_adam_v_attention_layer_normalization_2_beta:	АM
9read_48_disablecopyonread_adam_m_attention_dense_2_kernel:
ААM
9read_49_disablecopyonread_adam_v_attention_dense_2_kernel:
ААF
7read_50_disablecopyonread_adam_m_attention_dense_2_bias:	АF
7read_51_disablecopyonread_adam_v_attention_dense_2_bias:	АM
9read_52_disablecopyonread_adam_m_attention_dense_3_kernel:
ААM
9read_53_disablecopyonread_adam_v_attention_dense_3_kernel:
ААF
7read_54_disablecopyonread_adam_m_attention_dense_3_bias:	АF
7read_55_disablecopyonread_adam_v_attention_dense_3_bias:	АU
Fread_56_disablecopyonread_adam_m_attention_layer_normalization_3_gamma:	АU
Fread_57_disablecopyonread_adam_v_attention_layer_normalization_3_gamma:	АT
Eread_58_disablecopyonread_adam_m_attention_layer_normalization_3_beta:	АT
Eread_59_disablecopyonread_adam_v_attention_layer_normalization_3_beta:	АG
4read_60_disablecopyonread_adam_m_note_outputs_kernel:	А;G
4read_61_disablecopyonread_adam_v_note_outputs_kernel:	А;@
2read_62_disablecopyonread_adam_m_note_outputs_bias:;@
2read_63_disablecopyonread_adam_v_note_outputs_bias:;K
8read_64_disablecopyonread_adam_m_duration_outputs_kernel:	АK
8read_65_disablecopyonread_adam_v_duration_outputs_kernel:	АD
6read_66_disablecopyonread_adam_m_duration_outputs_bias:D
6read_67_disablecopyonread_adam_v_duration_outputs_bias:+
!read_68_disablecopyonread_total_2: +
!read_69_disablecopyonread_count_2: +
!read_70_disablecopyonread_total_1: +
!read_71_disablecopyonread_count_1: )
read_72_disablecopyonread_total: )
read_73_disablecopyonread_count: 
savev2_const
identity_149ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_25/DisableCopyOnReadҐRead_25/ReadVariableOpҐRead_26/DisableCopyOnReadҐRead_26/ReadVariableOpҐRead_27/DisableCopyOnReadҐRead_27/ReadVariableOpҐRead_28/DisableCopyOnReadҐRead_28/ReadVariableOpҐRead_29/DisableCopyOnReadҐRead_29/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_30/DisableCopyOnReadҐRead_30/ReadVariableOpҐRead_31/DisableCopyOnReadҐRead_31/ReadVariableOpҐRead_32/DisableCopyOnReadҐRead_32/ReadVariableOpҐRead_33/DisableCopyOnReadҐRead_33/ReadVariableOpҐRead_34/DisableCopyOnReadҐRead_34/ReadVariableOpҐRead_35/DisableCopyOnReadҐRead_35/ReadVariableOpҐRead_36/DisableCopyOnReadҐRead_36/ReadVariableOpҐRead_37/DisableCopyOnReadҐRead_37/ReadVariableOpҐRead_38/DisableCopyOnReadҐRead_38/ReadVariableOpҐRead_39/DisableCopyOnReadҐRead_39/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_40/DisableCopyOnReadҐRead_40/ReadVariableOpҐRead_41/DisableCopyOnReadҐRead_41/ReadVariableOpҐRead_42/DisableCopyOnReadҐRead_42/ReadVariableOpҐRead_43/DisableCopyOnReadҐRead_43/ReadVariableOpҐRead_44/DisableCopyOnReadҐRead_44/ReadVariableOpҐRead_45/DisableCopyOnReadҐRead_45/ReadVariableOpҐRead_46/DisableCopyOnReadҐRead_46/ReadVariableOpҐRead_47/DisableCopyOnReadҐRead_47/ReadVariableOpҐRead_48/DisableCopyOnReadҐRead_48/ReadVariableOpҐRead_49/DisableCopyOnReadҐRead_49/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_50/DisableCopyOnReadҐRead_50/ReadVariableOpҐRead_51/DisableCopyOnReadҐRead_51/ReadVariableOpҐRead_52/DisableCopyOnReadҐRead_52/ReadVariableOpҐRead_53/DisableCopyOnReadҐRead_53/ReadVariableOpҐRead_54/DisableCopyOnReadҐRead_54/ReadVariableOpҐRead_55/DisableCopyOnReadҐRead_55/ReadVariableOpҐRead_56/DisableCopyOnReadҐRead_56/ReadVariableOpҐRead_57/DisableCopyOnReadҐRead_57/ReadVariableOpҐRead_58/DisableCopyOnReadҐRead_58/ReadVariableOpҐRead_59/DisableCopyOnReadҐRead_59/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_60/DisableCopyOnReadҐRead_60/ReadVariableOpҐRead_61/DisableCopyOnReadҐRead_61/ReadVariableOpҐRead_62/DisableCopyOnReadҐRead_62/ReadVariableOpҐRead_63/DisableCopyOnReadҐRead_63/ReadVariableOpҐRead_64/DisableCopyOnReadҐRead_64/ReadVariableOpҐRead_65/DisableCopyOnReadҐRead_65/ReadVariableOpҐRead_66/DisableCopyOnReadҐRead_66/ReadVariableOpҐRead_67/DisableCopyOnReadҐRead_67/ReadVariableOpҐRead_68/DisableCopyOnReadҐRead_68/ReadVariableOpҐRead_69/DisableCopyOnReadҐRead_69/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_70/DisableCopyOnReadҐRead_70/ReadVariableOpҐRead_71/DisableCopyOnReadҐRead_71/ReadVariableOpҐRead_72/DisableCopyOnReadҐRead_72/ReadVariableOpҐRead_73/DisableCopyOnReadҐRead_73/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
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
: |
Read/DisableCopyOnReadDisableCopyOnRead*read_disablecopyonread_note_outputs_kernel"/device:CPU:0*
_output_shapes
 І
Read/ReadVariableOpReadVariableOp*read_disablecopyonread_note_outputs_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А;*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	А;b

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	А;~
Read_1/DisableCopyOnReadDisableCopyOnRead*read_1_disablecopyonread_note_outputs_bias"/device:CPU:0*
_output_shapes
 ¶
Read_1/ReadVariableOpReadVariableOp*read_1_disablecopyonread_note_outputs_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:;*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:;_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:;Д
Read_2/DisableCopyOnReadDisableCopyOnRead0read_2_disablecopyonread_duration_outputs_kernel"/device:CPU:0*
_output_shapes
 ±
Read_2/ReadVariableOpReadVariableOp0read_2_disablecopyonread_duration_outputs_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аd

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	АВ
Read_3/DisableCopyOnReadDisableCopyOnRead.read_3_disablecopyonread_duration_outputs_bias"/device:CPU:0*
_output_shapes
 ™
Read_3/ReadVariableOpReadVariableOp.read_3_disablecopyonread_duration_outputs_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:Ґ
Read_4/DisableCopyOnReadDisableCopyOnReadNread_4_disablecopyonread_token_and_position_embedding_5_embedding_5_embeddings"/device:CPU:0*
_output_shapes
 ѕ
Read_4/ReadVariableOpReadVariableOpNread_4_disablecopyonread_token_and_position_embedding_5_embedding_5_embeddings^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	;А*
dtype0n

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	;Аd

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:	;АҐ
Read_5/DisableCopyOnReadDisableCopyOnReadNread_5_disablecopyonread_token_and_position_embedding_6_embedding_6_embeddings"/device:CPU:0*
_output_shapes
 ѕ
Read_5/ReadVariableOpReadVariableOpNread_5_disablecopyonread_token_and_position_embedding_6_embedding_6_embeddings^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0o
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:	АЪ
Read_6/DisableCopyOnReadDisableCopyOnReadFread_6_disablecopyonread_attention_multi_head_attention_1_query_kernel"/device:CPU:0*
_output_shapes
 ћ
Read_6/ReadVariableOpReadVariableOpFread_6_disablecopyonread_attention_multi_head_attention_1_query_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0t
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*$
_output_shapes
:ААШ
Read_7/DisableCopyOnReadDisableCopyOnReadDread_7_disablecopyonread_attention_multi_head_attention_1_query_bias"/device:CPU:0*
_output_shapes
 ≈
Read_7/ReadVariableOpReadVariableOpDread_7_disablecopyonread_attention_multi_head_attention_1_query_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0o
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:	АШ
Read_8/DisableCopyOnReadDisableCopyOnReadDread_8_disablecopyonread_attention_multi_head_attention_1_key_kernel"/device:CPU:0*
_output_shapes
  
Read_8/ReadVariableOpReadVariableOpDread_8_disablecopyonread_attention_multi_head_attention_1_key_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0t
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*$
_output_shapes
:ААЦ
Read_9/DisableCopyOnReadDisableCopyOnReadBread_9_disablecopyonread_attention_multi_head_attention_1_key_bias"/device:CPU:0*
_output_shapes
 √
Read_9/ReadVariableOpReadVariableOpBread_9_disablecopyonread_attention_multi_head_attention_1_key_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0o
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:	АЬ
Read_10/DisableCopyOnReadDisableCopyOnReadGread_10_disablecopyonread_attention_multi_head_attention_1_value_kernel"/device:CPU:0*
_output_shapes
 ѕ
Read_10/ReadVariableOpReadVariableOpGread_10_disablecopyonread_attention_multi_head_attention_1_value_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0u
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*$
_output_shapes
:ААЪ
Read_11/DisableCopyOnReadDisableCopyOnReadEread_11_disablecopyonread_attention_multi_head_attention_1_value_bias"/device:CPU:0*
_output_shapes
 »
Read_11/ReadVariableOpReadVariableOpEread_11_disablecopyonread_attention_multi_head_attention_1_value_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:	АІ
Read_12/DisableCopyOnReadDisableCopyOnReadRread_12_disablecopyonread_attention_multi_head_attention_1_attention_output_kernel"/device:CPU:0*
_output_shapes
 Џ
Read_12/ReadVariableOpReadVariableOpRread_12_disablecopyonread_attention_multi_head_attention_1_attention_output_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0u
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*$
_output_shapes
:АА•
Read_13/DisableCopyOnReadDisableCopyOnReadPread_13_disablecopyonread_attention_multi_head_attention_1_attention_output_bias"/device:CPU:0*
_output_shapes
 ѕ
Read_13/ReadVariableOpReadVariableOpPread_13_disablecopyonread_attention_multi_head_attention_1_attention_output_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:АФ
Read_14/DisableCopyOnReadDisableCopyOnRead?read_14_disablecopyonread_attention_layer_normalization_2_gamma"/device:CPU:0*
_output_shapes
 Њ
Read_14/ReadVariableOpReadVariableOp?read_14_disablecopyonread_attention_layer_normalization_2_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes	
:АУ
Read_15/DisableCopyOnReadDisableCopyOnRead>read_15_disablecopyonread_attention_layer_normalization_2_beta"/device:CPU:0*
_output_shapes
 љ
Read_15/ReadVariableOpReadVariableOp>read_15_disablecopyonread_attention_layer_normalization_2_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЗ
Read_16/DisableCopyOnReadDisableCopyOnRead2read_16_disablecopyonread_attention_dense_2_kernel"/device:CPU:0*
_output_shapes
 ґ
Read_16/ReadVariableOpReadVariableOp2read_16_disablecopyonread_attention_dense_2_kernel^Read_16/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АА*
dtype0q
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ААg
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ААЕ
Read_17/DisableCopyOnReadDisableCopyOnRead0read_17_disablecopyonread_attention_dense_2_bias"/device:CPU:0*
_output_shapes
 ѓ
Read_17/ReadVariableOpReadVariableOp0read_17_disablecopyonread_attention_dense_2_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЗ
Read_18/DisableCopyOnReadDisableCopyOnRead2read_18_disablecopyonread_attention_dense_3_kernel"/device:CPU:0*
_output_shapes
 ґ
Read_18/ReadVariableOpReadVariableOp2read_18_disablecopyonread_attention_dense_3_kernel^Read_18/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АА*
dtype0q
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ААg
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ААЕ
Read_19/DisableCopyOnReadDisableCopyOnRead0read_19_disablecopyonread_attention_dense_3_bias"/device:CPU:0*
_output_shapes
 ѓ
Read_19/ReadVariableOpReadVariableOp0read_19_disablecopyonread_attention_dense_3_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes	
:АФ
Read_20/DisableCopyOnReadDisableCopyOnRead?read_20_disablecopyonread_attention_layer_normalization_3_gamma"/device:CPU:0*
_output_shapes
 Њ
Read_20/ReadVariableOpReadVariableOp?read_20_disablecopyonread_attention_layer_normalization_3_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:АУ
Read_21/DisableCopyOnReadDisableCopyOnRead>read_21_disablecopyonread_attention_layer_normalization_3_beta"/device:CPU:0*
_output_shapes
 љ
Read_21/ReadVariableOpReadVariableOp>read_21_disablecopyonread_attention_layer_normalization_3_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:Аx
Read_22/DisableCopyOnReadDisableCopyOnRead#read_22_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Э
Read_22/ReadVariableOpReadVariableOp#read_22_disablecopyonread_iteration^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_23/DisableCopyOnReadDisableCopyOnRead'read_23_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 °
Read_23/ReadVariableOpReadVariableOp'read_23_disablecopyonread_learning_rate^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: Ђ
Read_24/DisableCopyOnReadDisableCopyOnReadVread_24_disablecopyonread_adam_m_token_and_position_embedding_5_embedding_5_embeddings"/device:CPU:0*
_output_shapes
 ў
Read_24/ReadVariableOpReadVariableOpVread_24_disablecopyonread_adam_m_token_and_position_embedding_5_embedding_5_embeddings^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	;А*
dtype0p
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	;Аf
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:	;АЂ
Read_25/DisableCopyOnReadDisableCopyOnReadVread_25_disablecopyonread_adam_v_token_and_position_embedding_5_embedding_5_embeddings"/device:CPU:0*
_output_shapes
 ў
Read_25/ReadVariableOpReadVariableOpVread_25_disablecopyonread_adam_v_token_and_position_embedding_5_embedding_5_embeddings^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	;А*
dtype0p
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	;Аf
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:	;АЂ
Read_26/DisableCopyOnReadDisableCopyOnReadVread_26_disablecopyonread_adam_m_token_and_position_embedding_6_embedding_6_embeddings"/device:CPU:0*
_output_shapes
 ў
Read_26/ReadVariableOpReadVariableOpVread_26_disablecopyonread_adam_m_token_and_position_embedding_6_embedding_6_embeddings^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:	АЂ
Read_27/DisableCopyOnReadDisableCopyOnReadVread_27_disablecopyonread_adam_v_token_and_position_embedding_6_embedding_6_embeddings"/device:CPU:0*
_output_shapes
 ў
Read_27/ReadVariableOpReadVariableOpVread_27_disablecopyonread_adam_v_token_and_position_embedding_6_embedding_6_embeddings^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:	А£
Read_28/DisableCopyOnReadDisableCopyOnReadNread_28_disablecopyonread_adam_m_attention_multi_head_attention_1_query_kernel"/device:CPU:0*
_output_shapes
 ÷
Read_28/ReadVariableOpReadVariableOpNread_28_disablecopyonread_adam_m_attention_multi_head_attention_1_query_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0u
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*$
_output_shapes
:АА£
Read_29/DisableCopyOnReadDisableCopyOnReadNread_29_disablecopyonread_adam_v_attention_multi_head_attention_1_query_kernel"/device:CPU:0*
_output_shapes
 ÷
Read_29/ReadVariableOpReadVariableOpNread_29_disablecopyonread_adam_v_attention_multi_head_attention_1_query_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0u
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*$
_output_shapes
:АА°
Read_30/DisableCopyOnReadDisableCopyOnReadLread_30_disablecopyonread_adam_m_attention_multi_head_attention_1_query_bias"/device:CPU:0*
_output_shapes
 ѕ
Read_30/ReadVariableOpReadVariableOpLread_30_disablecopyonread_adam_m_attention_multi_head_attention_1_query_bias^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:	А°
Read_31/DisableCopyOnReadDisableCopyOnReadLread_31_disablecopyonread_adam_v_attention_multi_head_attention_1_query_bias"/device:CPU:0*
_output_shapes
 ѕ
Read_31/ReadVariableOpReadVariableOpLread_31_disablecopyonread_adam_v_attention_multi_head_attention_1_query_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:	А°
Read_32/DisableCopyOnReadDisableCopyOnReadLread_32_disablecopyonread_adam_m_attention_multi_head_attention_1_key_kernel"/device:CPU:0*
_output_shapes
 ‘
Read_32/ReadVariableOpReadVariableOpLread_32_disablecopyonread_adam_m_attention_multi_head_attention_1_key_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0u
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*$
_output_shapes
:АА°
Read_33/DisableCopyOnReadDisableCopyOnReadLread_33_disablecopyonread_adam_v_attention_multi_head_attention_1_key_kernel"/device:CPU:0*
_output_shapes
 ‘
Read_33/ReadVariableOpReadVariableOpLread_33_disablecopyonread_adam_v_attention_multi_head_attention_1_key_kernel^Read_33/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0u
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*$
_output_shapes
:ААЯ
Read_34/DisableCopyOnReadDisableCopyOnReadJread_34_disablecopyonread_adam_m_attention_multi_head_attention_1_key_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_34/ReadVariableOpReadVariableOpJread_34_disablecopyonread_adam_m_attention_multi_head_attention_1_key_bias^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:	АЯ
Read_35/DisableCopyOnReadDisableCopyOnReadJread_35_disablecopyonread_adam_v_attention_multi_head_attention_1_key_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_35/ReadVariableOpReadVariableOpJread_35_disablecopyonread_adam_v_attention_multi_head_attention_1_key_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:	А£
Read_36/DisableCopyOnReadDisableCopyOnReadNread_36_disablecopyonread_adam_m_attention_multi_head_attention_1_value_kernel"/device:CPU:0*
_output_shapes
 ÷
Read_36/ReadVariableOpReadVariableOpNread_36_disablecopyonread_adam_m_attention_multi_head_attention_1_value_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0u
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*$
_output_shapes
:АА£
Read_37/DisableCopyOnReadDisableCopyOnReadNread_37_disablecopyonread_adam_v_attention_multi_head_attention_1_value_kernel"/device:CPU:0*
_output_shapes
 ÷
Read_37/ReadVariableOpReadVariableOpNread_37_disablecopyonread_adam_v_attention_multi_head_attention_1_value_kernel^Read_37/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0u
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*$
_output_shapes
:АА°
Read_38/DisableCopyOnReadDisableCopyOnReadLread_38_disablecopyonread_adam_m_attention_multi_head_attention_1_value_bias"/device:CPU:0*
_output_shapes
 ѕ
Read_38/ReadVariableOpReadVariableOpLread_38_disablecopyonread_adam_m_attention_multi_head_attention_1_value_bias^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
:	А°
Read_39/DisableCopyOnReadDisableCopyOnReadLread_39_disablecopyonread_adam_v_attention_multi_head_attention_1_value_bias"/device:CPU:0*
_output_shapes
 ѕ
Read_39/ReadVariableOpReadVariableOpLread_39_disablecopyonread_adam_v_attention_multi_head_attention_1_value_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
:	АЃ
Read_40/DisableCopyOnReadDisableCopyOnReadYread_40_disablecopyonread_adam_m_attention_multi_head_attention_1_attention_output_kernel"/device:CPU:0*
_output_shapes
 б
Read_40/ReadVariableOpReadVariableOpYread_40_disablecopyonread_adam_m_attention_multi_head_attention_1_attention_output_kernel^Read_40/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0u
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*$
_output_shapes
:ААЃ
Read_41/DisableCopyOnReadDisableCopyOnReadYread_41_disablecopyonread_adam_v_attention_multi_head_attention_1_attention_output_kernel"/device:CPU:0*
_output_shapes
 б
Read_41/ReadVariableOpReadVariableOpYread_41_disablecopyonread_adam_v_attention_multi_head_attention_1_attention_output_kernel^Read_41/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:АА*
dtype0u
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:ААk
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*$
_output_shapes
:ААђ
Read_42/DisableCopyOnReadDisableCopyOnReadWread_42_disablecopyonread_adam_m_attention_multi_head_attention_1_attention_output_bias"/device:CPU:0*
_output_shapes
 ÷
Read_42/ReadVariableOpReadVariableOpWread_42_disablecopyonread_adam_m_attention_multi_head_attention_1_attention_output_bias^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes	
:Ађ
Read_43/DisableCopyOnReadDisableCopyOnReadWread_43_disablecopyonread_adam_v_attention_multi_head_attention_1_attention_output_bias"/device:CPU:0*
_output_shapes
 ÷
Read_43/ReadVariableOpReadVariableOpWread_43_disablecopyonread_adam_v_attention_multi_head_attention_1_attention_output_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЫ
Read_44/DisableCopyOnReadDisableCopyOnReadFread_44_disablecopyonread_adam_m_attention_layer_normalization_2_gamma"/device:CPU:0*
_output_shapes
 ≈
Read_44/ReadVariableOpReadVariableOpFread_44_disablecopyonread_adam_m_attention_layer_normalization_2_gamma^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЫ
Read_45/DisableCopyOnReadDisableCopyOnReadFread_45_disablecopyonread_adam_v_attention_layer_normalization_2_gamma"/device:CPU:0*
_output_shapes
 ≈
Read_45/ReadVariableOpReadVariableOpFread_45_disablecopyonread_adam_v_attention_layer_normalization_2_gamma^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЪ
Read_46/DisableCopyOnReadDisableCopyOnReadEread_46_disablecopyonread_adam_m_attention_layer_normalization_2_beta"/device:CPU:0*
_output_shapes
 ƒ
Read_46/ReadVariableOpReadVariableOpEread_46_disablecopyonread_adam_m_attention_layer_normalization_2_beta^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЪ
Read_47/DisableCopyOnReadDisableCopyOnReadEread_47_disablecopyonread_adam_v_attention_layer_normalization_2_beta"/device:CPU:0*
_output_shapes
 ƒ
Read_47/ReadVariableOpReadVariableOpEread_47_disablecopyonread_adam_v_attention_layer_normalization_2_beta^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes	
:АО
Read_48/DisableCopyOnReadDisableCopyOnRead9read_48_disablecopyonread_adam_m_attention_dense_2_kernel"/device:CPU:0*
_output_shapes
 љ
Read_48/ReadVariableOpReadVariableOp9read_48_disablecopyonread_adam_m_attention_dense_2_kernel^Read_48/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АА*
dtype0q
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ААg
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ААО
Read_49/DisableCopyOnReadDisableCopyOnRead9read_49_disablecopyonread_adam_v_attention_dense_2_kernel"/device:CPU:0*
_output_shapes
 љ
Read_49/ReadVariableOpReadVariableOp9read_49_disablecopyonread_adam_v_attention_dense_2_kernel^Read_49/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АА*
dtype0q
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ААg
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ААМ
Read_50/DisableCopyOnReadDisableCopyOnRead7read_50_disablecopyonread_adam_m_attention_dense_2_bias"/device:CPU:0*
_output_shapes
 ґ
Read_50/ReadVariableOpReadVariableOp7read_50_disablecopyonread_adam_m_attention_dense_2_bias^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes	
:АМ
Read_51/DisableCopyOnReadDisableCopyOnRead7read_51_disablecopyonread_adam_v_attention_dense_2_bias"/device:CPU:0*
_output_shapes
 ґ
Read_51/ReadVariableOpReadVariableOp7read_51_disablecopyonread_adam_v_attention_dense_2_bias^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes	
:АО
Read_52/DisableCopyOnReadDisableCopyOnRead9read_52_disablecopyonread_adam_m_attention_dense_3_kernel"/device:CPU:0*
_output_shapes
 љ
Read_52/ReadVariableOpReadVariableOp9read_52_disablecopyonread_adam_m_attention_dense_3_kernel^Read_52/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АА*
dtype0r
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ААi
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ААО
Read_53/DisableCopyOnReadDisableCopyOnRead9read_53_disablecopyonread_adam_v_attention_dense_3_kernel"/device:CPU:0*
_output_shapes
 љ
Read_53/ReadVariableOpReadVariableOp9read_53_disablecopyonread_adam_v_attention_dense_3_kernel^Read_53/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АА*
dtype0r
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ААi
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ААМ
Read_54/DisableCopyOnReadDisableCopyOnRead7read_54_disablecopyonread_adam_m_attention_dense_3_bias"/device:CPU:0*
_output_shapes
 ґ
Read_54/ReadVariableOpReadVariableOp7read_54_disablecopyonread_adam_m_attention_dense_3_bias^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes	
:АМ
Read_55/DisableCopyOnReadDisableCopyOnRead7read_55_disablecopyonread_adam_v_attention_dense_3_bias"/device:CPU:0*
_output_shapes
 ґ
Read_55/ReadVariableOpReadVariableOp7read_55_disablecopyonread_adam_v_attention_dense_3_bias^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЫ
Read_56/DisableCopyOnReadDisableCopyOnReadFread_56_disablecopyonread_adam_m_attention_layer_normalization_3_gamma"/device:CPU:0*
_output_shapes
 ≈
Read_56/ReadVariableOpReadVariableOpFread_56_disablecopyonread_adam_m_attention_layer_normalization_3_gamma^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЫ
Read_57/DisableCopyOnReadDisableCopyOnReadFread_57_disablecopyonread_adam_v_attention_layer_normalization_3_gamma"/device:CPU:0*
_output_shapes
 ≈
Read_57/ReadVariableOpReadVariableOpFread_57_disablecopyonread_adam_v_attention_layer_normalization_3_gamma^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЪ
Read_58/DisableCopyOnReadDisableCopyOnReadEread_58_disablecopyonread_adam_m_attention_layer_normalization_3_beta"/device:CPU:0*
_output_shapes
 ƒ
Read_58/ReadVariableOpReadVariableOpEread_58_disablecopyonread_adam_m_attention_layer_normalization_3_beta^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЪ
Read_59/DisableCopyOnReadDisableCopyOnReadEread_59_disablecopyonread_adam_v_attention_layer_normalization_3_beta"/device:CPU:0*
_output_shapes
 ƒ
Read_59/ReadVariableOpReadVariableOpEread_59_disablecopyonread_adam_v_attention_layer_normalization_3_beta^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЙ
Read_60/DisableCopyOnReadDisableCopyOnRead4read_60_disablecopyonread_adam_m_note_outputs_kernel"/device:CPU:0*
_output_shapes
 Ј
Read_60/ReadVariableOpReadVariableOp4read_60_disablecopyonread_adam_m_note_outputs_kernel^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А;*
dtype0q
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	А;h
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:	А;Й
Read_61/DisableCopyOnReadDisableCopyOnRead4read_61_disablecopyonread_adam_v_note_outputs_kernel"/device:CPU:0*
_output_shapes
 Ј
Read_61/ReadVariableOpReadVariableOp4read_61_disablecopyonread_adam_v_note_outputs_kernel^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А;*
dtype0q
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	А;h
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
:	А;З
Read_62/DisableCopyOnReadDisableCopyOnRead2read_62_disablecopyonread_adam_m_note_outputs_bias"/device:CPU:0*
_output_shapes
 ∞
Read_62/ReadVariableOpReadVariableOp2read_62_disablecopyonread_adam_m_note_outputs_bias^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:;*
dtype0l
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:;c
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes
:;З
Read_63/DisableCopyOnReadDisableCopyOnRead2read_63_disablecopyonread_adam_v_note_outputs_bias"/device:CPU:0*
_output_shapes
 ∞
Read_63/ReadVariableOpReadVariableOp2read_63_disablecopyonread_adam_v_note_outputs_bias^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:;*
dtype0l
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:;c
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
:;Н
Read_64/DisableCopyOnReadDisableCopyOnRead8read_64_disablecopyonread_adam_m_duration_outputs_kernel"/device:CPU:0*
_output_shapes
 ї
Read_64/ReadVariableOpReadVariableOp8read_64_disablecopyonread_adam_m_duration_outputs_kernel^Read_64/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0q
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аh
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes
:	АН
Read_65/DisableCopyOnReadDisableCopyOnRead8read_65_disablecopyonread_adam_v_duration_outputs_kernel"/device:CPU:0*
_output_shapes
 ї
Read_65/ReadVariableOpReadVariableOp8read_65_disablecopyonread_adam_v_duration_outputs_kernel^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0q
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аh
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes
:	АЛ
Read_66/DisableCopyOnReadDisableCopyOnRead6read_66_disablecopyonread_adam_m_duration_outputs_bias"/device:CPU:0*
_output_shapes
 і
Read_66/ReadVariableOpReadVariableOp6read_66_disablecopyonread_adam_m_duration_outputs_bias^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes
:Л
Read_67/DisableCopyOnReadDisableCopyOnRead6read_67_disablecopyonread_adam_v_duration_outputs_bias"/device:CPU:0*
_output_shapes
 і
Read_67/ReadVariableOpReadVariableOp6read_67_disablecopyonread_adam_v_duration_outputs_bias^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_68/DisableCopyOnReadDisableCopyOnRead!read_68_disablecopyonread_total_2"/device:CPU:0*
_output_shapes
 Ы
Read_68/ReadVariableOpReadVariableOp!read_68_disablecopyonread_total_2^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_69/DisableCopyOnReadDisableCopyOnRead!read_69_disablecopyonread_count_2"/device:CPU:0*
_output_shapes
 Ы
Read_69/ReadVariableOpReadVariableOp!read_69_disablecopyonread_count_2^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_70/DisableCopyOnReadDisableCopyOnRead!read_70_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_70/ReadVariableOpReadVariableOp!read_70_disablecopyonread_total_1^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_71/DisableCopyOnReadDisableCopyOnRead!read_71_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_71/ReadVariableOpReadVariableOp!read_71_disablecopyonread_count_1^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_72/DisableCopyOnReadDisableCopyOnReadread_72_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_72/ReadVariableOpReadVariableOpread_72_disablecopyonread_total^Read_72/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_73/DisableCopyOnReadDisableCopyOnReadread_73_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_73/ReadVariableOpReadVariableOpread_73_disablecopyonread_count^Read_73/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*
_output_shapes
: –
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:K*
dtype0*щ
valueпBмKB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЖ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:K*
dtype0*Ђ
value°BЮKB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B С
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *Y
dtypesO
M2K	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_148Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_149IdentityIdentity_148:output:0^NoOp*
T0*
_output_shapes
: Х
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "%
identity_149Identity_149:output:0*≠
_input_shapesЫ
Ш: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:K

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ЌА
€
D__inference_model_2_layer_call_and_return_conditional_losses_2666993
inputs_0
inputs_1V
Ctoken_and_position_embedding_5_embedding_5_embedding_lookup_2666659:	;АV
Ctoken_and_position_embedding_6_embedding_6_embedding_lookup_2666709:	Аd
Lattention_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:ААU
Battention_multi_head_attention_1_query_add_readvariableop_resource:	Аb
Jattention_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:ААS
@attention_multi_head_attention_1_key_add_readvariableop_resource:	Аd
Lattention_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:ААU
Battention_multi_head_attention_1_value_add_readvariableop_resource:	Аo
Wattention_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:АА\
Mattention_multi_head_attention_1_attention_output_add_readvariableop_resource:	АT
Eattention_layer_normalization_2_batchnorm_mul_readvariableop_resource:	АP
Aattention_layer_normalization_2_batchnorm_readvariableop_resource:	АG
3attention_dense_2_tensordot_readvariableop_resource:
АА@
1attention_dense_2_biasadd_readvariableop_resource:	АG
3attention_dense_3_tensordot_readvariableop_resource:
АА@
1attention_dense_3_biasadd_readvariableop_resource:	АT
Eattention_layer_normalization_3_batchnorm_mul_readvariableop_resource:	АP
Aattention_layer_normalization_3_batchnorm_readvariableop_resource:	АE
2duration_outputs_tensordot_readvariableop_resource:	А>
0duration_outputs_biasadd_readvariableop_resource:A
.note_outputs_tensordot_readvariableop_resource:	А;:
,note_outputs_biasadd_readvariableop_resource:;
identity

identity_1ИҐ(attention/dense_2/BiasAdd/ReadVariableOpҐ*attention/dense_2/Tensordot/ReadVariableOpҐ(attention/dense_3/BiasAdd/ReadVariableOpҐ*attention/dense_3/Tensordot/ReadVariableOpҐ8attention/layer_normalization_2/batchnorm/ReadVariableOpҐ<attention/layer_normalization_2/batchnorm/mul/ReadVariableOpҐ8attention/layer_normalization_3/batchnorm/ReadVariableOpҐ<attention/layer_normalization_3/batchnorm/mul/ReadVariableOpҐDattention/multi_head_attention_1/attention_output/add/ReadVariableOpҐNattention/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐ7attention/multi_head_attention_1/key/add/ReadVariableOpҐAattention/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐ9attention/multi_head_attention_1/query/add/ReadVariableOpҐCattention/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐ9attention/multi_head_attention_1/value/add/ReadVariableOpҐCattention/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpҐ'duration_outputs/BiasAdd/ReadVariableOpҐ)duration_outputs/Tensordot/ReadVariableOpҐ#note_outputs/BiasAdd/ReadVariableOpҐ%note_outputs/Tensordot/ReadVariableOpҐ;token_and_position_embedding_5/embedding_5/embedding_lookupҐ;token_and_position_embedding_6/embedding_6/embedding_lookup»
;token_and_position_embedding_5/embedding_5/embedding_lookupResourceGatherCtoken_and_position_embedding_5_embedding_5_embedding_lookup_2666659inputs_0*
Tindices0*V
_classL
JHloc:@token_and_position_embedding_5/embedding_5/embedding_lookup/2666659*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0Ѓ
Dtoken_and_position_embedding_5/embedding_5/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_5/embedding_5/embedding_lookup:output:0*
T0*V
_classL
JHloc:@token_and_position_embedding_5/embedding_5/embedding_lookup/2666659*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аб
Ftoken_and_position_embedding_5/embedding_5/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_5/embedding_5/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А 
=token_and_position_embedding_5/sine_position_encoding_5/ShapeShapeOtoken_and_position_embedding_5/embedding_5/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
::нѕЮ
Ktoken_and_position_embedding_5/sine_position_encoding_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€†
Mtoken_and_position_embedding_5/sine_position_encoding_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€Ч
Mtoken_and_position_embedding_5/sine_position_encoding_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
Etoken_and_position_embedding_5/sine_position_encoding_5/strided_sliceStridedSliceFtoken_and_position_embedding_5/sine_position_encoding_5/Shape:output:0Ttoken_and_position_embedding_5/sine_position_encoding_5/strided_slice/stack:output:0Vtoken_and_position_embedding_5/sine_position_encoding_5/strided_slice/stack_1:output:0Vtoken_and_position_embedding_5/sine_position_encoding_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask†
Mtoken_and_position_embedding_5/sine_position_encoding_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€Щ
Otoken_and_position_embedding_5/sine_position_encoding_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: Щ
Otoken_and_position_embedding_5/sine_position_encoding_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:с
Gtoken_and_position_embedding_5/sine_position_encoding_5/strided_slice_1StridedSliceFtoken_and_position_embedding_5/sine_position_encoding_5/Shape:output:0Vtoken_and_position_embedding_5/sine_position_encoding_5/strided_slice_1/stack:output:0Xtoken_and_position_embedding_5/sine_position_encoding_5/strided_slice_1/stack_1:output:0Xtoken_and_position_embedding_5/sine_position_encoding_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЕ
Ctoken_and_position_embedding_5/sine_position_encoding_5/range/startConst*
_output_shapes
: *
dtype0*
value	B : Е
Ctoken_and_position_embedding_5/sine_position_encoding_5/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :„
=token_and_position_embedding_5/sine_position_encoding_5/rangeRangeLtoken_and_position_embedding_5/sine_position_encoding_5/range/start:output:0Ntoken_and_position_embedding_5/sine_position_encoding_5/strided_slice:output:0Ltoken_and_position_embedding_5/sine_position_encoding_5/range/delta:output:0*#
_output_shapes
:€€€€€€€€€…
<token_and_position_embedding_5/sine_position_encoding_5/CastCastFtoken_and_position_embedding_5/sine_position_encoding_5/range:output:0*

DstT0*

SrcT0*#
_output_shapes
:€€€€€€€€€Е
@token_and_position_embedding_5/sine_position_encoding_5/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8З
Etoken_and_position_embedding_5/sine_position_encoding_5/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : З
Etoken_and_position_embedding_5/sine_position_encoding_5/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :„
?token_and_position_embedding_5/sine_position_encoding_5/range_1RangeNtoken_and_position_embedding_5/sine_position_encoding_5/range_1/start:output:0Ptoken_and_position_embedding_5/sine_position_encoding_5/strided_slice_1:output:0Ntoken_and_position_embedding_5/sine_position_encoding_5/range_1/delta:output:0*
_output_shapes	
:АД
Btoken_and_position_embedding_5/sine_position_encoding_5/floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :Й
@token_and_position_embedding_5/sine_position_encoding_5/floordivFloorDivHtoken_and_position_embedding_5/sine_position_encoding_5/range_1:output:0Ktoken_and_position_embedding_5/sine_position_encoding_5/floordiv/y:output:0*
T0*
_output_shapes	
:А
=token_and_position_embedding_5/sine_position_encoding_5/mul/xConst*
_output_shapes
: *
dtype0*
value	B :ц
;token_and_position_embedding_5/sine_position_encoding_5/mulMulFtoken_and_position_embedding_5/sine_position_encoding_5/mul/x:output:0Dtoken_and_position_embedding_5/sine_position_encoding_5/floordiv:z:0*
T0*
_output_shapes	
:АЉ
>token_and_position_embedding_5/sine_position_encoding_5/Cast_2Cast?token_and_position_embedding_5/sine_position_encoding_5/mul:z:0*

DstT0*

SrcT0*
_output_shapes	
:А»
>token_and_position_embedding_5/sine_position_encoding_5/Cast_3CastPtoken_and_position_embedding_5/sine_position_encoding_5/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: ш
?token_and_position_embedding_5/sine_position_encoding_5/truedivRealDivBtoken_and_position_embedding_5/sine_position_encoding_5/Cast_2:y:0Btoken_and_position_embedding_5/sine_position_encoding_5/Cast_3:y:0*
T0*
_output_shapes	
:Аш
;token_and_position_embedding_5/sine_position_encoding_5/PowPowItoken_and_position_embedding_5/sine_position_encoding_5/Cast_1/x:output:0Ctoken_and_position_embedding_5/sine_position_encoding_5/truediv:z:0*
T0*
_output_shapes	
:АИ
Ftoken_and_position_embedding_5/sine_position_encoding_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Х
Btoken_and_position_embedding_5/sine_position_encoding_5/ExpandDims
ExpandDims@token_and_position_embedding_5/sine_position_encoding_5/Cast:y:0Otoken_and_position_embedding_5/sine_position_encoding_5/ExpandDims/dim:output:0*
T0*'
_output_shapes
:€€€€€€€€€К
Htoken_and_position_embedding_5/sine_position_encoding_5/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Р
Dtoken_and_position_embedding_5/sine_position_encoding_5/ExpandDims_1
ExpandDims?token_and_position_embedding_5/sine_position_encoding_5/Pow:z:0Qtoken_and_position_embedding_5/sine_position_encoding_5/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	АУ
=token_and_position_embedding_5/sine_position_encoding_5/mul_1MulKtoken_and_position_embedding_5/sine_position_encoding_5/ExpandDims:output:0Mtoken_and_position_embedding_5/sine_position_encoding_5/ExpandDims_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
Etoken_and_position_embedding_5/sine_position_encoding_5/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : З
Etoken_and_position_embedding_5/sine_position_encoding_5/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :„
?token_and_position_embedding_5/sine_position_encoding_5/range_2RangeNtoken_and_position_embedding_5/sine_position_encoding_5/range_2/start:output:0Ptoken_and_position_embedding_5/sine_position_encoding_5/strided_slice_1:output:0Ntoken_and_position_embedding_5/sine_position_encoding_5/range_2/delta:output:0*
_output_shapes	
:А
=token_and_position_embedding_5/sine_position_encoding_5/mod/yConst*
_output_shapes
: *
dtype0*
value	B :€
;token_and_position_embedding_5/sine_position_encoding_5/modFloorModHtoken_and_position_embedding_5/sine_position_encoding_5/range_2:output:0Ftoken_and_position_embedding_5/sine_position_encoding_5/mod/y:output:0*
T0*
_output_shapes	
:АЉ
>token_and_position_embedding_5/sine_position_encoding_5/Cast_4Cast?token_and_position_embedding_5/sine_position_encoding_5/mod:z:0*

DstT0*

SrcT0*
_output_shapes	
:АВ
=token_and_position_embedding_5/sine_position_encoding_5/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ф
;token_and_position_embedding_5/sine_position_encoding_5/subSubFtoken_and_position_embedding_5/sine_position_encoding_5/sub/x:output:0Btoken_and_position_embedding_5/sine_position_encoding_5/Cast_4:y:0*
T0*
_output_shapes	
:АЄ
;token_and_position_embedding_5/sine_position_encoding_5/SinSinAtoken_and_position_embedding_5/sine_position_encoding_5/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ащ
=token_and_position_embedding_5/sine_position_encoding_5/mul_2Mul?token_and_position_embedding_5/sine_position_encoding_5/Sin:y:0?token_and_position_embedding_5/sine_position_encoding_5/sub:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЄ
;token_and_position_embedding_5/sine_position_encoding_5/CosCosAtoken_and_position_embedding_5/sine_position_encoding_5/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аь
=token_and_position_embedding_5/sine_position_encoding_5/mul_3Mul?token_and_position_embedding_5/sine_position_encoding_5/Cos:y:0Btoken_and_position_embedding_5/sine_position_encoding_5/Cast_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€Аэ
;token_and_position_embedding_5/sine_position_encoding_5/addAddV2Atoken_and_position_embedding_5/sine_position_encoding_5/mul_2:z:0Atoken_and_position_embedding_5/sine_position_encoding_5/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЫ
Ctoken_and_position_embedding_5/sine_position_encoding_5/BroadcastToBroadcastTo?token_and_position_embedding_5/sine_position_encoding_5/add:z:0Ftoken_and_position_embedding_5/sine_position_encoding_5/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АК
"token_and_position_embedding_5/addAddV2Otoken_and_position_embedding_5/embedding_5/embedding_lookup/Identity_1:output:0Ltoken_and_position_embedding_5/sine_position_encoding_5/BroadcastTo:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А»
;token_and_position_embedding_6/embedding_6/embedding_lookupResourceGatherCtoken_and_position_embedding_6_embedding_6_embedding_lookup_2666709inputs_1*
Tindices0*V
_classL
JHloc:@token_and_position_embedding_6/embedding_6/embedding_lookup/2666709*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0Ѓ
Dtoken_and_position_embedding_6/embedding_6/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_6/embedding_6/embedding_lookup:output:0*
T0*V
_classL
JHloc:@token_and_position_embedding_6/embedding_6/embedding_lookup/2666709*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аб
Ftoken_and_position_embedding_6/embedding_6/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_6/embedding_6/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А 
=token_and_position_embedding_6/sine_position_encoding_6/ShapeShapeOtoken_and_position_embedding_6/embedding_6/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
::нѕЮ
Ktoken_and_position_embedding_6/sine_position_encoding_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€†
Mtoken_and_position_embedding_6/sine_position_encoding_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€Ч
Mtoken_and_position_embedding_6/sine_position_encoding_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
Etoken_and_position_embedding_6/sine_position_encoding_6/strided_sliceStridedSliceFtoken_and_position_embedding_6/sine_position_encoding_6/Shape:output:0Ttoken_and_position_embedding_6/sine_position_encoding_6/strided_slice/stack:output:0Vtoken_and_position_embedding_6/sine_position_encoding_6/strided_slice/stack_1:output:0Vtoken_and_position_embedding_6/sine_position_encoding_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask†
Mtoken_and_position_embedding_6/sine_position_encoding_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€Щ
Otoken_and_position_embedding_6/sine_position_encoding_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: Щ
Otoken_and_position_embedding_6/sine_position_encoding_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:с
Gtoken_and_position_embedding_6/sine_position_encoding_6/strided_slice_1StridedSliceFtoken_and_position_embedding_6/sine_position_encoding_6/Shape:output:0Vtoken_and_position_embedding_6/sine_position_encoding_6/strided_slice_1/stack:output:0Xtoken_and_position_embedding_6/sine_position_encoding_6/strided_slice_1/stack_1:output:0Xtoken_and_position_embedding_6/sine_position_encoding_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЕ
Ctoken_and_position_embedding_6/sine_position_encoding_6/range/startConst*
_output_shapes
: *
dtype0*
value	B : Е
Ctoken_and_position_embedding_6/sine_position_encoding_6/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :„
=token_and_position_embedding_6/sine_position_encoding_6/rangeRangeLtoken_and_position_embedding_6/sine_position_encoding_6/range/start:output:0Ntoken_and_position_embedding_6/sine_position_encoding_6/strided_slice:output:0Ltoken_and_position_embedding_6/sine_position_encoding_6/range/delta:output:0*#
_output_shapes
:€€€€€€€€€…
<token_and_position_embedding_6/sine_position_encoding_6/CastCastFtoken_and_position_embedding_6/sine_position_encoding_6/range:output:0*

DstT0*

SrcT0*#
_output_shapes
:€€€€€€€€€Е
@token_and_position_embedding_6/sine_position_encoding_6/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8З
Etoken_and_position_embedding_6/sine_position_encoding_6/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : З
Etoken_and_position_embedding_6/sine_position_encoding_6/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :„
?token_and_position_embedding_6/sine_position_encoding_6/range_1RangeNtoken_and_position_embedding_6/sine_position_encoding_6/range_1/start:output:0Ptoken_and_position_embedding_6/sine_position_encoding_6/strided_slice_1:output:0Ntoken_and_position_embedding_6/sine_position_encoding_6/range_1/delta:output:0*
_output_shapes	
:АД
Btoken_and_position_embedding_6/sine_position_encoding_6/floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :Й
@token_and_position_embedding_6/sine_position_encoding_6/floordivFloorDivHtoken_and_position_embedding_6/sine_position_encoding_6/range_1:output:0Ktoken_and_position_embedding_6/sine_position_encoding_6/floordiv/y:output:0*
T0*
_output_shapes	
:А
=token_and_position_embedding_6/sine_position_encoding_6/mul/xConst*
_output_shapes
: *
dtype0*
value	B :ц
;token_and_position_embedding_6/sine_position_encoding_6/mulMulFtoken_and_position_embedding_6/sine_position_encoding_6/mul/x:output:0Dtoken_and_position_embedding_6/sine_position_encoding_6/floordiv:z:0*
T0*
_output_shapes	
:АЉ
>token_and_position_embedding_6/sine_position_encoding_6/Cast_2Cast?token_and_position_embedding_6/sine_position_encoding_6/mul:z:0*

DstT0*

SrcT0*
_output_shapes	
:А»
>token_and_position_embedding_6/sine_position_encoding_6/Cast_3CastPtoken_and_position_embedding_6/sine_position_encoding_6/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: ш
?token_and_position_embedding_6/sine_position_encoding_6/truedivRealDivBtoken_and_position_embedding_6/sine_position_encoding_6/Cast_2:y:0Btoken_and_position_embedding_6/sine_position_encoding_6/Cast_3:y:0*
T0*
_output_shapes	
:Аш
;token_and_position_embedding_6/sine_position_encoding_6/PowPowItoken_and_position_embedding_6/sine_position_encoding_6/Cast_1/x:output:0Ctoken_and_position_embedding_6/sine_position_encoding_6/truediv:z:0*
T0*
_output_shapes	
:АИ
Ftoken_and_position_embedding_6/sine_position_encoding_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Х
Btoken_and_position_embedding_6/sine_position_encoding_6/ExpandDims
ExpandDims@token_and_position_embedding_6/sine_position_encoding_6/Cast:y:0Otoken_and_position_embedding_6/sine_position_encoding_6/ExpandDims/dim:output:0*
T0*'
_output_shapes
:€€€€€€€€€К
Htoken_and_position_embedding_6/sine_position_encoding_6/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Р
Dtoken_and_position_embedding_6/sine_position_encoding_6/ExpandDims_1
ExpandDims?token_and_position_embedding_6/sine_position_encoding_6/Pow:z:0Qtoken_and_position_embedding_6/sine_position_encoding_6/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	АУ
=token_and_position_embedding_6/sine_position_encoding_6/mul_1MulKtoken_and_position_embedding_6/sine_position_encoding_6/ExpandDims:output:0Mtoken_and_position_embedding_6/sine_position_encoding_6/ExpandDims_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
Etoken_and_position_embedding_6/sine_position_encoding_6/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : З
Etoken_and_position_embedding_6/sine_position_encoding_6/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :„
?token_and_position_embedding_6/sine_position_encoding_6/range_2RangeNtoken_and_position_embedding_6/sine_position_encoding_6/range_2/start:output:0Ptoken_and_position_embedding_6/sine_position_encoding_6/strided_slice_1:output:0Ntoken_and_position_embedding_6/sine_position_encoding_6/range_2/delta:output:0*
_output_shapes	
:А
=token_and_position_embedding_6/sine_position_encoding_6/mod/yConst*
_output_shapes
: *
dtype0*
value	B :€
;token_and_position_embedding_6/sine_position_encoding_6/modFloorModHtoken_and_position_embedding_6/sine_position_encoding_6/range_2:output:0Ftoken_and_position_embedding_6/sine_position_encoding_6/mod/y:output:0*
T0*
_output_shapes	
:АЉ
>token_and_position_embedding_6/sine_position_encoding_6/Cast_4Cast?token_and_position_embedding_6/sine_position_encoding_6/mod:z:0*

DstT0*

SrcT0*
_output_shapes	
:АВ
=token_and_position_embedding_6/sine_position_encoding_6/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ф
;token_and_position_embedding_6/sine_position_encoding_6/subSubFtoken_and_position_embedding_6/sine_position_encoding_6/sub/x:output:0Btoken_and_position_embedding_6/sine_position_encoding_6/Cast_4:y:0*
T0*
_output_shapes	
:АЄ
;token_and_position_embedding_6/sine_position_encoding_6/SinSinAtoken_and_position_embedding_6/sine_position_encoding_6/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ащ
=token_and_position_embedding_6/sine_position_encoding_6/mul_2Mul?token_and_position_embedding_6/sine_position_encoding_6/Sin:y:0?token_and_position_embedding_6/sine_position_encoding_6/sub:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЄ
;token_and_position_embedding_6/sine_position_encoding_6/CosCosAtoken_and_position_embedding_6/sine_position_encoding_6/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аь
=token_and_position_embedding_6/sine_position_encoding_6/mul_3Mul?token_and_position_embedding_6/sine_position_encoding_6/Cos:y:0Btoken_and_position_embedding_6/sine_position_encoding_6/Cast_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€Аэ
;token_and_position_embedding_6/sine_position_encoding_6/addAddV2Atoken_and_position_embedding_6/sine_position_encoding_6/mul_2:z:0Atoken_and_position_embedding_6/sine_position_encoding_6/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЫ
Ctoken_and_position_embedding_6/sine_position_encoding_6/BroadcastToBroadcastTo?token_and_position_embedding_6/sine_position_encoding_6/add:z:0Ftoken_and_position_embedding_6/sine_position_encoding_6/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АК
"token_and_position_embedding_6/addAddV2Otoken_and_position_embedding_6/embedding_6/embedding_lookup/Identity_1:output:0Ltoken_and_position_embedding_6/sine_position_encoding_6/BroadcastTo:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ё
concatenate_1/concatConcatV2&token_and_position_embedding_5/add:z:0&token_and_position_embedding_6/add:z:0"concatenate_1/concat/axis:output:0*
N*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аj
attention/ShapeShapeconcatenate_1/concat:output:0*
T0*
_output_shapes
::нѕg
attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
attention/strided_sliceStridedSliceattention/Shape:output:0&attention/strided_slice/stack:output:0(attention/strided_slice/stack_1:output:0(attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
attention/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:k
!attention/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!attention/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
attention/strided_slice_1StridedSliceattention/Shape:output:0(attention/strided_slice_1/stack:output:0*attention/strided_slice_1/stack_1:output:0*attention/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
attention/range/startConst*
_output_shapes
: *
dtype0*
value	B : W
attention/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :°
attention/rangeRangeattention/range/start:output:0"attention/strided_slice_1:output:0attention/range/delta:output:0*#
_output_shapes
:€€€€€€€€€p
attention/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!attention/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!attention/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
attention/strided_slice_2StridedSliceattention/range:output:0(attention/strided_slice_2/stack:output:0*attention/strided_slice_2/stack_1:output:0*attention/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskY
attention/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : Y
attention/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :І
attention/range_1Range attention/range_1/start:output:0"attention/strided_slice_1:output:0 attention/range_1/delta:output:0*#
_output_shapes
:€€€€€€€€€В
attention/subSubattention/range_1:output:0"attention/strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€{
attention/addAddV2attention/sub:z:0"attention/strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€Ш
attention/GreaterEqualGreaterEqual"attention/strided_slice_2:output:0attention/add:z:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€[
attention/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :є
attention/Reshape/shapePack"attention/Reshape/shape/0:output:0"attention/strided_slice_1:output:0"attention/strided_slice_1:output:0*
N*
T0*
_output_shapes
:Щ
attention/ReshapeReshapeattention/GreaterEqual:z:0 attention/Reshape/shape:output:0*
T0
*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€c
attention/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€М
attention/ExpandDims
ExpandDims attention/strided_slice:output:0!attention/ExpandDims/dim:output:0*
T0*
_output_shapes
:`
attention/ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
attention/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : £
attention/concatConcatV2attention/ExpandDims:output:0attention/Const:output:0attention/concat/axis:output:0*
N*
T0*
_output_shapes
:Х
attention/TileTileattention/Reshape:output:0attention/concat:output:0*
T0
*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€÷
Cattention/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpLattention_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0Ф
4attention/multi_head_attention_1/query/einsum/EinsumEinsumconcatenate_1/concat:output:0Kattention/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abdeљ
9attention/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpBattention_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes
:	А*
dtype0щ
*attention/multi_head_attention_1/query/addAddV2=attention/multi_head_attention_1/query/einsum/Einsum:output:0Aattention/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А“
Aattention/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpJattention_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0Р
2attention/multi_head_attention_1/key/einsum/EinsumEinsumconcatenate_1/concat:output:0Iattention/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abdeє
7attention/multi_head_attention_1/key/add/ReadVariableOpReadVariableOp@attention_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes
:	А*
dtype0у
(attention/multi_head_attention_1/key/addAddV2;attention/multi_head_attention_1/key/einsum/Einsum:output:0?attention/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А÷
Cattention/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpLattention_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0Ф
4attention/multi_head_attention_1/value/einsum/EinsumEinsumconcatenate_1/concat:output:0Kattention/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abdeљ
9attention/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpBattention_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	А*
dtype0щ
*attention/multi_head_attention_1/value/addAddV2=attention/multi_head_attention_1/value/einsum/Einsum:output:0Aattention/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аk
&attention/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А=–
$attention/multi_head_attention_1/MulMul.attention/multi_head_attention_1/query/add:z:0/attention/multi_head_attention_1/Mul/y:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€АД
.attention/multi_head_attention_1/einsum/EinsumEinsum,attention/multi_head_attention_1/key/add:z:0(attention/multi_head_attention_1/Mul:z:0*
N*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbez
/attention/multi_head_attention_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€Ў
+attention/multi_head_attention_1/ExpandDims
ExpandDimsattention/Tile:output:08attention/multi_head_attention_1/ExpandDims/dim:output:0*
T0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€∆
-attention/multi_head_attention_1/softmax/CastCast4attention/multi_head_attention_1/ExpandDims:output:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€s
.attention/multi_head_attention_1/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?л
,attention/multi_head_attention_1/softmax/subSub7attention/multi_head_attention_1/softmax/sub/x:output:01attention/multi_head_attention_1/softmax/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€s
.attention/multi_head_attention_1/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knќк
,attention/multi_head_attention_1/softmax/mulMul0attention/multi_head_attention_1/softmax/sub:z:07attention/multi_head_attention_1/softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€м
,attention/multi_head_attention_1/softmax/addAddV27attention/multi_head_attention_1/einsum/Einsum:output:00attention/multi_head_attention_1/softmax/mul:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€є
0attention/multi_head_attention_1/softmax/SoftmaxSoftmax0attention/multi_head_attention_1/softmax/add:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€≈
1attention/multi_head_attention_1/dropout/IdentityIdentity:attention/multi_head_attention_1/softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€Т
0attention/multi_head_attention_1/einsum_1/EinsumEinsum:attention/multi_head_attention_1/dropout/Identity:output:0.attention/multi_head_attention_1/value/add:z:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationacbe,aecd->abcdм
Nattention/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpWattention_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0¬
?attention/multi_head_attention_1/attention_output/einsum/EinsumEinsum9attention/multi_head_attention_1/einsum_1/Einsum:output:0Vattention/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
equationabcd,cde->abeѕ
Dattention/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpMattention_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:А*
dtype0Ц
5attention/multi_head_attention_1/attention_output/addAddV2Hattention/multi_head_attention_1/attention_output/einsum/Einsum:output:0Lattention/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аf
!attention/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Ќ
attention/dropout_2/dropout/MulMul9attention/multi_head_attention_1/attention_output/add:z:0*attention/dropout_2/dropout/Const:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АШ
!attention/dropout_2/dropout/ShapeShape9attention/multi_head_attention_1/attention_output/add:z:0*
T0*
_output_shapes
::нѕ¬
8attention/dropout_2/dropout/random_uniform/RandomUniformRandomUniform*attention/dropout_2/dropout/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0o
*attention/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>р
(attention/dropout_2/dropout/GreaterEqualGreaterEqualAattention/dropout_2/dropout/random_uniform/RandomUniform:output:03attention/dropout_2/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аh
#attention/dropout_2/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    с
$attention/dropout_2/dropout/SelectV2SelectV2,attention/dropout_2/dropout/GreaterEqual:z:0#attention/dropout_2/dropout/Mul:z:0,attention/dropout_2/dropout/Const_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А¶
attention/add_1AddV2concatenate_1/concat:output:0-attention/dropout_2/dropout/SelectV2:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АИ
>attention/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:в
,attention/layer_normalization_2/moments/meanMeanattention/add_1:z:0Gattention/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(Ї
4attention/layer_normalization_2/moments/StopGradientStopGradient5attention/layer_normalization_2/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€в
9attention/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceattention/add_1:z:0=attention/layer_normalization_2/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АМ
Battention/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ф
0attention/layer_normalization_2/moments/varianceMean=attention/layer_normalization_2/moments/SquaredDifference:z:0Kattention/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(t
/attention/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5к
-attention/layer_normalization_2/batchnorm/addAddV29attention/layer_normalization_2/moments/variance:output:08attention/layer_normalization_2/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€™
/attention/layer_normalization_2/batchnorm/RsqrtRsqrt1attention/layer_normalization_2/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€њ
<attention/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpEattention_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0п
-attention/layer_normalization_2/batchnorm/mulMul3attention/layer_normalization_2/batchnorm/Rsqrt:y:0Dattention/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЊ
/attention/layer_normalization_2/batchnorm/mul_1Mulattention/add_1:z:01attention/layer_normalization_2/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аа
/attention/layer_normalization_2/batchnorm/mul_2Mul5attention/layer_normalization_2/moments/mean:output:01attention/layer_normalization_2/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЈ
8attention/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOpAattention_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0л
-attention/layer_normalization_2/batchnorm/subSub@attention/layer_normalization_2/batchnorm/ReadVariableOp:value:03attention/layer_normalization_2/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аа
/attention/layer_normalization_2/batchnorm/add_1AddV23attention/layer_normalization_2/batchnorm/mul_1:z:01attention/layer_normalization_2/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А†
*attention/dense_2/Tensordot/ReadVariableOpReadVariableOp3attention_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
 attention/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:q
 attention/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Т
!attention/dense_2/Tensordot/ShapeShape3attention/layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕk
)attention/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Г
$attention/dense_2/Tensordot/GatherV2GatherV2*attention/dense_2/Tensordot/Shape:output:0)attention/dense_2/Tensordot/free:output:02attention/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
+attention/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : З
&attention/dense_2/Tensordot/GatherV2_1GatherV2*attention/dense_2/Tensordot/Shape:output:0)attention/dense_2/Tensordot/axes:output:04attention/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!attention/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: §
 attention/dense_2/Tensordot/ProdProd-attention/dense_2/Tensordot/GatherV2:output:0*attention/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: m
#attention/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ™
"attention/dense_2/Tensordot/Prod_1Prod/attention/dense_2/Tensordot/GatherV2_1:output:0,attention/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: i
'attention/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : д
"attention/dense_2/Tensordot/concatConcatV2)attention/dense_2/Tensordot/free:output:0)attention/dense_2/Tensordot/axes:output:00attention/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ѓ
!attention/dense_2/Tensordot/stackPack)attention/dense_2/Tensordot/Prod:output:0+attention/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:‘
%attention/dense_2/Tensordot/transpose	Transpose3attention/layer_normalization_2/batchnorm/add_1:z:0+attention/dense_2/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ај
#attention/dense_2/Tensordot/ReshapeReshape)attention/dense_2/Tensordot/transpose:y:0*attention/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ѕ
"attention/dense_2/Tensordot/MatMulMatMul,attention/dense_2/Tensordot/Reshape:output:02attention/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
#attention/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аk
)attention/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : п
$attention/dense_2/Tensordot/concat_1ConcatV2-attention/dense_2/Tensordot/GatherV2:output:0,attention/dense_2/Tensordot/Const_2:output:02attention/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:√
attention/dense_2/TensordotReshape,attention/dense_2/Tensordot/MatMul:product:0-attention/dense_2/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЧ
(attention/dense_2/BiasAdd/ReadVariableOpReadVariableOp1attention_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Љ
attention/dense_2/BiasAddBiasAdd$attention/dense_2/Tensordot:output:00attention/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АВ
attention/dense_2/ReluRelu"attention/dense_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А†
*attention/dense_3/Tensordot/ReadVariableOpReadVariableOp3attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
 attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:q
 attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Г
!attention/dense_3/Tensordot/ShapeShape$attention/dense_2/Relu:activations:0*
T0*
_output_shapes
::нѕk
)attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Г
$attention/dense_3/Tensordot/GatherV2GatherV2*attention/dense_3/Tensordot/Shape:output:0)attention/dense_3/Tensordot/free:output:02attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
+attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : З
&attention/dense_3/Tensordot/GatherV2_1GatherV2*attention/dense_3/Tensordot/Shape:output:0)attention/dense_3/Tensordot/axes:output:04attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: §
 attention/dense_3/Tensordot/ProdProd-attention/dense_3/Tensordot/GatherV2:output:0*attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: m
#attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ™
"attention/dense_3/Tensordot/Prod_1Prod/attention/dense_3/Tensordot/GatherV2_1:output:0,attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: i
'attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : д
"attention/dense_3/Tensordot/concatConcatV2)attention/dense_3/Tensordot/free:output:0)attention/dense_3/Tensordot/axes:output:00attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ѓ
!attention/dense_3/Tensordot/stackPack)attention/dense_3/Tensordot/Prod:output:0+attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:≈
%attention/dense_3/Tensordot/transpose	Transpose$attention/dense_2/Relu:activations:0+attention/dense_3/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ај
#attention/dense_3/Tensordot/ReshapeReshape)attention/dense_3/Tensordot/transpose:y:0*attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ѕ
"attention/dense_3/Tensordot/MatMulMatMul,attention/dense_3/Tensordot/Reshape:output:02attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
#attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аk
)attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : п
$attention/dense_3/Tensordot/concat_1ConcatV2-attention/dense_3/Tensordot/GatherV2:output:0,attention/dense_3/Tensordot/Const_2:output:02attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:√
attention/dense_3/TensordotReshape,attention/dense_3/Tensordot/MatMul:product:0-attention/dense_3/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЧ
(attention/dense_3/BiasAdd/ReadVariableOpReadVariableOp1attention_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Љ
attention/dense_3/BiasAddBiasAdd$attention/dense_3/Tensordot:output:00attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аf
!attention/dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?ґ
attention/dropout_3/dropout/MulMul"attention/dense_3/BiasAdd:output:0*attention/dropout_3/dropout/Const:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АБ
!attention/dropout_3/dropout/ShapeShape"attention/dense_3/BiasAdd:output:0*
T0*
_output_shapes
::нѕ¬
8attention/dropout_3/dropout/random_uniform/RandomUniformRandomUniform*attention/dropout_3/dropout/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0o
*attention/dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>р
(attention/dropout_3/dropout/GreaterEqualGreaterEqualAattention/dropout_3/dropout/random_uniform/RandomUniform:output:03attention/dropout_3/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аh
#attention/dropout_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    с
$attention/dropout_3/dropout/SelectV2SelectV2,attention/dropout_3/dropout/GreaterEqual:z:0#attention/dropout_3/dropout/Mul:z:0,attention/dropout_3/dropout/Const_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЉ
attention/add_2AddV23attention/layer_normalization_2/batchnorm/add_1:z:0-attention/dropout_3/dropout/SelectV2:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АИ
>attention/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:в
,attention/layer_normalization_3/moments/meanMeanattention/add_2:z:0Gattention/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(Ї
4attention/layer_normalization_3/moments/StopGradientStopGradient5attention/layer_normalization_3/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€в
9attention/layer_normalization_3/moments/SquaredDifferenceSquaredDifferenceattention/add_2:z:0=attention/layer_normalization_3/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АМ
Battention/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ф
0attention/layer_normalization_3/moments/varianceMean=attention/layer_normalization_3/moments/SquaredDifference:z:0Kattention/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(t
/attention/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5к
-attention/layer_normalization_3/batchnorm/addAddV29attention/layer_normalization_3/moments/variance:output:08attention/layer_normalization_3/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€™
/attention/layer_normalization_3/batchnorm/RsqrtRsqrt1attention/layer_normalization_3/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€њ
<attention/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpEattention_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0п
-attention/layer_normalization_3/batchnorm/mulMul3attention/layer_normalization_3/batchnorm/Rsqrt:y:0Dattention/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЊ
/attention/layer_normalization_3/batchnorm/mul_1Mulattention/add_2:z:01attention/layer_normalization_3/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аа
/attention/layer_normalization_3/batchnorm/mul_2Mul5attention/layer_normalization_3/moments/mean:output:01attention/layer_normalization_3/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЈ
8attention/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOpAattention_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0л
-attention/layer_normalization_3/batchnorm/subSub@attention/layer_normalization_3/batchnorm/ReadVariableOp:value:03attention/layer_normalization_3/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аа
/attention/layer_normalization_3/batchnorm/add_1AddV23attention/layer_normalization_3/batchnorm/mul_1:z:01attention/layer_normalization_3/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЭ
)duration_outputs/Tensordot/ReadVariableOpReadVariableOp2duration_outputs_tensordot_readvariableop_resource*
_output_shapes
:	А*
dtype0i
duration_outputs/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:p
duration_outputs/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       С
 duration_outputs/Tensordot/ShapeShape3attention/layer_normalization_3/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕj
(duration_outputs/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : €
#duration_outputs/Tensordot/GatherV2GatherV2)duration_outputs/Tensordot/Shape:output:0(duration_outputs/Tensordot/free:output:01duration_outputs/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
*duration_outputs/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Г
%duration_outputs/Tensordot/GatherV2_1GatherV2)duration_outputs/Tensordot/Shape:output:0(duration_outputs/Tensordot/axes:output:03duration_outputs/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:j
 duration_outputs/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
duration_outputs/Tensordot/ProdProd,duration_outputs/Tensordot/GatherV2:output:0)duration_outputs/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"duration_outputs/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: І
!duration_outputs/Tensordot/Prod_1Prod.duration_outputs/Tensordot/GatherV2_1:output:0+duration_outputs/Tensordot/Const_1:output:0*
T0*
_output_shapes
: h
&duration_outputs/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : а
!duration_outputs/Tensordot/concatConcatV2(duration_outputs/Tensordot/free:output:0(duration_outputs/Tensordot/axes:output:0/duration_outputs/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ђ
 duration_outputs/Tensordot/stackPack(duration_outputs/Tensordot/Prod:output:0*duration_outputs/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:“
$duration_outputs/Tensordot/transpose	Transpose3attention/layer_normalization_3/batchnorm/add_1:z:0*duration_outputs/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аљ
"duration_outputs/Tensordot/ReshapeReshape(duration_outputs/Tensordot/transpose:y:0)duration_outputs/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€љ
!duration_outputs/Tensordot/MatMulMatMul+duration_outputs/Tensordot/Reshape:output:01duration_outputs/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€l
"duration_outputs/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:j
(duration_outputs/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : л
#duration_outputs/Tensordot/concat_1ConcatV2,duration_outputs/Tensordot/GatherV2:output:0+duration_outputs/Tensordot/Const_2:output:01duration_outputs/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:њ
duration_outputs/TensordotReshape+duration_outputs/Tensordot/MatMul:product:0,duration_outputs/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ф
'duration_outputs/BiasAdd/ReadVariableOpReadVariableOp0duration_outputs_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Є
duration_outputs/BiasAddBiasAdd#duration_outputs/Tensordot:output:0/duration_outputs/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Е
duration_outputs/SoftmaxSoftmax!duration_outputs/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Х
%note_outputs/Tensordot/ReadVariableOpReadVariableOp.note_outputs_tensordot_readvariableop_resource*
_output_shapes
:	А;*
dtype0e
note_outputs/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:l
note_outputs/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Н
note_outputs/Tensordot/ShapeShape3attention/layer_normalization_3/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕf
$note_outputs/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : п
note_outputs/Tensordot/GatherV2GatherV2%note_outputs/Tensordot/Shape:output:0$note_outputs/Tensordot/free:output:0-note_outputs/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:h
&note_outputs/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : у
!note_outputs/Tensordot/GatherV2_1GatherV2%note_outputs/Tensordot/Shape:output:0$note_outputs/Tensordot/axes:output:0/note_outputs/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:f
note_outputs/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Х
note_outputs/Tensordot/ProdProd(note_outputs/Tensordot/GatherV2:output:0%note_outputs/Tensordot/Const:output:0*
T0*
_output_shapes
: h
note_outputs/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ы
note_outputs/Tensordot/Prod_1Prod*note_outputs/Tensordot/GatherV2_1:output:0'note_outputs/Tensordot/Const_1:output:0*
T0*
_output_shapes
: d
"note_outputs/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : –
note_outputs/Tensordot/concatConcatV2$note_outputs/Tensordot/free:output:0$note_outputs/Tensordot/axes:output:0+note_outputs/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:†
note_outputs/Tensordot/stackPack$note_outputs/Tensordot/Prod:output:0&note_outputs/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
: 
 note_outputs/Tensordot/transpose	Transpose3attention/layer_normalization_3/batchnorm/add_1:z:0&note_outputs/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А±
note_outputs/Tensordot/ReshapeReshape$note_outputs/Tensordot/transpose:y:0%note_outputs/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€±
note_outputs/Tensordot/MatMulMatMul'note_outputs/Tensordot/Reshape:output:0-note_outputs/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€;h
note_outputs/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:;f
$note_outputs/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
note_outputs/Tensordot/concat_1ConcatV2(note_outputs/Tensordot/GatherV2:output:0'note_outputs/Tensordot/Const_2:output:0-note_outputs/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:≥
note_outputs/TensordotReshape'note_outputs/Tensordot/MatMul:product:0(note_outputs/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;М
#note_outputs/BiasAdd/ReadVariableOpReadVariableOp,note_outputs_biasadd_readvariableop_resource*
_output_shapes
:;*
dtype0ђ
note_outputs/BiasAddBiasAddnote_outputs/Tensordot:output:0+note_outputs/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;}
note_outputs/SoftmaxSoftmaxnote_outputs/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;z
IdentityIdentitynote_outputs/Softmax:softmax:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;А

Identity_1Identity"duration_outputs/Softmax:softmax:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€§

NoOpNoOp)^attention/dense_2/BiasAdd/ReadVariableOp+^attention/dense_2/Tensordot/ReadVariableOp)^attention/dense_3/BiasAdd/ReadVariableOp+^attention/dense_3/Tensordot/ReadVariableOp9^attention/layer_normalization_2/batchnorm/ReadVariableOp=^attention/layer_normalization_2/batchnorm/mul/ReadVariableOp9^attention/layer_normalization_3/batchnorm/ReadVariableOp=^attention/layer_normalization_3/batchnorm/mul/ReadVariableOpE^attention/multi_head_attention_1/attention_output/add/ReadVariableOpO^attention/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp8^attention/multi_head_attention_1/key/add/ReadVariableOpB^attention/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:^attention/multi_head_attention_1/query/add/ReadVariableOpD^attention/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:^attention/multi_head_attention_1/value/add/ReadVariableOpD^attention/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp(^duration_outputs/BiasAdd/ReadVariableOp*^duration_outputs/Tensordot/ReadVariableOp$^note_outputs/BiasAdd/ReadVariableOp&^note_outputs/Tensordot/ReadVariableOp<^token_and_position_embedding_5/embedding_5/embedding_lookup<^token_and_position_embedding_6/embedding_6/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 2T
(attention/dense_2/BiasAdd/ReadVariableOp(attention/dense_2/BiasAdd/ReadVariableOp2X
*attention/dense_2/Tensordot/ReadVariableOp*attention/dense_2/Tensordot/ReadVariableOp2T
(attention/dense_3/BiasAdd/ReadVariableOp(attention/dense_3/BiasAdd/ReadVariableOp2X
*attention/dense_3/Tensordot/ReadVariableOp*attention/dense_3/Tensordot/ReadVariableOp2t
8attention/layer_normalization_2/batchnorm/ReadVariableOp8attention/layer_normalization_2/batchnorm/ReadVariableOp2|
<attention/layer_normalization_2/batchnorm/mul/ReadVariableOp<attention/layer_normalization_2/batchnorm/mul/ReadVariableOp2t
8attention/layer_normalization_3/batchnorm/ReadVariableOp8attention/layer_normalization_3/batchnorm/ReadVariableOp2|
<attention/layer_normalization_3/batchnorm/mul/ReadVariableOp<attention/layer_normalization_3/batchnorm/mul/ReadVariableOp2М
Dattention/multi_head_attention_1/attention_output/add/ReadVariableOpDattention/multi_head_attention_1/attention_output/add/ReadVariableOp2†
Nattention/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpNattention/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2r
7attention/multi_head_attention_1/key/add/ReadVariableOp7attention/multi_head_attention_1/key/add/ReadVariableOp2Ж
Aattention/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpAattention/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2v
9attention/multi_head_attention_1/query/add/ReadVariableOp9attention/multi_head_attention_1/query/add/ReadVariableOp2К
Cattention/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpCattention/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2v
9attention/multi_head_attention_1/value/add/ReadVariableOp9attention/multi_head_attention_1/value/add/ReadVariableOp2К
Cattention/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpCattention/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2R
'duration_outputs/BiasAdd/ReadVariableOp'duration_outputs/BiasAdd/ReadVariableOp2V
)duration_outputs/Tensordot/ReadVariableOp)duration_outputs/Tensordot/ReadVariableOp2J
#note_outputs/BiasAdd/ReadVariableOp#note_outputs/BiasAdd/ReadVariableOp2N
%note_outputs/Tensordot/ReadVariableOp%note_outputs/Tensordot/ReadVariableOp2z
;token_and_position_embedding_5/embedding_5/embedding_lookup;token_and_position_embedding_5/embedding_5/embedding_lookup2z
;token_and_position_embedding_6/embedding_6/embedding_lookup;token_and_position_embedding_6/embedding_6/embedding_lookup:ZV
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_1:Z V
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
≈,
џ	
D__inference_model_2_layer_call_and_return_conditional_losses_2666111

inputs
inputs_19
&token_and_position_embedding_5_2666058:	;А9
&token_and_position_embedding_6_2666061:	А)
attention_2666065:АА$
attention_2666067:	А)
attention_2666069:АА$
attention_2666071:	А)
attention_2666073:АА$
attention_2666075:	А)
attention_2666077:АА 
attention_2666079:	А 
attention_2666081:	А 
attention_2666083:	А%
attention_2666085:
АА 
attention_2666087:	А%
attention_2666089:
АА 
attention_2666091:	А 
attention_2666093:	А 
attention_2666095:	А+
duration_outputs_2666099:	А&
duration_outputs_2666101:'
note_outputs_2666104:	А;"
note_outputs_2666106:;
identity

identity_1ИҐ!attention/StatefulPartitionedCallҐ(duration_outputs/StatefulPartitionedCallҐ$note_outputs/StatefulPartitionedCallҐ6token_and_position_embedding_5/StatefulPartitionedCallҐ6token_and_position_embedding_6/StatefulPartitionedCallѓ
6token_and_position_embedding_5/StatefulPartitionedCallStatefulPartitionedCallinputs&token_and_position_embedding_5_2666058*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *d
f_R]
[__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_2665463±
6token_and_position_embedding_6/StatefulPartitionedCallStatefulPartitionedCallinputs_1&token_and_position_embedding_6_2666061*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *d
f_R]
[__inference_token_and_position_embedding_6_layer_call_and_return_conditional_losses_2665521ћ
concatenate_1/PartitionedCallPartitionedCall?token_and_position_embedding_5/StatefulPartitionedCall:output:0?token_and_position_embedding_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_2665532щ
!attention/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0attention_2666065attention_2666067attention_2666069attention_2666071attention_2666073attention_2666075attention_2666077attention_2666079attention_2666081attention_2666083attention_2666085attention_2666087attention_2666089attention_2666091attention_2666093attention_2666095*
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:€€€€€€€€€€€€€€€€€€А:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_attention_layer_call_and_return_conditional_losses_2665715ƒ
(duration_outputs/StatefulPartitionedCallStatefulPartitionedCall*attention/StatefulPartitionedCall:output:0duration_outputs_2666099duration_outputs_2666101*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_duration_outputs_layer_call_and_return_conditional_losses_2665781і
$note_outputs/StatefulPartitionedCallStatefulPartitionedCall*attention/StatefulPartitionedCall:output:0note_outputs_2666104note_outputs_2666106*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_note_outputs_layer_call_and_return_conditional_losses_2665818Й
IdentityIdentity-note_outputs/StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;П

Identity_1Identity1duration_outputs/StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ѓ
NoOpNoOp"^attention/StatefulPartitionedCall)^duration_outputs/StatefulPartitionedCall%^note_outputs/StatefulPartitionedCall7^token_and_position_embedding_5/StatefulPartitionedCall7^token_and_position_embedding_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 2F
!attention/StatefulPartitionedCall!attention/StatefulPartitionedCall2T
(duration_outputs/StatefulPartitionedCall(duration_outputs/StatefulPartitionedCall2L
$note_outputs/StatefulPartitionedCall$note_outputs/StatefulPartitionedCall2p
6token_and_position_embedding_5/StatefulPartitionedCall6token_and_position_embedding_5/StatefulPartitionedCall2p
6token_and_position_embedding_6/StatefulPartitionedCall6token_and_position_embedding_6/StatefulPartitionedCall:XT
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ђй
џ
F__inference_attention_layer_call_and_return_conditional_losses_2667711

inputsZ
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:ААK
8multi_head_attention_1_query_add_readvariableop_resource:	АX
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:ААI
6multi_head_attention_1_key_add_readvariableop_resource:	АZ
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:ААK
8multi_head_attention_1_value_add_readvariableop_resource:	Аe
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:ААR
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:	АJ
;layer_normalization_2_batchnorm_mul_readvariableop_resource:	АF
7layer_normalization_2_batchnorm_readvariableop_resource:	А=
)dense_2_tensordot_readvariableop_resource:
АА6
'dense_2_biasadd_readvariableop_resource:	А=
)dense_3_tensordot_readvariableop_resource:
АА6
'dense_3_biasadd_readvariableop_resource:	АJ
;layer_normalization_3_batchnorm_mul_readvariableop_resource:	АF
7layer_normalization_3_batchnorm_readvariableop_resource:	А
identity

identity_1ИҐdense_2/BiasAdd/ReadVariableOpҐ dense_2/Tensordot/ReadVariableOpҐdense_3/BiasAdd/ReadVariableOpҐ dense_3/Tensordot/ReadVariableOpҐ.layer_normalization_2/batchnorm/ReadVariableOpҐ2layer_normalization_2/batchnorm/mul/ReadVariableOpҐ.layer_normalization_3/batchnorm/ReadVariableOpҐ2layer_normalization_3/batchnorm/mul/ReadVariableOpҐ:multi_head_attention_1/attention_output/add/ReadVariableOpҐDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_1/key/add/ReadVariableOpҐ7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/query/add/ReadVariableOpҐ9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/value/add/ReadVariableOpҐ9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :y
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*#
_output_shapes
:€€€€€€€€€f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Й
strided_slice_2StridedSlicerange:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskO
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*#
_output_shapes
:€€€€€€€€€d
subSubrange_1:output:0strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€]
addAddV2sub:z:0strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€z
GreaterEqualGreaterEqualstrided_slice_2:output:0add:z:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :С
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:{
ReshapeReshapeGreaterEqual:z:0Reshape/shape:output:0*
T0
*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€n

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : {
concatConcatV2ExpandDims:output:0Const:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
TileTileReshape:output:0concat:output:0*
T0
*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€¬
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0й
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde©
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes
:	А*
dtype0џ
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€АЊ
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0е
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde•
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes
:	А*
dtype0’
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А¬
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0й
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde©
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	А*
dtype0џ
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аa
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А=≤
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аж
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbep
%multi_head_attention_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€Ї
!multi_head_attention_1/ExpandDims
ExpandDimsTile:output:0.multi_head_attention_1/ExpandDims/dim:output:0*
T0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€≤
#multi_head_attention_1/softmax/CastCast*multi_head_attention_1/ExpandDims:output:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€i
$multi_head_attention_1/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ќ
"multi_head_attention_1/softmax/subSub-multi_head_attention_1/softmax/sub/x:output:0'multi_head_attention_1/softmax/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€i
$multi_head_attention_1/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knќћ
"multi_head_attention_1/softmax/mulMul&multi_head_attention_1/softmax/sub:z:0-multi_head_attention_1/softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ќ
"multi_head_attention_1/softmax/addAddV2-multi_head_attention_1/einsum/Einsum:output:0&multi_head_attention_1/softmax/mul:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€•
&multi_head_attention_1/softmax/SoftmaxSoftmax&multi_head_attention_1/softmax/add:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€±
'multi_head_attention_1/dropout/IdentityIdentity0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ф
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/Identity:output:0$multi_head_attention_1/value/add:z:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationacbe,aecd->abcdЎ
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0§
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
equationabcd,cde->abeї
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:А*
dtype0ш
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?ѓ
dropout_2/dropout/MulMul/multi_head_attention_1/attention_output/add:z:0 dropout_2/dropout/Const:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АД
dropout_2/dropout/ShapeShape/multi_head_attention_1/attention_output/add:z:0*
T0*
_output_shapes
::нѕЃ
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>“
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А^
dropout_2/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    …
dropout_2/dropout/SelectV2SelectV2"dropout_2/dropout/GreaterEqual:z:0dropout_2/dropout/Mul:z:0"dropout_2/dropout/Const_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А{
add_1AddV2inputs#dropout_2/dropout/SelectV2:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ƒ
"layer_normalization_2/moments/meanMean	add_1:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(¶
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ƒ
/layer_normalization_2/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АВ
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ц
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5ћ
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ц
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ђ
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0—
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А†
%layer_normalization_2/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А¬
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А£
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0Ќ
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А¬
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АМ
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
dense_2/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕa
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ґ
dense_2/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0!dense_2/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АҐ
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€£
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аd
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аa
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:•
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АГ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ю
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аn
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АМ
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       o
dense_3/Tensordot/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
::нѕa
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:І
dense_3/Tensordot/transpose	Transposedense_2/Relu:activations:0!dense_3/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АҐ
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€£
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аd
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аa
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:•
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АГ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ю
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Ш
dropout_3/dropout/MulMuldense_3/BiasAdd:output:0 dropout_3/dropout/Const:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аm
dropout_3/dropout/ShapeShapedense_3/BiasAdd:output:0*
T0*
_output_shapes
::нѕЃ
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>“
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А^
dropout_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    …
dropout_3/dropout/SelectV2SelectV2"dropout_3/dropout/GreaterEqual:z:0dropout_3/dropout/Mul:z:0"dropout_3/dropout/Const_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЮ
add_2AddV2)layer_normalization_2/batchnorm/add_1:z:0#dropout_3/dropout/SelectV2:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А~
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ƒ
"layer_normalization_3/moments/meanMean	add_2:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(¶
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ƒ
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference	add_2:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АВ
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ц
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(j
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5ћ
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ц
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ђ
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0—
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А†
%layer_normalization_3/batchnorm/mul_1Mul	add_2:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А¬
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А£
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0Ќ
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А¬
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЖ
IdentityIdentity)layer_normalization_3/batchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЫ

Identity_1Identity0multi_head_attention_1/softmax/Softmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€д
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€€€€€€€€€€А: : : : : : : : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Р
t
J__inference_concatenate_1_layer_call_and_return_conditional_losses_2665532

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Г
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аe
IdentityIdentityconcat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:€€€€€€€€€€€€€€€€€€А:€€€€€€€€€€€€€€€€€€А:]Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
и
Р
@__inference_token_and_position_embedding_5_layer_call_fn_2667324
x
unknown:	;А
identityИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallxunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *d
f_R]
[__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_2665463}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€€€€€€€€€€: 22
StatefulPartitionedCallStatefulPartitionedCall:S O
0
_output_shapes
:€€€€€€€€€€€€€€€€€€

_user_specified_namex
н
—
+__inference_attention_layer_call_fn_2667530

inputs
unknown:АА
	unknown_0:	А!
	unknown_1:АА
	unknown_2:	А!
	unknown_3:АА
	unknown_4:	А!
	unknown_5:АА
	unknown_6:	А
	unknown_7:	А
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:	А

unknown_14:	А
identity

identity_1ИҐStatefulPartitionedCall“
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:€€€€€€€€€€€€€€€€€€А:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_attention_layer_call_and_return_conditional_losses_2666003}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЛ

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€€€€€€€€€€А: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
•Ю
ї
"__inference__wrapped_model_2665404
input_3
input_4^
Kmodel_2_token_and_position_embedding_5_embedding_5_embedding_lookup_2665084:	;А^
Kmodel_2_token_and_position_embedding_6_embedding_6_embedding_lookup_2665134:	Аl
Tmodel_2_attention_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:АА]
Jmodel_2_attention_multi_head_attention_1_query_add_readvariableop_resource:	Аj
Rmodel_2_attention_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:АА[
Hmodel_2_attention_multi_head_attention_1_key_add_readvariableop_resource:	Аl
Tmodel_2_attention_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:АА]
Jmodel_2_attention_multi_head_attention_1_value_add_readvariableop_resource:	Аw
_model_2_attention_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:ААd
Umodel_2_attention_multi_head_attention_1_attention_output_add_readvariableop_resource:	А\
Mmodel_2_attention_layer_normalization_2_batchnorm_mul_readvariableop_resource:	АX
Imodel_2_attention_layer_normalization_2_batchnorm_readvariableop_resource:	АO
;model_2_attention_dense_2_tensordot_readvariableop_resource:
ААH
9model_2_attention_dense_2_biasadd_readvariableop_resource:	АO
;model_2_attention_dense_3_tensordot_readvariableop_resource:
ААH
9model_2_attention_dense_3_biasadd_readvariableop_resource:	А\
Mmodel_2_attention_layer_normalization_3_batchnorm_mul_readvariableop_resource:	АX
Imodel_2_attention_layer_normalization_3_batchnorm_readvariableop_resource:	АM
:model_2_duration_outputs_tensordot_readvariableop_resource:	АF
8model_2_duration_outputs_biasadd_readvariableop_resource:I
6model_2_note_outputs_tensordot_readvariableop_resource:	А;B
4model_2_note_outputs_biasadd_readvariableop_resource:;
identity

identity_1ИҐ0model_2/attention/dense_2/BiasAdd/ReadVariableOpҐ2model_2/attention/dense_2/Tensordot/ReadVariableOpҐ0model_2/attention/dense_3/BiasAdd/ReadVariableOpҐ2model_2/attention/dense_3/Tensordot/ReadVariableOpҐ@model_2/attention/layer_normalization_2/batchnorm/ReadVariableOpҐDmodel_2/attention/layer_normalization_2/batchnorm/mul/ReadVariableOpҐ@model_2/attention/layer_normalization_3/batchnorm/ReadVariableOpҐDmodel_2/attention/layer_normalization_3/batchnorm/mul/ReadVariableOpҐLmodel_2/attention/multi_head_attention_1/attention_output/add/ReadVariableOpҐVmodel_2/attention/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐ?model_2/attention/multi_head_attention_1/key/add/ReadVariableOpҐImodel_2/attention/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐAmodel_2/attention/multi_head_attention_1/query/add/ReadVariableOpҐKmodel_2/attention/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐAmodel_2/attention/multi_head_attention_1/value/add/ReadVariableOpҐKmodel_2/attention/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpҐ/model_2/duration_outputs/BiasAdd/ReadVariableOpҐ1model_2/duration_outputs/Tensordot/ReadVariableOpҐ+model_2/note_outputs/BiasAdd/ReadVariableOpҐ-model_2/note_outputs/Tensordot/ReadVariableOpҐCmodel_2/token_and_position_embedding_5/embedding_5/embedding_lookupҐCmodel_2/token_and_position_embedding_6/embedding_6/embedding_lookupя
Cmodel_2/token_and_position_embedding_5/embedding_5/embedding_lookupResourceGatherKmodel_2_token_and_position_embedding_5_embedding_5_embedding_lookup_2665084input_3*
Tindices0*^
_classT
RPloc:@model_2/token_and_position_embedding_5/embedding_5/embedding_lookup/2665084*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0∆
Lmodel_2/token_and_position_embedding_5/embedding_5/embedding_lookup/IdentityIdentityLmodel_2/token_and_position_embedding_5/embedding_5/embedding_lookup:output:0*
T0*^
_classT
RPloc:@model_2/token_and_position_embedding_5/embedding_5/embedding_lookup/2665084*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ас
Nmodel_2/token_and_position_embedding_5/embedding_5/embedding_lookup/Identity_1IdentityUmodel_2/token_and_position_embedding_5/embedding_5/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЏ
Emodel_2/token_and_position_embedding_5/sine_position_encoding_5/ShapeShapeWmodel_2/token_and_position_embedding_5/embedding_5/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
::нѕ¶
Smodel_2/token_and_position_embedding_5/sine_position_encoding_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€®
Umodel_2/token_and_position_embedding_5/sine_position_encoding_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€Я
Umodel_2/token_and_position_embedding_5/sine_position_encoding_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
Mmodel_2/token_and_position_embedding_5/sine_position_encoding_5/strided_sliceStridedSliceNmodel_2/token_and_position_embedding_5/sine_position_encoding_5/Shape:output:0\model_2/token_and_position_embedding_5/sine_position_encoding_5/strided_slice/stack:output:0^model_2/token_and_position_embedding_5/sine_position_encoding_5/strided_slice/stack_1:output:0^model_2/token_and_position_embedding_5/sine_position_encoding_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask®
Umodel_2/token_and_position_embedding_5/sine_position_encoding_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€°
Wmodel_2/token_and_position_embedding_5/sine_position_encoding_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: °
Wmodel_2/token_and_position_embedding_5/sine_position_encoding_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
Omodel_2/token_and_position_embedding_5/sine_position_encoding_5/strided_slice_1StridedSliceNmodel_2/token_and_position_embedding_5/sine_position_encoding_5/Shape:output:0^model_2/token_and_position_embedding_5/sine_position_encoding_5/strided_slice_1/stack:output:0`model_2/token_and_position_embedding_5/sine_position_encoding_5/strided_slice_1/stack_1:output:0`model_2/token_and_position_embedding_5/sine_position_encoding_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskН
Kmodel_2/token_and_position_embedding_5/sine_position_encoding_5/range/startConst*
_output_shapes
: *
dtype0*
value	B : Н
Kmodel_2/token_and_position_embedding_5/sine_position_encoding_5/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ч
Emodel_2/token_and_position_embedding_5/sine_position_encoding_5/rangeRangeTmodel_2/token_and_position_embedding_5/sine_position_encoding_5/range/start:output:0Vmodel_2/token_and_position_embedding_5/sine_position_encoding_5/strided_slice:output:0Tmodel_2/token_and_position_embedding_5/sine_position_encoding_5/range/delta:output:0*#
_output_shapes
:€€€€€€€€€ў
Dmodel_2/token_and_position_embedding_5/sine_position_encoding_5/CastCastNmodel_2/token_and_position_embedding_5/sine_position_encoding_5/range:output:0*

DstT0*

SrcT0*#
_output_shapes
:€€€€€€€€€Н
Hmodel_2/token_and_position_embedding_5/sine_position_encoding_5/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8П
Mmodel_2/token_and_position_embedding_5/sine_position_encoding_5/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : П
Mmodel_2/token_and_position_embedding_5/sine_position_encoding_5/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :ч
Gmodel_2/token_and_position_embedding_5/sine_position_encoding_5/range_1RangeVmodel_2/token_and_position_embedding_5/sine_position_encoding_5/range_1/start:output:0Xmodel_2/token_and_position_embedding_5/sine_position_encoding_5/strided_slice_1:output:0Vmodel_2/token_and_position_embedding_5/sine_position_encoding_5/range_1/delta:output:0*
_output_shapes	
:АМ
Jmodel_2/token_and_position_embedding_5/sine_position_encoding_5/floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :°
Hmodel_2/token_and_position_embedding_5/sine_position_encoding_5/floordivFloorDivPmodel_2/token_and_position_embedding_5/sine_position_encoding_5/range_1:output:0Smodel_2/token_and_position_embedding_5/sine_position_encoding_5/floordiv/y:output:0*
T0*
_output_shapes	
:АЗ
Emodel_2/token_and_position_embedding_5/sine_position_encoding_5/mul/xConst*
_output_shapes
: *
dtype0*
value	B :О
Cmodel_2/token_and_position_embedding_5/sine_position_encoding_5/mulMulNmodel_2/token_and_position_embedding_5/sine_position_encoding_5/mul/x:output:0Lmodel_2/token_and_position_embedding_5/sine_position_encoding_5/floordiv:z:0*
T0*
_output_shapes	
:Аћ
Fmodel_2/token_and_position_embedding_5/sine_position_encoding_5/Cast_2CastGmodel_2/token_and_position_embedding_5/sine_position_encoding_5/mul:z:0*

DstT0*

SrcT0*
_output_shapes	
:АЎ
Fmodel_2/token_and_position_embedding_5/sine_position_encoding_5/Cast_3CastXmodel_2/token_and_position_embedding_5/sine_position_encoding_5/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: Р
Gmodel_2/token_and_position_embedding_5/sine_position_encoding_5/truedivRealDivJmodel_2/token_and_position_embedding_5/sine_position_encoding_5/Cast_2:y:0Jmodel_2/token_and_position_embedding_5/sine_position_encoding_5/Cast_3:y:0*
T0*
_output_shapes	
:АР
Cmodel_2/token_and_position_embedding_5/sine_position_encoding_5/PowPowQmodel_2/token_and_position_embedding_5/sine_position_encoding_5/Cast_1/x:output:0Kmodel_2/token_and_position_embedding_5/sine_position_encoding_5/truediv:z:0*
T0*
_output_shapes	
:АР
Nmodel_2/token_and_position_embedding_5/sine_position_encoding_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :≠
Jmodel_2/token_and_position_embedding_5/sine_position_encoding_5/ExpandDims
ExpandDimsHmodel_2/token_and_position_embedding_5/sine_position_encoding_5/Cast:y:0Wmodel_2/token_and_position_embedding_5/sine_position_encoding_5/ExpandDims/dim:output:0*
T0*'
_output_shapes
:€€€€€€€€€Т
Pmodel_2/token_and_position_embedding_5/sine_position_encoding_5/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ®
Lmodel_2/token_and_position_embedding_5/sine_position_encoding_5/ExpandDims_1
ExpandDimsGmodel_2/token_and_position_embedding_5/sine_position_encoding_5/Pow:z:0Ymodel_2/token_and_position_embedding_5/sine_position_encoding_5/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	АЂ
Emodel_2/token_and_position_embedding_5/sine_position_encoding_5/mul_1MulSmodel_2/token_and_position_embedding_5/sine_position_encoding_5/ExpandDims:output:0Umodel_2/token_and_position_embedding_5/sine_position_encoding_5/ExpandDims_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АП
Mmodel_2/token_and_position_embedding_5/sine_position_encoding_5/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : П
Mmodel_2/token_and_position_embedding_5/sine_position_encoding_5/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :ч
Gmodel_2/token_and_position_embedding_5/sine_position_encoding_5/range_2RangeVmodel_2/token_and_position_embedding_5/sine_position_encoding_5/range_2/start:output:0Xmodel_2/token_and_position_embedding_5/sine_position_encoding_5/strided_slice_1:output:0Vmodel_2/token_and_position_embedding_5/sine_position_encoding_5/range_2/delta:output:0*
_output_shapes	
:АЗ
Emodel_2/token_and_position_embedding_5/sine_position_encoding_5/mod/yConst*
_output_shapes
: *
dtype0*
value	B :Ч
Cmodel_2/token_and_position_embedding_5/sine_position_encoding_5/modFloorModPmodel_2/token_and_position_embedding_5/sine_position_encoding_5/range_2:output:0Nmodel_2/token_and_position_embedding_5/sine_position_encoding_5/mod/y:output:0*
T0*
_output_shapes	
:Аћ
Fmodel_2/token_and_position_embedding_5/sine_position_encoding_5/Cast_4CastGmodel_2/token_and_position_embedding_5/sine_position_encoding_5/mod:z:0*

DstT0*

SrcT0*
_output_shapes	
:АК
Emodel_2/token_and_position_embedding_5/sine_position_encoding_5/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?М
Cmodel_2/token_and_position_embedding_5/sine_position_encoding_5/subSubNmodel_2/token_and_position_embedding_5/sine_position_encoding_5/sub/x:output:0Jmodel_2/token_and_position_embedding_5/sine_position_encoding_5/Cast_4:y:0*
T0*
_output_shapes	
:А»
Cmodel_2/token_and_position_embedding_5/sine_position_encoding_5/SinSinImodel_2/token_and_position_embedding_5/sine_position_encoding_5/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АС
Emodel_2/token_and_position_embedding_5/sine_position_encoding_5/mul_2MulGmodel_2/token_and_position_embedding_5/sine_position_encoding_5/Sin:y:0Gmodel_2/token_and_position_embedding_5/sine_position_encoding_5/sub:z:0*
T0*(
_output_shapes
:€€€€€€€€€А»
Cmodel_2/token_and_position_embedding_5/sine_position_encoding_5/CosCosImodel_2/token_and_position_embedding_5/sine_position_encoding_5/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АФ
Emodel_2/token_and_position_embedding_5/sine_position_encoding_5/mul_3MulGmodel_2/token_and_position_embedding_5/sine_position_encoding_5/Cos:y:0Jmodel_2/token_and_position_embedding_5/sine_position_encoding_5/Cast_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
Cmodel_2/token_and_position_embedding_5/sine_position_encoding_5/addAddV2Imodel_2/token_and_position_embedding_5/sine_position_encoding_5/mul_2:z:0Imodel_2/token_and_position_embedding_5/sine_position_encoding_5/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
Kmodel_2/token_and_position_embedding_5/sine_position_encoding_5/BroadcastToBroadcastToGmodel_2/token_and_position_embedding_5/sine_position_encoding_5/add:z:0Nmodel_2/token_and_position_embedding_5/sine_position_encoding_5/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АҐ
*model_2/token_and_position_embedding_5/addAddV2Wmodel_2/token_and_position_embedding_5/embedding_5/embedding_lookup/Identity_1:output:0Tmodel_2/token_and_position_embedding_5/sine_position_encoding_5/BroadcastTo:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ая
Cmodel_2/token_and_position_embedding_6/embedding_6/embedding_lookupResourceGatherKmodel_2_token_and_position_embedding_6_embedding_6_embedding_lookup_2665134input_4*
Tindices0*^
_classT
RPloc:@model_2/token_and_position_embedding_6/embedding_6/embedding_lookup/2665134*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0∆
Lmodel_2/token_and_position_embedding_6/embedding_6/embedding_lookup/IdentityIdentityLmodel_2/token_and_position_embedding_6/embedding_6/embedding_lookup:output:0*
T0*^
_classT
RPloc:@model_2/token_and_position_embedding_6/embedding_6/embedding_lookup/2665134*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ас
Nmodel_2/token_and_position_embedding_6/embedding_6/embedding_lookup/Identity_1IdentityUmodel_2/token_and_position_embedding_6/embedding_6/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЏ
Emodel_2/token_and_position_embedding_6/sine_position_encoding_6/ShapeShapeWmodel_2/token_and_position_embedding_6/embedding_6/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
::нѕ¶
Smodel_2/token_and_position_embedding_6/sine_position_encoding_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€®
Umodel_2/token_and_position_embedding_6/sine_position_encoding_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€Я
Umodel_2/token_and_position_embedding_6/sine_position_encoding_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
Mmodel_2/token_and_position_embedding_6/sine_position_encoding_6/strided_sliceStridedSliceNmodel_2/token_and_position_embedding_6/sine_position_encoding_6/Shape:output:0\model_2/token_and_position_embedding_6/sine_position_encoding_6/strided_slice/stack:output:0^model_2/token_and_position_embedding_6/sine_position_encoding_6/strided_slice/stack_1:output:0^model_2/token_and_position_embedding_6/sine_position_encoding_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask®
Umodel_2/token_and_position_embedding_6/sine_position_encoding_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€°
Wmodel_2/token_and_position_embedding_6/sine_position_encoding_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: °
Wmodel_2/token_and_position_embedding_6/sine_position_encoding_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
Omodel_2/token_and_position_embedding_6/sine_position_encoding_6/strided_slice_1StridedSliceNmodel_2/token_and_position_embedding_6/sine_position_encoding_6/Shape:output:0^model_2/token_and_position_embedding_6/sine_position_encoding_6/strided_slice_1/stack:output:0`model_2/token_and_position_embedding_6/sine_position_encoding_6/strided_slice_1/stack_1:output:0`model_2/token_and_position_embedding_6/sine_position_encoding_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskН
Kmodel_2/token_and_position_embedding_6/sine_position_encoding_6/range/startConst*
_output_shapes
: *
dtype0*
value	B : Н
Kmodel_2/token_and_position_embedding_6/sine_position_encoding_6/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ч
Emodel_2/token_and_position_embedding_6/sine_position_encoding_6/rangeRangeTmodel_2/token_and_position_embedding_6/sine_position_encoding_6/range/start:output:0Vmodel_2/token_and_position_embedding_6/sine_position_encoding_6/strided_slice:output:0Tmodel_2/token_and_position_embedding_6/sine_position_encoding_6/range/delta:output:0*#
_output_shapes
:€€€€€€€€€ў
Dmodel_2/token_and_position_embedding_6/sine_position_encoding_6/CastCastNmodel_2/token_and_position_embedding_6/sine_position_encoding_6/range:output:0*

DstT0*

SrcT0*#
_output_shapes
:€€€€€€€€€Н
Hmodel_2/token_and_position_embedding_6/sine_position_encoding_6/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8П
Mmodel_2/token_and_position_embedding_6/sine_position_encoding_6/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : П
Mmodel_2/token_and_position_embedding_6/sine_position_encoding_6/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :ч
Gmodel_2/token_and_position_embedding_6/sine_position_encoding_6/range_1RangeVmodel_2/token_and_position_embedding_6/sine_position_encoding_6/range_1/start:output:0Xmodel_2/token_and_position_embedding_6/sine_position_encoding_6/strided_slice_1:output:0Vmodel_2/token_and_position_embedding_6/sine_position_encoding_6/range_1/delta:output:0*
_output_shapes	
:АМ
Jmodel_2/token_and_position_embedding_6/sine_position_encoding_6/floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :°
Hmodel_2/token_and_position_embedding_6/sine_position_encoding_6/floordivFloorDivPmodel_2/token_and_position_embedding_6/sine_position_encoding_6/range_1:output:0Smodel_2/token_and_position_embedding_6/sine_position_encoding_6/floordiv/y:output:0*
T0*
_output_shapes	
:АЗ
Emodel_2/token_and_position_embedding_6/sine_position_encoding_6/mul/xConst*
_output_shapes
: *
dtype0*
value	B :О
Cmodel_2/token_and_position_embedding_6/sine_position_encoding_6/mulMulNmodel_2/token_and_position_embedding_6/sine_position_encoding_6/mul/x:output:0Lmodel_2/token_and_position_embedding_6/sine_position_encoding_6/floordiv:z:0*
T0*
_output_shapes	
:Аћ
Fmodel_2/token_and_position_embedding_6/sine_position_encoding_6/Cast_2CastGmodel_2/token_and_position_embedding_6/sine_position_encoding_6/mul:z:0*

DstT0*

SrcT0*
_output_shapes	
:АЎ
Fmodel_2/token_and_position_embedding_6/sine_position_encoding_6/Cast_3CastXmodel_2/token_and_position_embedding_6/sine_position_encoding_6/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: Р
Gmodel_2/token_and_position_embedding_6/sine_position_encoding_6/truedivRealDivJmodel_2/token_and_position_embedding_6/sine_position_encoding_6/Cast_2:y:0Jmodel_2/token_and_position_embedding_6/sine_position_encoding_6/Cast_3:y:0*
T0*
_output_shapes	
:АР
Cmodel_2/token_and_position_embedding_6/sine_position_encoding_6/PowPowQmodel_2/token_and_position_embedding_6/sine_position_encoding_6/Cast_1/x:output:0Kmodel_2/token_and_position_embedding_6/sine_position_encoding_6/truediv:z:0*
T0*
_output_shapes	
:АР
Nmodel_2/token_and_position_embedding_6/sine_position_encoding_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :≠
Jmodel_2/token_and_position_embedding_6/sine_position_encoding_6/ExpandDims
ExpandDimsHmodel_2/token_and_position_embedding_6/sine_position_encoding_6/Cast:y:0Wmodel_2/token_and_position_embedding_6/sine_position_encoding_6/ExpandDims/dim:output:0*
T0*'
_output_shapes
:€€€€€€€€€Т
Pmodel_2/token_and_position_embedding_6/sine_position_encoding_6/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ®
Lmodel_2/token_and_position_embedding_6/sine_position_encoding_6/ExpandDims_1
ExpandDimsGmodel_2/token_and_position_embedding_6/sine_position_encoding_6/Pow:z:0Ymodel_2/token_and_position_embedding_6/sine_position_encoding_6/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	АЂ
Emodel_2/token_and_position_embedding_6/sine_position_encoding_6/mul_1MulSmodel_2/token_and_position_embedding_6/sine_position_encoding_6/ExpandDims:output:0Umodel_2/token_and_position_embedding_6/sine_position_encoding_6/ExpandDims_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АП
Mmodel_2/token_and_position_embedding_6/sine_position_encoding_6/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : П
Mmodel_2/token_and_position_embedding_6/sine_position_encoding_6/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :ч
Gmodel_2/token_and_position_embedding_6/sine_position_encoding_6/range_2RangeVmodel_2/token_and_position_embedding_6/sine_position_encoding_6/range_2/start:output:0Xmodel_2/token_and_position_embedding_6/sine_position_encoding_6/strided_slice_1:output:0Vmodel_2/token_and_position_embedding_6/sine_position_encoding_6/range_2/delta:output:0*
_output_shapes	
:АЗ
Emodel_2/token_and_position_embedding_6/sine_position_encoding_6/mod/yConst*
_output_shapes
: *
dtype0*
value	B :Ч
Cmodel_2/token_and_position_embedding_6/sine_position_encoding_6/modFloorModPmodel_2/token_and_position_embedding_6/sine_position_encoding_6/range_2:output:0Nmodel_2/token_and_position_embedding_6/sine_position_encoding_6/mod/y:output:0*
T0*
_output_shapes	
:Аћ
Fmodel_2/token_and_position_embedding_6/sine_position_encoding_6/Cast_4CastGmodel_2/token_and_position_embedding_6/sine_position_encoding_6/mod:z:0*

DstT0*

SrcT0*
_output_shapes	
:АК
Emodel_2/token_and_position_embedding_6/sine_position_encoding_6/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?М
Cmodel_2/token_and_position_embedding_6/sine_position_encoding_6/subSubNmodel_2/token_and_position_embedding_6/sine_position_encoding_6/sub/x:output:0Jmodel_2/token_and_position_embedding_6/sine_position_encoding_6/Cast_4:y:0*
T0*
_output_shapes	
:А»
Cmodel_2/token_and_position_embedding_6/sine_position_encoding_6/SinSinImodel_2/token_and_position_embedding_6/sine_position_encoding_6/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АС
Emodel_2/token_and_position_embedding_6/sine_position_encoding_6/mul_2MulGmodel_2/token_and_position_embedding_6/sine_position_encoding_6/Sin:y:0Gmodel_2/token_and_position_embedding_6/sine_position_encoding_6/sub:z:0*
T0*(
_output_shapes
:€€€€€€€€€А»
Cmodel_2/token_and_position_embedding_6/sine_position_encoding_6/CosCosImodel_2/token_and_position_embedding_6/sine_position_encoding_6/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АФ
Emodel_2/token_and_position_embedding_6/sine_position_encoding_6/mul_3MulGmodel_2/token_and_position_embedding_6/sine_position_encoding_6/Cos:y:0Jmodel_2/token_and_position_embedding_6/sine_position_encoding_6/Cast_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
Cmodel_2/token_and_position_embedding_6/sine_position_encoding_6/addAddV2Imodel_2/token_and_position_embedding_6/sine_position_encoding_6/mul_2:z:0Imodel_2/token_and_position_embedding_6/sine_position_encoding_6/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
Kmodel_2/token_and_position_embedding_6/sine_position_encoding_6/BroadcastToBroadcastToGmodel_2/token_and_position_embedding_6/sine_position_encoding_6/add:z:0Nmodel_2/token_and_position_embedding_6/sine_position_encoding_6/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АҐ
*model_2/token_and_position_embedding_6/addAddV2Wmodel_2/token_and_position_embedding_6/embedding_6/embedding_lookup/Identity_1:output:0Tmodel_2/token_and_position_embedding_6/sine_position_encoding_6/BroadcastTo:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аc
!model_2/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :э
model_2/concatenate_1/concatConcatV2.model_2/token_and_position_embedding_5/add:z:0.model_2/token_and_position_embedding_6/add:z:0*model_2/concatenate_1/concat/axis:output:0*
N*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аz
model_2/attention/ShapeShape%model_2/concatenate_1/concat:output:0*
T0*
_output_shapes
::нѕo
%model_2/attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'model_2/attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'model_2/attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ђ
model_2/attention/strided_sliceStridedSlice model_2/attention/Shape:output:0.model_2/attention/strided_slice/stack:output:00model_2/attention/strided_slice/stack_1:output:00model_2/attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
'model_2/attention/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:s
)model_2/attention/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)model_2/attention/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:≥
!model_2/attention/strided_slice_1StridedSlice model_2/attention/Shape:output:00model_2/attention/strided_slice_1/stack:output:02model_2/attention/strided_slice_1/stack_1:output:02model_2/attention/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
model_2/attention/range/startConst*
_output_shapes
: *
dtype0*
value	B : _
model_2/attention/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :Ѕ
model_2/attention/rangeRange&model_2/attention/range/start:output:0*model_2/attention/strided_slice_1:output:0&model_2/attention/range/delta:output:0*#
_output_shapes
:€€€€€€€€€x
'model_2/attention/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        z
)model_2/attention/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)model_2/attention/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      г
!model_2/attention/strided_slice_2StridedSlice model_2/attention/range:output:00model_2/attention/strided_slice_2/stack:output:02model_2/attention/strided_slice_2/stack_1:output:02model_2/attention/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maska
model_2/attention/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : a
model_2/attention/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :«
model_2/attention/range_1Range(model_2/attention/range_1/start:output:0*model_2/attention/strided_slice_1:output:0(model_2/attention/range_1/delta:output:0*#
_output_shapes
:€€€€€€€€€Ъ
model_2/attention/subSub"model_2/attention/range_1:output:0*model_2/attention/strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€У
model_2/attention/addAddV2model_2/attention/sub:z:0*model_2/attention/strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€∞
model_2/attention/GreaterEqualGreaterEqual*model_2/attention/strided_slice_2:output:0model_2/attention/add:z:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€c
!model_2/attention/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :ў
model_2/attention/Reshape/shapePack*model_2/attention/Reshape/shape/0:output:0*model_2/attention/strided_slice_1:output:0*model_2/attention/strided_slice_1:output:0*
N*
T0*
_output_shapes
:±
model_2/attention/ReshapeReshape"model_2/attention/GreaterEqual:z:0(model_2/attention/Reshape/shape:output:0*
T0
*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€k
 model_2/attention/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€§
model_2/attention/ExpandDims
ExpandDims(model_2/attention/strided_slice:output:0)model_2/attention/ExpandDims/dim:output:0*
T0*
_output_shapes
:h
model_2/attention/ConstConst*
_output_shapes
:*
dtype0*
valueB"      _
model_2/attention/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : √
model_2/attention/concatConcatV2%model_2/attention/ExpandDims:output:0 model_2/attention/Const:output:0&model_2/attention/concat/axis:output:0*
N*
T0*
_output_shapes
:≠
model_2/attention/TileTile"model_2/attention/Reshape:output:0!model_2/attention/concat:output:0*
T0
*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€ж
Kmodel_2/attention/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpTmodel_2_attention_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0ђ
<model_2/attention/multi_head_attention_1/query/einsum/EinsumEinsum%model_2/concatenate_1/concat:output:0Smodel_2/attention/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abdeЌ
Amodel_2/attention/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpJmodel_2_attention_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes
:	А*
dtype0С
2model_2/attention/multi_head_attention_1/query/addAddV2Emodel_2/attention/multi_head_attention_1/query/einsum/Einsum:output:0Imodel_2/attention/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Ав
Imodel_2/attention/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpRmodel_2_attention_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0®
:model_2/attention/multi_head_attention_1/key/einsum/EinsumEinsum%model_2/concatenate_1/concat:output:0Qmodel_2/attention/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde…
?model_2/attention/multi_head_attention_1/key/add/ReadVariableOpReadVariableOpHmodel_2_attention_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes
:	А*
dtype0Л
0model_2/attention/multi_head_attention_1/key/addAddV2Cmodel_2/attention/multi_head_attention_1/key/einsum/Einsum:output:0Gmodel_2/attention/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аж
Kmodel_2/attention/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpTmodel_2_attention_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0ђ
<model_2/attention/multi_head_attention_1/value/einsum/EinsumEinsum%model_2/concatenate_1/concat:output:0Smodel_2/attention/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abdeЌ
Amodel_2/attention/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpJmodel_2_attention_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	А*
dtype0С
2model_2/attention/multi_head_attention_1/value/addAddV2Emodel_2/attention/multi_head_attention_1/value/einsum/Einsum:output:0Imodel_2/attention/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аs
.model_2/attention/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А=и
,model_2/attention/multi_head_attention_1/MulMul6model_2/attention/multi_head_attention_1/query/add:z:07model_2/attention/multi_head_attention_1/Mul/y:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€АЬ
6model_2/attention/multi_head_attention_1/einsum/EinsumEinsum4model_2/attention/multi_head_attention_1/key/add:z:00model_2/attention/multi_head_attention_1/Mul:z:0*
N*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbeВ
7model_2/attention/multi_head_attention_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€р
3model_2/attention/multi_head_attention_1/ExpandDims
ExpandDimsmodel_2/attention/Tile:output:0@model_2/attention/multi_head_attention_1/ExpandDims/dim:output:0*
T0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€÷
5model_2/attention/multi_head_attention_1/softmax/CastCast<model_2/attention/multi_head_attention_1/ExpandDims:output:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€{
6model_2/attention/multi_head_attention_1/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Г
4model_2/attention/multi_head_attention_1/softmax/subSub?model_2/attention/multi_head_attention_1/softmax/sub/x:output:09model_2/attention/multi_head_attention_1/softmax/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€{
6model_2/attention/multi_head_attention_1/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knќВ
4model_2/attention/multi_head_attention_1/softmax/mulMul8model_2/attention/multi_head_attention_1/softmax/sub:z:0?model_2/attention/multi_head_attention_1/softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€Д
4model_2/attention/multi_head_attention_1/softmax/addAddV2?model_2/attention/multi_head_attention_1/einsum/Einsum:output:08model_2/attention/multi_head_attention_1/softmax/mul:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€…
8model_2/attention/multi_head_attention_1/softmax/SoftmaxSoftmax8model_2/attention/multi_head_attention_1/softmax/add:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€’
9model_2/attention/multi_head_attention_1/dropout/IdentityIdentityBmodel_2/attention/multi_head_attention_1/softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€™
8model_2/attention/multi_head_attention_1/einsum_1/EinsumEinsumBmodel_2/attention/multi_head_attention_1/dropout/Identity:output:06model_2/attention/multi_head_attention_1/value/add:z:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationacbe,aecd->abcdь
Vmodel_2/attention/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp_model_2_attention_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0Џ
Gmodel_2/attention/multi_head_attention_1/attention_output/einsum/EinsumEinsumAmodel_2/attention/multi_head_attention_1/einsum_1/Einsum:output:0^model_2/attention/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
equationabcd,cde->abeя
Lmodel_2/attention/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpUmodel_2_attention_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:А*
dtype0Ѓ
=model_2/attention/multi_head_attention_1/attention_output/addAddV2Pmodel_2/attention/multi_head_attention_1/attention_output/einsum/Einsum:output:0Tmodel_2/attention/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≥
$model_2/attention/dropout_2/IdentityIdentityAmodel_2/attention/multi_head_attention_1/attention_output/add:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аґ
model_2/attention/add_1AddV2%model_2/concatenate_1/concat:output:0-model_2/attention/dropout_2/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АР
Fmodel_2/attention/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ъ
4model_2/attention/layer_normalization_2/moments/meanMeanmodel_2/attention/add_1:z:0Omodel_2/attention/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims( 
<model_2/attention/layer_normalization_2/moments/StopGradientStopGradient=model_2/attention/layer_normalization_2/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ъ
Amodel_2/attention/layer_normalization_2/moments/SquaredDifferenceSquaredDifferencemodel_2/attention/add_1:z:0Emodel_2/attention/layer_normalization_2/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АФ
Jmodel_2/attention/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ђ
8model_2/attention/layer_normalization_2/moments/varianceMeanEmodel_2/attention/layer_normalization_2/moments/SquaredDifference:z:0Smodel_2/attention/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(|
7model_2/attention/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5В
5model_2/attention/layer_normalization_2/batchnorm/addAddV2Amodel_2/attention/layer_normalization_2/moments/variance:output:0@model_2/attention/layer_normalization_2/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ї
7model_2/attention/layer_normalization_2/batchnorm/RsqrtRsqrt9model_2/attention/layer_normalization_2/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ѕ
Dmodel_2/attention/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpMmodel_2_attention_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0З
5model_2/attention/layer_normalization_2/batchnorm/mulMul;model_2/attention/layer_normalization_2/batchnorm/Rsqrt:y:0Lmodel_2/attention/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А÷
7model_2/attention/layer_normalization_2/batchnorm/mul_1Mulmodel_2/attention/add_1:z:09model_2/attention/layer_normalization_2/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аш
7model_2/attention/layer_normalization_2/batchnorm/mul_2Mul=model_2/attention/layer_normalization_2/moments/mean:output:09model_2/attention/layer_normalization_2/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А«
@model_2/attention/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOpImodel_2_attention_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0Г
5model_2/attention/layer_normalization_2/batchnorm/subSubHmodel_2/attention/layer_normalization_2/batchnorm/ReadVariableOp:value:0;model_2/attention/layer_normalization_2/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аш
7model_2/attention/layer_normalization_2/batchnorm/add_1AddV2;model_2/attention/layer_normalization_2/batchnorm/mul_1:z:09model_2/attention/layer_normalization_2/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А∞
2model_2/attention/dense_2/Tensordot/ReadVariableOpReadVariableOp;model_2_attention_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0r
(model_2/attention/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:y
(model_2/attention/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Ґ
)model_2/attention/dense_2/Tensordot/ShapeShape;model_2/attention/layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕs
1model_2/attention/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : £
,model_2/attention/dense_2/Tensordot/GatherV2GatherV22model_2/attention/dense_2/Tensordot/Shape:output:01model_2/attention/dense_2/Tensordot/free:output:0:model_2/attention/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
3model_2/attention/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
.model_2/attention/dense_2/Tensordot/GatherV2_1GatherV22model_2/attention/dense_2/Tensordot/Shape:output:01model_2/attention/dense_2/Tensordot/axes:output:0<model_2/attention/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
)model_2/attention/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Љ
(model_2/attention/dense_2/Tensordot/ProdProd5model_2/attention/dense_2/Tensordot/GatherV2:output:02model_2/attention/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: u
+model_2/attention/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¬
*model_2/attention/dense_2/Tensordot/Prod_1Prod7model_2/attention/dense_2/Tensordot/GatherV2_1:output:04model_2/attention/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: q
/model_2/attention/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
*model_2/attention/dense_2/Tensordot/concatConcatV21model_2/attention/dense_2/Tensordot/free:output:01model_2/attention/dense_2/Tensordot/axes:output:08model_2/attention/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:«
)model_2/attention/dense_2/Tensordot/stackPack1model_2/attention/dense_2/Tensordot/Prod:output:03model_2/attention/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:м
-model_2/attention/dense_2/Tensordot/transpose	Transpose;model_2/attention/layer_normalization_2/batchnorm/add_1:z:03model_2/attention/dense_2/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЎ
+model_2/attention/dense_2/Tensordot/ReshapeReshape1model_2/attention/dense_2/Tensordot/transpose:y:02model_2/attention/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€ў
*model_2/attention/dense_2/Tensordot/MatMulMatMul4model_2/attention/dense_2/Tensordot/Reshape:output:0:model_2/attention/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аv
+model_2/attention/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аs
1model_2/attention/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : П
,model_2/attention/dense_2/Tensordot/concat_1ConcatV25model_2/attention/dense_2/Tensordot/GatherV2:output:04model_2/attention/dense_2/Tensordot/Const_2:output:0:model_2/attention/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:џ
#model_2/attention/dense_2/TensordotReshape4model_2/attention/dense_2/Tensordot/MatMul:product:05model_2/attention/dense_2/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АІ
0model_2/attention/dense_2/BiasAdd/ReadVariableOpReadVariableOp9model_2_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0‘
!model_2/attention/dense_2/BiasAddBiasAdd,model_2/attention/dense_2/Tensordot:output:08model_2/attention/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АТ
model_2/attention/dense_2/ReluRelu*model_2/attention/dense_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А∞
2model_2/attention/dense_3/Tensordot/ReadVariableOpReadVariableOp;model_2_attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0r
(model_2/attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:y
(model_2/attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       У
)model_2/attention/dense_3/Tensordot/ShapeShape,model_2/attention/dense_2/Relu:activations:0*
T0*
_output_shapes
::нѕs
1model_2/attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : £
,model_2/attention/dense_3/Tensordot/GatherV2GatherV22model_2/attention/dense_3/Tensordot/Shape:output:01model_2/attention/dense_3/Tensordot/free:output:0:model_2/attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
3model_2/attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
.model_2/attention/dense_3/Tensordot/GatherV2_1GatherV22model_2/attention/dense_3/Tensordot/Shape:output:01model_2/attention/dense_3/Tensordot/axes:output:0<model_2/attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
)model_2/attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Љ
(model_2/attention/dense_3/Tensordot/ProdProd5model_2/attention/dense_3/Tensordot/GatherV2:output:02model_2/attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: u
+model_2/attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¬
*model_2/attention/dense_3/Tensordot/Prod_1Prod7model_2/attention/dense_3/Tensordot/GatherV2_1:output:04model_2/attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: q
/model_2/attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
*model_2/attention/dense_3/Tensordot/concatConcatV21model_2/attention/dense_3/Tensordot/free:output:01model_2/attention/dense_3/Tensordot/axes:output:08model_2/attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:«
)model_2/attention/dense_3/Tensordot/stackPack1model_2/attention/dense_3/Tensordot/Prod:output:03model_2/attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ё
-model_2/attention/dense_3/Tensordot/transpose	Transpose,model_2/attention/dense_2/Relu:activations:03model_2/attention/dense_3/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЎ
+model_2/attention/dense_3/Tensordot/ReshapeReshape1model_2/attention/dense_3/Tensordot/transpose:y:02model_2/attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€ў
*model_2/attention/dense_3/Tensordot/MatMulMatMul4model_2/attention/dense_3/Tensordot/Reshape:output:0:model_2/attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аv
+model_2/attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аs
1model_2/attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : П
,model_2/attention/dense_3/Tensordot/concat_1ConcatV25model_2/attention/dense_3/Tensordot/GatherV2:output:04model_2/attention/dense_3/Tensordot/Const_2:output:0:model_2/attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:џ
#model_2/attention/dense_3/TensordotReshape4model_2/attention/dense_3/Tensordot/MatMul:product:05model_2/attention/dense_3/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АІ
0model_2/attention/dense_3/BiasAdd/ReadVariableOpReadVariableOp9model_2_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0‘
!model_2/attention/dense_3/BiasAddBiasAdd,model_2/attention/dense_3/Tensordot:output:08model_2/attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЬ
$model_2/attention/dropout_3/IdentityIdentity*model_2/attention/dense_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аћ
model_2/attention/add_2AddV2;model_2/attention/layer_normalization_2/batchnorm/add_1:z:0-model_2/attention/dropout_3/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АР
Fmodel_2/attention/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ъ
4model_2/attention/layer_normalization_3/moments/meanMeanmodel_2/attention/add_2:z:0Omodel_2/attention/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims( 
<model_2/attention/layer_normalization_3/moments/StopGradientStopGradient=model_2/attention/layer_normalization_3/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ъ
Amodel_2/attention/layer_normalization_3/moments/SquaredDifferenceSquaredDifferencemodel_2/attention/add_2:z:0Emodel_2/attention/layer_normalization_3/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АФ
Jmodel_2/attention/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ђ
8model_2/attention/layer_normalization_3/moments/varianceMeanEmodel_2/attention/layer_normalization_3/moments/SquaredDifference:z:0Smodel_2/attention/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(|
7model_2/attention/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5В
5model_2/attention/layer_normalization_3/batchnorm/addAddV2Amodel_2/attention/layer_normalization_3/moments/variance:output:0@model_2/attention/layer_normalization_3/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ї
7model_2/attention/layer_normalization_3/batchnorm/RsqrtRsqrt9model_2/attention/layer_normalization_3/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ѕ
Dmodel_2/attention/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpMmodel_2_attention_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0З
5model_2/attention/layer_normalization_3/batchnorm/mulMul;model_2/attention/layer_normalization_3/batchnorm/Rsqrt:y:0Lmodel_2/attention/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А÷
7model_2/attention/layer_normalization_3/batchnorm/mul_1Mulmodel_2/attention/add_2:z:09model_2/attention/layer_normalization_3/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аш
7model_2/attention/layer_normalization_3/batchnorm/mul_2Mul=model_2/attention/layer_normalization_3/moments/mean:output:09model_2/attention/layer_normalization_3/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А«
@model_2/attention/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOpImodel_2_attention_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0Г
5model_2/attention/layer_normalization_3/batchnorm/subSubHmodel_2/attention/layer_normalization_3/batchnorm/ReadVariableOp:value:0;model_2/attention/layer_normalization_3/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аш
7model_2/attention/layer_normalization_3/batchnorm/add_1AddV2;model_2/attention/layer_normalization_3/batchnorm/mul_1:z:09model_2/attention/layer_normalization_3/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≠
1model_2/duration_outputs/Tensordot/ReadVariableOpReadVariableOp:model_2_duration_outputs_tensordot_readvariableop_resource*
_output_shapes
:	А*
dtype0q
'model_2/duration_outputs/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:x
'model_2/duration_outputs/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       °
(model_2/duration_outputs/Tensordot/ShapeShape;model_2/attention/layer_normalization_3/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕr
0model_2/duration_outputs/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Я
+model_2/duration_outputs/Tensordot/GatherV2GatherV21model_2/duration_outputs/Tensordot/Shape:output:00model_2/duration_outputs/Tensordot/free:output:09model_2/duration_outputs/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:t
2model_2/duration_outputs/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : £
-model_2/duration_outputs/Tensordot/GatherV2_1GatherV21model_2/duration_outputs/Tensordot/Shape:output:00model_2/duration_outputs/Tensordot/axes:output:0;model_2/duration_outputs/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:r
(model_2/duration_outputs/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: є
'model_2/duration_outputs/Tensordot/ProdProd4model_2/duration_outputs/Tensordot/GatherV2:output:01model_2/duration_outputs/Tensordot/Const:output:0*
T0*
_output_shapes
: t
*model_2/duration_outputs/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: њ
)model_2/duration_outputs/Tensordot/Prod_1Prod6model_2/duration_outputs/Tensordot/GatherV2_1:output:03model_2/duration_outputs/Tensordot/Const_1:output:0*
T0*
_output_shapes
: p
.model_2/duration_outputs/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : А
)model_2/duration_outputs/Tensordot/concatConcatV20model_2/duration_outputs/Tensordot/free:output:00model_2/duration_outputs/Tensordot/axes:output:07model_2/duration_outputs/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ƒ
(model_2/duration_outputs/Tensordot/stackPack0model_2/duration_outputs/Tensordot/Prod:output:02model_2/duration_outputs/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:к
,model_2/duration_outputs/Tensordot/transpose	Transpose;model_2/attention/layer_normalization_3/batchnorm/add_1:z:02model_2/duration_outputs/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А’
*model_2/duration_outputs/Tensordot/ReshapeReshape0model_2/duration_outputs/Tensordot/transpose:y:01model_2/duration_outputs/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€’
)model_2/duration_outputs/Tensordot/MatMulMatMul3model_2/duration_outputs/Tensordot/Reshape:output:09model_2/duration_outputs/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€t
*model_2/duration_outputs/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:r
0model_2/duration_outputs/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Л
+model_2/duration_outputs/Tensordot/concat_1ConcatV24model_2/duration_outputs/Tensordot/GatherV2:output:03model_2/duration_outputs/Tensordot/Const_2:output:09model_2/duration_outputs/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:„
"model_2/duration_outputs/TensordotReshape3model_2/duration_outputs/Tensordot/MatMul:product:04model_2/duration_outputs/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€§
/model_2/duration_outputs/BiasAdd/ReadVariableOpReadVariableOp8model_2_duration_outputs_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0–
 model_2/duration_outputs/BiasAddBiasAdd+model_2/duration_outputs/Tensordot:output:07model_2/duration_outputs/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Х
 model_2/duration_outputs/SoftmaxSoftmax)model_2/duration_outputs/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€•
-model_2/note_outputs/Tensordot/ReadVariableOpReadVariableOp6model_2_note_outputs_tensordot_readvariableop_resource*
_output_shapes
:	А;*
dtype0m
#model_2/note_outputs/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#model_2/note_outputs/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Э
$model_2/note_outputs/Tensordot/ShapeShape;model_2/attention/layer_normalization_3/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕn
,model_2/note_outputs/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : П
'model_2/note_outputs/Tensordot/GatherV2GatherV2-model_2/note_outputs/Tensordot/Shape:output:0,model_2/note_outputs/Tensordot/free:output:05model_2/note_outputs/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.model_2/note_outputs/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : У
)model_2/note_outputs/Tensordot/GatherV2_1GatherV2-model_2/note_outputs/Tensordot/Shape:output:0,model_2/note_outputs/Tensordot/axes:output:07model_2/note_outputs/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$model_2/note_outputs/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ≠
#model_2/note_outputs/Tensordot/ProdProd0model_2/note_outputs/Tensordot/GatherV2:output:0-model_2/note_outputs/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&model_2/note_outputs/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ≥
%model_2/note_outputs/Tensordot/Prod_1Prod2model_2/note_outputs/Tensordot/GatherV2_1:output:0/model_2/note_outputs/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*model_2/note_outputs/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : р
%model_2/note_outputs/Tensordot/concatConcatV2,model_2/note_outputs/Tensordot/free:output:0,model_2/note_outputs/Tensordot/axes:output:03model_2/note_outputs/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Є
$model_2/note_outputs/Tensordot/stackPack,model_2/note_outputs/Tensordot/Prod:output:0.model_2/note_outputs/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:в
(model_2/note_outputs/Tensordot/transpose	Transpose;model_2/attention/layer_normalization_3/batchnorm/add_1:z:0.model_2/note_outputs/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А…
&model_2/note_outputs/Tensordot/ReshapeReshape,model_2/note_outputs/Tensordot/transpose:y:0-model_2/note_outputs/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€…
%model_2/note_outputs/Tensordot/MatMulMatMul/model_2/note_outputs/Tensordot/Reshape:output:05model_2/note_outputs/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€;p
&model_2/note_outputs/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:;n
,model_2/note_outputs/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ы
'model_2/note_outputs/Tensordot/concat_1ConcatV20model_2/note_outputs/Tensordot/GatherV2:output:0/model_2/note_outputs/Tensordot/Const_2:output:05model_2/note_outputs/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ћ
model_2/note_outputs/TensordotReshape/model_2/note_outputs/Tensordot/MatMul:product:00model_2/note_outputs/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;Ь
+model_2/note_outputs/BiasAdd/ReadVariableOpReadVariableOp4model_2_note_outputs_biasadd_readvariableop_resource*
_output_shapes
:;*
dtype0ƒ
model_2/note_outputs/BiasAddBiasAdd'model_2/note_outputs/Tensordot:output:03model_2/note_outputs/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;Н
model_2/note_outputs/SoftmaxSoftmax%model_2/note_outputs/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;Ж
IdentityIdentity*model_2/duration_outputs/Softmax:softmax:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Д

Identity_1Identity&model_2/note_outputs/Softmax:softmax:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;‘
NoOpNoOp1^model_2/attention/dense_2/BiasAdd/ReadVariableOp3^model_2/attention/dense_2/Tensordot/ReadVariableOp1^model_2/attention/dense_3/BiasAdd/ReadVariableOp3^model_2/attention/dense_3/Tensordot/ReadVariableOpA^model_2/attention/layer_normalization_2/batchnorm/ReadVariableOpE^model_2/attention/layer_normalization_2/batchnorm/mul/ReadVariableOpA^model_2/attention/layer_normalization_3/batchnorm/ReadVariableOpE^model_2/attention/layer_normalization_3/batchnorm/mul/ReadVariableOpM^model_2/attention/multi_head_attention_1/attention_output/add/ReadVariableOpW^model_2/attention/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp@^model_2/attention/multi_head_attention_1/key/add/ReadVariableOpJ^model_2/attention/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpB^model_2/attention/multi_head_attention_1/query/add/ReadVariableOpL^model_2/attention/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpB^model_2/attention/multi_head_attention_1/value/add/ReadVariableOpL^model_2/attention/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp0^model_2/duration_outputs/BiasAdd/ReadVariableOp2^model_2/duration_outputs/Tensordot/ReadVariableOp,^model_2/note_outputs/BiasAdd/ReadVariableOp.^model_2/note_outputs/Tensordot/ReadVariableOpD^model_2/token_and_position_embedding_5/embedding_5/embedding_lookupD^model_2/token_and_position_embedding_6/embedding_6/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 2d
0model_2/attention/dense_2/BiasAdd/ReadVariableOp0model_2/attention/dense_2/BiasAdd/ReadVariableOp2h
2model_2/attention/dense_2/Tensordot/ReadVariableOp2model_2/attention/dense_2/Tensordot/ReadVariableOp2d
0model_2/attention/dense_3/BiasAdd/ReadVariableOp0model_2/attention/dense_3/BiasAdd/ReadVariableOp2h
2model_2/attention/dense_3/Tensordot/ReadVariableOp2model_2/attention/dense_3/Tensordot/ReadVariableOp2Д
@model_2/attention/layer_normalization_2/batchnorm/ReadVariableOp@model_2/attention/layer_normalization_2/batchnorm/ReadVariableOp2М
Dmodel_2/attention/layer_normalization_2/batchnorm/mul/ReadVariableOpDmodel_2/attention/layer_normalization_2/batchnorm/mul/ReadVariableOp2Д
@model_2/attention/layer_normalization_3/batchnorm/ReadVariableOp@model_2/attention/layer_normalization_3/batchnorm/ReadVariableOp2М
Dmodel_2/attention/layer_normalization_3/batchnorm/mul/ReadVariableOpDmodel_2/attention/layer_normalization_3/batchnorm/mul/ReadVariableOp2Ь
Lmodel_2/attention/multi_head_attention_1/attention_output/add/ReadVariableOpLmodel_2/attention/multi_head_attention_1/attention_output/add/ReadVariableOp2∞
Vmodel_2/attention/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpVmodel_2/attention/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2В
?model_2/attention/multi_head_attention_1/key/add/ReadVariableOp?model_2/attention/multi_head_attention_1/key/add/ReadVariableOp2Ц
Imodel_2/attention/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpImodel_2/attention/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2Ж
Amodel_2/attention/multi_head_attention_1/query/add/ReadVariableOpAmodel_2/attention/multi_head_attention_1/query/add/ReadVariableOp2Ъ
Kmodel_2/attention/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpKmodel_2/attention/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2Ж
Amodel_2/attention/multi_head_attention_1/value/add/ReadVariableOpAmodel_2/attention/multi_head_attention_1/value/add/ReadVariableOp2Ъ
Kmodel_2/attention/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpKmodel_2/attention/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2b
/model_2/duration_outputs/BiasAdd/ReadVariableOp/model_2/duration_outputs/BiasAdd/ReadVariableOp2f
1model_2/duration_outputs/Tensordot/ReadVariableOp1model_2/duration_outputs/Tensordot/ReadVariableOp2Z
+model_2/note_outputs/BiasAdd/ReadVariableOp+model_2/note_outputs/BiasAdd/ReadVariableOp2^
-model_2/note_outputs/Tensordot/ReadVariableOp-model_2/note_outputs/Tensordot/ReadVariableOp2К
Cmodel_2/token_and_position_embedding_5/embedding_5/embedding_lookupCmodel_2/token_and_position_embedding_5/embedding_5/embedding_lookup2К
Cmodel_2/token_and_position_embedding_6/embedding_6/embedding_lookupCmodel_2/token_and_position_embedding_6/embedding_6/embedding_lookup:YU
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_4:Y U
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_3
цЎ
џ
F__inference_attention_layer_call_and_return_conditional_losses_2667878

inputsZ
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:ААK
8multi_head_attention_1_query_add_readvariableop_resource:	АX
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:ААI
6multi_head_attention_1_key_add_readvariableop_resource:	АZ
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:ААK
8multi_head_attention_1_value_add_readvariableop_resource:	Аe
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:ААR
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:	АJ
;layer_normalization_2_batchnorm_mul_readvariableop_resource:	АF
7layer_normalization_2_batchnorm_readvariableop_resource:	А=
)dense_2_tensordot_readvariableop_resource:
АА6
'dense_2_biasadd_readvariableop_resource:	А=
)dense_3_tensordot_readvariableop_resource:
АА6
'dense_3_biasadd_readvariableop_resource:	АJ
;layer_normalization_3_batchnorm_mul_readvariableop_resource:	АF
7layer_normalization_3_batchnorm_readvariableop_resource:	А
identity

identity_1ИҐdense_2/BiasAdd/ReadVariableOpҐ dense_2/Tensordot/ReadVariableOpҐdense_3/BiasAdd/ReadVariableOpҐ dense_3/Tensordot/ReadVariableOpҐ.layer_normalization_2/batchnorm/ReadVariableOpҐ2layer_normalization_2/batchnorm/mul/ReadVariableOpҐ.layer_normalization_3/batchnorm/ReadVariableOpҐ2layer_normalization_3/batchnorm/mul/ReadVariableOpҐ:multi_head_attention_1/attention_output/add/ReadVariableOpҐDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_1/key/add/ReadVariableOpҐ7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/query/add/ReadVariableOpҐ9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/value/add/ReadVariableOpҐ9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :y
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*#
_output_shapes
:€€€€€€€€€f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Й
strided_slice_2StridedSlicerange:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskO
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*#
_output_shapes
:€€€€€€€€€d
subSubrange_1:output:0strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€]
addAddV2sub:z:0strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€z
GreaterEqualGreaterEqualstrided_slice_2:output:0add:z:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :С
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:{
ReshapeReshapeGreaterEqual:z:0Reshape/shape:output:0*
T0
*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€n

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : {
concatConcatV2ExpandDims:output:0Const:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
TileTileReshape:output:0concat:output:0*
T0
*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€¬
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0й
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde©
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes
:	А*
dtype0џ
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€АЊ
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0е
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde•
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes
:	А*
dtype0’
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А¬
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0й
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde©
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	А*
dtype0џ
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аa
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А=≤
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аж
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbep
%multi_head_attention_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€Ї
!multi_head_attention_1/ExpandDims
ExpandDimsTile:output:0.multi_head_attention_1/ExpandDims/dim:output:0*
T0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€≤
#multi_head_attention_1/softmax/CastCast*multi_head_attention_1/ExpandDims:output:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€i
$multi_head_attention_1/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ќ
"multi_head_attention_1/softmax/subSub-multi_head_attention_1/softmax/sub/x:output:0'multi_head_attention_1/softmax/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€i
$multi_head_attention_1/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knќћ
"multi_head_attention_1/softmax/mulMul&multi_head_attention_1/softmax/sub:z:0-multi_head_attention_1/softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ќ
"multi_head_attention_1/softmax/addAddV2-multi_head_attention_1/einsum/Einsum:output:0&multi_head_attention_1/softmax/mul:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€•
&multi_head_attention_1/softmax/SoftmaxSoftmax&multi_head_attention_1/softmax/add:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€±
'multi_head_attention_1/dropout/IdentityIdentity0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ф
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/Identity:output:0$multi_head_attention_1/value/add:z:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationacbe,aecd->abcdЎ
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0§
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
equationabcd,cde->abeї
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:А*
dtype0ш
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АП
dropout_2/IdentityIdentity/multi_head_attention_1/attention_output/add:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аs
add_1AddV2inputsdropout_2/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ƒ
"layer_normalization_2/moments/meanMean	add_1:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(¶
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ƒ
/layer_normalization_2/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АВ
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ц
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5ћ
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ц
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ђ
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0—
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А†
%layer_normalization_2/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А¬
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А£
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0Ќ
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А¬
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АМ
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
dense_2/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕa
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ґ
dense_2/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0!dense_2/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АҐ
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€£
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аd
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аa
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:•
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АГ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ю
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аn
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АМ
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       o
dense_3/Tensordot/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
::нѕa
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:І
dense_3/Tensordot/transpose	Transposedense_2/Relu:activations:0!dense_3/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АҐ
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€£
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аd
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аa
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:•
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АГ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ю
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аx
dropout_3/IdentityIdentitydense_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЦ
add_2AddV2)layer_normalization_2/batchnorm/add_1:z:0dropout_3/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А~
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ƒ
"layer_normalization_3/moments/meanMean	add_2:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(¶
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ƒ
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference	add_2:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АВ
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ц
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(j
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5ћ
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ц
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ђ
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0—
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А†
%layer_normalization_3/batchnorm/mul_1Mul	add_2:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А¬
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А£
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0Ќ
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А¬
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЖ
IdentityIdentity)layer_normalization_3/batchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЫ

Identity_1Identity0multi_head_attention_1/softmax/Softmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€д
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€€€€€€€€€€А: : : : : : : : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
ы>
Ќ
[__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_2667378
x7
$embedding_5_embedding_lookup_2667327:	;А
identityИҐembedding_5/embedding_lookupд
embedding_5/embedding_lookupResourceGather$embedding_5_embedding_lookup_2667327x*
Tindices0*7
_class-
+)loc:@embedding_5/embedding_lookup/2667327*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0—
%embedding_5/embedding_lookup/IdentityIdentity%embedding_5/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_5/embedding_lookup/2667327*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А£
'embedding_5/embedding_lookup/Identity_1Identity.embedding_5/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АМ
sine_position_encoding_5/ShapeShape0embedding_5/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
::нѕ
,sine_position_encoding_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€Б
.sine_position_encoding_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€x
.sine_position_encoding_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
&sine_position_encoding_5/strided_sliceStridedSlice'sine_position_encoding_5/Shape:output:05sine_position_encoding_5/strided_slice/stack:output:07sine_position_encoding_5/strided_slice/stack_1:output:07sine_position_encoding_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskБ
.sine_position_encoding_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€z
0sine_position_encoding_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: z
0sine_position_encoding_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:÷
(sine_position_encoding_5/strided_slice_1StridedSlice'sine_position_encoding_5/Shape:output:07sine_position_encoding_5/strided_slice_1/stack:output:09sine_position_encoding_5/strided_slice_1/stack_1:output:09sine_position_encoding_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sine_position_encoding_5/range/startConst*
_output_shapes
: *
dtype0*
value	B : f
$sine_position_encoding_5/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :џ
sine_position_encoding_5/rangeRange-sine_position_encoding_5/range/start:output:0/sine_position_encoding_5/strided_slice:output:0-sine_position_encoding_5/range/delta:output:0*#
_output_shapes
:€€€€€€€€€Л
sine_position_encoding_5/CastCast'sine_position_encoding_5/range:output:0*

DstT0*

SrcT0*#
_output_shapes
:€€€€€€€€€f
!sine_position_encoding_5/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8h
&sine_position_encoding_5/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : h
&sine_position_encoding_5/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :џ
 sine_position_encoding_5/range_1Range/sine_position_encoding_5/range_1/start:output:01sine_position_encoding_5/strided_slice_1:output:0/sine_position_encoding_5/range_1/delta:output:0*
_output_shapes	
:Аe
#sine_position_encoding_5/floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :ђ
!sine_position_encoding_5/floordivFloorDiv)sine_position_encoding_5/range_1:output:0,sine_position_encoding_5/floordiv/y:output:0*
T0*
_output_shapes	
:А`
sine_position_encoding_5/mul/xConst*
_output_shapes
: *
dtype0*
value	B :Щ
sine_position_encoding_5/mulMul'sine_position_encoding_5/mul/x:output:0%sine_position_encoding_5/floordiv:z:0*
T0*
_output_shapes	
:А~
sine_position_encoding_5/Cast_2Cast sine_position_encoding_5/mul:z:0*

DstT0*

SrcT0*
_output_shapes	
:АК
sine_position_encoding_5/Cast_3Cast1sine_position_encoding_5/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: Ы
 sine_position_encoding_5/truedivRealDiv#sine_position_encoding_5/Cast_2:y:0#sine_position_encoding_5/Cast_3:y:0*
T0*
_output_shapes	
:АЫ
sine_position_encoding_5/PowPow*sine_position_encoding_5/Cast_1/x:output:0$sine_position_encoding_5/truediv:z:0*
T0*
_output_shapes	
:Аi
'sine_position_encoding_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Є
#sine_position_encoding_5/ExpandDims
ExpandDims!sine_position_encoding_5/Cast:y:00sine_position_encoding_5/ExpandDims/dim:output:0*
T0*'
_output_shapes
:€€€€€€€€€k
)sine_position_encoding_5/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ≥
%sine_position_encoding_5/ExpandDims_1
ExpandDims sine_position_encoding_5/Pow:z:02sine_position_encoding_5/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	Аґ
sine_position_encoding_5/mul_1Mul,sine_position_encoding_5/ExpandDims:output:0.sine_position_encoding_5/ExpandDims_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аh
&sine_position_encoding_5/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : h
&sine_position_encoding_5/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :џ
 sine_position_encoding_5/range_2Range/sine_position_encoding_5/range_2/start:output:01sine_position_encoding_5/strided_slice_1:output:0/sine_position_encoding_5/range_2/delta:output:0*
_output_shapes	
:А`
sine_position_encoding_5/mod/yConst*
_output_shapes
: *
dtype0*
value	B :Ґ
sine_position_encoding_5/modFloorMod)sine_position_encoding_5/range_2:output:0'sine_position_encoding_5/mod/y:output:0*
T0*
_output_shapes	
:А~
sine_position_encoding_5/Cast_4Cast sine_position_encoding_5/mod:z:0*

DstT0*

SrcT0*
_output_shapes	
:Аc
sine_position_encoding_5/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ч
sine_position_encoding_5/subSub'sine_position_encoding_5/sub/x:output:0#sine_position_encoding_5/Cast_4:y:0*
T0*
_output_shapes	
:Аz
sine_position_encoding_5/SinSin"sine_position_encoding_5/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
sine_position_encoding_5/mul_2Mul sine_position_encoding_5/Sin:y:0 sine_position_encoding_5/sub:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
sine_position_encoding_5/CosCos"sine_position_encoding_5/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЯ
sine_position_encoding_5/mul_3Mul sine_position_encoding_5/Cos:y:0#sine_position_encoding_5/Cast_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А†
sine_position_encoding_5/addAddV2"sine_position_encoding_5/mul_2:z:0"sine_position_encoding_5/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЊ
$sine_position_encoding_5/BroadcastToBroadcastTo sine_position_encoding_5/add:z:0'sine_position_encoding_5/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≠
addAddV20embedding_5/embedding_lookup/Identity_1:output:0-sine_position_encoding_5/BroadcastTo:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аd
IdentityIdentityadd:z:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аe
NoOpNoOp^embedding_5/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€€€€€€€€€€: 2<
embedding_5/embedding_lookupembedding_5/embedding_lookup:S O
0
_output_shapes
:€€€€€€€€€€€€€€€€€€

_user_specified_namex
В
[
/__inference_concatenate_1_layer_call_fn_2667445
inputs_0
inputs_1
identity–
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_2665532n
IdentityIdentityPartitionedCall:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:€€€€€€€€€€€€€€€€€€А:€€€€€€€€€€€€€€€€€€А:_[
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs_1:_ [
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs_0
ы>
Ќ
[__inference_token_and_position_embedding_6_layer_call_and_return_conditional_losses_2667439
x7
$embedding_6_embedding_lookup_2667388:	А
identityИҐembedding_6/embedding_lookupд
embedding_6/embedding_lookupResourceGather$embedding_6_embedding_lookup_2667388x*
Tindices0*7
_class-
+)loc:@embedding_6/embedding_lookup/2667388*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0—
%embedding_6/embedding_lookup/IdentityIdentity%embedding_6/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_6/embedding_lookup/2667388*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А£
'embedding_6/embedding_lookup/Identity_1Identity.embedding_6/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АМ
sine_position_encoding_6/ShapeShape0embedding_6/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
::нѕ
,sine_position_encoding_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€Б
.sine_position_encoding_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€x
.sine_position_encoding_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
&sine_position_encoding_6/strided_sliceStridedSlice'sine_position_encoding_6/Shape:output:05sine_position_encoding_6/strided_slice/stack:output:07sine_position_encoding_6/strided_slice/stack_1:output:07sine_position_encoding_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskБ
.sine_position_encoding_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€z
0sine_position_encoding_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: z
0sine_position_encoding_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:÷
(sine_position_encoding_6/strided_slice_1StridedSlice'sine_position_encoding_6/Shape:output:07sine_position_encoding_6/strided_slice_1/stack:output:09sine_position_encoding_6/strided_slice_1/stack_1:output:09sine_position_encoding_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sine_position_encoding_6/range/startConst*
_output_shapes
: *
dtype0*
value	B : f
$sine_position_encoding_6/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :џ
sine_position_encoding_6/rangeRange-sine_position_encoding_6/range/start:output:0/sine_position_encoding_6/strided_slice:output:0-sine_position_encoding_6/range/delta:output:0*#
_output_shapes
:€€€€€€€€€Л
sine_position_encoding_6/CastCast'sine_position_encoding_6/range:output:0*

DstT0*

SrcT0*#
_output_shapes
:€€€€€€€€€f
!sine_position_encoding_6/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8h
&sine_position_encoding_6/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : h
&sine_position_encoding_6/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :џ
 sine_position_encoding_6/range_1Range/sine_position_encoding_6/range_1/start:output:01sine_position_encoding_6/strided_slice_1:output:0/sine_position_encoding_6/range_1/delta:output:0*
_output_shapes	
:Аe
#sine_position_encoding_6/floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :ђ
!sine_position_encoding_6/floordivFloorDiv)sine_position_encoding_6/range_1:output:0,sine_position_encoding_6/floordiv/y:output:0*
T0*
_output_shapes	
:А`
sine_position_encoding_6/mul/xConst*
_output_shapes
: *
dtype0*
value	B :Щ
sine_position_encoding_6/mulMul'sine_position_encoding_6/mul/x:output:0%sine_position_encoding_6/floordiv:z:0*
T0*
_output_shapes	
:А~
sine_position_encoding_6/Cast_2Cast sine_position_encoding_6/mul:z:0*

DstT0*

SrcT0*
_output_shapes	
:АК
sine_position_encoding_6/Cast_3Cast1sine_position_encoding_6/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: Ы
 sine_position_encoding_6/truedivRealDiv#sine_position_encoding_6/Cast_2:y:0#sine_position_encoding_6/Cast_3:y:0*
T0*
_output_shapes	
:АЫ
sine_position_encoding_6/PowPow*sine_position_encoding_6/Cast_1/x:output:0$sine_position_encoding_6/truediv:z:0*
T0*
_output_shapes	
:Аi
'sine_position_encoding_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Є
#sine_position_encoding_6/ExpandDims
ExpandDims!sine_position_encoding_6/Cast:y:00sine_position_encoding_6/ExpandDims/dim:output:0*
T0*'
_output_shapes
:€€€€€€€€€k
)sine_position_encoding_6/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ≥
%sine_position_encoding_6/ExpandDims_1
ExpandDims sine_position_encoding_6/Pow:z:02sine_position_encoding_6/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	Аґ
sine_position_encoding_6/mul_1Mul,sine_position_encoding_6/ExpandDims:output:0.sine_position_encoding_6/ExpandDims_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аh
&sine_position_encoding_6/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : h
&sine_position_encoding_6/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :џ
 sine_position_encoding_6/range_2Range/sine_position_encoding_6/range_2/start:output:01sine_position_encoding_6/strided_slice_1:output:0/sine_position_encoding_6/range_2/delta:output:0*
_output_shapes	
:А`
sine_position_encoding_6/mod/yConst*
_output_shapes
: *
dtype0*
value	B :Ґ
sine_position_encoding_6/modFloorMod)sine_position_encoding_6/range_2:output:0'sine_position_encoding_6/mod/y:output:0*
T0*
_output_shapes	
:А~
sine_position_encoding_6/Cast_4Cast sine_position_encoding_6/mod:z:0*

DstT0*

SrcT0*
_output_shapes	
:Аc
sine_position_encoding_6/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ч
sine_position_encoding_6/subSub'sine_position_encoding_6/sub/x:output:0#sine_position_encoding_6/Cast_4:y:0*
T0*
_output_shapes	
:Аz
sine_position_encoding_6/SinSin"sine_position_encoding_6/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
sine_position_encoding_6/mul_2Mul sine_position_encoding_6/Sin:y:0 sine_position_encoding_6/sub:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
sine_position_encoding_6/CosCos"sine_position_encoding_6/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЯ
sine_position_encoding_6/mul_3Mul sine_position_encoding_6/Cos:y:0#sine_position_encoding_6/Cast_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А†
sine_position_encoding_6/addAddV2"sine_position_encoding_6/mul_2:z:0"sine_position_encoding_6/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЊ
$sine_position_encoding_6/BroadcastToBroadcastTo sine_position_encoding_6/add:z:0'sine_position_encoding_6/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≠
addAddV20embedding_6/embedding_lookup/Identity_1:output:0-sine_position_encoding_6/BroadcastTo:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аd
IdentityIdentityadd:z:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аe
NoOpNoOp^embedding_6/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€€€€€€€€€€: 2<
embedding_6/embedding_lookupembedding_6/embedding_lookup:S O
0
_output_shapes
:€€€€€€€€€€€€€€€€€€

_user_specified_namex
ы>
Ќ
[__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_2665463
x7
$embedding_5_embedding_lookup_2665412:	;А
identityИҐembedding_5/embedding_lookupд
embedding_5/embedding_lookupResourceGather$embedding_5_embedding_lookup_2665412x*
Tindices0*7
_class-
+)loc:@embedding_5/embedding_lookup/2665412*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0—
%embedding_5/embedding_lookup/IdentityIdentity%embedding_5/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_5/embedding_lookup/2665412*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А£
'embedding_5/embedding_lookup/Identity_1Identity.embedding_5/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АМ
sine_position_encoding_5/ShapeShape0embedding_5/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
::нѕ
,sine_position_encoding_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€Б
.sine_position_encoding_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€x
.sine_position_encoding_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
&sine_position_encoding_5/strided_sliceStridedSlice'sine_position_encoding_5/Shape:output:05sine_position_encoding_5/strided_slice/stack:output:07sine_position_encoding_5/strided_slice/stack_1:output:07sine_position_encoding_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskБ
.sine_position_encoding_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€z
0sine_position_encoding_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: z
0sine_position_encoding_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:÷
(sine_position_encoding_5/strided_slice_1StridedSlice'sine_position_encoding_5/Shape:output:07sine_position_encoding_5/strided_slice_1/stack:output:09sine_position_encoding_5/strided_slice_1/stack_1:output:09sine_position_encoding_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sine_position_encoding_5/range/startConst*
_output_shapes
: *
dtype0*
value	B : f
$sine_position_encoding_5/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :џ
sine_position_encoding_5/rangeRange-sine_position_encoding_5/range/start:output:0/sine_position_encoding_5/strided_slice:output:0-sine_position_encoding_5/range/delta:output:0*#
_output_shapes
:€€€€€€€€€Л
sine_position_encoding_5/CastCast'sine_position_encoding_5/range:output:0*

DstT0*

SrcT0*#
_output_shapes
:€€€€€€€€€f
!sine_position_encoding_5/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8h
&sine_position_encoding_5/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : h
&sine_position_encoding_5/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :џ
 sine_position_encoding_5/range_1Range/sine_position_encoding_5/range_1/start:output:01sine_position_encoding_5/strided_slice_1:output:0/sine_position_encoding_5/range_1/delta:output:0*
_output_shapes	
:Аe
#sine_position_encoding_5/floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :ђ
!sine_position_encoding_5/floordivFloorDiv)sine_position_encoding_5/range_1:output:0,sine_position_encoding_5/floordiv/y:output:0*
T0*
_output_shapes	
:А`
sine_position_encoding_5/mul/xConst*
_output_shapes
: *
dtype0*
value	B :Щ
sine_position_encoding_5/mulMul'sine_position_encoding_5/mul/x:output:0%sine_position_encoding_5/floordiv:z:0*
T0*
_output_shapes	
:А~
sine_position_encoding_5/Cast_2Cast sine_position_encoding_5/mul:z:0*

DstT0*

SrcT0*
_output_shapes	
:АК
sine_position_encoding_5/Cast_3Cast1sine_position_encoding_5/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: Ы
 sine_position_encoding_5/truedivRealDiv#sine_position_encoding_5/Cast_2:y:0#sine_position_encoding_5/Cast_3:y:0*
T0*
_output_shapes	
:АЫ
sine_position_encoding_5/PowPow*sine_position_encoding_5/Cast_1/x:output:0$sine_position_encoding_5/truediv:z:0*
T0*
_output_shapes	
:Аi
'sine_position_encoding_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Є
#sine_position_encoding_5/ExpandDims
ExpandDims!sine_position_encoding_5/Cast:y:00sine_position_encoding_5/ExpandDims/dim:output:0*
T0*'
_output_shapes
:€€€€€€€€€k
)sine_position_encoding_5/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ≥
%sine_position_encoding_5/ExpandDims_1
ExpandDims sine_position_encoding_5/Pow:z:02sine_position_encoding_5/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	Аґ
sine_position_encoding_5/mul_1Mul,sine_position_encoding_5/ExpandDims:output:0.sine_position_encoding_5/ExpandDims_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аh
&sine_position_encoding_5/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : h
&sine_position_encoding_5/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :џ
 sine_position_encoding_5/range_2Range/sine_position_encoding_5/range_2/start:output:01sine_position_encoding_5/strided_slice_1:output:0/sine_position_encoding_5/range_2/delta:output:0*
_output_shapes	
:А`
sine_position_encoding_5/mod/yConst*
_output_shapes
: *
dtype0*
value	B :Ґ
sine_position_encoding_5/modFloorMod)sine_position_encoding_5/range_2:output:0'sine_position_encoding_5/mod/y:output:0*
T0*
_output_shapes	
:А~
sine_position_encoding_5/Cast_4Cast sine_position_encoding_5/mod:z:0*

DstT0*

SrcT0*
_output_shapes	
:Аc
sine_position_encoding_5/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ч
sine_position_encoding_5/subSub'sine_position_encoding_5/sub/x:output:0#sine_position_encoding_5/Cast_4:y:0*
T0*
_output_shapes	
:Аz
sine_position_encoding_5/SinSin"sine_position_encoding_5/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
sine_position_encoding_5/mul_2Mul sine_position_encoding_5/Sin:y:0 sine_position_encoding_5/sub:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
sine_position_encoding_5/CosCos"sine_position_encoding_5/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЯ
sine_position_encoding_5/mul_3Mul sine_position_encoding_5/Cos:y:0#sine_position_encoding_5/Cast_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А†
sine_position_encoding_5/addAddV2"sine_position_encoding_5/mul_2:z:0"sine_position_encoding_5/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЊ
$sine_position_encoding_5/BroadcastToBroadcastTo sine_position_encoding_5/add:z:0'sine_position_encoding_5/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≠
addAddV20embedding_5/embedding_lookup/Identity_1:output:0-sine_position_encoding_5/BroadcastTo:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аd
IdentityIdentityadd:z:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аe
NoOpNoOp^embedding_5/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€€€€€€€€€€: 2<
embedding_5/embedding_lookupembedding_5/embedding_lookup:S O
0
_output_shapes
:€€€€€€€€€€€€€€€€€€

_user_specified_namex
г
Н
)__inference_model_2_layer_call_fn_2666160
input_3
input_4
unknown:	;А
	unknown_0:	А!
	unknown_1:АА
	unknown_2:	А!
	unknown_3:АА
	unknown_4:	А!
	unknown_5:АА
	unknown_6:	А!
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:
АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:	А

unknown_18:

unknown_19:	А;

unknown_20:;
identity

identity_1ИҐStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinput_3input_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*#
Tin
2*
Tout
2*
_collective_manager_ids
 *T
_output_shapesB
@:€€€€€€€€€€€€€€€€€€;:€€€€€€€€€€€€€€€€€€*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_2666111|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;~

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:YU
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_4:Y U
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_3
й
П
)__inference_model_2_layer_call_fn_2666655
inputs_0
inputs_1
unknown:	;А
	unknown_0:	А!
	unknown_1:АА
	unknown_2:	А!
	unknown_3:АА
	unknown_4:	А!
	unknown_5:АА
	unknown_6:	А!
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:
АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:	А

unknown_18:

unknown_19:	А;

unknown_20:;
identity

identity_1ИҐStatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*#
Tin
2*
Tout
2*
_collective_manager_ids
 *T
_output_shapesB
@:€€€€€€€€€€€€€€€€€€;:€€€€€€€€€€€€€€€€€€*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_2666220|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;~

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:ZV
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_1:Z V
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
«,
џ	
D__inference_model_2_layer_call_and_return_conditional_losses_2665826
input_3
input_49
&token_and_position_embedding_5_2665464:	;А9
&token_and_position_embedding_6_2665522:	А)
attention_2665716:АА$
attention_2665718:	А)
attention_2665720:АА$
attention_2665722:	А)
attention_2665724:АА$
attention_2665726:	А)
attention_2665728:АА 
attention_2665730:	А 
attention_2665732:	А 
attention_2665734:	А%
attention_2665736:
АА 
attention_2665738:	А%
attention_2665740:
АА 
attention_2665742:	А 
attention_2665744:	А 
attention_2665746:	А+
duration_outputs_2665782:	А&
duration_outputs_2665784:'
note_outputs_2665819:	А;"
note_outputs_2665821:;
identity

identity_1ИҐ!attention/StatefulPartitionedCallҐ(duration_outputs/StatefulPartitionedCallҐ$note_outputs/StatefulPartitionedCallҐ6token_and_position_embedding_5/StatefulPartitionedCallҐ6token_and_position_embedding_6/StatefulPartitionedCall∞
6token_and_position_embedding_5/StatefulPartitionedCallStatefulPartitionedCallinput_3&token_and_position_embedding_5_2665464*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *d
f_R]
[__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_2665463∞
6token_and_position_embedding_6/StatefulPartitionedCallStatefulPartitionedCallinput_4&token_and_position_embedding_6_2665522*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *d
f_R]
[__inference_token_and_position_embedding_6_layer_call_and_return_conditional_losses_2665521ћ
concatenate_1/PartitionedCallPartitionedCall?token_and_position_embedding_5/StatefulPartitionedCall:output:0?token_and_position_embedding_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_2665532щ
!attention/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0attention_2665716attention_2665718attention_2665720attention_2665722attention_2665724attention_2665726attention_2665728attention_2665730attention_2665732attention_2665734attention_2665736attention_2665738attention_2665740attention_2665742attention_2665744attention_2665746*
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:€€€€€€€€€€€€€€€€€€А:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_attention_layer_call_and_return_conditional_losses_2665715ƒ
(duration_outputs/StatefulPartitionedCallStatefulPartitionedCall*attention/StatefulPartitionedCall:output:0duration_outputs_2665782duration_outputs_2665784*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_duration_outputs_layer_call_and_return_conditional_losses_2665781і
$note_outputs/StatefulPartitionedCallStatefulPartitionedCall*attention/StatefulPartitionedCall:output:0note_outputs_2665819note_outputs_2665821*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_note_outputs_layer_call_and_return_conditional_losses_2665818Й
IdentityIdentity-note_outputs/StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;П

Identity_1Identity1duration_outputs/StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ѓ
NoOpNoOp"^attention/StatefulPartitionedCall)^duration_outputs/StatefulPartitionedCall%^note_outputs/StatefulPartitionedCall7^token_and_position_embedding_5/StatefulPartitionedCall7^token_and_position_embedding_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 2F
!attention/StatefulPartitionedCall!attention/StatefulPartitionedCall2T
(duration_outputs/StatefulPartitionedCall(duration_outputs/StatefulPartitionedCall2L
$note_outputs/StatefulPartitionedCall$note_outputs/StatefulPartitionedCall2p
6token_and_position_embedding_5/StatefulPartitionedCall6token_and_position_embedding_5/StatefulPartitionedCall2p
6token_and_position_embedding_6/StatefulPartitionedCall6token_and_position_embedding_6/StatefulPartitionedCall:YU
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_4:Y U
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_3
Ш
v
J__inference_concatenate_1_layer_call_and_return_conditional_losses_2667452
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Е
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аe
IdentityIdentityconcat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:€€€€€€€€€€€€€€€€€€А:€€€€€€€€€€€€€€€€€€А:_[
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs_1:_ [
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs_0
н
—
+__inference_attention_layer_call_fn_2667491

inputs
unknown:АА
	unknown_0:	А!
	unknown_1:АА
	unknown_2:	А!
	unknown_3:АА
	unknown_4:	А!
	unknown_5:АА
	unknown_6:	А
	unknown_7:	А
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:	А

unknown_14:	А
identity

identity_1ИҐStatefulPartitionedCall“
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:€€€€€€€€€€€€€€€€€€А:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_attention_layer_call_and_return_conditional_losses_2665715}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЛ

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€€€€€€€€€€А: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Е
Е
M__inference_duration_outputs_layer_call_and_return_conditional_losses_2665781

inputs4
!tensordot_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	А*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Г
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АК
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€c
SoftmaxSoftmaxBiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€m
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Ђй
џ
F__inference_attention_layer_call_and_return_conditional_losses_2665715

inputsZ
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:ААK
8multi_head_attention_1_query_add_readvariableop_resource:	АX
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:ААI
6multi_head_attention_1_key_add_readvariableop_resource:	АZ
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:ААK
8multi_head_attention_1_value_add_readvariableop_resource:	Аe
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:ААR
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:	АJ
;layer_normalization_2_batchnorm_mul_readvariableop_resource:	АF
7layer_normalization_2_batchnorm_readvariableop_resource:	А=
)dense_2_tensordot_readvariableop_resource:
АА6
'dense_2_biasadd_readvariableop_resource:	А=
)dense_3_tensordot_readvariableop_resource:
АА6
'dense_3_biasadd_readvariableop_resource:	АJ
;layer_normalization_3_batchnorm_mul_readvariableop_resource:	АF
7layer_normalization_3_batchnorm_readvariableop_resource:	А
identity

identity_1ИҐdense_2/BiasAdd/ReadVariableOpҐ dense_2/Tensordot/ReadVariableOpҐdense_3/BiasAdd/ReadVariableOpҐ dense_3/Tensordot/ReadVariableOpҐ.layer_normalization_2/batchnorm/ReadVariableOpҐ2layer_normalization_2/batchnorm/mul/ReadVariableOpҐ.layer_normalization_3/batchnorm/ReadVariableOpҐ2layer_normalization_3/batchnorm/mul/ReadVariableOpҐ:multi_head_attention_1/attention_output/add/ReadVariableOpҐDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_1/key/add/ReadVariableOpҐ7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/query/add/ReadVariableOpҐ9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/value/add/ReadVariableOpҐ9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :y
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*#
_output_shapes
:€€€€€€€€€f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Й
strided_slice_2StridedSlicerange:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskO
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*#
_output_shapes
:€€€€€€€€€d
subSubrange_1:output:0strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€]
addAddV2sub:z:0strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€z
GreaterEqualGreaterEqualstrided_slice_2:output:0add:z:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :С
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:{
ReshapeReshapeGreaterEqual:z:0Reshape/shape:output:0*
T0
*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€n

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : {
concatConcatV2ExpandDims:output:0Const:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
TileTileReshape:output:0concat:output:0*
T0
*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€¬
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0й
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde©
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes
:	А*
dtype0џ
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€АЊ
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0е
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde•
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes
:	А*
dtype0’
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А¬
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0й
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde©
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	А*
dtype0џ
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аa
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А=≤
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аж
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbep
%multi_head_attention_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€Ї
!multi_head_attention_1/ExpandDims
ExpandDimsTile:output:0.multi_head_attention_1/ExpandDims/dim:output:0*
T0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€≤
#multi_head_attention_1/softmax/CastCast*multi_head_attention_1/ExpandDims:output:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€i
$multi_head_attention_1/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ќ
"multi_head_attention_1/softmax/subSub-multi_head_attention_1/softmax/sub/x:output:0'multi_head_attention_1/softmax/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€i
$multi_head_attention_1/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knќћ
"multi_head_attention_1/softmax/mulMul&multi_head_attention_1/softmax/sub:z:0-multi_head_attention_1/softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ќ
"multi_head_attention_1/softmax/addAddV2-multi_head_attention_1/einsum/Einsum:output:0&multi_head_attention_1/softmax/mul:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€•
&multi_head_attention_1/softmax/SoftmaxSoftmax&multi_head_attention_1/softmax/add:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€±
'multi_head_attention_1/dropout/IdentityIdentity0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ф
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/Identity:output:0$multi_head_attention_1/value/add:z:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationacbe,aecd->abcdЎ
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0§
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
equationabcd,cde->abeї
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:А*
dtype0ш
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?ѓ
dropout_2/dropout/MulMul/multi_head_attention_1/attention_output/add:z:0 dropout_2/dropout/Const:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АД
dropout_2/dropout/ShapeShape/multi_head_attention_1/attention_output/add:z:0*
T0*
_output_shapes
::нѕЃ
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>“
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А^
dropout_2/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    …
dropout_2/dropout/SelectV2SelectV2"dropout_2/dropout/GreaterEqual:z:0dropout_2/dropout/Mul:z:0"dropout_2/dropout/Const_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А{
add_1AddV2inputs#dropout_2/dropout/SelectV2:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ƒ
"layer_normalization_2/moments/meanMean	add_1:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(¶
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ƒ
/layer_normalization_2/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АВ
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ц
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5ћ
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ц
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ђ
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0—
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А†
%layer_normalization_2/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А¬
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А£
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0Ќ
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А¬
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АМ
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
dense_2/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕa
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ґ
dense_2/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0!dense_2/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АҐ
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€£
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аd
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аa
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:•
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АГ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ю
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аn
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АМ
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       o
dense_3/Tensordot/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
::нѕa
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:І
dense_3/Tensordot/transpose	Transposedense_2/Relu:activations:0!dense_3/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АҐ
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€£
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аd
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аa
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:•
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АГ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ю
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?Ш
dropout_3/dropout/MulMuldense_3/BiasAdd:output:0 dropout_3/dropout/Const:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аm
dropout_3/dropout/ShapeShapedense_3/BiasAdd:output:0*
T0*
_output_shapes
::нѕЃ
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>“
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А^
dropout_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    …
dropout_3/dropout/SelectV2SelectV2"dropout_3/dropout/GreaterEqual:z:0dropout_3/dropout/Mul:z:0"dropout_3/dropout/Const_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЮ
add_2AddV2)layer_normalization_2/batchnorm/add_1:z:0#dropout_3/dropout/SelectV2:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А~
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ƒ
"layer_normalization_3/moments/meanMean	add_2:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(¶
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ƒ
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference	add_2:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АВ
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ц
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(j
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5ћ
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ц
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ђ
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0—
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А†
%layer_normalization_3/batchnorm/mul_1Mul	add_2:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А¬
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А£
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0Ќ
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А¬
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЖ
IdentityIdentity)layer_normalization_3/batchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЫ

Identity_1Identity0multi_head_attention_1/softmax/Softmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€д
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€€€€€€€€€€А: : : : : : : : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Г
Ь
.__inference_note_outputs_layer_call_fn_2667887

inputs
unknown:	А;
	unknown_0:;
identityИҐStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_note_outputs_layer_call_and_return_conditional_losses_2665818|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
мн
€
D__inference_model_2_layer_call_and_return_conditional_losses_2667317
inputs_0
inputs_1V
Ctoken_and_position_embedding_5_embedding_5_embedding_lookup_2666997:	;АV
Ctoken_and_position_embedding_6_embedding_6_embedding_lookup_2667047:	Аd
Lattention_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:ААU
Battention_multi_head_attention_1_query_add_readvariableop_resource:	Аb
Jattention_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:ААS
@attention_multi_head_attention_1_key_add_readvariableop_resource:	Аd
Lattention_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:ААU
Battention_multi_head_attention_1_value_add_readvariableop_resource:	Аo
Wattention_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:АА\
Mattention_multi_head_attention_1_attention_output_add_readvariableop_resource:	АT
Eattention_layer_normalization_2_batchnorm_mul_readvariableop_resource:	АP
Aattention_layer_normalization_2_batchnorm_readvariableop_resource:	АG
3attention_dense_2_tensordot_readvariableop_resource:
АА@
1attention_dense_2_biasadd_readvariableop_resource:	АG
3attention_dense_3_tensordot_readvariableop_resource:
АА@
1attention_dense_3_biasadd_readvariableop_resource:	АT
Eattention_layer_normalization_3_batchnorm_mul_readvariableop_resource:	АP
Aattention_layer_normalization_3_batchnorm_readvariableop_resource:	АE
2duration_outputs_tensordot_readvariableop_resource:	А>
0duration_outputs_biasadd_readvariableop_resource:A
.note_outputs_tensordot_readvariableop_resource:	А;:
,note_outputs_biasadd_readvariableop_resource:;
identity

identity_1ИҐ(attention/dense_2/BiasAdd/ReadVariableOpҐ*attention/dense_2/Tensordot/ReadVariableOpҐ(attention/dense_3/BiasAdd/ReadVariableOpҐ*attention/dense_3/Tensordot/ReadVariableOpҐ8attention/layer_normalization_2/batchnorm/ReadVariableOpҐ<attention/layer_normalization_2/batchnorm/mul/ReadVariableOpҐ8attention/layer_normalization_3/batchnorm/ReadVariableOpҐ<attention/layer_normalization_3/batchnorm/mul/ReadVariableOpҐDattention/multi_head_attention_1/attention_output/add/ReadVariableOpҐNattention/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐ7attention/multi_head_attention_1/key/add/ReadVariableOpҐAattention/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐ9attention/multi_head_attention_1/query/add/ReadVariableOpҐCattention/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐ9attention/multi_head_attention_1/value/add/ReadVariableOpҐCattention/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpҐ'duration_outputs/BiasAdd/ReadVariableOpҐ)duration_outputs/Tensordot/ReadVariableOpҐ#note_outputs/BiasAdd/ReadVariableOpҐ%note_outputs/Tensordot/ReadVariableOpҐ;token_and_position_embedding_5/embedding_5/embedding_lookupҐ;token_and_position_embedding_6/embedding_6/embedding_lookup»
;token_and_position_embedding_5/embedding_5/embedding_lookupResourceGatherCtoken_and_position_embedding_5_embedding_5_embedding_lookup_2666997inputs_0*
Tindices0*V
_classL
JHloc:@token_and_position_embedding_5/embedding_5/embedding_lookup/2666997*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0Ѓ
Dtoken_and_position_embedding_5/embedding_5/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_5/embedding_5/embedding_lookup:output:0*
T0*V
_classL
JHloc:@token_and_position_embedding_5/embedding_5/embedding_lookup/2666997*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аб
Ftoken_and_position_embedding_5/embedding_5/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_5/embedding_5/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А 
=token_and_position_embedding_5/sine_position_encoding_5/ShapeShapeOtoken_and_position_embedding_5/embedding_5/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
::нѕЮ
Ktoken_and_position_embedding_5/sine_position_encoding_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€†
Mtoken_and_position_embedding_5/sine_position_encoding_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€Ч
Mtoken_and_position_embedding_5/sine_position_encoding_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
Etoken_and_position_embedding_5/sine_position_encoding_5/strided_sliceStridedSliceFtoken_and_position_embedding_5/sine_position_encoding_5/Shape:output:0Ttoken_and_position_embedding_5/sine_position_encoding_5/strided_slice/stack:output:0Vtoken_and_position_embedding_5/sine_position_encoding_5/strided_slice/stack_1:output:0Vtoken_and_position_embedding_5/sine_position_encoding_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask†
Mtoken_and_position_embedding_5/sine_position_encoding_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€Щ
Otoken_and_position_embedding_5/sine_position_encoding_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: Щ
Otoken_and_position_embedding_5/sine_position_encoding_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:с
Gtoken_and_position_embedding_5/sine_position_encoding_5/strided_slice_1StridedSliceFtoken_and_position_embedding_5/sine_position_encoding_5/Shape:output:0Vtoken_and_position_embedding_5/sine_position_encoding_5/strided_slice_1/stack:output:0Xtoken_and_position_embedding_5/sine_position_encoding_5/strided_slice_1/stack_1:output:0Xtoken_and_position_embedding_5/sine_position_encoding_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЕ
Ctoken_and_position_embedding_5/sine_position_encoding_5/range/startConst*
_output_shapes
: *
dtype0*
value	B : Е
Ctoken_and_position_embedding_5/sine_position_encoding_5/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :„
=token_and_position_embedding_5/sine_position_encoding_5/rangeRangeLtoken_and_position_embedding_5/sine_position_encoding_5/range/start:output:0Ntoken_and_position_embedding_5/sine_position_encoding_5/strided_slice:output:0Ltoken_and_position_embedding_5/sine_position_encoding_5/range/delta:output:0*#
_output_shapes
:€€€€€€€€€…
<token_and_position_embedding_5/sine_position_encoding_5/CastCastFtoken_and_position_embedding_5/sine_position_encoding_5/range:output:0*

DstT0*

SrcT0*#
_output_shapes
:€€€€€€€€€Е
@token_and_position_embedding_5/sine_position_encoding_5/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8З
Etoken_and_position_embedding_5/sine_position_encoding_5/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : З
Etoken_and_position_embedding_5/sine_position_encoding_5/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :„
?token_and_position_embedding_5/sine_position_encoding_5/range_1RangeNtoken_and_position_embedding_5/sine_position_encoding_5/range_1/start:output:0Ptoken_and_position_embedding_5/sine_position_encoding_5/strided_slice_1:output:0Ntoken_and_position_embedding_5/sine_position_encoding_5/range_1/delta:output:0*
_output_shapes	
:АД
Btoken_and_position_embedding_5/sine_position_encoding_5/floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :Й
@token_and_position_embedding_5/sine_position_encoding_5/floordivFloorDivHtoken_and_position_embedding_5/sine_position_encoding_5/range_1:output:0Ktoken_and_position_embedding_5/sine_position_encoding_5/floordiv/y:output:0*
T0*
_output_shapes	
:А
=token_and_position_embedding_5/sine_position_encoding_5/mul/xConst*
_output_shapes
: *
dtype0*
value	B :ц
;token_and_position_embedding_5/sine_position_encoding_5/mulMulFtoken_and_position_embedding_5/sine_position_encoding_5/mul/x:output:0Dtoken_and_position_embedding_5/sine_position_encoding_5/floordiv:z:0*
T0*
_output_shapes	
:АЉ
>token_and_position_embedding_5/sine_position_encoding_5/Cast_2Cast?token_and_position_embedding_5/sine_position_encoding_5/mul:z:0*

DstT0*

SrcT0*
_output_shapes	
:А»
>token_and_position_embedding_5/sine_position_encoding_5/Cast_3CastPtoken_and_position_embedding_5/sine_position_encoding_5/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: ш
?token_and_position_embedding_5/sine_position_encoding_5/truedivRealDivBtoken_and_position_embedding_5/sine_position_encoding_5/Cast_2:y:0Btoken_and_position_embedding_5/sine_position_encoding_5/Cast_3:y:0*
T0*
_output_shapes	
:Аш
;token_and_position_embedding_5/sine_position_encoding_5/PowPowItoken_and_position_embedding_5/sine_position_encoding_5/Cast_1/x:output:0Ctoken_and_position_embedding_5/sine_position_encoding_5/truediv:z:0*
T0*
_output_shapes	
:АИ
Ftoken_and_position_embedding_5/sine_position_encoding_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Х
Btoken_and_position_embedding_5/sine_position_encoding_5/ExpandDims
ExpandDims@token_and_position_embedding_5/sine_position_encoding_5/Cast:y:0Otoken_and_position_embedding_5/sine_position_encoding_5/ExpandDims/dim:output:0*
T0*'
_output_shapes
:€€€€€€€€€К
Htoken_and_position_embedding_5/sine_position_encoding_5/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Р
Dtoken_and_position_embedding_5/sine_position_encoding_5/ExpandDims_1
ExpandDims?token_and_position_embedding_5/sine_position_encoding_5/Pow:z:0Qtoken_and_position_embedding_5/sine_position_encoding_5/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	АУ
=token_and_position_embedding_5/sine_position_encoding_5/mul_1MulKtoken_and_position_embedding_5/sine_position_encoding_5/ExpandDims:output:0Mtoken_and_position_embedding_5/sine_position_encoding_5/ExpandDims_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
Etoken_and_position_embedding_5/sine_position_encoding_5/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : З
Etoken_and_position_embedding_5/sine_position_encoding_5/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :„
?token_and_position_embedding_5/sine_position_encoding_5/range_2RangeNtoken_and_position_embedding_5/sine_position_encoding_5/range_2/start:output:0Ptoken_and_position_embedding_5/sine_position_encoding_5/strided_slice_1:output:0Ntoken_and_position_embedding_5/sine_position_encoding_5/range_2/delta:output:0*
_output_shapes	
:А
=token_and_position_embedding_5/sine_position_encoding_5/mod/yConst*
_output_shapes
: *
dtype0*
value	B :€
;token_and_position_embedding_5/sine_position_encoding_5/modFloorModHtoken_and_position_embedding_5/sine_position_encoding_5/range_2:output:0Ftoken_and_position_embedding_5/sine_position_encoding_5/mod/y:output:0*
T0*
_output_shapes	
:АЉ
>token_and_position_embedding_5/sine_position_encoding_5/Cast_4Cast?token_and_position_embedding_5/sine_position_encoding_5/mod:z:0*

DstT0*

SrcT0*
_output_shapes	
:АВ
=token_and_position_embedding_5/sine_position_encoding_5/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ф
;token_and_position_embedding_5/sine_position_encoding_5/subSubFtoken_and_position_embedding_5/sine_position_encoding_5/sub/x:output:0Btoken_and_position_embedding_5/sine_position_encoding_5/Cast_4:y:0*
T0*
_output_shapes	
:АЄ
;token_and_position_embedding_5/sine_position_encoding_5/SinSinAtoken_and_position_embedding_5/sine_position_encoding_5/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ащ
=token_and_position_embedding_5/sine_position_encoding_5/mul_2Mul?token_and_position_embedding_5/sine_position_encoding_5/Sin:y:0?token_and_position_embedding_5/sine_position_encoding_5/sub:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЄ
;token_and_position_embedding_5/sine_position_encoding_5/CosCosAtoken_and_position_embedding_5/sine_position_encoding_5/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аь
=token_and_position_embedding_5/sine_position_encoding_5/mul_3Mul?token_and_position_embedding_5/sine_position_encoding_5/Cos:y:0Btoken_and_position_embedding_5/sine_position_encoding_5/Cast_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€Аэ
;token_and_position_embedding_5/sine_position_encoding_5/addAddV2Atoken_and_position_embedding_5/sine_position_encoding_5/mul_2:z:0Atoken_and_position_embedding_5/sine_position_encoding_5/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЫ
Ctoken_and_position_embedding_5/sine_position_encoding_5/BroadcastToBroadcastTo?token_and_position_embedding_5/sine_position_encoding_5/add:z:0Ftoken_and_position_embedding_5/sine_position_encoding_5/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АК
"token_and_position_embedding_5/addAddV2Otoken_and_position_embedding_5/embedding_5/embedding_lookup/Identity_1:output:0Ltoken_and_position_embedding_5/sine_position_encoding_5/BroadcastTo:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А»
;token_and_position_embedding_6/embedding_6/embedding_lookupResourceGatherCtoken_and_position_embedding_6_embedding_6_embedding_lookup_2667047inputs_1*
Tindices0*V
_classL
JHloc:@token_and_position_embedding_6/embedding_6/embedding_lookup/2667047*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0Ѓ
Dtoken_and_position_embedding_6/embedding_6/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_6/embedding_6/embedding_lookup:output:0*
T0*V
_classL
JHloc:@token_and_position_embedding_6/embedding_6/embedding_lookup/2667047*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аб
Ftoken_and_position_embedding_6/embedding_6/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_6/embedding_6/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А 
=token_and_position_embedding_6/sine_position_encoding_6/ShapeShapeOtoken_and_position_embedding_6/embedding_6/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
::нѕЮ
Ktoken_and_position_embedding_6/sine_position_encoding_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€†
Mtoken_and_position_embedding_6/sine_position_encoding_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€Ч
Mtoken_and_position_embedding_6/sine_position_encoding_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
Etoken_and_position_embedding_6/sine_position_encoding_6/strided_sliceStridedSliceFtoken_and_position_embedding_6/sine_position_encoding_6/Shape:output:0Ttoken_and_position_embedding_6/sine_position_encoding_6/strided_slice/stack:output:0Vtoken_and_position_embedding_6/sine_position_encoding_6/strided_slice/stack_1:output:0Vtoken_and_position_embedding_6/sine_position_encoding_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask†
Mtoken_and_position_embedding_6/sine_position_encoding_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€Щ
Otoken_and_position_embedding_6/sine_position_encoding_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: Щ
Otoken_and_position_embedding_6/sine_position_encoding_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:с
Gtoken_and_position_embedding_6/sine_position_encoding_6/strided_slice_1StridedSliceFtoken_and_position_embedding_6/sine_position_encoding_6/Shape:output:0Vtoken_and_position_embedding_6/sine_position_encoding_6/strided_slice_1/stack:output:0Xtoken_and_position_embedding_6/sine_position_encoding_6/strided_slice_1/stack_1:output:0Xtoken_and_position_embedding_6/sine_position_encoding_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЕ
Ctoken_and_position_embedding_6/sine_position_encoding_6/range/startConst*
_output_shapes
: *
dtype0*
value	B : Е
Ctoken_and_position_embedding_6/sine_position_encoding_6/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :„
=token_and_position_embedding_6/sine_position_encoding_6/rangeRangeLtoken_and_position_embedding_6/sine_position_encoding_6/range/start:output:0Ntoken_and_position_embedding_6/sine_position_encoding_6/strided_slice:output:0Ltoken_and_position_embedding_6/sine_position_encoding_6/range/delta:output:0*#
_output_shapes
:€€€€€€€€€…
<token_and_position_embedding_6/sine_position_encoding_6/CastCastFtoken_and_position_embedding_6/sine_position_encoding_6/range:output:0*

DstT0*

SrcT0*#
_output_shapes
:€€€€€€€€€Е
@token_and_position_embedding_6/sine_position_encoding_6/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8З
Etoken_and_position_embedding_6/sine_position_encoding_6/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : З
Etoken_and_position_embedding_6/sine_position_encoding_6/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :„
?token_and_position_embedding_6/sine_position_encoding_6/range_1RangeNtoken_and_position_embedding_6/sine_position_encoding_6/range_1/start:output:0Ptoken_and_position_embedding_6/sine_position_encoding_6/strided_slice_1:output:0Ntoken_and_position_embedding_6/sine_position_encoding_6/range_1/delta:output:0*
_output_shapes	
:АД
Btoken_and_position_embedding_6/sine_position_encoding_6/floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :Й
@token_and_position_embedding_6/sine_position_encoding_6/floordivFloorDivHtoken_and_position_embedding_6/sine_position_encoding_6/range_1:output:0Ktoken_and_position_embedding_6/sine_position_encoding_6/floordiv/y:output:0*
T0*
_output_shapes	
:А
=token_and_position_embedding_6/sine_position_encoding_6/mul/xConst*
_output_shapes
: *
dtype0*
value	B :ц
;token_and_position_embedding_6/sine_position_encoding_6/mulMulFtoken_and_position_embedding_6/sine_position_encoding_6/mul/x:output:0Dtoken_and_position_embedding_6/sine_position_encoding_6/floordiv:z:0*
T0*
_output_shapes	
:АЉ
>token_and_position_embedding_6/sine_position_encoding_6/Cast_2Cast?token_and_position_embedding_6/sine_position_encoding_6/mul:z:0*

DstT0*

SrcT0*
_output_shapes	
:А»
>token_and_position_embedding_6/sine_position_encoding_6/Cast_3CastPtoken_and_position_embedding_6/sine_position_encoding_6/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: ш
?token_and_position_embedding_6/sine_position_encoding_6/truedivRealDivBtoken_and_position_embedding_6/sine_position_encoding_6/Cast_2:y:0Btoken_and_position_embedding_6/sine_position_encoding_6/Cast_3:y:0*
T0*
_output_shapes	
:Аш
;token_and_position_embedding_6/sine_position_encoding_6/PowPowItoken_and_position_embedding_6/sine_position_encoding_6/Cast_1/x:output:0Ctoken_and_position_embedding_6/sine_position_encoding_6/truediv:z:0*
T0*
_output_shapes	
:АИ
Ftoken_and_position_embedding_6/sine_position_encoding_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Х
Btoken_and_position_embedding_6/sine_position_encoding_6/ExpandDims
ExpandDims@token_and_position_embedding_6/sine_position_encoding_6/Cast:y:0Otoken_and_position_embedding_6/sine_position_encoding_6/ExpandDims/dim:output:0*
T0*'
_output_shapes
:€€€€€€€€€К
Htoken_and_position_embedding_6/sine_position_encoding_6/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Р
Dtoken_and_position_embedding_6/sine_position_encoding_6/ExpandDims_1
ExpandDims?token_and_position_embedding_6/sine_position_encoding_6/Pow:z:0Qtoken_and_position_embedding_6/sine_position_encoding_6/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	АУ
=token_and_position_embedding_6/sine_position_encoding_6/mul_1MulKtoken_and_position_embedding_6/sine_position_encoding_6/ExpandDims:output:0Mtoken_and_position_embedding_6/sine_position_encoding_6/ExpandDims_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
Etoken_and_position_embedding_6/sine_position_encoding_6/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : З
Etoken_and_position_embedding_6/sine_position_encoding_6/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :„
?token_and_position_embedding_6/sine_position_encoding_6/range_2RangeNtoken_and_position_embedding_6/sine_position_encoding_6/range_2/start:output:0Ptoken_and_position_embedding_6/sine_position_encoding_6/strided_slice_1:output:0Ntoken_and_position_embedding_6/sine_position_encoding_6/range_2/delta:output:0*
_output_shapes	
:А
=token_and_position_embedding_6/sine_position_encoding_6/mod/yConst*
_output_shapes
: *
dtype0*
value	B :€
;token_and_position_embedding_6/sine_position_encoding_6/modFloorModHtoken_and_position_embedding_6/sine_position_encoding_6/range_2:output:0Ftoken_and_position_embedding_6/sine_position_encoding_6/mod/y:output:0*
T0*
_output_shapes	
:АЉ
>token_and_position_embedding_6/sine_position_encoding_6/Cast_4Cast?token_and_position_embedding_6/sine_position_encoding_6/mod:z:0*

DstT0*

SrcT0*
_output_shapes	
:АВ
=token_and_position_embedding_6/sine_position_encoding_6/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ф
;token_and_position_embedding_6/sine_position_encoding_6/subSubFtoken_and_position_embedding_6/sine_position_encoding_6/sub/x:output:0Btoken_and_position_embedding_6/sine_position_encoding_6/Cast_4:y:0*
T0*
_output_shapes	
:АЄ
;token_and_position_embedding_6/sine_position_encoding_6/SinSinAtoken_and_position_embedding_6/sine_position_encoding_6/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Ащ
=token_and_position_embedding_6/sine_position_encoding_6/mul_2Mul?token_and_position_embedding_6/sine_position_encoding_6/Sin:y:0?token_and_position_embedding_6/sine_position_encoding_6/sub:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЄ
;token_and_position_embedding_6/sine_position_encoding_6/CosCosAtoken_and_position_embedding_6/sine_position_encoding_6/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аь
=token_and_position_embedding_6/sine_position_encoding_6/mul_3Mul?token_and_position_embedding_6/sine_position_encoding_6/Cos:y:0Btoken_and_position_embedding_6/sine_position_encoding_6/Cast_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€Аэ
;token_and_position_embedding_6/sine_position_encoding_6/addAddV2Atoken_and_position_embedding_6/sine_position_encoding_6/mul_2:z:0Atoken_and_position_embedding_6/sine_position_encoding_6/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЫ
Ctoken_and_position_embedding_6/sine_position_encoding_6/BroadcastToBroadcastTo?token_and_position_embedding_6/sine_position_encoding_6/add:z:0Ftoken_and_position_embedding_6/sine_position_encoding_6/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АК
"token_and_position_embedding_6/addAddV2Otoken_and_position_embedding_6/embedding_6/embedding_lookup/Identity_1:output:0Ltoken_and_position_embedding_6/sine_position_encoding_6/BroadcastTo:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ё
concatenate_1/concatConcatV2&token_and_position_embedding_5/add:z:0&token_and_position_embedding_6/add:z:0"concatenate_1/concat/axis:output:0*
N*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аj
attention/ShapeShapeconcatenate_1/concat:output:0*
T0*
_output_shapes
::нѕg
attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
attention/strided_sliceStridedSliceattention/Shape:output:0&attention/strided_slice/stack:output:0(attention/strided_slice/stack_1:output:0(attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
attention/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:k
!attention/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!attention/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
attention/strided_slice_1StridedSliceattention/Shape:output:0(attention/strided_slice_1/stack:output:0*attention/strided_slice_1/stack_1:output:0*attention/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
attention/range/startConst*
_output_shapes
: *
dtype0*
value	B : W
attention/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :°
attention/rangeRangeattention/range/start:output:0"attention/strided_slice_1:output:0attention/range/delta:output:0*#
_output_shapes
:€€€€€€€€€p
attention/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!attention/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!attention/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
attention/strided_slice_2StridedSliceattention/range:output:0(attention/strided_slice_2/stack:output:0*attention/strided_slice_2/stack_1:output:0*attention/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskY
attention/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : Y
attention/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :І
attention/range_1Range attention/range_1/start:output:0"attention/strided_slice_1:output:0 attention/range_1/delta:output:0*#
_output_shapes
:€€€€€€€€€В
attention/subSubattention/range_1:output:0"attention/strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€{
attention/addAddV2attention/sub:z:0"attention/strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€Ш
attention/GreaterEqualGreaterEqual"attention/strided_slice_2:output:0attention/add:z:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€[
attention/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :є
attention/Reshape/shapePack"attention/Reshape/shape/0:output:0"attention/strided_slice_1:output:0"attention/strided_slice_1:output:0*
N*
T0*
_output_shapes
:Щ
attention/ReshapeReshapeattention/GreaterEqual:z:0 attention/Reshape/shape:output:0*
T0
*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€c
attention/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€М
attention/ExpandDims
ExpandDims attention/strided_slice:output:0!attention/ExpandDims/dim:output:0*
T0*
_output_shapes
:`
attention/ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
attention/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : £
attention/concatConcatV2attention/ExpandDims:output:0attention/Const:output:0attention/concat/axis:output:0*
N*
T0*
_output_shapes
:Х
attention/TileTileattention/Reshape:output:0attention/concat:output:0*
T0
*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€÷
Cattention/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpLattention_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0Ф
4attention/multi_head_attention_1/query/einsum/EinsumEinsumconcatenate_1/concat:output:0Kattention/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abdeљ
9attention/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpBattention_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes
:	А*
dtype0щ
*attention/multi_head_attention_1/query/addAddV2=attention/multi_head_attention_1/query/einsum/Einsum:output:0Aattention/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А“
Aattention/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpJattention_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0Р
2attention/multi_head_attention_1/key/einsum/EinsumEinsumconcatenate_1/concat:output:0Iattention/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abdeє
7attention/multi_head_attention_1/key/add/ReadVariableOpReadVariableOp@attention_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes
:	А*
dtype0у
(attention/multi_head_attention_1/key/addAddV2;attention/multi_head_attention_1/key/einsum/Einsum:output:0?attention/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А÷
Cattention/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpLattention_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0Ф
4attention/multi_head_attention_1/value/einsum/EinsumEinsumconcatenate_1/concat:output:0Kattention/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abdeљ
9attention/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpBattention_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	А*
dtype0щ
*attention/multi_head_attention_1/value/addAddV2=attention/multi_head_attention_1/value/einsum/Einsum:output:0Aattention/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аk
&attention/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А=–
$attention/multi_head_attention_1/MulMul.attention/multi_head_attention_1/query/add:z:0/attention/multi_head_attention_1/Mul/y:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€АД
.attention/multi_head_attention_1/einsum/EinsumEinsum,attention/multi_head_attention_1/key/add:z:0(attention/multi_head_attention_1/Mul:z:0*
N*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbez
/attention/multi_head_attention_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€Ў
+attention/multi_head_attention_1/ExpandDims
ExpandDimsattention/Tile:output:08attention/multi_head_attention_1/ExpandDims/dim:output:0*
T0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€∆
-attention/multi_head_attention_1/softmax/CastCast4attention/multi_head_attention_1/ExpandDims:output:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€s
.attention/multi_head_attention_1/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?л
,attention/multi_head_attention_1/softmax/subSub7attention/multi_head_attention_1/softmax/sub/x:output:01attention/multi_head_attention_1/softmax/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€s
.attention/multi_head_attention_1/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knќк
,attention/multi_head_attention_1/softmax/mulMul0attention/multi_head_attention_1/softmax/sub:z:07attention/multi_head_attention_1/softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€м
,attention/multi_head_attention_1/softmax/addAddV27attention/multi_head_attention_1/einsum/Einsum:output:00attention/multi_head_attention_1/softmax/mul:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€є
0attention/multi_head_attention_1/softmax/SoftmaxSoftmax0attention/multi_head_attention_1/softmax/add:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€≈
1attention/multi_head_attention_1/dropout/IdentityIdentity:attention/multi_head_attention_1/softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€Т
0attention/multi_head_attention_1/einsum_1/EinsumEinsum:attention/multi_head_attention_1/dropout/Identity:output:0.attention/multi_head_attention_1/value/add:z:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationacbe,aecd->abcdм
Nattention/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpWattention_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0¬
?attention/multi_head_attention_1/attention_output/einsum/EinsumEinsum9attention/multi_head_attention_1/einsum_1/Einsum:output:0Vattention/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
equationabcd,cde->abeѕ
Dattention/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpMattention_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:А*
dtype0Ц
5attention/multi_head_attention_1/attention_output/addAddV2Hattention/multi_head_attention_1/attention_output/einsum/Einsum:output:0Lattention/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А£
attention/dropout_2/IdentityIdentity9attention/multi_head_attention_1/attention_output/add:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЮ
attention/add_1AddV2concatenate_1/concat:output:0%attention/dropout_2/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АИ
>attention/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:в
,attention/layer_normalization_2/moments/meanMeanattention/add_1:z:0Gattention/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(Ї
4attention/layer_normalization_2/moments/StopGradientStopGradient5attention/layer_normalization_2/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€в
9attention/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceattention/add_1:z:0=attention/layer_normalization_2/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АМ
Battention/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ф
0attention/layer_normalization_2/moments/varianceMean=attention/layer_normalization_2/moments/SquaredDifference:z:0Kattention/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(t
/attention/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5к
-attention/layer_normalization_2/batchnorm/addAddV29attention/layer_normalization_2/moments/variance:output:08attention/layer_normalization_2/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€™
/attention/layer_normalization_2/batchnorm/RsqrtRsqrt1attention/layer_normalization_2/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€њ
<attention/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpEattention_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0п
-attention/layer_normalization_2/batchnorm/mulMul3attention/layer_normalization_2/batchnorm/Rsqrt:y:0Dattention/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЊ
/attention/layer_normalization_2/batchnorm/mul_1Mulattention/add_1:z:01attention/layer_normalization_2/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аа
/attention/layer_normalization_2/batchnorm/mul_2Mul5attention/layer_normalization_2/moments/mean:output:01attention/layer_normalization_2/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЈ
8attention/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOpAattention_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0л
-attention/layer_normalization_2/batchnorm/subSub@attention/layer_normalization_2/batchnorm/ReadVariableOp:value:03attention/layer_normalization_2/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аа
/attention/layer_normalization_2/batchnorm/add_1AddV23attention/layer_normalization_2/batchnorm/mul_1:z:01attention/layer_normalization_2/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А†
*attention/dense_2/Tensordot/ReadVariableOpReadVariableOp3attention_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
 attention/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:q
 attention/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Т
!attention/dense_2/Tensordot/ShapeShape3attention/layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕk
)attention/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Г
$attention/dense_2/Tensordot/GatherV2GatherV2*attention/dense_2/Tensordot/Shape:output:0)attention/dense_2/Tensordot/free:output:02attention/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
+attention/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : З
&attention/dense_2/Tensordot/GatherV2_1GatherV2*attention/dense_2/Tensordot/Shape:output:0)attention/dense_2/Tensordot/axes:output:04attention/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!attention/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: §
 attention/dense_2/Tensordot/ProdProd-attention/dense_2/Tensordot/GatherV2:output:0*attention/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: m
#attention/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ™
"attention/dense_2/Tensordot/Prod_1Prod/attention/dense_2/Tensordot/GatherV2_1:output:0,attention/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: i
'attention/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : д
"attention/dense_2/Tensordot/concatConcatV2)attention/dense_2/Tensordot/free:output:0)attention/dense_2/Tensordot/axes:output:00attention/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ѓ
!attention/dense_2/Tensordot/stackPack)attention/dense_2/Tensordot/Prod:output:0+attention/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:‘
%attention/dense_2/Tensordot/transpose	Transpose3attention/layer_normalization_2/batchnorm/add_1:z:0+attention/dense_2/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ај
#attention/dense_2/Tensordot/ReshapeReshape)attention/dense_2/Tensordot/transpose:y:0*attention/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ѕ
"attention/dense_2/Tensordot/MatMulMatMul,attention/dense_2/Tensordot/Reshape:output:02attention/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
#attention/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аk
)attention/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : п
$attention/dense_2/Tensordot/concat_1ConcatV2-attention/dense_2/Tensordot/GatherV2:output:0,attention/dense_2/Tensordot/Const_2:output:02attention/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:√
attention/dense_2/TensordotReshape,attention/dense_2/Tensordot/MatMul:product:0-attention/dense_2/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЧ
(attention/dense_2/BiasAdd/ReadVariableOpReadVariableOp1attention_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Љ
attention/dense_2/BiasAddBiasAdd$attention/dense_2/Tensordot:output:00attention/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АВ
attention/dense_2/ReluRelu"attention/dense_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А†
*attention/dense_3/Tensordot/ReadVariableOpReadVariableOp3attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
 attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:q
 attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Г
!attention/dense_3/Tensordot/ShapeShape$attention/dense_2/Relu:activations:0*
T0*
_output_shapes
::нѕk
)attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Г
$attention/dense_3/Tensordot/GatherV2GatherV2*attention/dense_3/Tensordot/Shape:output:0)attention/dense_3/Tensordot/free:output:02attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
+attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : З
&attention/dense_3/Tensordot/GatherV2_1GatherV2*attention/dense_3/Tensordot/Shape:output:0)attention/dense_3/Tensordot/axes:output:04attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: §
 attention/dense_3/Tensordot/ProdProd-attention/dense_3/Tensordot/GatherV2:output:0*attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: m
#attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ™
"attention/dense_3/Tensordot/Prod_1Prod/attention/dense_3/Tensordot/GatherV2_1:output:0,attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: i
'attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : д
"attention/dense_3/Tensordot/concatConcatV2)attention/dense_3/Tensordot/free:output:0)attention/dense_3/Tensordot/axes:output:00attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ѓ
!attention/dense_3/Tensordot/stackPack)attention/dense_3/Tensordot/Prod:output:0+attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:≈
%attention/dense_3/Tensordot/transpose	Transpose$attention/dense_2/Relu:activations:0+attention/dense_3/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ај
#attention/dense_3/Tensordot/ReshapeReshape)attention/dense_3/Tensordot/transpose:y:0*attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ѕ
"attention/dense_3/Tensordot/MatMulMatMul,attention/dense_3/Tensordot/Reshape:output:02attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
#attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аk
)attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : п
$attention/dense_3/Tensordot/concat_1ConcatV2-attention/dense_3/Tensordot/GatherV2:output:0,attention/dense_3/Tensordot/Const_2:output:02attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:√
attention/dense_3/TensordotReshape,attention/dense_3/Tensordot/MatMul:product:0-attention/dense_3/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЧ
(attention/dense_3/BiasAdd/ReadVariableOpReadVariableOp1attention_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Љ
attention/dense_3/BiasAddBiasAdd$attention/dense_3/Tensordot:output:00attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АМ
attention/dropout_3/IdentityIdentity"attention/dense_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аі
attention/add_2AddV23attention/layer_normalization_2/batchnorm/add_1:z:0%attention/dropout_3/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АИ
>attention/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:в
,attention/layer_normalization_3/moments/meanMeanattention/add_2:z:0Gattention/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(Ї
4attention/layer_normalization_3/moments/StopGradientStopGradient5attention/layer_normalization_3/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€в
9attention/layer_normalization_3/moments/SquaredDifferenceSquaredDifferenceattention/add_2:z:0=attention/layer_normalization_3/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АМ
Battention/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ф
0attention/layer_normalization_3/moments/varianceMean=attention/layer_normalization_3/moments/SquaredDifference:z:0Kattention/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(t
/attention/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5к
-attention/layer_normalization_3/batchnorm/addAddV29attention/layer_normalization_3/moments/variance:output:08attention/layer_normalization_3/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€™
/attention/layer_normalization_3/batchnorm/RsqrtRsqrt1attention/layer_normalization_3/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€њ
<attention/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpEattention_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0п
-attention/layer_normalization_3/batchnorm/mulMul3attention/layer_normalization_3/batchnorm/Rsqrt:y:0Dattention/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЊ
/attention/layer_normalization_3/batchnorm/mul_1Mulattention/add_2:z:01attention/layer_normalization_3/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аа
/attention/layer_normalization_3/batchnorm/mul_2Mul5attention/layer_normalization_3/moments/mean:output:01attention/layer_normalization_3/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЈ
8attention/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOpAattention_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0л
-attention/layer_normalization_3/batchnorm/subSub@attention/layer_normalization_3/batchnorm/ReadVariableOp:value:03attention/layer_normalization_3/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аа
/attention/layer_normalization_3/batchnorm/add_1AddV23attention/layer_normalization_3/batchnorm/mul_1:z:01attention/layer_normalization_3/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЭ
)duration_outputs/Tensordot/ReadVariableOpReadVariableOp2duration_outputs_tensordot_readvariableop_resource*
_output_shapes
:	А*
dtype0i
duration_outputs/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:p
duration_outputs/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       С
 duration_outputs/Tensordot/ShapeShape3attention/layer_normalization_3/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕj
(duration_outputs/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : €
#duration_outputs/Tensordot/GatherV2GatherV2)duration_outputs/Tensordot/Shape:output:0(duration_outputs/Tensordot/free:output:01duration_outputs/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
*duration_outputs/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Г
%duration_outputs/Tensordot/GatherV2_1GatherV2)duration_outputs/Tensordot/Shape:output:0(duration_outputs/Tensordot/axes:output:03duration_outputs/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:j
 duration_outputs/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
duration_outputs/Tensordot/ProdProd,duration_outputs/Tensordot/GatherV2:output:0)duration_outputs/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"duration_outputs/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: І
!duration_outputs/Tensordot/Prod_1Prod.duration_outputs/Tensordot/GatherV2_1:output:0+duration_outputs/Tensordot/Const_1:output:0*
T0*
_output_shapes
: h
&duration_outputs/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : а
!duration_outputs/Tensordot/concatConcatV2(duration_outputs/Tensordot/free:output:0(duration_outputs/Tensordot/axes:output:0/duration_outputs/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ђ
 duration_outputs/Tensordot/stackPack(duration_outputs/Tensordot/Prod:output:0*duration_outputs/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:“
$duration_outputs/Tensordot/transpose	Transpose3attention/layer_normalization_3/batchnorm/add_1:z:0*duration_outputs/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аљ
"duration_outputs/Tensordot/ReshapeReshape(duration_outputs/Tensordot/transpose:y:0)duration_outputs/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€љ
!duration_outputs/Tensordot/MatMulMatMul+duration_outputs/Tensordot/Reshape:output:01duration_outputs/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€l
"duration_outputs/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:j
(duration_outputs/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : л
#duration_outputs/Tensordot/concat_1ConcatV2,duration_outputs/Tensordot/GatherV2:output:0+duration_outputs/Tensordot/Const_2:output:01duration_outputs/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:њ
duration_outputs/TensordotReshape+duration_outputs/Tensordot/MatMul:product:0,duration_outputs/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ф
'duration_outputs/BiasAdd/ReadVariableOpReadVariableOp0duration_outputs_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Є
duration_outputs/BiasAddBiasAdd#duration_outputs/Tensordot:output:0/duration_outputs/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Е
duration_outputs/SoftmaxSoftmax!duration_outputs/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Х
%note_outputs/Tensordot/ReadVariableOpReadVariableOp.note_outputs_tensordot_readvariableop_resource*
_output_shapes
:	А;*
dtype0e
note_outputs/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:l
note_outputs/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Н
note_outputs/Tensordot/ShapeShape3attention/layer_normalization_3/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕf
$note_outputs/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : п
note_outputs/Tensordot/GatherV2GatherV2%note_outputs/Tensordot/Shape:output:0$note_outputs/Tensordot/free:output:0-note_outputs/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:h
&note_outputs/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : у
!note_outputs/Tensordot/GatherV2_1GatherV2%note_outputs/Tensordot/Shape:output:0$note_outputs/Tensordot/axes:output:0/note_outputs/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:f
note_outputs/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Х
note_outputs/Tensordot/ProdProd(note_outputs/Tensordot/GatherV2:output:0%note_outputs/Tensordot/Const:output:0*
T0*
_output_shapes
: h
note_outputs/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ы
note_outputs/Tensordot/Prod_1Prod*note_outputs/Tensordot/GatherV2_1:output:0'note_outputs/Tensordot/Const_1:output:0*
T0*
_output_shapes
: d
"note_outputs/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : –
note_outputs/Tensordot/concatConcatV2$note_outputs/Tensordot/free:output:0$note_outputs/Tensordot/axes:output:0+note_outputs/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:†
note_outputs/Tensordot/stackPack$note_outputs/Tensordot/Prod:output:0&note_outputs/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
: 
 note_outputs/Tensordot/transpose	Transpose3attention/layer_normalization_3/batchnorm/add_1:z:0&note_outputs/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А±
note_outputs/Tensordot/ReshapeReshape$note_outputs/Tensordot/transpose:y:0%note_outputs/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€±
note_outputs/Tensordot/MatMulMatMul'note_outputs/Tensordot/Reshape:output:0-note_outputs/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€;h
note_outputs/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:;f
$note_outputs/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
note_outputs/Tensordot/concat_1ConcatV2(note_outputs/Tensordot/GatherV2:output:0'note_outputs/Tensordot/Const_2:output:0-note_outputs/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:≥
note_outputs/TensordotReshape'note_outputs/Tensordot/MatMul:product:0(note_outputs/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;М
#note_outputs/BiasAdd/ReadVariableOpReadVariableOp,note_outputs_biasadd_readvariableop_resource*
_output_shapes
:;*
dtype0ђ
note_outputs/BiasAddBiasAddnote_outputs/Tensordot:output:0+note_outputs/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;}
note_outputs/SoftmaxSoftmaxnote_outputs/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;z
IdentityIdentitynote_outputs/Softmax:softmax:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;А

Identity_1Identity"duration_outputs/Softmax:softmax:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€§

NoOpNoOp)^attention/dense_2/BiasAdd/ReadVariableOp+^attention/dense_2/Tensordot/ReadVariableOp)^attention/dense_3/BiasAdd/ReadVariableOp+^attention/dense_3/Tensordot/ReadVariableOp9^attention/layer_normalization_2/batchnorm/ReadVariableOp=^attention/layer_normalization_2/batchnorm/mul/ReadVariableOp9^attention/layer_normalization_3/batchnorm/ReadVariableOp=^attention/layer_normalization_3/batchnorm/mul/ReadVariableOpE^attention/multi_head_attention_1/attention_output/add/ReadVariableOpO^attention/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp8^attention/multi_head_attention_1/key/add/ReadVariableOpB^attention/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:^attention/multi_head_attention_1/query/add/ReadVariableOpD^attention/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:^attention/multi_head_attention_1/value/add/ReadVariableOpD^attention/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp(^duration_outputs/BiasAdd/ReadVariableOp*^duration_outputs/Tensordot/ReadVariableOp$^note_outputs/BiasAdd/ReadVariableOp&^note_outputs/Tensordot/ReadVariableOp<^token_and_position_embedding_5/embedding_5/embedding_lookup<^token_and_position_embedding_6/embedding_6/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 2T
(attention/dense_2/BiasAdd/ReadVariableOp(attention/dense_2/BiasAdd/ReadVariableOp2X
*attention/dense_2/Tensordot/ReadVariableOp*attention/dense_2/Tensordot/ReadVariableOp2T
(attention/dense_3/BiasAdd/ReadVariableOp(attention/dense_3/BiasAdd/ReadVariableOp2X
*attention/dense_3/Tensordot/ReadVariableOp*attention/dense_3/Tensordot/ReadVariableOp2t
8attention/layer_normalization_2/batchnorm/ReadVariableOp8attention/layer_normalization_2/batchnorm/ReadVariableOp2|
<attention/layer_normalization_2/batchnorm/mul/ReadVariableOp<attention/layer_normalization_2/batchnorm/mul/ReadVariableOp2t
8attention/layer_normalization_3/batchnorm/ReadVariableOp8attention/layer_normalization_3/batchnorm/ReadVariableOp2|
<attention/layer_normalization_3/batchnorm/mul/ReadVariableOp<attention/layer_normalization_3/batchnorm/mul/ReadVariableOp2М
Dattention/multi_head_attention_1/attention_output/add/ReadVariableOpDattention/multi_head_attention_1/attention_output/add/ReadVariableOp2†
Nattention/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpNattention/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2r
7attention/multi_head_attention_1/key/add/ReadVariableOp7attention/multi_head_attention_1/key/add/ReadVariableOp2Ж
Aattention/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpAattention/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2v
9attention/multi_head_attention_1/query/add/ReadVariableOp9attention/multi_head_attention_1/query/add/ReadVariableOp2К
Cattention/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpCattention/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2v
9attention/multi_head_attention_1/value/add/ReadVariableOp9attention/multi_head_attention_1/value/add/ReadVariableOp2К
Cattention/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpCattention/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2R
'duration_outputs/BiasAdd/ReadVariableOp'duration_outputs/BiasAdd/ReadVariableOp2V
)duration_outputs/Tensordot/ReadVariableOp)duration_outputs/Tensordot/ReadVariableOp2J
#note_outputs/BiasAdd/ReadVariableOp#note_outputs/BiasAdd/ReadVariableOp2N
%note_outputs/Tensordot/ReadVariableOp%note_outputs/Tensordot/ReadVariableOp2z
;token_and_position_embedding_5/embedding_5/embedding_lookup;token_and_position_embedding_5/embedding_5/embedding_lookup2z
;token_and_position_embedding_6/embedding_6/embedding_lookup;token_and_position_embedding_6/embedding_6/embedding_lookup:ZV
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_1:Z V
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
й
П
)__inference_model_2_layer_call_fn_2666603
inputs_0
inputs_1
unknown:	;А
	unknown_0:	А!
	unknown_1:АА
	unknown_2:	А!
	unknown_3:АА
	unknown_4:	А!
	unknown_5:АА
	unknown_6:	А!
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:
АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:	А

unknown_18:

unknown_19:	А;

unknown_20:;
identity

identity_1ИҐStatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*#
Tin
2*
Tout
2*
_collective_manager_ids
 *T
_output_shapesB
@:€€€€€€€€€€€€€€€€€€;:€€€€€€€€€€€€€€€€€€*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_2666111|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;~

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:ZV
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_1:Z V
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
цЎ
џ
F__inference_attention_layer_call_and_return_conditional_losses_2666003

inputsZ
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:ААK
8multi_head_attention_1_query_add_readvariableop_resource:	АX
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:ААI
6multi_head_attention_1_key_add_readvariableop_resource:	АZ
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:ААK
8multi_head_attention_1_value_add_readvariableop_resource:	Аe
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:ААR
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:	АJ
;layer_normalization_2_batchnorm_mul_readvariableop_resource:	АF
7layer_normalization_2_batchnorm_readvariableop_resource:	А=
)dense_2_tensordot_readvariableop_resource:
АА6
'dense_2_biasadd_readvariableop_resource:	А=
)dense_3_tensordot_readvariableop_resource:
АА6
'dense_3_biasadd_readvariableop_resource:	АJ
;layer_normalization_3_batchnorm_mul_readvariableop_resource:	АF
7layer_normalization_3_batchnorm_readvariableop_resource:	А
identity

identity_1ИҐdense_2/BiasAdd/ReadVariableOpҐ dense_2/Tensordot/ReadVariableOpҐdense_3/BiasAdd/ReadVariableOpҐ dense_3/Tensordot/ReadVariableOpҐ.layer_normalization_2/batchnorm/ReadVariableOpҐ2layer_normalization_2/batchnorm/mul/ReadVariableOpҐ.layer_normalization_3/batchnorm/ReadVariableOpҐ2layer_normalization_3/batchnorm/mul/ReadVariableOpҐ:multi_head_attention_1/attention_output/add/ReadVariableOpҐDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_1/key/add/ReadVariableOpҐ7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/query/add/ReadVariableOpҐ9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/value/add/ReadVariableOpҐ9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :y
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*#
_output_shapes
:€€€€€€€€€f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Й
strided_slice_2StridedSlicerange:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskO
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*#
_output_shapes
:€€€€€€€€€d
subSubrange_1:output:0strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€]
addAddV2sub:z:0strided_slice_1:output:0*
T0*#
_output_shapes
:€€€€€€€€€z
GreaterEqualGreaterEqualstrided_slice_2:output:0add:z:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :С
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:{
ReshapeReshapeGreaterEqual:z:0Reshape/shape:output:0*
T0
*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€n

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : {
concatConcatV2ExpandDims:output:0Const:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
TileTileReshape:output:0concat:output:0*
T0
*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€¬
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0й
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde©
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes
:	А*
dtype0џ
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€АЊ
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0е
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde•
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes
:	А*
dtype0’
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А¬
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0й
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationabc,cde->abde©
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	А*
dtype0џ
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аa
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А=≤
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€Аж
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbep
%multi_head_attention_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€Ї
!multi_head_attention_1/ExpandDims
ExpandDimsTile:output:0.multi_head_attention_1/ExpandDims/dim:output:0*
T0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€≤
#multi_head_attention_1/softmax/CastCast*multi_head_attention_1/ExpandDims:output:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€i
$multi_head_attention_1/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ќ
"multi_head_attention_1/softmax/subSub-multi_head_attention_1/softmax/sub/x:output:0'multi_head_attention_1/softmax/Cast:y:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€i
$multi_head_attention_1/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knќћ
"multi_head_attention_1/softmax/mulMul&multi_head_attention_1/softmax/sub:z:0-multi_head_attention_1/softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ќ
"multi_head_attention_1/softmax/addAddV2-multi_head_attention_1/einsum/Einsum:output:0&multi_head_attention_1/softmax/mul:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€•
&multi_head_attention_1/softmax/SoftmaxSoftmax&multi_head_attention_1/softmax/add:z:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€±
'multi_head_attention_1/dropout/IdentityIdentity0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ф
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/Identity:output:0$multi_head_attention_1/value/add:z:0*
N*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€А*
equationacbe,aecd->abcdЎ
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0§
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
equationabcd,cde->abeї
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:А*
dtype0ш
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АП
dropout_2/IdentityIdentity/multi_head_attention_1/attention_output/add:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аs
add_1AddV2inputsdropout_2/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ƒ
"layer_normalization_2/moments/meanMean	add_1:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(¶
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ƒ
/layer_normalization_2/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АВ
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ц
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5ћ
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ц
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ђ
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0—
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А†
%layer_normalization_2/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А¬
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А£
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0Ќ
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А¬
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АМ
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
dense_2/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
::нѕa
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ґ
dense_2/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0!dense_2/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АҐ
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€£
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аd
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аa
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:•
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АГ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ю
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аn
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АМ
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       o
dense_3/Tensordot/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
::нѕa
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:І
dense_3/Tensordot/transpose	Transposedense_2/Relu:activations:0!dense_3/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АҐ
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€£
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аd
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аa
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:•
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АГ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ю
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аx
dropout_3/IdentityIdentitydense_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЦ
add_2AddV2)layer_normalization_2/batchnorm/add_1:z:0dropout_3/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А~
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ƒ
"layer_normalization_3/moments/meanMean	add_2:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(¶
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ƒ
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference	add_2:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АВ
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ц
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
	keep_dims(j
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5ћ
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ц
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ђ
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0—
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А†
%layer_normalization_3/batchnorm/mul_1Mul	add_2:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А¬
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А£
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0Ќ
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А¬
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЖ
IdentityIdentity)layer_normalization_3/batchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЫ

Identity_1Identity0multi_head_attention_1/softmax/Softmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€д
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€€€€€€€€€€А: : : : : : : : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
и
Р
@__inference_token_and_position_embedding_6_layer_call_fn_2667385
x
unknown:	А
identityИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallxunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *d
f_R]
[__inference_token_and_position_embedding_6_layer_call_and_return_conditional_losses_2665521}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€€€€€€€€€€: 22
StatefulPartitionedCallStatefulPartitionedCall:S O
0
_output_shapes
:€€€€€€€€€€€€€€€€€€

_user_specified_namex
г
Н
)__inference_model_2_layer_call_fn_2666269
input_3
input_4
unknown:	;А
	unknown_0:	А!
	unknown_1:АА
	unknown_2:	А!
	unknown_3:АА
	unknown_4:	А!
	unknown_5:АА
	unknown_6:	А!
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:
АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:	А

unknown_18:

unknown_19:	А;

unknown_20:;
identity

identity_1ИҐStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinput_3input_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*#
Tin
2*
Tout
2*
_collective_manager_ids
 *T
_output_shapesB
@:€€€€€€€€€€€€€€€€€€;:€€€€€€€€€€€€€€€€€€*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_2666220|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;~

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:YU
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_4:Y U
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_3
—«
Ѓ9
#__inference__traced_restore_2668659
file_prefix7
$assignvariableop_note_outputs_kernel:	А;2
$assignvariableop_1_note_outputs_bias:;=
*assignvariableop_2_duration_outputs_kernel:	А6
(assignvariableop_3_duration_outputs_bias:[
Hassignvariableop_4_token_and_position_embedding_5_embedding_5_embeddings:	;А[
Hassignvariableop_5_token_and_position_embedding_6_embedding_6_embeddings:	АX
@assignvariableop_6_attention_multi_head_attention_1_query_kernel:ААQ
>assignvariableop_7_attention_multi_head_attention_1_query_bias:	АV
>assignvariableop_8_attention_multi_head_attention_1_key_kernel:ААO
<assignvariableop_9_attention_multi_head_attention_1_key_bias:	АY
Aassignvariableop_10_attention_multi_head_attention_1_value_kernel:ААR
?assignvariableop_11_attention_multi_head_attention_1_value_bias:	Аd
Lassignvariableop_12_attention_multi_head_attention_1_attention_output_kernel:ААY
Jassignvariableop_13_attention_multi_head_attention_1_attention_output_bias:	АH
9assignvariableop_14_attention_layer_normalization_2_gamma:	АG
8assignvariableop_15_attention_layer_normalization_2_beta:	А@
,assignvariableop_16_attention_dense_2_kernel:
АА9
*assignvariableop_17_attention_dense_2_bias:	А@
,assignvariableop_18_attention_dense_3_kernel:
АА9
*assignvariableop_19_attention_dense_3_bias:	АH
9assignvariableop_20_attention_layer_normalization_3_gamma:	АG
8assignvariableop_21_attention_layer_normalization_3_beta:	А'
assignvariableop_22_iteration:	 +
!assignvariableop_23_learning_rate: c
Passignvariableop_24_adam_m_token_and_position_embedding_5_embedding_5_embeddings:	;Аc
Passignvariableop_25_adam_v_token_and_position_embedding_5_embedding_5_embeddings:	;Аc
Passignvariableop_26_adam_m_token_and_position_embedding_6_embedding_6_embeddings:	Аc
Passignvariableop_27_adam_v_token_and_position_embedding_6_embedding_6_embeddings:	А`
Hassignvariableop_28_adam_m_attention_multi_head_attention_1_query_kernel:АА`
Hassignvariableop_29_adam_v_attention_multi_head_attention_1_query_kernel:ААY
Fassignvariableop_30_adam_m_attention_multi_head_attention_1_query_bias:	АY
Fassignvariableop_31_adam_v_attention_multi_head_attention_1_query_bias:	А^
Fassignvariableop_32_adam_m_attention_multi_head_attention_1_key_kernel:АА^
Fassignvariableop_33_adam_v_attention_multi_head_attention_1_key_kernel:ААW
Dassignvariableop_34_adam_m_attention_multi_head_attention_1_key_bias:	АW
Dassignvariableop_35_adam_v_attention_multi_head_attention_1_key_bias:	А`
Hassignvariableop_36_adam_m_attention_multi_head_attention_1_value_kernel:АА`
Hassignvariableop_37_adam_v_attention_multi_head_attention_1_value_kernel:ААY
Fassignvariableop_38_adam_m_attention_multi_head_attention_1_value_bias:	АY
Fassignvariableop_39_adam_v_attention_multi_head_attention_1_value_bias:	Аk
Sassignvariableop_40_adam_m_attention_multi_head_attention_1_attention_output_kernel:ААk
Sassignvariableop_41_adam_v_attention_multi_head_attention_1_attention_output_kernel:АА`
Qassignvariableop_42_adam_m_attention_multi_head_attention_1_attention_output_bias:	А`
Qassignvariableop_43_adam_v_attention_multi_head_attention_1_attention_output_bias:	АO
@assignvariableop_44_adam_m_attention_layer_normalization_2_gamma:	АO
@assignvariableop_45_adam_v_attention_layer_normalization_2_gamma:	АN
?assignvariableop_46_adam_m_attention_layer_normalization_2_beta:	АN
?assignvariableop_47_adam_v_attention_layer_normalization_2_beta:	АG
3assignvariableop_48_adam_m_attention_dense_2_kernel:
ААG
3assignvariableop_49_adam_v_attention_dense_2_kernel:
АА@
1assignvariableop_50_adam_m_attention_dense_2_bias:	А@
1assignvariableop_51_adam_v_attention_dense_2_bias:	АG
3assignvariableop_52_adam_m_attention_dense_3_kernel:
ААG
3assignvariableop_53_adam_v_attention_dense_3_kernel:
АА@
1assignvariableop_54_adam_m_attention_dense_3_bias:	А@
1assignvariableop_55_adam_v_attention_dense_3_bias:	АO
@assignvariableop_56_adam_m_attention_layer_normalization_3_gamma:	АO
@assignvariableop_57_adam_v_attention_layer_normalization_3_gamma:	АN
?assignvariableop_58_adam_m_attention_layer_normalization_3_beta:	АN
?assignvariableop_59_adam_v_attention_layer_normalization_3_beta:	АA
.assignvariableop_60_adam_m_note_outputs_kernel:	А;A
.assignvariableop_61_adam_v_note_outputs_kernel:	А;:
,assignvariableop_62_adam_m_note_outputs_bias:;:
,assignvariableop_63_adam_v_note_outputs_bias:;E
2assignvariableop_64_adam_m_duration_outputs_kernel:	АE
2assignvariableop_65_adam_v_duration_outputs_kernel:	А>
0assignvariableop_66_adam_m_duration_outputs_bias:>
0assignvariableop_67_adam_v_duration_outputs_bias:%
assignvariableop_68_total_2: %
assignvariableop_69_count_2: %
assignvariableop_70_total_1: %
assignvariableop_71_count_1: #
assignvariableop_72_total: #
assignvariableop_73_count: 
identity_75ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_60ҐAssignVariableOp_61ҐAssignVariableOp_62ҐAssignVariableOp_63ҐAssignVariableOp_64ҐAssignVariableOp_65ҐAssignVariableOp_66ҐAssignVariableOp_67ҐAssignVariableOp_68ҐAssignVariableOp_69ҐAssignVariableOp_7ҐAssignVariableOp_70ҐAssignVariableOp_71ҐAssignVariableOp_72ҐAssignVariableOp_73ҐAssignVariableOp_8ҐAssignVariableOp_9”
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:K*
dtype0*щ
valueпBмKB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЙ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:K*
dtype0*Ђ
value°BЮKB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ш
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¬
_output_shapesѓ
ђ:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Y
dtypesO
M2K	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOpAssignVariableOp$assignvariableop_note_outputs_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_1AssignVariableOp$assignvariableop_1_note_outputs_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_2AssignVariableOp*assignvariableop_2_duration_outputs_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_3AssignVariableOp(assignvariableop_3_duration_outputs_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:я
AssignVariableOp_4AssignVariableOpHassignvariableop_4_token_and_position_embedding_5_embedding_5_embeddingsIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:я
AssignVariableOp_5AssignVariableOpHassignvariableop_5_token_and_position_embedding_6_embedding_6_embeddingsIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_6AssignVariableOp@assignvariableop_6_attention_multi_head_attention_1_query_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:’
AssignVariableOp_7AssignVariableOp>assignvariableop_7_attention_multi_head_attention_1_query_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:’
AssignVariableOp_8AssignVariableOp>assignvariableop_8_attention_multi_head_attention_1_key_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:”
AssignVariableOp_9AssignVariableOp<assignvariableop_9_attention_multi_head_attention_1_key_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_10AssignVariableOpAassignvariableop_10_attention_multi_head_attention_1_value_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_11AssignVariableOp?assignvariableop_11_attention_multi_head_attention_1_value_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_12AssignVariableOpLassignvariableop_12_attention_multi_head_attention_1_attention_output_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_13AssignVariableOpJassignvariableop_13_attention_multi_head_attention_1_attention_output_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_14AssignVariableOp9assignvariableop_14_attention_layer_normalization_2_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:—
AssignVariableOp_15AssignVariableOp8assignvariableop_15_attention_layer_normalization_2_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_16AssignVariableOp,assignvariableop_16_attention_dense_2_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_17AssignVariableOp*assignvariableop_17_attention_dense_2_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_18AssignVariableOp,assignvariableop_18_attention_dense_3_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_19AssignVariableOp*assignvariableop_19_attention_dense_3_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_20AssignVariableOp9assignvariableop_20_attention_layer_normalization_3_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:—
AssignVariableOp_21AssignVariableOp8assignvariableop_21_attention_layer_normalization_3_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:ґ
AssignVariableOp_22AssignVariableOpassignvariableop_22_iterationIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_23AssignVariableOp!assignvariableop_23_learning_rateIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_24AssignVariableOpPassignvariableop_24_adam_m_token_and_position_embedding_5_embedding_5_embeddingsIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_25AssignVariableOpPassignvariableop_25_adam_v_token_and_position_embedding_5_embedding_5_embeddingsIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_26AssignVariableOpPassignvariableop_26_adam_m_token_and_position_embedding_6_embedding_6_embeddingsIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_27AssignVariableOpPassignvariableop_27_adam_v_token_and_position_embedding_6_embedding_6_embeddingsIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_28AssignVariableOpHassignvariableop_28_adam_m_attention_multi_head_attention_1_query_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_29AssignVariableOpHassignvariableop_29_adam_v_attention_multi_head_attention_1_query_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:я
AssignVariableOp_30AssignVariableOpFassignvariableop_30_adam_m_attention_multi_head_attention_1_query_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:я
AssignVariableOp_31AssignVariableOpFassignvariableop_31_adam_v_attention_multi_head_attention_1_query_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:я
AssignVariableOp_32AssignVariableOpFassignvariableop_32_adam_m_attention_multi_head_attention_1_key_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:я
AssignVariableOp_33AssignVariableOpFassignvariableop_33_adam_v_attention_multi_head_attention_1_key_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_34AssignVariableOpDassignvariableop_34_adam_m_attention_multi_head_attention_1_key_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_35AssignVariableOpDassignvariableop_35_adam_v_attention_multi_head_attention_1_key_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_36AssignVariableOpHassignvariableop_36_adam_m_attention_multi_head_attention_1_value_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_37AssignVariableOpHassignvariableop_37_adam_v_attention_multi_head_attention_1_value_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:я
AssignVariableOp_38AssignVariableOpFassignvariableop_38_adam_m_attention_multi_head_attention_1_value_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:я
AssignVariableOp_39AssignVariableOpFassignvariableop_39_adam_v_attention_multi_head_attention_1_value_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:м
AssignVariableOp_40AssignVariableOpSassignvariableop_40_adam_m_attention_multi_head_attention_1_attention_output_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:м
AssignVariableOp_41AssignVariableOpSassignvariableop_41_adam_v_attention_multi_head_attention_1_attention_output_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:к
AssignVariableOp_42AssignVariableOpQassignvariableop_42_adam_m_attention_multi_head_attention_1_attention_output_biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:к
AssignVariableOp_43AssignVariableOpQassignvariableop_43_adam_v_attention_multi_head_attention_1_attention_output_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_44AssignVariableOp@assignvariableop_44_adam_m_attention_layer_normalization_2_gammaIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_45AssignVariableOp@assignvariableop_45_adam_v_attention_layer_normalization_2_gammaIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_46AssignVariableOp?assignvariableop_46_adam_m_attention_layer_normalization_2_betaIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_47AssignVariableOp?assignvariableop_47_adam_v_attention_layer_normalization_2_betaIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_48AssignVariableOp3assignvariableop_48_adam_m_attention_dense_2_kernelIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_49AssignVariableOp3assignvariableop_49_adam_v_attention_dense_2_kernelIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_50AssignVariableOp1assignvariableop_50_adam_m_attention_dense_2_biasIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_51AssignVariableOp1assignvariableop_51_adam_v_attention_dense_2_biasIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_52AssignVariableOp3assignvariableop_52_adam_m_attention_dense_3_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_53AssignVariableOp3assignvariableop_53_adam_v_attention_dense_3_kernelIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_54AssignVariableOp1assignvariableop_54_adam_m_attention_dense_3_biasIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_55AssignVariableOp1assignvariableop_55_adam_v_attention_dense_3_biasIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_56AssignVariableOp@assignvariableop_56_adam_m_attention_layer_normalization_3_gammaIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_57AssignVariableOp@assignvariableop_57_adam_v_attention_layer_normalization_3_gammaIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_58AssignVariableOp?assignvariableop_58_adam_m_attention_layer_normalization_3_betaIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_59AssignVariableOp?assignvariableop_59_adam_v_attention_layer_normalization_3_betaIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_60AssignVariableOp.assignvariableop_60_adam_m_note_outputs_kernelIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_61AssignVariableOp.assignvariableop_61_adam_v_note_outputs_kernelIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_62AssignVariableOp,assignvariableop_62_adam_m_note_outputs_biasIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_63AssignVariableOp,assignvariableop_63_adam_v_note_outputs_biasIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_64AssignVariableOp2assignvariableop_64_adam_m_duration_outputs_kernelIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_65AssignVariableOp2assignvariableop_65_adam_v_duration_outputs_kernelIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:…
AssignVariableOp_66AssignVariableOp0assignvariableop_66_adam_m_duration_outputs_biasIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:…
AssignVariableOp_67AssignVariableOp0assignvariableop_67_adam_v_duration_outputs_biasIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_68AssignVariableOpassignvariableop_68_total_2Identity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_69AssignVariableOpassignvariableop_69_count_2Identity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_70AssignVariableOpassignvariableop_70_total_1Identity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_71AssignVariableOpassignvariableop_71_count_1Identity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_72AssignVariableOpassignvariableop_72_totalIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_73AssignVariableOpassignvariableop_73_countIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Ђ
Identity_74Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_75IdentityIdentity_74:output:0^NoOp_1*
T0*
_output_shapes
: Ш
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_75Identity_75:output:0*Ђ
_input_shapesЩ
Ц: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
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
AssignVariableOp_4AssignVariableOp_42*
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
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
«,
џ	
D__inference_model_2_layer_call_and_return_conditional_losses_2666050
input_3
input_49
&token_and_position_embedding_5_2665830:	;А9
&token_and_position_embedding_6_2665833:	А)
attention_2666004:АА$
attention_2666006:	А)
attention_2666008:АА$
attention_2666010:	А)
attention_2666012:АА$
attention_2666014:	А)
attention_2666016:АА 
attention_2666018:	А 
attention_2666020:	А 
attention_2666022:	А%
attention_2666024:
АА 
attention_2666026:	А%
attention_2666028:
АА 
attention_2666030:	А 
attention_2666032:	А 
attention_2666034:	А+
duration_outputs_2666038:	А&
duration_outputs_2666040:'
note_outputs_2666043:	А;"
note_outputs_2666045:;
identity

identity_1ИҐ!attention/StatefulPartitionedCallҐ(duration_outputs/StatefulPartitionedCallҐ$note_outputs/StatefulPartitionedCallҐ6token_and_position_embedding_5/StatefulPartitionedCallҐ6token_and_position_embedding_6/StatefulPartitionedCall∞
6token_and_position_embedding_5/StatefulPartitionedCallStatefulPartitionedCallinput_3&token_and_position_embedding_5_2665830*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *d
f_R]
[__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_2665463∞
6token_and_position_embedding_6/StatefulPartitionedCallStatefulPartitionedCallinput_4&token_and_position_embedding_6_2665833*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *d
f_R]
[__inference_token_and_position_embedding_6_layer_call_and_return_conditional_losses_2665521ћ
concatenate_1/PartitionedCallPartitionedCall?token_and_position_embedding_5/StatefulPartitionedCall:output:0?token_and_position_embedding_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_2665532щ
!attention/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0attention_2666004attention_2666006attention_2666008attention_2666010attention_2666012attention_2666014attention_2666016attention_2666018attention_2666020attention_2666022attention_2666024attention_2666026attention_2666028attention_2666030attention_2666032attention_2666034*
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:€€€€€€€€€€€€€€€€€€А:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_attention_layer_call_and_return_conditional_losses_2666003ƒ
(duration_outputs/StatefulPartitionedCallStatefulPartitionedCall*attention/StatefulPartitionedCall:output:0duration_outputs_2666038duration_outputs_2666040*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_duration_outputs_layer_call_and_return_conditional_losses_2665781і
$note_outputs/StatefulPartitionedCallStatefulPartitionedCall*attention/StatefulPartitionedCall:output:0note_outputs_2666043note_outputs_2666045*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_note_outputs_layer_call_and_return_conditional_losses_2665818Й
IdentityIdentity-note_outputs/StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;П

Identity_1Identity1duration_outputs/StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ѓ
NoOpNoOp"^attention/StatefulPartitionedCall)^duration_outputs/StatefulPartitionedCall%^note_outputs/StatefulPartitionedCall7^token_and_position_embedding_5/StatefulPartitionedCall7^token_and_position_embedding_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 2F
!attention/StatefulPartitionedCall!attention/StatefulPartitionedCall2T
(duration_outputs/StatefulPartitionedCall(duration_outputs/StatefulPartitionedCall2L
$note_outputs/StatefulPartitionedCall$note_outputs/StatefulPartitionedCall2p
6token_and_position_embedding_5/StatefulPartitionedCall6token_and_position_embedding_5/StatefulPartitionedCall2p
6token_and_position_embedding_6/StatefulPartitionedCall6token_and_position_embedding_6/StatefulPartitionedCall:YU
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_4:Y U
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_3
≈,
џ	
D__inference_model_2_layer_call_and_return_conditional_losses_2666220

inputs
inputs_19
&token_and_position_embedding_5_2666167:	;А9
&token_and_position_embedding_6_2666170:	А)
attention_2666174:АА$
attention_2666176:	А)
attention_2666178:АА$
attention_2666180:	А)
attention_2666182:АА$
attention_2666184:	А)
attention_2666186:АА 
attention_2666188:	А 
attention_2666190:	А 
attention_2666192:	А%
attention_2666194:
АА 
attention_2666196:	А%
attention_2666198:
АА 
attention_2666200:	А 
attention_2666202:	А 
attention_2666204:	А+
duration_outputs_2666208:	А&
duration_outputs_2666210:'
note_outputs_2666213:	А;"
note_outputs_2666215:;
identity

identity_1ИҐ!attention/StatefulPartitionedCallҐ(duration_outputs/StatefulPartitionedCallҐ$note_outputs/StatefulPartitionedCallҐ6token_and_position_embedding_5/StatefulPartitionedCallҐ6token_and_position_embedding_6/StatefulPartitionedCallѓ
6token_and_position_embedding_5/StatefulPartitionedCallStatefulPartitionedCallinputs&token_and_position_embedding_5_2666167*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *d
f_R]
[__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_2665463±
6token_and_position_embedding_6/StatefulPartitionedCallStatefulPartitionedCallinputs_1&token_and_position_embedding_6_2666170*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *d
f_R]
[__inference_token_and_position_embedding_6_layer_call_and_return_conditional_losses_2665521ћ
concatenate_1/PartitionedCallPartitionedCall?token_and_position_embedding_5/StatefulPartitionedCall:output:0?token_and_position_embedding_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_2665532щ
!attention/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0attention_2666174attention_2666176attention_2666178attention_2666180attention_2666182attention_2666184attention_2666186attention_2666188attention_2666190attention_2666192attention_2666194attention_2666196attention_2666198attention_2666200attention_2666202attention_2666204*
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:€€€€€€€€€€€€€€€€€€А:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_attention_layer_call_and_return_conditional_losses_2666003ƒ
(duration_outputs/StatefulPartitionedCallStatefulPartitionedCall*attention/StatefulPartitionedCall:output:0duration_outputs_2666208duration_outputs_2666210*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_duration_outputs_layer_call_and_return_conditional_losses_2665781і
$note_outputs/StatefulPartitionedCallStatefulPartitionedCall*attention/StatefulPartitionedCall:output:0note_outputs_2666213note_outputs_2666215*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_note_outputs_layer_call_and_return_conditional_losses_2665818Й
IdentityIdentity-note_outputs/StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;П

Identity_1Identity1duration_outputs/StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ѓ
NoOpNoOp"^attention/StatefulPartitionedCall)^duration_outputs/StatefulPartitionedCall%^note_outputs/StatefulPartitionedCall7^token_and_position_embedding_5/StatefulPartitionedCall7^token_and_position_embedding_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 2F
!attention/StatefulPartitionedCall!attention/StatefulPartitionedCall2T
(duration_outputs/StatefulPartitionedCall(duration_outputs/StatefulPartitionedCall2L
$note_outputs/StatefulPartitionedCall$note_outputs/StatefulPartitionedCall2p
6token_and_position_embedding_5/StatefulPartitionedCall6token_and_position_embedding_5/StatefulPartitionedCall2p
6token_and_position_embedding_6/StatefulPartitionedCall6token_and_position_embedding_6/StatefulPartitionedCall:XT
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Б
Б
I__inference_note_outputs_layer_call_and_return_conditional_losses_2667918

inputs4
!tensordot_readvariableop_resource:	А;-
biasadd_readvariableop_resource:;
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	А;*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Г
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АК
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€;[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:;Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:;*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;c
SoftmaxSoftmaxBiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;m
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Л
†
2__inference_duration_outputs_layer_call_fn_2667927

inputs
unknown:	А
	unknown_0:
identityИҐStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_duration_outputs_layer_call_and_return_conditional_losses_2665781|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
љ
Й
%__inference_signature_wrapper_2666551
input_3
input_4
unknown:	;А
	unknown_0:	А!
	unknown_1:АА
	unknown_2:	А!
	unknown_3:АА
	unknown_4:	А!
	unknown_5:АА
	unknown_6:	А!
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:
АА

unknown_12:	А

unknown_13:
АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:	А

unknown_18:

unknown_19:	А;

unknown_20:;
identity

identity_1ИҐStatefulPartitionedCall€
StatefulPartitionedCallStatefulPartitionedCallinput_3input_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*#
Tin
2*
Tout
2*
_collective_manager_ids
 *T
_output_shapesB
@:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€;*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__wrapped_model_2665404|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€~

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:YU
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_4:Y U
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_3
Е
Е
M__inference_duration_outputs_layer_call_and_return_conditional_losses_2667958

inputs4
!tensordot_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	А*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Г
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АК
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€c
SoftmaxSoftmaxBiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€m
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Б
Б
I__inference_note_outputs_layer_call_and_return_conditional_losses_2665818

inputs4
!tensordot_readvariableop_resource:	А;-
biasadd_readvariableop_resource:;
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	А;*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Г
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АК
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€;[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:;Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:;*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;c
SoftmaxSoftmaxBiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;m
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€;z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
ы>
Ќ
[__inference_token_and_position_embedding_6_layer_call_and_return_conditional_losses_2665521
x7
$embedding_6_embedding_lookup_2665470:	А
identityИҐembedding_6/embedding_lookupд
embedding_6/embedding_lookupResourceGather$embedding_6_embedding_lookup_2665470x*
Tindices0*7
_class-
+)loc:@embedding_6/embedding_lookup/2665470*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0—
%embedding_6/embedding_lookup/IdentityIdentity%embedding_6/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_6/embedding_lookup/2665470*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А£
'embedding_6/embedding_lookup/Identity_1Identity.embedding_6/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АМ
sine_position_encoding_6/ShapeShape0embedding_6/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
::нѕ
,sine_position_encoding_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€Б
.sine_position_encoding_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€x
.sine_position_encoding_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
&sine_position_encoding_6/strided_sliceStridedSlice'sine_position_encoding_6/Shape:output:05sine_position_encoding_6/strided_slice/stack:output:07sine_position_encoding_6/strided_slice/stack_1:output:07sine_position_encoding_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskБ
.sine_position_encoding_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€z
0sine_position_encoding_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: z
0sine_position_encoding_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:÷
(sine_position_encoding_6/strided_slice_1StridedSlice'sine_position_encoding_6/Shape:output:07sine_position_encoding_6/strided_slice_1/stack:output:09sine_position_encoding_6/strided_slice_1/stack_1:output:09sine_position_encoding_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sine_position_encoding_6/range/startConst*
_output_shapes
: *
dtype0*
value	B : f
$sine_position_encoding_6/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :џ
sine_position_encoding_6/rangeRange-sine_position_encoding_6/range/start:output:0/sine_position_encoding_6/strided_slice:output:0-sine_position_encoding_6/range/delta:output:0*#
_output_shapes
:€€€€€€€€€Л
sine_position_encoding_6/CastCast'sine_position_encoding_6/range:output:0*

DstT0*

SrcT0*#
_output_shapes
:€€€€€€€€€f
!sine_position_encoding_6/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8h
&sine_position_encoding_6/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : h
&sine_position_encoding_6/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :џ
 sine_position_encoding_6/range_1Range/sine_position_encoding_6/range_1/start:output:01sine_position_encoding_6/strided_slice_1:output:0/sine_position_encoding_6/range_1/delta:output:0*
_output_shapes	
:Аe
#sine_position_encoding_6/floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :ђ
!sine_position_encoding_6/floordivFloorDiv)sine_position_encoding_6/range_1:output:0,sine_position_encoding_6/floordiv/y:output:0*
T0*
_output_shapes	
:А`
sine_position_encoding_6/mul/xConst*
_output_shapes
: *
dtype0*
value	B :Щ
sine_position_encoding_6/mulMul'sine_position_encoding_6/mul/x:output:0%sine_position_encoding_6/floordiv:z:0*
T0*
_output_shapes	
:А~
sine_position_encoding_6/Cast_2Cast sine_position_encoding_6/mul:z:0*

DstT0*

SrcT0*
_output_shapes	
:АК
sine_position_encoding_6/Cast_3Cast1sine_position_encoding_6/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: Ы
 sine_position_encoding_6/truedivRealDiv#sine_position_encoding_6/Cast_2:y:0#sine_position_encoding_6/Cast_3:y:0*
T0*
_output_shapes	
:АЫ
sine_position_encoding_6/PowPow*sine_position_encoding_6/Cast_1/x:output:0$sine_position_encoding_6/truediv:z:0*
T0*
_output_shapes	
:Аi
'sine_position_encoding_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Є
#sine_position_encoding_6/ExpandDims
ExpandDims!sine_position_encoding_6/Cast:y:00sine_position_encoding_6/ExpandDims/dim:output:0*
T0*'
_output_shapes
:€€€€€€€€€k
)sine_position_encoding_6/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ≥
%sine_position_encoding_6/ExpandDims_1
ExpandDims sine_position_encoding_6/Pow:z:02sine_position_encoding_6/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	Аґ
sine_position_encoding_6/mul_1Mul,sine_position_encoding_6/ExpandDims:output:0.sine_position_encoding_6/ExpandDims_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аh
&sine_position_encoding_6/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : h
&sine_position_encoding_6/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :џ
 sine_position_encoding_6/range_2Range/sine_position_encoding_6/range_2/start:output:01sine_position_encoding_6/strided_slice_1:output:0/sine_position_encoding_6/range_2/delta:output:0*
_output_shapes	
:А`
sine_position_encoding_6/mod/yConst*
_output_shapes
: *
dtype0*
value	B :Ґ
sine_position_encoding_6/modFloorMod)sine_position_encoding_6/range_2:output:0'sine_position_encoding_6/mod/y:output:0*
T0*
_output_shapes	
:А~
sine_position_encoding_6/Cast_4Cast sine_position_encoding_6/mod:z:0*

DstT0*

SrcT0*
_output_shapes	
:Аc
sine_position_encoding_6/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ч
sine_position_encoding_6/subSub'sine_position_encoding_6/sub/x:output:0#sine_position_encoding_6/Cast_4:y:0*
T0*
_output_shapes	
:Аz
sine_position_encoding_6/SinSin"sine_position_encoding_6/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
sine_position_encoding_6/mul_2Mul sine_position_encoding_6/Sin:y:0 sine_position_encoding_6/sub:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аz
sine_position_encoding_6/CosCos"sine_position_encoding_6/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЯ
sine_position_encoding_6/mul_3Mul sine_position_encoding_6/Cos:y:0#sine_position_encoding_6/Cast_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А†
sine_position_encoding_6/addAddV2"sine_position_encoding_6/mul_2:z:0"sine_position_encoding_6/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€АЊ
$sine_position_encoding_6/BroadcastToBroadcastTo sine_position_encoding_6/add:z:0'sine_position_encoding_6/Shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А≠
addAddV20embedding_6/embedding_lookup/Identity_1:output:0-sine_position_encoding_6/BroadcastTo:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аd
IdentityIdentityadd:z:0^NoOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аe
NoOpNoOp^embedding_6/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€€€€€€€€€€: 2<
embedding_6/embedding_lookupembedding_6/embedding_lookup:S O
0
_output_shapes
:€€€€€€€€€€€€€€€€€€

_user_specified_namex"у
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ё
serving_default 
D
input_39
serving_default_input_3:0€€€€€€€€€€€€€€€€€€
D
input_49
serving_default_input_4:0€€€€€€€€€€€€€€€€€€Q
duration_outputs=
StatefulPartitionedCall:0€€€€€€€€€€€€€€€€€€M
note_outputs=
StatefulPartitionedCall:1€€€€€€€€€€€€€€€€€€;tensorflow/serving/predict:∆В
„
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
Ѕ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	token_emb
pos_emb"
_tf_keras_layer
Ѕ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!	token_emb
"pos_emb"
_tf_keras_layer
•
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
ч
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses
/attn
0	dropout_1
1ln_1
	2ffn_1
	3ffn_2
4	dropout_2
5ln_2"
_tf_keras_layer
ї
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias"
_tf_keras_layer
ї
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias"
_tf_keras_layer
∆
F0
G1
H2
I3
J4
K5
L6
M7
N8
O9
P10
Q11
R12
S13
T14
U15
V16
W17
<18
=19
D20
E21"
trackable_list_wrapper
∆
F0
G1
H2
I3
J4
K5
L6
M7
N8
O9
P10
Q11
R12
S13
T14
U15
V16
W17
<18
=19
D20
E21"
trackable_list_wrapper
 "
trackable_list_wrapper
 
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ѕ
]trace_0
^trace_1
_trace_2
`trace_32д
)__inference_model_2_layer_call_fn_2666160
)__inference_model_2_layer_call_fn_2666269
)__inference_model_2_layer_call_fn_2666603
)__inference_model_2_layer_call_fn_2666655µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z]trace_0z^trace_1z_trace_2z`trace_3
ї
atrace_0
btrace_1
ctrace_2
dtrace_32–
D__inference_model_2_layer_call_and_return_conditional_losses_2665826
D__inference_model_2_layer_call_and_return_conditional_losses_2666050
D__inference_model_2_layer_call_and_return_conditional_losses_2666993
D__inference_model_2_layer_call_and_return_conditional_losses_2667317µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zatrace_0zbtrace_1zctrace_2zdtrace_3
÷B”
"__inference__wrapped_model_2665404input_3input_4"Ш
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
Ь
e
_variables
f_iterations
g_learning_rate
h_index_dict
i
_momentums
j_velocities
k_update_step_xla"
experimentalOptimizer
 "
trackable_list_wrapper
,
lserving_default"
signature_map
'
F0"
trackable_list_wrapper
'
F0"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
х
rtrace_02Ў
@__inference_token_and_position_embedding_5_layer_call_fn_2667324У
М≤И
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zrtrace_0
Р
strace_02у
[__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_2667378У
М≤И
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zstrace_0
µ
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses
F
embeddings"
_tf_keras_layer
•
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
'
G0"
trackable_list_wrapper
'
G0"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
ч
Еtrace_02Ў
@__inference_token_and_position_embedding_6_layer_call_fn_2667385У
М≤И
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЕtrace_0
Т
Жtrace_02у
[__inference_token_and_position_embedding_6_layer_call_and_return_conditional_losses_2667439У
М≤И
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЖtrace_0
ї
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses
G
embeddings"
_tf_keras_layer
Ђ
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
л
Шtrace_02ћ
/__inference_concatenate_1_layer_call_fn_2667445Ш
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 zШtrace_0
Ж
Щtrace_02з
J__inference_concatenate_1_layer_call_and_return_conditional_losses_2667452Ш
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 zЩtrace_0
Ц
H0
I1
J2
K3
L4
M5
N6
O7
P8
Q9
R10
S11
T12
U13
V14
W15"
trackable_list_wrapper
Ц
H0
I1
J2
K3
L4
M5
N6
O7
P8
Q9
R10
S11
T12
U13
V14
W15"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
Ќ
Яtrace_0
†trace_12Т
+__inference_attention_layer_call_fn_2667491
+__inference_attention_layer_call_fn_2667530µ
Ѓ≤™
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 zЯtrace_0z†trace_1
Г
°trace_0
Ґtrace_12»
F__inference_attention_layer_call_and_return_conditional_losses_2667711
F__inference_attention_layer_call_and_return_conditional_losses_2667878µ
Ѓ≤™
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 z°trace_0zҐtrace_1
Ъ
£	variables
§trainable_variables
•regularization_losses
¶	keras_api
І__call__
+®&call_and_return_all_conditional_losses
©_query_dense
™
_key_dense
Ђ_value_dense
ђ_softmax
≠_dropout_layer
Ѓ_output_dense"
_tf_keras_layer
√
ѓ	variables
∞trainable_variables
±regularization_losses
≤	keras_api
≥__call__
+і&call_and_return_all_conditional_losses
µ_random_generator"
_tf_keras_layer
Ћ
ґ	variables
Јtrainable_variables
Єregularization_losses
є	keras_api
Ї__call__
+ї&call_and_return_all_conditional_losses
	Љaxis
	Pgamma
Qbeta"
_tf_keras_layer
Ѕ
љ	variables
Њtrainable_variables
њregularization_losses
ј	keras_api
Ѕ__call__
+¬&call_and_return_all_conditional_losses

Rkernel
Sbias"
_tf_keras_layer
Ѕ
√	variables
ƒtrainable_variables
≈regularization_losses
∆	keras_api
«__call__
+»&call_and_return_all_conditional_losses

Tkernel
Ubias"
_tf_keras_layer
√
…	variables
 trainable_variables
Ћregularization_losses
ћ	keras_api
Ќ__call__
+ќ&call_and_return_all_conditional_losses
ѕ_random_generator"
_tf_keras_layer
Ћ
–	variables
—trainable_variables
“regularization_losses
”	keras_api
‘__call__
+’&call_and_return_all_conditional_losses
	÷axis
	Vgamma
Wbeta"
_tf_keras_layer
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
≤
„non_trainable_variables
Ўlayers
ўmetrics
 Џlayer_regularization_losses
џlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
к
№trace_02Ћ
.__inference_note_outputs_layer_call_fn_2667887Ш
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 z№trace_0
Е
Ёtrace_02ж
I__inference_note_outputs_layer_call_and_return_conditional_losses_2667918Ш
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 zЁtrace_0
&:$	А;2note_outputs/kernel
:;2note_outputs/bias
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ёnon_trainable_variables
яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
о
гtrace_02ѕ
2__inference_duration_outputs_layer_call_fn_2667927Ш
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 zгtrace_0
Й
дtrace_02к
M__inference_duration_outputs_layer_call_and_return_conditional_losses_2667958Ш
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 zдtrace_0
*:(	А2duration_outputs/kernel
#:!2duration_outputs/bias
H:F	;А25token_and_position_embedding_5/embedding_5/embeddings
H:F	А25token_and_position_embedding_6/embedding_6/embeddings
E:CАА2-attention/multi_head_attention_1/query/kernel
>:<	А2+attention/multi_head_attention_1/query/bias
C:AАА2+attention/multi_head_attention_1/key/kernel
<::	А2)attention/multi_head_attention_1/key/bias
E:CАА2-attention/multi_head_attention_1/value/kernel
>:<	А2+attention/multi_head_attention_1/value/bias
P:NАА28attention/multi_head_attention_1/attention_output/kernel
E:CА26attention/multi_head_attention_1/attention_output/bias
4:2А2%attention/layer_normalization_2/gamma
3:1А2$attention/layer_normalization_2/beta
,:*
АА2attention/dense_2/kernel
%:#А2attention/dense_2/bias
,:*
АА2attention/dense_3/kernel
%:#А2attention/dense_3/bias
4:2А2%attention/layer_normalization_3/gamma
3:1А2$attention/layer_normalization_3/beta
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
8
е0
ж1
з2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ъBч
)__inference_model_2_layer_call_fn_2666160input_3input_4"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
)__inference_model_2_layer_call_fn_2666269input_3input_4"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
)__inference_model_2_layer_call_fn_2666603inputs_0inputs_1"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
)__inference_model_2_layer_call_fn_2666655inputs_0inputs_1"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
D__inference_model_2_layer_call_and_return_conditional_losses_2665826input_3input_4"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
D__inference_model_2_layer_call_and_return_conditional_losses_2666050input_3input_4"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
D__inference_model_2_layer_call_and_return_conditional_losses_2666993inputs_0inputs_1"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
D__inference_model_2_layer_call_and_return_conditional_losses_2667317inputs_0inputs_1"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
™
f0
и1
й2
к3
л4
м5
н6
о7
п8
р9
с10
т11
у12
ф13
х14
ц15
ч16
ш17
щ18
ъ19
ы20
ь21
э22
ю23
€24
А25
Б26
В27
Г28
Д29
Е30
Ж31
З32
И33
Й34
К35
Л36
М37
Н38
О39
П40
Р41
С42
Т43
У44"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
№
и0
к1
м2
о3
р4
т5
ф6
ц7
ш8
ъ9
ь10
ю11
А12
В13
Д14
Ж15
И16
К17
М18
О19
Р20
Т21"
trackable_list_wrapper
№
й0
л1
н2
п3
с4
у5
х6
ч7
щ8
ы9
э10
€11
Б12
Г13
Е14
З15
Й16
Л17
Н18
П19
С20
У21"
trackable_list_wrapper
µ2≤ѓ
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
”B–
%__inference_signature_wrapper_2666551input_3input_4"Ф
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
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
аBЁ
@__inference_token_and_position_embedding_5_layer_call_fn_2667324x"У
М≤И
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
[__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_2667378x"У
М≤И
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
'
F0"
trackable_list_wrapper
'
F0"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
аBЁ
@__inference_token_and_position_embedding_6_layer_call_fn_2667385x"У
М≤И
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
[__inference_token_and_position_embedding_6_layer_call_and_return_conditional_losses_2667439x"У
М≤И
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
'
G0"
trackable_list_wrapper
'
G0"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Юnon_trainable_variables
Яlayers
†metrics
 °layer_regularization_losses
Ґlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
£non_trainable_variables
§layers
•metrics
 ¶layer_regularization_losses
Іlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
еBв
/__inference_concatenate_1_layer_call_fn_2667445inputs_0inputs_1"Ш
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
АBэ
J__inference_concatenate_1_layer_call_and_return_conditional_losses_2667452inputs_0inputs_1"Ш
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
 "
trackable_list_wrapper
Q
/0
01
12
23
34
45
56"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тBп
+__inference_attention_layer_call_fn_2667491inputs"µ
Ѓ≤™
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
тBп
+__inference_attention_layer_call_fn_2667530inputs"µ
Ѓ≤™
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
НBК
F__inference_attention_layer_call_and_return_conditional_losses_2667711inputs"µ
Ѓ≤™
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
НBК
F__inference_attention_layer_call_and_return_conditional_losses_2667878inputs"µ
Ѓ≤™
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 
X
H0
I1
J2
K3
L4
M5
N6
O7"
trackable_list_wrapper
X
H0
I1
J2
K3
L4
M5
N6
O7"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
®non_trainable_variables
©layers
™metrics
 Ђlayer_regularization_losses
ђlayer_metrics
£	variables
§trainable_variables
•regularization_losses
І__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
О2ЛИ
Б≤э
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsҐ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
О2ЛИ
Б≤э
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsҐ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ф
≠	variables
Ѓtrainable_variables
ѓregularization_losses
∞	keras_api
±__call__
+≤&call_and_return_all_conditional_losses
≥partial_output_shape
іfull_output_shape

Hkernel
Ibias"
_tf_keras_layer
ф
µ	variables
ґtrainable_variables
Јregularization_losses
Є	keras_api
є__call__
+Ї&call_and_return_all_conditional_losses
їpartial_output_shape
Љfull_output_shape

Jkernel
Kbias"
_tf_keras_layer
ф
љ	variables
Њtrainable_variables
њregularization_losses
ј	keras_api
Ѕ__call__
+¬&call_and_return_all_conditional_losses
√partial_output_shape
ƒfull_output_shape

Lkernel
Mbias"
_tf_keras_layer
Ђ
≈	variables
∆trainable_variables
«regularization_losses
»	keras_api
…__call__
+ &call_and_return_all_conditional_losses"
_tf_keras_layer
√
Ћ	variables
ћtrainable_variables
Ќregularization_losses
ќ	keras_api
ѕ__call__
+–&call_and_return_all_conditional_losses
—_random_generator"
_tf_keras_layer
ф
“	variables
”trainable_variables
‘regularization_losses
’	keras_api
÷__call__
+„&call_and_return_all_conditional_losses
Ўpartial_output_shape
ўfull_output_shape

Nkernel
Obias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Џnon_trainable_variables
џlayers
№metrics
 Ёlayer_regularization_losses
ёlayer_metrics
ѓ	variables
∞trainable_variables
±regularization_losses
≥__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
ѓ2ђ©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ѓ2ђ©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
"
_generic_user_object
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
ґ	variables
Јtrainable_variables
Єregularization_losses
Ї__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
 "
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
љ	variables
Њtrainable_variables
њregularization_losses
Ѕ__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
√	variables
ƒtrainable_variables
≈regularization_losses
«__call__
+»&call_and_return_all_conditional_losses
'»"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
…	variables
 trainable_variables
Ћregularization_losses
Ќ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses"
_generic_user_object
ѓ2ђ©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ѓ2ђ©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
"
_generic_user_object
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
–	variables
—trainable_variables
“regularization_losses
‘__call__
+’&call_and_return_all_conditional_losses
'’"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
trackable_list_wrapper
 "
trackable_dict_wrapper
ЎB’
.__inference_note_outputs_layer_call_fn_2667887inputs"Ш
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
уBр
I__inference_note_outputs_layer_call_and_return_conditional_losses_2667918inputs"Ш
С≤Н
FullArgSpec
argsЪ

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
№Bў
2__inference_duration_outputs_layer_call_fn_2667927inputs"Ш
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
чBф
M__inference_duration_outputs_layer_call_and_return_conditional_losses_2667958inputs"Ш
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
R
ш	variables
щ	keras_api

ъtotal

ыcount"
_tf_keras_metric
R
ь	variables
э	keras_api

юtotal

€count"
_tf_keras_metric
R
А	variables
Б	keras_api

Вtotal

Гcount"
_tf_keras_metric
M:K	;А2<Adam/m/token_and_position_embedding_5/embedding_5/embeddings
M:K	;А2<Adam/v/token_and_position_embedding_5/embedding_5/embeddings
M:K	А2<Adam/m/token_and_position_embedding_6/embedding_6/embeddings
M:K	А2<Adam/v/token_and_position_embedding_6/embedding_6/embeddings
J:HАА24Adam/m/attention/multi_head_attention_1/query/kernel
J:HАА24Adam/v/attention/multi_head_attention_1/query/kernel
C:A	А22Adam/m/attention/multi_head_attention_1/query/bias
C:A	А22Adam/v/attention/multi_head_attention_1/query/bias
H:FАА22Adam/m/attention/multi_head_attention_1/key/kernel
H:FАА22Adam/v/attention/multi_head_attention_1/key/kernel
A:?	А20Adam/m/attention/multi_head_attention_1/key/bias
A:?	А20Adam/v/attention/multi_head_attention_1/key/bias
J:HАА24Adam/m/attention/multi_head_attention_1/value/kernel
J:HАА24Adam/v/attention/multi_head_attention_1/value/kernel
C:A	А22Adam/m/attention/multi_head_attention_1/value/bias
C:A	А22Adam/v/attention/multi_head_attention_1/value/bias
U:SАА2?Adam/m/attention/multi_head_attention_1/attention_output/kernel
U:SАА2?Adam/v/attention/multi_head_attention_1/attention_output/kernel
J:HА2=Adam/m/attention/multi_head_attention_1/attention_output/bias
J:HА2=Adam/v/attention/multi_head_attention_1/attention_output/bias
9:7А2,Adam/m/attention/layer_normalization_2/gamma
9:7А2,Adam/v/attention/layer_normalization_2/gamma
8:6А2+Adam/m/attention/layer_normalization_2/beta
8:6А2+Adam/v/attention/layer_normalization_2/beta
1:/
АА2Adam/m/attention/dense_2/kernel
1:/
АА2Adam/v/attention/dense_2/kernel
*:(А2Adam/m/attention/dense_2/bias
*:(А2Adam/v/attention/dense_2/bias
1:/
АА2Adam/m/attention/dense_3/kernel
1:/
АА2Adam/v/attention/dense_3/kernel
*:(А2Adam/m/attention/dense_3/bias
*:(А2Adam/v/attention/dense_3/bias
9:7А2,Adam/m/attention/layer_normalization_3/gamma
9:7А2,Adam/v/attention/layer_normalization_3/gamma
8:6А2+Adam/m/attention/layer_normalization_3/beta
8:6А2+Adam/v/attention/layer_normalization_3/beta
+:)	А;2Adam/m/note_outputs/kernel
+:)	А;2Adam/v/note_outputs/kernel
$:";2Adam/m/note_outputs/bias
$:";2Adam/v/note_outputs/bias
/:-	А2Adam/m/duration_outputs/kernel
/:-	А2Adam/v/duration_outputs/kernel
(:&2Adam/m/duration_outputs/bias
(:&2Adam/v/duration_outputs/bias
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
P
©0
™1
Ђ2
ђ3
≠4
Ѓ5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
Є
Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
≠	variables
Ѓtrainable_variables
ѓregularization_losses
±__call__
+≤&call_and_return_all_conditional_losses
'≤"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
µ	variables
ґtrainable_variables
Јregularization_losses
є__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
љ	variables
Њtrainable_variables
њregularization_losses
Ѕ__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
trackable_list_wrapper
Є
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
≈	variables
∆trainable_variables
«regularization_losses
…__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
Ђ2®•
Ю≤Ъ
FullArgSpec
argsЪ
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ђ2®•
Ю≤Ъ
FullArgSpec
argsЪ
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

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
Є
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
Ћ	variables
ћtrainable_variables
Ќregularization_losses
ѕ__call__
+–&call_and_return_all_conditional_losses
'–"call_and_return_conditional_losses"
_generic_user_object
ѓ2ђ©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ѓ2ђ©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
"
_generic_user_object
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Эnon_trainable_variables
Юlayers
Яmetrics
 †layer_regularization_losses
°layer_metrics
“	variables
”trainable_variables
‘regularization_losses
÷__call__
+„&call_and_return_all_conditional_losses
'„"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

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
0
ъ0
ы1"
trackable_list_wrapper
.
ш	variables"
_generic_user_object
:  (2total
:  (2count
0
ю0
€1"
trackable_list_wrapper
.
ь	variables"
_generic_user_object
:  (2total
:  (2count
0
В0
Г1"
trackable_list_wrapper
.
А	variables"
_generic_user_object
:  (2total
:  (2count
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
trackable_dict_wrapperƒ
"__inference__wrapped_model_2665404ЭFGHIJKLMNOPQRSTUVWDE<=jҐg
`Ґ]
[ЪX
*К'
input_3€€€€€€€€€€€€€€€€€€
*К'
input_4€€€€€€€€€€€€€€€€€€
™ "Ц™Т
K
duration_outputs7К4
duration_outputs€€€€€€€€€€€€€€€€€€
C
note_outputs3К0
note_outputs€€€€€€€€€€€€€€€€€€;∞
F__inference_attention_layer_call_and_return_conditional_losses_2667711еHIJKLMNOPQRSTUVWMҐJ
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€А
™

trainingp"БҐ~
wҐt
2К/

tensor_0_0€€€€€€€€€€€€€€€€€€А
>К;

tensor_0_1+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∞
F__inference_attention_layer_call_and_return_conditional_losses_2667878еHIJKLMNOPQRSTUVWMҐJ
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€А
™

trainingp "БҐ~
wҐt
2К/

tensor_0_0€€€€€€€€€€€€€€€€€€А
>К;

tensor_0_1+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ж
+__inference_attention_layer_call_fn_2667491÷HIJKLMNOPQRSTUVWMҐJ
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€А
™

trainingp"sҐp
0К-
tensor_0€€€€€€€€€€€€€€€€€€А
<К9
tensor_1+€€€€€€€€€€€€€€€€€€€€€€€€€€€Ж
+__inference_attention_layer_call_fn_2667530÷HIJKLMNOPQRSTUVWMҐJ
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€А
™

trainingp "sҐp
0К-
tensor_0€€€€€€€€€€€€€€€€€€А
<К9
tensor_1+€€€€€€€€€€€€€€€€€€€€€€€€€€€Г
J__inference_concatenate_1_layer_call_and_return_conditional_losses_2667452іvҐs
lҐi
gЪd
0К-
inputs_0€€€€€€€€€€€€€€€€€€А
0К-
inputs_1€€€€€€€€€€€€€€€€€€А
™ ":Ґ7
0К-
tensor_0€€€€€€€€€€€€€€€€€€А
Ъ Ё
/__inference_concatenate_1_layer_call_fn_2667445©vҐs
lҐi
gЪd
0К-
inputs_0€€€€€€€€€€€€€€€€€€А
0К-
inputs_1€€€€€€€€€€€€€€€€€€А
™ "/К,
unknown€€€€€€€€€€€€€€€€€€Аѕ
M__inference_duration_outputs_layer_call_and_return_conditional_losses_2667958~DE=Ґ:
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€А
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ ©
2__inference_duration_outputs_layer_call_fn_2667927sDE=Ґ:
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€А
™ ".К+
unknown€€€€€€€€€€€€€€€€€€ 
D__inference_model_2_layer_call_and_return_conditional_losses_2665826БFGHIJKLMNOPQRSTUVWDE<=rҐo
hҐe
[ЪX
*К'
input_3€€€€€€€€€€€€€€€€€€
*К'
input_4€€€€€€€€€€€€€€€€€€
p

 
™ "sҐp
iЪf
1К.

tensor_0_0€€€€€€€€€€€€€€€€€€;
1К.

tensor_0_1€€€€€€€€€€€€€€€€€€
Ъ  
D__inference_model_2_layer_call_and_return_conditional_losses_2666050БFGHIJKLMNOPQRSTUVWDE<=rҐo
hҐe
[ЪX
*К'
input_3€€€€€€€€€€€€€€€€€€
*К'
input_4€€€€€€€€€€€€€€€€€€
p 

 
™ "sҐp
iЪf
1К.

tensor_0_0€€€€€€€€€€€€€€€€€€;
1К.

tensor_0_1€€€€€€€€€€€€€€€€€€
Ъ ћ
D__inference_model_2_layer_call_and_return_conditional_losses_2666993ГFGHIJKLMNOPQRSTUVWDE<=tҐq
jҐg
]ЪZ
+К(
inputs_0€€€€€€€€€€€€€€€€€€
+К(
inputs_1€€€€€€€€€€€€€€€€€€
p

 
™ "sҐp
iЪf
1К.

tensor_0_0€€€€€€€€€€€€€€€€€€;
1К.

tensor_0_1€€€€€€€€€€€€€€€€€€
Ъ ћ
D__inference_model_2_layer_call_and_return_conditional_losses_2667317ГFGHIJKLMNOPQRSTUVWDE<=tҐq
jҐg
]ЪZ
+К(
inputs_0€€€€€€€€€€€€€€€€€€
+К(
inputs_1€€€€€€€€€€€€€€€€€€
p 

 
™ "sҐp
iЪf
1К.

tensor_0_0€€€€€€€€€€€€€€€€€€;
1К.

tensor_0_1€€€€€€€€€€€€€€€€€€
Ъ °
)__inference_model_2_layer_call_fn_2666160уFGHIJKLMNOPQRSTUVWDE<=rҐo
hҐe
[ЪX
*К'
input_3€€€€€€€€€€€€€€€€€€
*К'
input_4€€€€€€€€€€€€€€€€€€
p

 
™ "eЪb
/К,
tensor_0€€€€€€€€€€€€€€€€€€;
/К,
tensor_1€€€€€€€€€€€€€€€€€€°
)__inference_model_2_layer_call_fn_2666269уFGHIJKLMNOPQRSTUVWDE<=rҐo
hҐe
[ЪX
*К'
input_3€€€€€€€€€€€€€€€€€€
*К'
input_4€€€€€€€€€€€€€€€€€€
p 

 
™ "eЪb
/К,
tensor_0€€€€€€€€€€€€€€€€€€;
/К,
tensor_1€€€€€€€€€€€€€€€€€€£
)__inference_model_2_layer_call_fn_2666603хFGHIJKLMNOPQRSTUVWDE<=tҐq
jҐg
]ЪZ
+К(
inputs_0€€€€€€€€€€€€€€€€€€
+К(
inputs_1€€€€€€€€€€€€€€€€€€
p

 
™ "eЪb
/К,
tensor_0€€€€€€€€€€€€€€€€€€;
/К,
tensor_1€€€€€€€€€€€€€€€€€€£
)__inference_model_2_layer_call_fn_2666655хFGHIJKLMNOPQRSTUVWDE<=tҐq
jҐg
]ЪZ
+К(
inputs_0€€€€€€€€€€€€€€€€€€
+К(
inputs_1€€€€€€€€€€€€€€€€€€
p 

 
™ "eЪb
/К,
tensor_0€€€€€€€€€€€€€€€€€€;
/К,
tensor_1€€€€€€€€€€€€€€€€€€Ћ
I__inference_note_outputs_layer_call_and_return_conditional_losses_2667918~<==Ґ:
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€А
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€;
Ъ •
.__inference_note_outputs_layer_call_fn_2667887s<==Ґ:
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€А
™ ".К+
unknown€€€€€€€€€€€€€€€€€€;Ў
%__inference_signature_wrapper_2666551ЃFGHIJKLMNOPQRSTUVWDE<={Ґx
Ґ 
q™n
5
input_3*К'
input_3€€€€€€€€€€€€€€€€€€
5
input_4*К'
input_4€€€€€€€€€€€€€€€€€€"Ц™Т
K
duration_outputs7К4
duration_outputs€€€€€€€€€€€€€€€€€€
C
note_outputs3К0
note_outputs€€€€€€€€€€€€€€€€€€;”
[__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_2667378tF3Ґ0
)Ґ&
$К!
x€€€€€€€€€€€€€€€€€€
™ ":Ґ7
0К-
tensor_0€€€€€€€€€€€€€€€€€€А
Ъ ≠
@__inference_token_and_position_embedding_5_layer_call_fn_2667324iF3Ґ0
)Ґ&
$К!
x€€€€€€€€€€€€€€€€€€
™ "/К,
unknown€€€€€€€€€€€€€€€€€€А”
[__inference_token_and_position_embedding_6_layer_call_and_return_conditional_losses_2667439tG3Ґ0
)Ґ&
$К!
x€€€€€€€€€€€€€€€€€€
™ ":Ґ7
0К-
tensor_0€€€€€€€€€€€€€€€€€€А
Ъ ≠
@__inference_token_and_position_embedding_6_layer_call_fn_2667385iG3Ґ0
)Ґ&
$К!
x€€€€€€€€€€€€€€€€€€
™ "/К,
unknown€€€€€€€€€€€€€€€€€€А