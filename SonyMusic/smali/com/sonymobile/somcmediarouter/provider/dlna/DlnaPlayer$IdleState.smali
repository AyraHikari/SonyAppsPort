.class Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$IdleState;
.super Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;
.source "DlnaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;


# direct methods
.method private constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)V
    .locals 1

    .line 1547
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$IdleState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$1;)V
    .locals 0

    .line 1547
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$IdleState;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)V

    return-void
.end method


# virtual methods
.method public open(Landroid/net/Uri;IIZLandroid/os/Bundle;)V
    .locals 0

    .line 1551
    invoke-virtual/range {p0 .. p5}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->innerOpen(Landroid/net/Uri;IIZLandroid/os/Bundle;)V

    return-void
.end method
