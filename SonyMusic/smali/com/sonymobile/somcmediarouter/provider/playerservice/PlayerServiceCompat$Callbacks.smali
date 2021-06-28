.class public interface abstract Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;
.super Ljava/lang/Object;
.source "PlayerServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract getAction(Landroid/content/Intent;)Ljava/lang/String;
.end method

.method public abstract getAction(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;)Z
.end method

.method public abstract getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I
.end method

.method public abstract getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract stateEquals(Landroid/content/Intent;Ljava/lang/String;)Z
.end method
