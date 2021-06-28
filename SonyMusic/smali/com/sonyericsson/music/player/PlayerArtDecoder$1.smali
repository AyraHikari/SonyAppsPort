.class Lcom/sonyericsson/music/player/PlayerArtDecoder$1;
.super Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;
.source "PlayerArtDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/player/PlayerArtDecoder;->decodeArt(Lcom/sonyericsson/music/common/Track;ILcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/player/PlayerArtDecoder;

.field final synthetic val$ref:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/player/PlayerArtDecoder;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/sonyericsson/music/player/PlayerArtDecoder$1;->this$0:Lcom/sonyericsson/music/player/PlayerArtDecoder;

    iput-object p2, p0, Lcom/sonyericsson/music/player/PlayerArtDecoder$1;->val$ref:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecoded(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerArtDecoder$1;->val$ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtListener;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1}, Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtListener;->onDecoded(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
