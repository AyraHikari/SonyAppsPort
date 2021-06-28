.class public Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;
.super Landroid/database/AbstractCursor;
.source "AlphabeticalMergeCursor.java"

# interfaces
.implements Lcom/sonyericsson/music/common/MixedContentCursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$EndOfCursorReachedListener;,
        Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$DefaultComparator;,
        Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$ColumnComparator;
    }
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private final mComparator:Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$ColumnComparator;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorA:Landroid/database/Cursor;

.field private mCursorB:Landroid/database/Cursor;

.field private mEmittedA:Z

.field private mEmittedB:Z

.field private mExhausedA:Z

.field private mExhausedB:Z

.field private mListener:Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$EndOfCursorReachedListener;

.field private final mPosMap:[J

.field private final mTypeA:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

.field private final mTypeB:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$ColumnComparator;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 50
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mBundle:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p5, :cond_0

    .line 113
    iput-object p3, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mTypeA:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

    .line 114
    iput-object p4, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mTypeB:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

    .line 115
    iput-object p1, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    .line 116
    iput-object p2, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorB:Landroid/database/Cursor;

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->getCount()I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mPosMap:[J

    .line 121
    iput-object p5, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mComparator:Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$ColumnComparator;

    return-void

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null arguments to AlphabeticalMergeCursor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 98
    sget-object v6, Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;->TYPE1:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;)V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;)V
    .locals 6

    .line 103
    new-instance v5, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$DefaultComparator;

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    .line 104
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    invoke-direct {v5, p3, p4}, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$DefaultComparator;-><init>(II)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    .line 103
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$ColumnComparator;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 415
    iput-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mListener:Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$EndOfCursorReachedListener;

    .line 416
    iput-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    .line 417
    iput-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorB:Landroid/database/Cursor;

    return-void
.end method

.method public close()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 365
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorB:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 368
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 370
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 338
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 340
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorB:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCursorType()Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;
    .locals 1

    .line 406
    sget-object v0, Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;->MIXED:Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getEndOfCursorReachedListener()Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$EndOfCursorReachedListener;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mListener:Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$EndOfCursorReachedListener;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getItemContentType()Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;
    .locals 1

    .line 398
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->isFirstCursor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mTypeA:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

    return-object v0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mTypeB:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

    return-object v0
.end method

.method public getLong(I)J
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getType(I)I
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result p1

    return p1
.end method

.method public isCursorAClosed()Z
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 348
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCursorBClosed()Z
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorB:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 357
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstCursor()Z
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNull(I)Z
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    return p1
.end method

.method public onMove(II)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 148
    iget-object v2, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mPosMap:[J

    .line 149
    array-length v3, v2

    const/4 v4, 0x0

    if-le v1, v3, :cond_0

    return v4

    .line 151
    :cond_0
    aget-wide v5, v2, v1

    const-wide/32 v7, 0x3fffffff

    const-wide/16 v9, 0x0

    const/16 v3, 0x1e

    const/4 v11, 0x1

    cmp-long v12, v5, v9

    if-eqz v12, :cond_6

    .line 154
    aget-wide v5, v2, v1

    cmp-long v12, v5, v9

    if-lez v12, :cond_3

    .line 159
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    and-long/2addr v1, v7

    long-to-int v1, v1

    .line 160
    iget-object v2, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    iput-object v2, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    .line 161
    iget-boolean v4, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mEmittedA:Z

    if-nez v4, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v2, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mListener:Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$EndOfCursorReachedListener;

    if-eqz v2, :cond_2

    .line 166
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    shr-long v2, v4, v3

    and-long/2addr v2, v7

    long-to-int v2, v2

    .line 168
    iput-boolean v11, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mEmittedA:Z

    add-int/2addr v2, v1

    add-int/lit8 v3, v2, -0x1

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v2, -0x2

    .line 170
    :cond_1
    iget-object v2, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mListener:Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$EndOfCursorReachedListener;

    iget-object v4, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    iget-object v5, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mTypeA:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

    invoke-interface {v2, v4, v5, v3}, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$EndOfCursorReachedListener;->onEndOfCursorReached(Landroid/database/Cursor;Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;I)V

    .line 172
    :cond_2
    iget-object v2, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    sub-int/2addr v1, v11

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    return v1

    :cond_3
    cmp-long v12, v5, v9

    if-gez v12, :cond_6

    .line 177
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    shr-long/2addr v1, v3

    and-long/2addr v1, v7

    long-to-int v1, v1

    .line 178
    iget-object v2, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorB:Landroid/database/Cursor;

    iput-object v2, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    .line 179
    iget-boolean v3, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mEmittedB:Z

    if-nez v3, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v2, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mListener:Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$EndOfCursorReachedListener;

    if-eqz v2, :cond_5

    .line 181
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    and-long/2addr v2, v7

    long-to-int v2, v2

    .line 183
    iput-boolean v11, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mEmittedB:Z

    add-int/2addr v2, v1

    add-int/lit8 v3, v2, -0x1

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_4

    add-int/lit8 v3, v2, -0x2

    .line 185
    :cond_4
    iget-object v2, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mListener:Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$EndOfCursorReachedListener;

    iget-object v4, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorB:Landroid/database/Cursor;

    iget-object v5, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mTypeB:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

    invoke-interface {v2, v4, v5, v3}, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$EndOfCursorReachedListener;->onEndOfCursorReached(Landroid/database/Cursor;Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;I)V

    .line 187
    :cond_5
    iget-object v2, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorB:Landroid/database/Cursor;

    sub-int/2addr v1, v11

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    return v1

    .line 193
    :cond_6
    iget-object v5, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 194
    iget-object v6, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorB:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    move v12, v1

    :goto_0
    if-lez v12, :cond_7

    .line 201
    aget-wide v13, v2, v12

    cmp-long v15, v13, v9

    if-nez v15, :cond_7

    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    :cond_7
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-gt v12, v1, :cond_16

    .line 206
    aget-wide v15, v2, v12

    cmp-long v17, v15, v9

    if-eqz v17, :cond_b

    .line 207
    aget-wide v13, v2, v12

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    move v15, v5

    and-long v4, v13, v7

    long-to-int v4, v4

    sub-int/2addr v4, v11

    shr-long/2addr v13, v3

    and-long/2addr v13, v7

    long-to-int v5, v13

    sub-int/2addr v5, v11

    .line 211
    aget-wide v13, v2, v12

    cmp-long v16, v13, v9

    if-lez v16, :cond_9

    if-ne v12, v1, :cond_8

    .line 213
    iget-object v13, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    iput-object v13, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    .line 214
    iget-object v13, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v13, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_8
    add-int/lit8 v4, v4, 0x1

    move v13, v4

    move v14, v5

    goto :goto_2

    :cond_9
    if-ne v12, v1, :cond_a

    .line 220
    iget-object v13, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorB:Landroid/database/Cursor;

    iput-object v13, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    .line 221
    iget-object v13, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v13, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_a
    add-int/lit8 v5, v5, 0x1

    move v13, v4

    move v14, v5

    :goto_2
    add-int/lit8 v12, v12, 0x1

    move v5, v15

    const/4 v4, 0x0

    goto :goto_1

    :cond_b
    move v15, v5

    const-wide/16 v4, 0x1

    if-ge v13, v15, :cond_d

    if-ge v14, v6, :cond_d

    .line 227
    iget-object v7, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    invoke-interface {v7, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 228
    iget-object v7, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorB:Landroid/database/Cursor;

    invoke-interface {v7, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 230
    iget-object v7, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mComparator:Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$ColumnComparator;

    iget-object v8, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    iget-object v9, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorB:Landroid/database/Cursor;

    invoke-interface {v7, v8, v9}, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$ColumnComparator;->compare(Landroid/database/Cursor;Landroid/database/Cursor;)I

    move-result v7

    if-gtz v7, :cond_c

    int-to-long v7, v14

    add-long/2addr v7, v4

    shl-long v4, v7, v3

    add-int/lit8 v13, v13, 0x1

    int-to-long v7, v13

    or-long/2addr v4, v7

    .line 231
    aput-wide v4, v2, v12

    .line 232
    iget-object v4, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    iput-object v4, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    goto :goto_3

    :cond_c
    add-int/lit8 v14, v14, 0x1

    int-to-long v4, v14

    shl-long/2addr v4, v3

    add-int/lit8 v7, v13, 0x1

    int-to-long v7, v7

    or-long/2addr v4, v7

    neg-long v4, v4

    .line 234
    aput-wide v4, v2, v12

    .line 235
    iget-object v4, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorB:Landroid/database/Cursor;

    iput-object v4, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    :goto_3
    add-int/lit8 v12, v12, 0x1

    move v5, v15

    const/4 v4, 0x0

    const-wide/32 v7, 0x3fffffff

    const-wide/16 v9, 0x0

    goto/16 :goto_1

    :cond_d
    if-lt v13, v15, :cond_11

    .line 238
    iget-boolean v7, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mExhausedA:Z

    if-nez v7, :cond_11

    .line 243
    iget-object v4, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mListener:Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$EndOfCursorReachedListener;

    if-eqz v4, :cond_f

    .line 244
    iget-boolean v5, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mEmittedA:Z

    if-nez v5, :cond_e

    .line 245
    iget-object v5, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    iget-object v7, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mTypeA:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

    add-int v8, v13, v14

    invoke-interface {v4, v5, v7, v8}, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$EndOfCursorReachedListener;->onEndOfCursorReached(Landroid/database/Cursor;Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;I)V

    .line 247
    :cond_e
    iget-boolean v4, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mEmittedB:Z

    if-nez v4, :cond_f

    add-int v4, v13, v14

    add-int v5, v15, v6

    sub-int/2addr v5, v11

    if-ne v4, v5, :cond_f

    .line 248
    iget-object v5, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mListener:Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$EndOfCursorReachedListener;

    iget-object v7, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorB:Landroid/database/Cursor;

    iget-object v8, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mTypeB:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

    invoke-interface {v5, v7, v8, v4}, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$EndOfCursorReachedListener;->onEndOfCursorReached(Landroid/database/Cursor;Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;I)V

    .line 252
    :cond_f
    iput-boolean v11, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mExhausedA:Z

    .line 253
    iget-object v4, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorB:Landroid/database/Cursor;

    iput-object v4, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    sub-int/2addr v1, v13

    add-int v5, v15, v6

    :goto_4
    if-ge v12, v5, :cond_10

    add-int/2addr v14, v11

    int-to-long v6, v14

    shl-long/2addr v6, v3

    add-int/lit8 v4, v13, 0x1

    int-to-long v8, v4

    or-long/2addr v6, v8

    neg-long v6, v6

    .line 257
    aput-wide v6, v2, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 259
    :cond_10
    iget-object v2, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorB:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    return v1

    :cond_11
    if-lt v14, v6, :cond_15

    .line 260
    iget-boolean v7, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mExhausedB:Z

    if-nez v7, :cond_15

    .line 263
    iget-object v7, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mListener:Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$EndOfCursorReachedListener;

    if-eqz v7, :cond_13

    .line 264
    iget-boolean v8, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mEmittedB:Z

    if-nez v8, :cond_12

    .line 265
    iget-object v8, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorB:Landroid/database/Cursor;

    iget-object v9, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mTypeB:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

    add-int v10, v13, v14

    invoke-interface {v7, v8, v9, v10}, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$EndOfCursorReachedListener;->onEndOfCursorReached(Landroid/database/Cursor;Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;I)V

    .line 267
    :cond_12
    iget-boolean v7, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mEmittedA:Z

    if-nez v7, :cond_13

    add-int v7, v13, v14

    add-int v8, v15, v6

    sub-int/2addr v8, v11

    if-ne v7, v8, :cond_13

    .line 268
    iget-object v8, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mListener:Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$EndOfCursorReachedListener;

    iget-object v9, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    iget-object v10, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mTypeA:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

    invoke-interface {v8, v9, v10, v7}, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$EndOfCursorReachedListener;->onEndOfCursorReached(Landroid/database/Cursor;Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;I)V

    .line 272
    :cond_13
    iput-boolean v11, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mExhausedB:Z

    .line 273
    iget-object v7, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    iput-object v7, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    sub-int/2addr v1, v14

    add-int/2addr v6, v15

    :goto_5
    if-ge v12, v6, :cond_14

    int-to-long v7, v14

    add-long/2addr v7, v4

    shl-long/2addr v7, v3

    add-int/2addr v13, v11

    int-to-long v9, v13

    or-long/2addr v7, v9

    .line 277
    aput-wide v7, v2, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 279
    :cond_14
    iget-object v2, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    return v1

    :cond_15
    move v5, v15

    const/4 v4, 0x0

    const-wide/32 v7, 0x3fffffff

    const-wide/16 v9, 0x0

    goto/16 :goto_1

    .line 283
    :cond_16
    iget-object v1, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_6

    :cond_17
    const/4 v11, 0x0

    :goto_6
    return v11
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 376
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorB:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 387
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorB:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public resetListenerState()V
    .locals 1

    const/4 v0, 0x0

    .line 429
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mExhausedA:Z

    .line 430
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mExhausedB:Z

    .line 431
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mEmittedA:Z

    .line 432
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mEmittedB:Z

    return-void
.end method

.method public setEndOfCursorReachedListener(Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$EndOfCursorReachedListener;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mListener:Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$EndOfCursorReachedListener;

    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 381
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorB:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorA:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 393
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;->mCursorB:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
