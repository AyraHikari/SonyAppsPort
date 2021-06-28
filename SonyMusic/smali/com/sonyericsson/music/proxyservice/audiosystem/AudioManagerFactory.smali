.class public Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerFactory;
.super Ljava/lang/Object;
.source "AudioManagerFactory.java"


# static fields
.field private static sAudioManagerWrapper:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioManager(Landroid/content/Context;)Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;
    .locals 1

    .line 21
    sget-object v0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerFactory;->sAudioManagerWrapper:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    return-object v0
.end method

.method public static setAudioManagerWrapper(Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;)V
    .locals 0

    .line 28
    sput-object p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerFactory;->sAudioManagerWrapper:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;

    return-void
.end method
