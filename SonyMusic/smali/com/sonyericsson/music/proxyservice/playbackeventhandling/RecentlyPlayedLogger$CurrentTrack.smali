.class Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;
.super Ljava/lang/Object;
.source "RecentlyPlayedLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurrentTrack"
.end annotation


# instance fields
.field final mContainerUri:Ljava/lang/String;

.field final mPlayqueuePos:I

.field final mTimeStampMs:J

.field final mTrackId:J

.field final mTrackUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JILjava/lang/String;J)V
    .locals 0

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mTrackUri:Ljava/lang/String;

    .line 509
    iput-wide p2, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mTrackId:J

    .line 510
    iput p4, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mPlayqueuePos:I

    .line 511
    iput-object p5, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mContainerUri:Ljava/lang/String;

    .line 512
    iput-wide p6, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mTimeStampMs:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 520
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 523
    :cond_1
    check-cast p1, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;

    .line 524
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mTrackUri:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mTrackUri:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mPlayqueuePos:I

    iget v3, p1, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mPlayqueuePos:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mContainerUri:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mContainerUri:Ljava/lang/String;

    .line 526
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mTrackUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 532
    iget v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mPlayqueuePos:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 533
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mContainerUri:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method
