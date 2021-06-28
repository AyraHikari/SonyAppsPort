.class public Lcom/sonyericsson/music/proxyservice/worker/OpenSmartPlaylistTask;
.super Lcom/sonyericsson/music/proxyservice/worker/OpenTask;
.source "OpenSmartPlaylistTask.java"


# instance fields
.field private final mSmartPlaylistType:I


# direct methods
.method public constructor <init>(IIZZ)V
    .locals 11

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v9, p4

    .line 18
    invoke-direct/range {v0 .. v10}, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;-><init>(Landroid/net/Uri;IZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 19
    iput p1, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenSmartPlaylistTask;->mSmartPlaylistType:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenSmartPlaylistTask;->mSmartPlaylistType:I

    return v0
.end method
