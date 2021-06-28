.class public Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;
.super Ljava/lang/Object;
.source "NowPlayingUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final LOADING:I = 0x4

.field public static final NONE:I = 0x0

.field public static final PAUSED:I = 0x2

.field public static final PLAYING:I = 0x1


# instance fields
.field private mChangeTypeFocused:Z

.field private mStateValue:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;->mStateValue:I

    .line 368
    iput-boolean p2, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;->mChangeTypeFocused:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 401
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 405
    :cond_1
    check-cast p1, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    .line 408
    iget v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;->mStateValue:I

    iget p1, p1, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;->mStateValue:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 413
    iget v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;->mStateValue:I

    return v0
.end method

.method public isInLoadingState()Z
    .locals 2

    .line 384
    iget v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;->mStateValue:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInPausedState()Z
    .locals 2

    .line 380
    iget v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;->mStateValue:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInPlayingState()Z
    .locals 2

    .line 376
    iget v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;->mStateValue:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNoState()Z
    .locals 1

    .line 372
    iget v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;->mStateValue:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reportAsChangeTypeFocused()Z
    .locals 1

    .line 388
    iget-boolean v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;->mChangeTypeFocused:Z

    return v0
.end method

.method public setReportAsChangeTypeFocused()V
    .locals 1

    const/4 v0, 0x1

    .line 392
    iput-boolean v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;->mChangeTypeFocused:Z

    return-void
.end method
