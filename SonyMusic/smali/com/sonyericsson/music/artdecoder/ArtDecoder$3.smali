.class Lcom/sonyericsson/music/artdecoder/ArtDecoder$3;
.super Ljava/lang/Object;
.source "ArtDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/artdecoder/ArtDecoder;->onImageRetrieveSuccess(Landroid/graphics/Bitmap;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field final synthetic val$data:Landroid/graphics/Bitmap;

.field final synthetic val$listener:Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/artdecoder/ArtDecoder;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$3;->this$0:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iput-object p2, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$3;->val$listener:Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;

    iput-object p3, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$3;->val$data:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$3;->this$0:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iget-object v1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$3;->val$listener:Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;

    iget-object v2, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$3;->val$data:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;->preProcess(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$3;->val$listener:Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->access$700(Lcom/sonyericsson/music/artdecoder/ArtDecoder;Landroid/graphics/Bitmap;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)V

    return-void
.end method
