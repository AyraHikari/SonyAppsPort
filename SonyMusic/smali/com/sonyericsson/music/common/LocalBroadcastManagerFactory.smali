.class public Lcom/sonyericsson/music/common/LocalBroadcastManagerFactory;
.super Ljava/lang/Object;
.source "LocalBroadcastManagerFactory.java"


# static fields
.field private static sLocalBroadcastManagerWrapper:Lcom/sonyericsson/music/common/LocalBroadcastManagerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalBroadcastManager()Lcom/sonyericsson/music/common/LocalBroadcastManagerWrapper;
    .locals 1

    .line 21
    sget-object v0, Lcom/sonyericsson/music/common/LocalBroadcastManagerFactory;->sLocalBroadcastManagerWrapper:Lcom/sonyericsson/music/common/LocalBroadcastManagerWrapper;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/sonyericsson/music/common/LocalBroadcastManagerWrapper;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/LocalBroadcastManagerWrapper;-><init>()V

    return-object v0

    :cond_0
    return-object v0
.end method

.method public static setLocalBroadcastManager(Lcom/sonyericsson/music/common/LocalBroadcastManagerWrapper;)V
    .locals 0

    .line 28
    sput-object p0, Lcom/sonyericsson/music/common/LocalBroadcastManagerFactory;->sLocalBroadcastManagerWrapper:Lcom/sonyericsson/music/common/LocalBroadcastManagerWrapper;

    return-void
.end method
