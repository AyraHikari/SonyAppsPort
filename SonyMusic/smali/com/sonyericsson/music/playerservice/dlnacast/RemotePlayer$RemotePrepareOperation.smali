.class Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePrepareOperation;
.super Ljava/lang/Object;
.source "RemotePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemotePrepareOperation"
.end annotation


# instance fields
.field private final mMimeType:Ljava/lang/String;

.field private final mTrack:Lcom/sonyericsson/music/common/Track;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/common/Track;Ljava/lang/String;)V
    .locals 0

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePrepareOperation;->mTrack:Lcom/sonyericsson/music/common/Track;

    .line 497
    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePrepareOperation;->mMimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getMimeType()Ljava/lang/String;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePrepareOperation;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method getTrack()Lcom/sonyericsson/music/common/Track;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePrepareOperation;->mTrack:Lcom/sonyericsson/music/common/Track;

    return-object v0
.end method
