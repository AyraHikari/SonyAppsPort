.class public Lcom/sonyericsson/music/http/ByteRange;
.super Ljava/lang/Object;
.source "ByteRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/http/ByteRange$RangeException;
    }
.end annotation


# static fields
.field private static final UNSET:J = -0x8000000000000000L


# instance fields
.field private mEnd:J

.field private mStart:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/music/http/ByteRange$RangeException;
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/sonyericsson/music/http/ByteRange;->mStart:J

    .line 17
    iput-wide p3, p0, Lcom/sonyericsson/music/http/ByteRange;->mEnd:J

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    cmp-long v2, p3, v0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Lcom/sonyericsson/music/http/ByteRange$RangeException;

    const-string p2, "Start or end must be set"

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/http/ByteRange$RangeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    cmp-long v2, p3, v0

    if-eqz v2, :cond_4

    cmp-long v2, p1, v0

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_3

    cmp-long v2, p3, p1

    if-ltz v2, :cond_2

    goto :goto_1

    .line 28
    :cond_2
    new-instance p1, Lcom/sonyericsson/music/http/ByteRange$RangeException;

    const-string p2, "End must be >= start if both are set"

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/http/ByteRange$RangeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_3
    new-instance p1, Lcom/sonyericsson/music/http/ByteRange$RangeException;

    const-string p2, "Start must be > 0 if there is an end"

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/http/ByteRange$RangeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    cmp-long v2, p3, v0

    if-eqz v2, :cond_6

    cmp-long p3, p1, v0

    if-eqz p3, :cond_5

    goto :goto_2

    .line 33
    :cond_5
    new-instance p1, Lcom/sonyericsson/music/http/ByteRange$RangeException;

    const-string p2, "Start cannot be unset if end is set"

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/http/ByteRange$RangeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/sonyericsson/music/http/ByteRange;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/music/http/ByteRange$RangeException;
        }
    .end annotation

    const/16 v0, 0x3d

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_5

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bytes"

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 100
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2d

    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    const-wide/high16 v2, -0x8000000000000000L

    if-lez v0, :cond_0

    .line 110
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    move-wide v0, v2

    :goto_1
    cmp-long p0, v4, v2

    if-nez p0, :cond_2

    cmp-long p0, v0, v2

    if-eqz p0, :cond_2

    neg-long v4, v0

    move-wide v0, v2

    .line 123
    :cond_2
    new-instance p0, Lcom/sonyericsson/music/http/ByteRange;

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/sonyericsson/music/http/ByteRange;-><init>(JJ)V

    return-object p0

    .line 105
    :cond_3
    new-instance p0, Lcom/sonyericsson/music/http/ByteRange$RangeException;

    const-string v0, "Byte range does not follow expected format (dash not found)"

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/http/ByteRange$RangeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :cond_4
    new-instance p0, Lcom/sonyericsson/music/http/ByteRange$RangeException;

    const-string v0, "Byte range unit must be bytes"

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/http/ByteRange$RangeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_5
    new-instance p0, Lcom/sonyericsson/music/http/ByteRange$RangeException;

    const-string v0, "Byte range does not follow expected format (equals not found)"

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/http/ByteRange$RangeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getContentRange(J)Ljava/lang/String;
    .locals 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/http/ByteRange;->getStart(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/http/ByteRange;->getEnd(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEnd(J)J
    .locals 5

    .line 49
    iget-wide v0, p0, Lcom/sonyericsson/music/http/ByteRange;->mEnd:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public getSize(J)J
    .locals 5

    .line 57
    iget-wide v0, p0, Lcom/sonyericsson/music/http/ByteRange;->mEnd:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 58
    iget-wide v0, p0, Lcom/sonyericsson/music/http/ByteRange;->mStart:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    neg-long p1, v0

    return-wide p1

    :cond_0
    sub-long/2addr p1, v0

    return-wide p1

    :cond_1
    cmp-long v2, v0, p1

    if-ltz v2, :cond_2

    .line 67
    iget-wide v0, p0, Lcom/sonyericsson/music/http/ByteRange;->mStart:J

    sub-long/2addr p1, v0

    return-wide p1

    .line 70
    :cond_2
    iget-wide p1, p0, Lcom/sonyericsson/music/http/ByteRange;->mStart:J

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public getStart(J)J
    .locals 5

    .line 38
    iget-wide v0, p0, Lcom/sonyericsson/music/http/ByteRange;->mEnd:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/sonyericsson/music/http/ByteRange;->mStart:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    add-long/2addr p1, v0

    return-wide p1

    .line 42
    :cond_0
    iget-wide p1, p0, Lcom/sonyericsson/music/http/ByteRange;->mStart:J

    return-wide p1
.end method
