.class interface abstract Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask$TaskListener;
.super Ljava/lang/Object;
.source "GetMediaSessionPlayQueueTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TaskListener"
.end annotation


# virtual methods
.method public abstract onPlayQueueRetrieved(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation
.end method
