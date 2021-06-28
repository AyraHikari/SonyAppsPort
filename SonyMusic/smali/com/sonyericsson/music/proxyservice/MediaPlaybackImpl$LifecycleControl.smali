.class interface abstract Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;
.super Ljava/lang/Object;
.source "MediaPlaybackImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "LifecycleControl"
.end annotation


# virtual methods
.method public abstract requestShutdown()V
.end method

.method public abstract setServiceToBackground(Z)V
.end method

.method public abstract setServiceToForeground(Landroid/app/Notification;)V
.end method
