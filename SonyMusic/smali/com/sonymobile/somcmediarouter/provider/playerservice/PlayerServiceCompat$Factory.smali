.class public interface abstract Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;
.super Ljava/lang/Object;
.source "PlayerServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract getCallbacks()Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;
.end method

.method public abstract getPlayer(Landroid/os/IBinder;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;
.end method

.method public abstract getPlayerServiceIntent()Landroid/content/Intent;
.end method
