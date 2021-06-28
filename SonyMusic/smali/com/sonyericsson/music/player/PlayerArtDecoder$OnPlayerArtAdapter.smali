.class public Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtAdapter;
.super Ljava/lang/Object;
.source "PlayerArtDecoder.java"

# interfaces
.implements Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/player/PlayerArtDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnPlayerArtAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecoded(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 36
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "you need to override onDecoded(Bitmap)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
