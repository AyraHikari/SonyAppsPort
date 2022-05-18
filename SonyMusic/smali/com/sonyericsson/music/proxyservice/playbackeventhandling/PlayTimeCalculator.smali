.class public Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;
.super Ljava/lang/Object;
.source "PlayTimeCalculator.java"


# instance fields
.field private final mBucketDurationInMs:J

.field private final mPlayTimeBuckets:[J

.field private mPreviousBucket:J


# direct methods
.method public constructor <init>([JJJ)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1}, [J->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;->mPlayTimeBuckets:[J

    .line 44
    iput-wide p2, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;->mBucketDurationInMs:J

    .line 45
    iget-wide p1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;->mBucketDurationInMs:J

    div-long/2addr p4, p1

    iput-wide p4, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;->mPreviousBucket:J

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "PlayTimeBuckets must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addPlay(JJ)V
    .locals 11

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;->mPlayTimeBuckets:[J

    array-length v0, v0

    .line 51
    iget-wide v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;->mBucketDurationInMs:J

    div-long/2addr p1, v1

    .line 54
    iget-wide v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;->mPreviousBucket:J

    int-to-long v3, v0

    sub-long v5, p1, v3

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;->mPreviousBucket:J

    .line 58
    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;->mPreviousBucket:J

    const-wide/16 v5, 0x1

    :goto_0
    add-long/2addr v0, v5

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;->mPlayTimeBuckets:[J

    rem-long v7, v0, v3

    long-to-int v8, v7

    const-wide/16 v9, 0x0

    aput-wide v9, v2, v8

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;->mPlayTimeBuckets:[J

    rem-long v1, p1, v3

    long-to-int v2, v1

    aget-wide v3, v0, v2

    add-long/2addr v3, p3

    aput-wide v3, v0, v2

    .line 65
    iput-wide p1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;->mPreviousBucket:J

    return-void
.end method

.method public getAveragePlayTimeInMs(J)J
    .locals 5

    const-wide/16 v0, 0x0

    .line 75
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;->addPlay(JJ)V

    .line 79
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;->mPlayTimeBuckets:[J

    array-length p2, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    aget-wide v3, p1, v2

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;->mPlayTimeBuckets:[J

    array-length p1, p1

    int-to-long p1, p1

    div-long/2addr v0, p1

    return-wide v0
.end method

.method public getPlayTimeBuckets()[J
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeCalculator;->mPlayTimeBuckets:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method
