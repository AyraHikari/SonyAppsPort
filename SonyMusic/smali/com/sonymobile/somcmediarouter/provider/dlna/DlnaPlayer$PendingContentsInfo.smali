.class Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;
.super Ljava/lang/Object;
.source "DlnaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingContentsInfo"
.end annotation


# instance fields
.field public mBundle:Landroid/os/Bundle;

.field public mPlaybackPosition:I

.field public mPlaylistPosition:I

.field public mStart:Z

.field public mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;IIZLandroid/os/Bundle;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;->mUri:Landroid/net/Uri;

    .line 140
    iput p2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;->mPlaylistPosition:I

    .line 141
    iput p3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;->mPlaybackPosition:I

    .line 142
    iput-boolean p4, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;->mStart:Z

    .line 143
    iput-object p5, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;->mBundle:Landroid/os/Bundle;

    return-void
.end method
