.class public Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;
.super Ljava/lang/Object;
.source "NowPlayingUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/NowPlayingUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NowPlayingInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;
    }
.end annotation


# instance fields
.field private final mPlayOrder:I

.field private final mPlayQueuePosition:I

.field private final mSourceUri:Landroid/net/Uri;

.field private mState:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

.field private final mTrackUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILandroid/net/Uri;Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;I)V
    .locals 0

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mSourceUri:Landroid/net/Uri;

    .line 422
    iput p2, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mPlayOrder:I

    .line 423
    iput-object p3, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mTrackUri:Landroid/net/Uri;

    .line 424
    iput-object p4, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mState:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    .line 425
    iput p5, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mPlayQueuePosition:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 458
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 462
    :cond_1
    check-cast p1, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    .line 463
    iget-object v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mTrackUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mTrackUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mPlayOrder:I

    iget v3, p1, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mPlayOrder:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mSourceUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mSourceUri:Landroid/net/Uri;

    .line 465
    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mState:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mState:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    .line 466
    invoke-virtual {v1, v3}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mPlayQueuePosition:I

    iget p1, p1, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mPlayQueuePosition:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPlayOrder()I
    .locals 1

    .line 433
    iget v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mPlayOrder:I

    return v0
.end method

.method public getPlayQueuePosition()I
    .locals 1

    .line 449
    iget v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mPlayQueuePosition:I

    return v0
.end method

.method public getSourceUri()Landroid/net/Uri;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mSourceUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getState()Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mState:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    return-object v0
.end method

.method public getTrackUri()Landroid/net/Uri;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mTrackUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 472
    iget v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mPlayOrder:I

    .line 473
    iget-object v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mTrackUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 474
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mSourceUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 477
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 479
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mState:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    if-eqz v1, :cond_2

    .line 480
    invoke-virtual {v1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 482
    :cond_2
    iget v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mPlayQueuePosition:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setState(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->mState:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    return-void
.end method
