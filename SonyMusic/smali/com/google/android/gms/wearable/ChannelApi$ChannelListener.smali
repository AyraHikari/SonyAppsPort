.class public interface abstract Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/ChannelApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChannelListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onChannelClosed(Lcom/google/android/gms/wearable/Channel;II)V
.end method

.method public abstract onChannelOpened(Lcom/google/android/gms/wearable/Channel;)V
.end method

.method public abstract onInputClosed(Lcom/google/android/gms/wearable/Channel;II)V
.end method

.method public abstract onOutputClosed(Lcom/google/android/gms/wearable/Channel;II)V
.end method
