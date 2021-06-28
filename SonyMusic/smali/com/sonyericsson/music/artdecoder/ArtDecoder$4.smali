.class Lcom/sonyericsson/music/artdecoder/ArtDecoder$4;
.super Ljava/lang/Object;
.source "ArtDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/artdecoder/ArtDecoder;->onImageRetrieveFail(Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field final synthetic val$listener:Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/artdecoder/ArtDecoder;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$4;->this$0:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iput-object p2, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$4;->val$listener:Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$4;->val$listener:Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;->onDecoded(Landroid/graphics/Bitmap;)V

    return-void
.end method
