.class Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;
.super Ljava/lang/Object;
.source "DlnaMediaRouteController.java"

# interfaces
.implements Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;


# direct methods
.method constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerBuffering()V
    .locals 3

    .line 138
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPlayerBuffering()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;ILandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayerConnected(Ljava/lang/String;)V
    .locals 3

    .line 64
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerConnected() player id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPlayerDisconnected(Ljava/lang/String;)V
    .locals 3

    .line 71
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerDisconnected() player id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPlayerError(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    .line 147
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerError() message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$ProviderCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$ProviderCallback;->onUpdateDmrList()V

    .line 152
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;I)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;ILandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayerIdled(ZZ)V
    .locals 3

    .line 78
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerIdled() isCompleted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isNextAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 84
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "com.sonymobile.somcmediarouter.provider.dlna.intent.extra.DLNA_IS_NEXT_AVAILABLE"

    .line 85
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    iget-object p2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;ILandroid/os/Bundle;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPlayerOpened(Ljava/lang/String;)V
    .locals 3

    .line 92
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPlayerOpened()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 97
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;ILandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayerPaused()V
    .locals 3

    .line 112
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPlayerPaused()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;ILandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayerPlaying(Ljava/lang/String;)V
    .locals 3

    .line 102
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPlayerPlaying()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 107
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;ILandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayerReceivePlaybackInfo()V
    .locals 4

    .line 182
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPlayerReceivePlaybackInfo()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)Landroidx/mediarouter/media/MediaItemStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaItemStatus;->getPlaybackState()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    .line 188
    invoke-static {v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)Landroidx/mediarouter/media/MediaItemStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaItemStatus;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    .line 187
    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;ILandroid/os/Bundle;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPlayerReleased()V
    .locals 3

    .line 129
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPlayerReleased()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;ILandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayerSkipped()V
    .locals 2

    .line 121
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPlayerSkipped()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPlayerUpdatePosition()V
    .locals 4

    .line 170
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPlayerUpdatePosition()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)Landroidx/mediarouter/media/MediaItemStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaItemStatus;->getPlaybackState()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    .line 176
    invoke-static {v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)Landroidx/mediarouter/media/MediaItemStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaItemStatus;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    .line 175
    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;ILandroid/os/Bundle;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPlayerVolumeUpdate(I)V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 158
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_0

    .line 159
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlayerVolumeUpdate() change volume : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$ProviderCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$ProviderCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->access$600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$ProviderCallback;->onVolumeChanged(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
