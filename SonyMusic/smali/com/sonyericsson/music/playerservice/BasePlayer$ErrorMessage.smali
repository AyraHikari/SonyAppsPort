.class public Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;
.super Ljava/lang/Object;
.source "BasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/BasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorMessage"
.end annotation


# instance fields
.field private final mErrorCode:I

.field private final mErrorMessage:Ljava/lang/String;

.field private final mIsPlaying:Z

.field private final mTrack:Lcom/sonyericsson/music/common/Track;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V
    .locals 0

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;->mErrorCode:I

    .line 422
    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;->mErrorMessage:Ljava/lang/String;

    .line 423
    iput-object p3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;->mTrack:Lcom/sonyericsson/music/common/Track;

    .line 424
    iput-boolean p4, p0, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;->mIsPlaying:Z

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 428
    iget v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack()Lcom/sonyericsson/music/common/Track;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;->mTrack:Lcom/sonyericsson/music/common/Track;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 440
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;->mIsPlaying:Z

    return v0
.end method
