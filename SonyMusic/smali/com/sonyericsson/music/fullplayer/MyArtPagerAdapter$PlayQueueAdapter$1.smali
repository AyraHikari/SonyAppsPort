.class Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter$1;
.super Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtAdapter;
.source "MyArtPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->createView(Landroid/content/Context;IILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$iv:Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;

.field final synthetic val$pos:I

.field final synthetic val$recycled:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;Landroid/content/Context;ZI)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter$1;->this$1:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;

    iput-object p2, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter$1;->val$iv:Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;

    iput-object p3, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter$1;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter$1;->val$recycled:Z

    iput p5, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter$1;->val$pos:I

    invoke-direct {p0}, Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecoded(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter$1;->this$1:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;

    iget-object v0, v0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->access$800(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter$1;->this$1:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;

    iget-object v0, v0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->access$800(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 372
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter$1;->val$iv:Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter$1;->this$1:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;

    iget-object v1, v1, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    iget-object v2, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->access$300(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter$1;->val$iv:Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 376
    :goto_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter$1;->val$recycled:Z

    if-nez v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter$1;->val$iv:Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 378
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter$1;->val$iv:Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter$1;->this$1:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;

    iget-object v0, v0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->access$400(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$ArtPagerObservable;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter$1;->val$pos:I

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$ArtPagerObservable;->notifyBitmapChanged(Landroid/graphics/Bitmap;I)V

    :cond_2
    return-void
.end method
