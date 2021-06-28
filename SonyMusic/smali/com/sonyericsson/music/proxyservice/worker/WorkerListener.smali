.class public interface abstract Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;
.super Ljava/lang/Object;
.source "WorkerListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;,
        Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;,
        Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$RepeatModeChanged;,
        Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$ShuffleChanged;,
        Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$WorkerUpdate;
    }
.end annotation


# static fields
.field public static final PAUSED_REASON_TRACK_COMPLETED:I = 0x64

.field public static final PLAYER_SERVICE_TYPE_DLNA_CAST:I = 0x1

.field public static final PLAYER_SERVICE_TYPE_GOOGLE_CAST:I = 0x2

.field public static final PLAYER_SERVICE_TYPE_LOCAL:I


# virtual methods
.method public abstract onAudioSessionUpdate(I)V
.end method

.method public abstract onAudioSystemAudioFocusUpdateRequest(Z)V
.end method

.method public abstract onAudioSystemSetPlaybackPos(I)V
.end method

.method public abstract onAudioSystemSetPlaybackState(II)V
.end method

.method public abstract onAudioSystemUpdateMetadata(Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;)V
.end method

.method public abstract onBuffering(Lcom/sonyericsson/music/common/Track;I)V
.end method

.method public abstract onCurrentTrackColor(I)V
.end method

.method public abstract onError(ZZ)V
.end method

.method public abstract onGetDuration(Ljava/lang/String;I)V
.end method

.method public abstract onPlayQueuePositionChanged(Ljava/lang/String;I)V
.end method

.method public abstract onPlaybackPosition(I)V
.end method

.method public abstract onPlayerReleased(ZZ)V
.end method

.method public abstract onPlayerServiceChanged(I)V
.end method

.method public abstract onPlayingStateChanged(ZILcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V
.end method

.method public abstract onTrackChanged(Lcom/sonyericsson/music/common/Track;IZZ)V
.end method

.method public abstract onTrackUpdated(Lcom/sonyericsson/music/common/Track;)V
.end method

.method public abstract onUpdate(Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$WorkerUpdate;Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V
.end method

.method public abstract onUpdateArt(Lcom/sonyericsson/music/common/Track;)V
.end method

.method public abstract onUpdatePlaybackNotification(Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V
.end method
