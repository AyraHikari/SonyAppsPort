.class public Landroidx/constraintlayout/solver/ArrayLinkedVariables;
.super Ljava/lang/Object;
.source "ArrayLinkedVariables.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final FULL_NEW_CHECK:Z = false

.field static final NONE:I = -0x1

.field private static epsilon:F


# instance fields
.field private ROW_SIZE:I

.field private candidate:Landroidx/constraintlayout/solver/SolverVariable;

.field currentSize:I

.field private mArrayIndices:[I

.field private mArrayNextIndices:[I

.field private mArrayValues:[F

.field protected final mCache:Landroidx/constraintlayout/solver/Cache;

.field private mDidFillOnce:Z

.field private mHead:I

.field private mLast:I

.field private final mRow:Landroidx/constraintlayout/solver/ArrayRow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    const v0, 0x3a83126f    # 0.001f

    sput v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->epsilon:F

    return-void
.end method

.method constructor <init>(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/Cache;)V
    .locals 3
    .param p1, "arrayRow"    # Landroidx/constraintlayout/solver/ArrayRow;
    .param p2, "cache"    # Landroidx/constraintlayout/solver/Cache;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 49
    const/16 v1, 0x8

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 51
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    .line 54
    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 57
    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 60
    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 63
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 79
    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 82
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 103
    iput-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    .line 104
    iput-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    .line 110
    return-void
.end method

.method private isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z
    .locals 2
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 496
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method final add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V
    .locals 10
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "value"    # F
    .param p3, "removeFromDefinition"    # Z

    .line 227
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->epsilon:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 228
    return-void

    .line 231
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 232
    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 233
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v0, v1

    .line 234
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v4, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v4, v0, v1

    .line 235
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput v2, v0, v1

    .line 236
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr v0, v3

    iput v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 237
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 238
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 239
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v0, :cond_1

    .line 241
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 242
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 243
    iput-boolean v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 244
    array-length v0, v1

    sub-int/2addr v0, v3

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 247
    :cond_1
    return-void

    .line 249
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 250
    .local v0, "current":I
    const/4 v4, -0x1

    .line 251
    .local v4, "previous":I
    const/4 v5, 0x0

    .line 252
    .local v5, "counter":I
    :goto_0
    if-eq v0, v2, :cond_a

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v5, v6, :cond_a

    .line 253
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v0

    .line 254
    .local v6, "idx":I
    iget v7, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v6, v7, :cond_8

    .line 255
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v1, v0

    add-float/2addr v2, p2

    aput v2, v1, v0

    .line 256
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->epsilon:F

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    if-gez v1, :cond_3

    .line 257
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput v2, v1, v0

    .line 260
    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v1, v1, v0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_7

    .line 261
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    if-ne v0, v1, :cond_4

    .line 262
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v1, v0

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_1

    .line 264
    :cond_4
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v2, v1, v0

    aput v2, v1, v4

    .line 266
    :goto_1
    if-eqz p3, :cond_5

    .line 267
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 269
    :cond_5
    iget-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v1, :cond_6

    .line 271
    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 273
    :cond_6
    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    sub-int/2addr v1, v3

    iput v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 274
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    sub-int/2addr v1, v3

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 276
    :cond_7
    return-void

    .line 278
    :cond_8
    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v7, v7, v0

    iget v8, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ge v7, v8, :cond_9

    .line 279
    move v4, v0

    .line 281
    :cond_9
    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v7, v0

    .end local v6    # "idx":I
    add-int/lit8 v5, v5, 0x1

    .line 282
    goto :goto_0

    .line 287
    :cond_a
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v7, v6, 0x1

    .line 288
    .local v7, "availableIndice":I
    iget-boolean v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v8, :cond_c

    .line 291
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v8, v6

    if-ne v6, v2, :cond_b

    .line 292
    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    goto :goto_2

    .line 294
    :cond_b
    array-length v7, v8

    .line 297
    :cond_c
    :goto_2
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v6

    if-lt v7, v8, :cond_e

    .line 298
    iget v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    array-length v6, v6

    if-ge v8, v6, :cond_e

    .line 300
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v8

    if-ge v6, v9, :cond_e

    .line 301
    aget v8, v8, v6

    if-ne v8, v2, :cond_d

    .line 302
    move v7, v6

    .line 303
    goto :goto_4

    .line 300
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 309
    .end local v6    # "i":I
    :cond_e
    :goto_4
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v6

    if-lt v7, v8, :cond_f

    .line 310
    array-length v7, v6

    .line 311
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 312
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 313
    add-int/lit8 v1, v7, -0x1

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 314
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 315
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 316
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 320
    :cond_f
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v6, v1, v7

    .line 321
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v1, v7

    .line 322
    if-eq v4, v2, :cond_10

    .line 323
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v2, v1, v4

    aput v2, v1, v7

    .line 324
    aput v7, v1, v4

    goto :goto_5

    .line 326
    :cond_10
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput v2, v1, v7

    .line 327
    iput v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 329
    :goto_5
    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr v1, v3

    iput v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 330
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 331
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr v1, v3

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 332
    iget-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v1, :cond_11

    .line 334
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr v1, v3

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 336
    :cond_11
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v2

    if-lt v1, v6, :cond_12

    .line 337
    iput-boolean v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 338
    array-length v1, v2

    sub-int/2addr v1, v3

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 340
    :cond_12
    return-void
.end method

.method chooseSubject(Landroidx/constraintlayout/solver/LinearSystem;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 16
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 511
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 512
    .local v2, "restrictedCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v3, 0x0

    .line 513
    .local v3, "unrestrictedCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v4, 0x0

    .line 514
    .local v4, "unrestrictedCandidateAmount":F
    const/4 v5, 0x0

    .line 515
    .local v5, "restrictedCandidateAmount":F
    const/4 v6, 0x0

    .line 516
    .local v6, "unrestrictedCandidateIsNew":Z
    const/4 v7, 0x0

    .line 517
    .local v7, "restrictedCandidateIsNew":Z
    iget v8, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 518
    .local v8, "current":I
    const/4 v9, 0x0

    .line 519
    .local v9, "counter":I
    const/4 v10, 0x0

    .line 520
    .local v10, "candidateAmount":F
    :goto_0
    const/4 v11, -0x1

    if-eq v8, v11, :cond_8

    iget v11, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v9, v11, :cond_8

    .line 521
    iget-object v11, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v11, v11, v8

    .line 522
    .local v11, "amount":F
    const v12, 0x3a83126f    # 0.001f

    .line 523
    .local v12, "epsilon":F
    iget-object v13, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v13, v13, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v14, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v14, v14, v8

    aget-object v13, v13, v14

    .line 524
    .local v13, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v14, 0x0

    cmpg-float v15, v11, v14

    if-gez v15, :cond_0

    .line 525
    neg-float v15, v12

    cmpl-float v15, v11, v15

    if-lez v15, :cond_1

    .line 526
    iget-object v15, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput v14, v15, v8

    .line 527
    const/4 v11, 0x0

    .line 528
    iget-object v15, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v13, v15}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_1

    .line 531
    :cond_0
    cmpg-float v15, v11, v12

    if-gez v15, :cond_1

    .line 532
    iget-object v15, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput v14, v15, v8

    .line 533
    const/4 v11, 0x0

    .line 534
    iget-object v15, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v13, v15}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 537
    :cond_1
    :goto_1
    cmpl-float v15, v11, v14

    if-eqz v15, :cond_7

    .line 538
    iget-object v15, v13, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v14, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v15, v14, :cond_4

    .line 539
    if-nez v3, :cond_2

    .line 540
    move-object v3, v13

    .line 541
    move v4, v11

    .line 542
    invoke-direct {v0, v13, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v6

    goto :goto_2

    .line 543
    :cond_2
    cmpl-float v14, v4, v11

    if-lez v14, :cond_3

    .line 544
    move-object v3, v13

    .line 545
    move v4, v11

    .line 546
    invoke-direct {v0, v13, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v6

    goto :goto_2

    .line 547
    :cond_3
    if-nez v6, :cond_7

    invoke-direct {v0, v13, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 548
    move-object v3, v13

    .line 549
    move v4, v11

    .line 550
    const/4 v6, 0x1

    goto :goto_2

    .line 552
    :cond_4
    if-nez v3, :cond_7

    .line 553
    const/4 v14, 0x0

    cmpg-float v14, v11, v14

    if-gez v14, :cond_7

    .line 554
    if-nez v2, :cond_5

    .line 555
    move-object v2, v13

    .line 556
    move v5, v11

    .line 557
    invoke-direct {v0, v13, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v7

    goto :goto_2

    .line 558
    :cond_5
    cmpl-float v14, v5, v11

    if-lez v14, :cond_6

    .line 559
    move-object v2, v13

    .line 560
    move v5, v11

    .line 561
    invoke-direct {v0, v13, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v7

    goto :goto_2

    .line 562
    :cond_6
    if-nez v7, :cond_7

    invoke-direct {v0, v13, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 563
    move-object v2, v13

    .line 564
    move v5, v11

    .line 565
    const/4 v7, 0x1

    .line 570
    :cond_7
    :goto_2
    iget-object v14, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v8, v14, v8

    .end local v11    # "amount":F
    .end local v12    # "epsilon":F
    .end local v13    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    add-int/lit8 v9, v9, 0x1

    .line 571
    goto/16 :goto_0

    .line 572
    :cond_8
    if-eqz v3, :cond_9

    .line 573
    return-object v3

    .line 575
    :cond_9
    return-object v2
.end method

.method public final clear()V
    .locals 4

    .line 390
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 391
    .local v0, "current":I
    const/4 v1, 0x0

    .line 392
    .local v1, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v3, :cond_1

    .line 393
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v3, v3, v0

    aget-object v2, v2, v3

    .line 394
    .local v2, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    if-eqz v2, :cond_0

    .line 395
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 397
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    .end local v2    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    add-int/lit8 v1, v1, 0x1

    .line 398
    goto :goto_0

    .line 400
    :cond_1
    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 401
    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 402
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 403
    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 404
    return-void
.end method

.method final containsKey(Landroidx/constraintlayout/solver/SolverVariable;)Z
    .locals 6
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 413
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 414
    return v1

    .line 416
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 417
    .local v0, "current":I
    const/4 v3, 0x0

    .line 418
    .local v3, "counter":I
    :goto_0
    if-eq v0, v2, :cond_2

    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v4, :cond_2

    .line 419
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    iget v5, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v4, v5, :cond_1

    .line 420
    const/4 v1, 0x1

    return v1

    .line 422
    :cond_1
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 424
    :cond_2
    return v1
.end method

.method public display()V
    .locals 6

    .line 841
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 842
    .local v0, "count":I
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "{ "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 843
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 844
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    .line 845
    .local v2, "v":Landroidx/constraintlayout/solver/SolverVariable;
    if-nez v2, :cond_0

    .line 846
    goto :goto_1

    .line 848
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 843
    .end local v2    # "v":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 850
    .end local v1    # "i":I
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method divideByAmount(F)V
    .locals 4
    .param p1, "amount"    # F

    .line 463
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 464
    .local v0, "current":I
    const/4 v1, 0x0

    .line 465
    .local v1, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_0

    .line 466
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v0

    div-float/2addr v3, p1

    aput v3, v2, v0

    .line 467
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    :cond_0
    return-void
.end method

.method public final get(Landroidx/constraintlayout/solver/SolverVariable;)F
    .locals 4
    .param p1, "v"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 821
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 822
    .local v0, "current":I
    const/4 v1, 0x0

    .line 823
    .local v1, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1

    .line 824
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v2, v2, v0

    iget v3, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v2, v3, :cond_0

    .line 825
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v2, v0

    return v2

    .line 827
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 829
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public getCurrentSize()I
    .locals 1

    .line 622
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    return v0
.end method

.method public getHead()I
    .locals 1

    .line 621
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    return v0
.end method

.method public final getId(I)I
    .locals 1
    .param p1, "index"    # I

    .line 625
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public final getNextIndice(I)I
    .locals 1
    .param p1, "index"    # I

    .line 633
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method getPivotCandidate()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 6

    .line 711
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    if-nez v0, :cond_3

    .line 713
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 714
    .local v0, "current":I
    const/4 v1, 0x0

    .line 715
    .local v1, "counter":I
    const/4 v2, 0x0

    .line 716
    .local v2, "pivot":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v3, :cond_2

    .line 717
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v3, v0

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 721
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    .line 722
    .local v3, "v":Landroidx/constraintlayout/solver/SolverVariable;
    if-eqz v2, :cond_0

    iget v4, v2, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    iget v5, v3, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    if-ge v4, v5, :cond_1

    .line 723
    :cond_0
    move-object v2, v3

    .line 726
    .end local v3    # "v":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_1
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 728
    :cond_2
    return-object v2

    .line 730
    .end local v0    # "current":I
    .end local v1    # "counter":I
    .end local v2    # "pivot":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_3
    return-object v0
.end method

.method getPivotCandidate([ZLandroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 11
    .param p1, "avoid"    # [Z
    .param p2, "exclude"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 734
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 735
    .local v0, "current":I
    const/4 v1, 0x0

    .line 736
    .local v1, "counter":I
    const/4 v2, 0x0

    .line 737
    .local v2, "pivot":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v3, 0x0

    .line 738
    .local v3, "value":F
    const/4 v4, 0x0

    .line 739
    .local v4, "pivotSlack":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v5, 0x0

    .line 740
    .local v5, "valueSlack":F
    const/4 v6, 0x1

    .line 741
    .local v6, "all":Z
    :goto_0
    const/4 v7, -0x1

    if-eq v0, v7, :cond_5

    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v7, :cond_5

    .line 742
    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v7, v7, v0

    .line 743
    .local v7, "currentValue":F
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gez v8, :cond_4

    .line 746
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v8, v8, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v9, v9, v0

    aget-object v8, v8, v9

    .line 747
    .local v8, "v":Landroidx/constraintlayout/solver/SolverVariable;
    if-eqz p1, :cond_0

    iget v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-boolean v9, p1, v9

    if-nez v9, :cond_4

    :cond_0
    if-eq v8, p2, :cond_4

    .line 748
    if-eqz v6, :cond_2

    .line 749
    iget-object v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v10, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-eq v9, v10, :cond_1

    iget-object v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v10, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v9, v10, :cond_4

    .line 751
    :cond_1
    cmpg-float v9, v7, v3

    if-gez v9, :cond_4

    .line 752
    move v3, v7

    .line 753
    move-object v2, v8

    goto :goto_1

    .line 757
    :cond_2
    iget-object v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v10, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v9, v10, :cond_3

    .line 758
    cmpg-float v9, v7, v5

    if-gez v9, :cond_4

    .line 759
    move v5, v7

    .line 760
    move-object v4, v8

    goto :goto_1

    .line 762
    :cond_3
    iget-object v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v10, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v9, v10, :cond_4

    .line 763
    cmpg-float v9, v7, v3

    if-gez v9, :cond_4

    .line 764
    move v3, v7

    .line 765
    move-object v2, v8

    .line 771
    .end local v8    # "v":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_4
    :goto_1
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v8, v0

    .end local v7    # "currentValue":F
    add-int/lit8 v1, v1, 0x1

    .line 772
    goto :goto_0

    .line 773
    :cond_5
    if-eqz v6, :cond_6

    .line 774
    return-object v2

    .line 776
    :cond_6
    if-eqz v2, :cond_7

    move-object v7, v2

    goto :goto_2

    :cond_7
    move-object v7, v4

    :goto_2
    return-object v7
.end method

.method public final getValue(I)F
    .locals 1
    .param p1, "index"    # I

    .line 629
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v0, v0, p1

    return v0
.end method

.method public final getVariable(Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;I)I
    .locals 1
    .param p1, "rowVariable"    # Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;
    .param p2, "index"    # I

    .line 637
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v0, v0, p2

    iput v0, p1, Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;->value:F

    .line 638
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v0, v0, p2

    iput v0, p1, Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;->variableId:I

    .line 639
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v0, p2

    return v0
.end method

.method final getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 4
    .param p1, "index"    # I

    .line 786
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 787
    .local v0, "current":I
    const/4 v1, 0x0

    .line 788
    .local v1, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1

    .line 789
    if-ne v1, p1, :cond_0

    .line 790
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v3, v3, v0

    aget-object v2, v2, v3

    return-object v2

    .line 792
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 794
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method final getVariableValue(I)F
    .locals 3
    .param p1, "index"    # I

    .line 804
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 805
    .local v0, "current":I
    const/4 v1, 0x0

    .line 806
    .local v1, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1

    .line 807
    if-ne v1, p1, :cond_0

    .line 808
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v2, v0

    return v2

    .line 810
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 812
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public getVariables()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;",
            ">;"
        }
    .end annotation

    .line 643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v0, "variablesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;>;"
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 645
    .local v1, "current":I
    const/4 v2, 0x0

    .line 646
    .local v2, "counter":I
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v3, :cond_0

    .line 647
    new-instance v3, Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;

    invoke-direct {v3}, Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;-><init>()V

    .line 648
    .local v3, "rowVariable":Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v4, v4, v1

    iput v4, v3, Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;->value:F

    .line 649
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v1

    iput v4, v3, Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;->variableId:I

    .line 650
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v4, v1

    .end local v3    # "rowVariable":Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;
    add-int/lit8 v2, v2, 0x1

    .line 652
    goto :goto_0

    .line 653
    :cond_0
    return-object v0
.end method

.method hasAtLeastOnePositiveVariable()Z
    .locals 4

    .line 433
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 434
    .local v0, "current":I
    const/4 v1, 0x0

    .line 435
    .local v1, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1

    .line 436
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v2, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 437
    const/4 v2, 0x1

    return v2

    .line 439
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method invert()V
    .locals 5

    .line 448
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 449
    .local v0, "current":I
    const/4 v1, 0x0

    .line 450
    .local v1, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_0

    .line 451
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v0

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    aput v3, v2, v0

    .line 452
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    :cond_0
    return-void
.end method

.method public final put(Landroidx/constraintlayout/solver/SolverVariable;F)V
    .locals 10
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "value"    # F

    .line 119
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0, p1, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    .line 121
    return-void

    .line 124
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 125
    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 126
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v0, v2

    .line 127
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v4, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v4, v0, v2

    .line 128
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput v3, v0, v2

    .line 129
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr v0, v1

    iput v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 130
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 131
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 132
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v0, :cond_1

    .line 134
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 135
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 136
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 137
    array-length v0, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 140
    :cond_1
    return-void

    .line 142
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 143
    .local v0, "current":I
    const/4 v4, -0x1

    .line 144
    .local v4, "previous":I
    const/4 v5, 0x0

    .line 145
    .local v5, "counter":I
    :goto_0
    if-eq v0, v3, :cond_5

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v5, v6, :cond_5

    .line 146
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v0

    iget v7, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v6, v7, :cond_3

    .line 147
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v1, v0

    .line 148
    return-void

    .line 150
    :cond_3
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v0

    iget v7, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ge v6, v7, :cond_4

    .line 151
    move v4, v0

    .line 153
    :cond_4
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v6, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 159
    :cond_5
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v7, v6, 0x1

    .line 160
    .local v7, "availableIndice":I
    iget-boolean v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v8, :cond_7

    .line 163
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v8, v6

    if-ne v6, v3, :cond_6

    .line 164
    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    goto :goto_1

    .line 166
    :cond_6
    array-length v7, v8

    .line 169
    :cond_7
    :goto_1
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v6

    if-lt v7, v8, :cond_9

    .line 170
    iget v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    array-length v6, v6

    if-ge v8, v6, :cond_9

    .line 172
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v8

    if-ge v6, v9, :cond_9

    .line 173
    aget v8, v8, v6

    if-ne v8, v3, :cond_8

    .line 174
    move v7, v6

    .line 175
    goto :goto_3

    .line 172
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 181
    .end local v6    # "i":I
    :cond_9
    :goto_3
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v6

    if-lt v7, v8, :cond_a

    .line 182
    array-length v7, v6

    .line 183
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 184
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 185
    add-int/lit8 v2, v7, -0x1

    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 186
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 187
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 188
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 192
    :cond_a
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v6, v2, v7

    .line 193
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v2, v7

    .line 194
    if-eq v4, v3, :cond_b

    .line 195
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v3, v2, v4

    aput v3, v2, v7

    .line 196
    aput v7, v2, v4

    goto :goto_4

    .line 198
    :cond_b
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput v3, v2, v7

    .line 199
    iput v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 201
    :goto_4
    iget v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr v2, v1

    iput v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 202
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 203
    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 204
    iget-boolean v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v3, :cond_c

    .line 206
    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr v3, v1

    iput v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 208
    :cond_c
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v3

    if-lt v2, v6, :cond_d

    .line 209
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 211
    :cond_d
    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    array-length v6, v3

    if-lt v2, v6, :cond_e

    .line 212
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 213
    array-length v2, v3

    sub-int/2addr v2, v1

    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 215
    :cond_e
    return-void
.end method

.method public final remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F
    .locals 7
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "removeFromDefinition"    # Z

    .line 350
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    if-ne v0, p1, :cond_0

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    .line 353
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 354
    return v1

    .line 356
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 357
    .local v0, "current":I
    const/4 v3, -0x1

    .line 358
    .local v3, "previous":I
    const/4 v4, 0x0

    .line 359
    .local v4, "counter":I
    :goto_0
    if-eq v0, v2, :cond_6

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_6

    .line 360
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v0

    .line 361
    .local v5, "idx":I
    iget v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v5, v6, :cond_5

    .line 362
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    if-ne v0, v1, :cond_2

    .line 363
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v1, v0

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_1

    .line 365
    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v6, v1, v0

    aput v6, v1, v3

    .line 368
    :goto_1
    if-eqz p2, :cond_3

    .line 369
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 371
    :cond_3
    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 372
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 373
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aput v2, v1, v0

    .line 374
    iget-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v1, :cond_4

    .line 376
    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 378
    :cond_4
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v1, v1, v0

    return v1

    .line 380
    :cond_5
    move v3, v0

    .line 381
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v6, v0

    .end local v5    # "idx":I
    add-int/lit8 v4, v4, 0x1

    .line 382
    goto :goto_0

    .line 383
    :cond_6
    return v1
.end method

.method sizeInBytes()I
    .locals 2

    .line 834
    const/4 v0, 0x0

    .line 835
    .local v0, "size":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 836
    add-int/lit8 v0, v0, 0x24

    .line 837
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 860
    const-string v0, ""

    .line 861
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 862
    .local v1, "current":I
    const/4 v2, 0x0

    .line 863
    .local v2, "counter":I
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v3, :cond_0

    .line 864
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 865
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 866
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 867
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 869
    :cond_0
    return-object v0
.end method

.method final updateFromRow(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/ArrayRow;Z)V
    .locals 10
    .param p1, "self"    # Landroidx/constraintlayout/solver/ArrayRow;
    .param p2, "definition"    # Landroidx/constraintlayout/solver/ArrayRow;
    .param p3, "removeFromDefinition"    # Z

    .line 588
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 589
    .local v0, "current":I
    const/4 v1, 0x0

    .line 590
    .local v1, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v3, :cond_3

    .line 591
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v3, v3, v0

    iget-object v4, p2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v3, v4, :cond_2

    .line 592
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v3, v0

    .line 593
    .local v3, "value":F
    iget-object v4, p2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p0, v4, p3}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    .line 595
    iget-object v4, p2, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    check-cast v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    .line 596
    .local v4, "definitionVariables":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    iget v5, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 597
    .local v5, "definitionCurrent":I
    const/4 v6, 0x0

    .line 598
    .local v6, "definitionCounter":I
    :goto_1
    if-eq v5, v2, :cond_0

    iget v7, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v6, v7, :cond_0

    .line 599
    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v7, v7, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v8, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v8, v8, v5

    aget-object v7, v7, v8

    .line 601
    .local v7, "definitionVariable":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v8, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v8, v8, v5

    .line 602
    .local v8, "definitionValue":F
    mul-float v9, v8, v3

    invoke-virtual {p0, v7, v9, p3}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    .line 603
    iget-object v9, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v5, v9, v5

    .end local v7    # "definitionVariable":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v8    # "definitionValue":F
    add-int/lit8 v6, v6, 0x1

    .line 604
    goto :goto_1

    .line 605
    :cond_0
    iget v2, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iget v7, p2, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    mul-float/2addr v7, v3

    add-float/2addr v2, v7

    iput v2, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 606
    if-eqz p3, :cond_1

    .line 607
    iget-object v2, p2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 613
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 614
    const/4 v1, 0x0

    .line 615
    goto :goto_0

    .line 617
    .end local v3    # "value":F
    .end local v4    # "definitionVariables":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    .end local v5    # "definitionCurrent":I
    .end local v6    # "definitionCounter":I
    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    :cond_3
    return-void
.end method

.method updateFromSystem(Landroidx/constraintlayout/solver/ArrayRow;[Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 13
    .param p1, "self"    # Landroidx/constraintlayout/solver/ArrayRow;
    .param p2, "rows"    # [Landroidx/constraintlayout/solver/ArrayRow;

    .line 666
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 667
    .local v0, "current":I
    const/4 v1, 0x0

    .line 668
    .local v1, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v3, :cond_3

    .line 669
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    .line 670
    .local v3, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    iget v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    if-eq v4, v2, :cond_2

    .line 671
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v4, v4, v0

    .line 672
    .local v4, "value":F
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    .line 674
    iget v6, v3, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    aget-object v6, p2, v6

    .line 675
    .local v6, "definition":Landroidx/constraintlayout/solver/ArrayRow;
    iget-boolean v7, v6, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v7, :cond_0

    .line 676
    iget-object v7, v6, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    check-cast v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    .line 677
    .local v7, "definitionVariables":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    iget v8, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 678
    .local v8, "definitionCurrent":I
    const/4 v9, 0x0

    .line 679
    .local v9, "definitionCounter":I
    :goto_1
    if-eq v8, v2, :cond_0

    iget v10, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v9, v10, :cond_0

    .line 680
    iget-object v10, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v10, v10, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v11, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v11, v11, v8

    aget-object v10, v10, v11

    .line 682
    .local v10, "definitionVariable":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v11, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v11, v11, v8

    .line 683
    .local v11, "definitionValue":F
    mul-float v12, v11, v4

    invoke-virtual {p0, v10, v12, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    .line 684
    iget-object v12, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v8, v12, v8

    .line 685
    nop

    .end local v10    # "definitionVariable":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v11    # "definitionValue":F
    add-int/lit8 v9, v9, 0x1

    .line 686
    goto :goto_1

    .line 688
    .end local v7    # "definitionVariables":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    .end local v8    # "definitionCurrent":I
    .end local v9    # "definitionCounter":I
    :cond_0
    iget v2, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iget v5, v6, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    iput v2, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 689
    iget v2, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->epsilon:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    .line 690
    const/4 v2, 0x0

    iput v2, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 692
    :cond_1
    iget-object v2, v6, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 697
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 698
    const/4 v1, 0x0

    .line 699
    goto :goto_0

    .line 701
    .end local v4    # "value":F
    .end local v6    # "definition":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    .end local v3    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    add-int/lit8 v1, v1, 0x1

    .line 702
    goto :goto_0

    .line 703
    :cond_3
    return-void
.end method
